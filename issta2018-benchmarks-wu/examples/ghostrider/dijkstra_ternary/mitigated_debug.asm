
mitigated_debug:     file format elf64-x86-64


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
  4002d3:	00 96 77 ff 8f d5    	add    %dl,-0x2a700089(%rsi)
  4002d9:	df 71 3e             	fbstp  0x3e(%rcx)
  4002dc:	18 ed                	sbb    %ch,%ch
  4002de:	9d                   	popfq  
  4002df:	72 7b                	jb     40035c <_init-0xca4>
  4002e1:	44 db 29             	rex.R fldt (%rcx)
  4002e4:	60                   	(bad)  
  4002e5:	4b                   	rex.WXB
  4002e6:	3a                   	.byte 0x3a
  4002e7:	a3                   	.byte 0xa3

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
  400340:	19 00                	sbb    %eax,(%rax)
  400342:	00 00                	add    %al,(%rax)
  400344:	12 00                	adc    (%rax),%al
	...
  400356:	00 00                	add    %al,(%rax)
  400358:	0b 00                	or     (%rax),%eax
  40035a:	00 00                	add    %al,(%rax)
  40035c:	12 00                	adc    (%rax),%al
	...
  40036e:	00 00                	add    %al,(%rax)
  400370:	20 00                	and    %al,(%rax)
  400372:	00 00                	add    %al,(%rax)
  400374:	12 00                	adc    (%rax),%al
	...
  400386:	00 00                	add    %al,(%rax)
  400388:	25 00 00 00 12       	and    $0x12000000,%eax
	...
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 43 00             	add    %al,0x0(%rbx)
  4003a2:	00 00                	add    %al,(%rax)
  4003a4:	20 00                	and    %al,(%rax)
	...

Disassembly of section .dynstr:

00000000004003b8 <.dynstr>:
  4003b8:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4003bc:	63 2e                	movslq (%rsi),%ebp
  4003be:	73 6f                	jae    40042f <_init-0xbd1>
  4003c0:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  4003c5:	61                   	(bad)  
  4003c6:	73 73                	jae    40043b <_init-0xbc5>
  4003c8:	65 72 74             	gs jb  40043f <_init-0xbc1>
  4003cb:	5f                   	pop    %rdi
  4003cc:	66 61                	data16 (bad) 
  4003ce:	69 6c 00 70 72 69 6e 	imul   $0x746e6972,0x70(%rax,%rax,1),%ebp
  4003d5:	74 
  4003d6:	66 00 72 65          	data16 add %dh,0x65(%rdx)
  4003da:	61                   	(bad)  
  4003db:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
  4003df:	6c                   	insb   (%dx),%es:(%rdi)
  4003e0:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  4003e7:	72 74                	jb     40045d <_init-0xba3>
  4003e9:	5f                   	pop    %rdi
  4003ea:	6d                   	insl   (%dx),%es:(%rdi)
  4003eb:	61                   	(bad)  
  4003ec:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  4003f3:	43 5f                	rex.XB pop %r15
  4003f5:	32 2e                	xor    (%rsi),%ch
  4003f7:	32 2e                	xor    (%rsi),%ch
  4003f9:	35 00 5f 5f 67       	xor    $0x675f5f00,%eax
  4003fe:	6d                   	insl   (%dx),%es:(%rdi)
  4003ff:	6f                   	outsl  %ds:(%rsi),(%dx)
  400400:	6e                   	outsb  %ds:(%rsi),(%dx)
  400401:	5f                   	pop    %rdi
  400402:	73 74                	jae    400478 <_init-0xb88>
  400404:	61                   	(bad)  
  400405:	72 74                	jb     40047b <_init-0xb85>
  400407:	5f                   	pop    %rdi
  400408:	5f                   	pop    %rdi
	...

Disassembly of section .gnu.version:

000000000040040a <.gnu.version>:
  40040a:	00 00                	add    %al,(%rax)
  40040c:	02 00                	add    (%rax),%al
  40040e:	02 00                	add    (%rax),%al
  400410:	02 00                	add    (%rax),%al
  400412:	02 00                	add    (%rax),%al
	...

Disassembly of section .gnu.version_r:

0000000000400418 <.gnu.version_r>:
  400418:	01 00                	add    %eax,(%rax)
  40041a:	01 00                	add    %eax,(%rax)
  40041c:	01 00                	add    %eax,(%rax)
  40041e:	00 00                	add    %al,(%rax)
  400420:	10 00                	adc    %al,(%rax)
  400422:	00 00                	add    %al,(%rax)
  400424:	00 00                	add    %al,(%rax)
  400426:	00 00                	add    %al,(%rax)
  400428:	75 1a                	jne    400444 <_init-0xbbc>
  40042a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400430:	37                   	(bad)  
  400431:	00 00                	add    %al,(%rax)
  400433:	00 00                	add    %al,(%rax)
  400435:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400438 <.rela.dyn>:
  400438:	f0 5f                	lock pop %rdi
  40043a:	40 00 00             	add    %al,(%rax)
  40043d:	00 00                	add    %al,(%rax)
  40043f:	00 06                	add    %al,(%rsi)
  400441:	00 00                	add    %al,(%rax)
  400443:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  40044e:	00 00                	add    %al,(%rax)
  400450:	f8                   	clc    
  400451:	5f                   	pop    %rdi
  400452:	40 00 00             	add    %al,(%rax)
  400455:	00 00                	add    %al,(%rax)
  400457:	00 06                	add    %al,(%rsi)
  400459:	00 00                	add    %al,(%rax)
  40045b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400461 <_init-0xb9f>
  400461:	00 00                	add    %al,(%rax)
  400463:	00 00                	add    %al,(%rax)
  400465:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.plt:

0000000000400468 <.rela.plt>:
  400468:	18 60 40             	sbb    %ah,0x40(%rax)
  40046b:	00 00                	add    %al,(%rax)
  40046d:	00 00                	add    %al,(%rax)
  40046f:	00 07                	add    %al,(%rdi)
  400471:	00 00                	add    %al,(%rax)
  400473:	00 01                	add    %al,(%rcx)
	...
  40047d:	00 00                	add    %al,(%rax)
  40047f:	00 20                	add    %ah,(%rax)
  400481:	60                   	(bad)  
  400482:	40 00 00             	add    %al,(%rax)
  400485:	00 00                	add    %al,(%rax)
  400487:	00 07                	add    %al,(%rdi)
  400489:	00 00                	add    %al,(%rax)
  40048b:	00 02                	add    %al,(%rdx)
	...
  400495:	00 00                	add    %al,(%rax)
  400497:	00 28                	add    %ch,(%rax)
  400499:	60                   	(bad)  
  40049a:	40 00 00             	add    %al,(%rax)
  40049d:	00 00                	add    %al,(%rax)
  40049f:	00 07                	add    %al,(%rdi)
  4004a1:	00 00                	add    %al,(%rax)
  4004a3:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 4f 00 00 	mov    0x4fe9(%rip),%rax        # 405ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 4f 00 00    	pushq  0x4fe2(%rip)        # 406008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 4f 00 00    	jmpq   *0x4fe4(%rip)        # 406010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <printf@plt>:
  401030:	ff 25 e2 4f 00 00    	jmpq   *0x4fe2(%rip)        # 406018 <printf@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__assert_fail@plt>:
  401040:	ff 25 da 4f 00 00    	jmpq   *0x4fda(%rip)        # 406020 <__assert_fail@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <read@plt>:
  401050:	ff 25 d2 4f 00 00    	jmpq   *0x4fd2(%rip)        # 406028 <read@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401060 <_start>:
  401060:	f3 0f 1e fa          	endbr64 
  401064:	31 ed                	xor    %ebp,%ebp
  401066:	49 89 d1             	mov    %rdx,%r9
  401069:	5e                   	pop    %rsi
  40106a:	48 89 e2             	mov    %rsp,%rdx
  40106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401071:	50                   	push   %rax
  401072:	54                   	push   %rsp
  401073:	49 c7 c0 90 32 40 00 	mov    $0x403290,%r8
  40107a:	48 c7 c1 20 32 40 00 	mov    $0x403220,%rcx
  401081:	48 c7 c7 40 1b 40 00 	mov    $0x401b40,%rdi
  401088:	ff 15 62 4f 00 00    	callq  *0x4f62(%rip)        # 405ff0 <__libc_start_main@GLIBC_2.2.5>
  40108e:	f4                   	hlt    
  40108f:	90                   	nop

0000000000401090 <_dl_relocate_static_pie>:
  401090:	f3 0f 1e fa          	endbr64 
  401094:	c3                   	retq   
  401095:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40109c:	00 00 00 
  40109f:	90                   	nop

00000000004010a0 <deregister_tm_clones>:
  4010a0:	b8 40 60 40 00       	mov    $0x406040,%eax
  4010a5:	48 3d 40 60 40 00    	cmp    $0x406040,%rax
  4010ab:	74 13                	je     4010c0 <deregister_tm_clones+0x20>
  4010ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4010b2:	48 85 c0             	test   %rax,%rax
  4010b5:	74 09                	je     4010c0 <deregister_tm_clones+0x20>
  4010b7:	bf 40 60 40 00       	mov    $0x406040,%edi
  4010bc:	ff e0                	jmpq   *%rax
  4010be:	66 90                	xchg   %ax,%ax
  4010c0:	c3                   	retq   
  4010c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010c8:	00 00 00 00 
  4010cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010d0 <register_tm_clones>:
  4010d0:	be 40 60 40 00       	mov    $0x406040,%esi
  4010d5:	48 81 ee 40 60 40 00 	sub    $0x406040,%rsi
  4010dc:	48 89 f0             	mov    %rsi,%rax
  4010df:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010e3:	48 c1 f8 03          	sar    $0x3,%rax
  4010e7:	48 01 c6             	add    %rax,%rsi
  4010ea:	48 d1 fe             	sar    %rsi
  4010ed:	74 11                	je     401100 <register_tm_clones+0x30>
  4010ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4010f4:	48 85 c0             	test   %rax,%rax
  4010f7:	74 07                	je     401100 <register_tm_clones+0x30>
  4010f9:	bf 40 60 40 00       	mov    $0x406040,%edi
  4010fe:	ff e0                	jmpq   *%rax
  401100:	c3                   	retq   
  401101:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401108:	00 00 00 00 
  40110c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401110 <__do_global_dtors_aux>:
  401110:	f3 0f 1e fa          	endbr64 
  401114:	80 3d 25 4f 00 00 00 	cmpb   $0x0,0x4f25(%rip)        # 406040 <__TMC_END__>
  40111b:	75 13                	jne    401130 <__do_global_dtors_aux+0x20>
  40111d:	55                   	push   %rbp
  40111e:	48 89 e5             	mov    %rsp,%rbp
  401121:	e8 7a ff ff ff       	callq  4010a0 <deregister_tm_clones>
  401126:	c6 05 13 4f 00 00 01 	movb   $0x1,0x4f13(%rip)        # 406040 <__TMC_END__>
  40112d:	5d                   	pop    %rbp
  40112e:	c3                   	retq   
  40112f:	90                   	nop
  401130:	c3                   	retq   
  401131:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401140 <frame_dummy>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	eb 8a                	jmp    4010d0 <register_tm_clones>
  401146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40114d:	00 00 00 

0000000000401150 <hsum_epi32_avx>:
  401150:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  401155:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  401159:	c5 f9 70 c8 55       	vpshufd $0x55,%xmm0,%xmm1
  40115e:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  401162:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  401166:	c3                   	retq   
  401167:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40116e:	00 00 

0000000000401170 <mm256_hadd_to_32>:
  401170:	c4 e3 7d 39 c1 01    	vextracti128 $0x1,%ymm0,%xmm1
  401176:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  40117a:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  40117f:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  401183:	c5 f9 70 c8 55       	vpshufd $0x55,%xmm0,%xmm1
  401188:	c5 f1 fe c0          	vpaddd %xmm0,%xmm1,%xmm0
  40118c:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  401190:	c5 f8 77             	vzeroupper 
  401193:	c3                   	retq   
  401194:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40119b:	00 00 00 
  40119e:	66 90                	xchg   %ax,%ax

00000000004011a0 <mm256_hadd_to_64>:
  4011a0:	c4 e3 7d 39 c1 01    	vextracti128 $0x1,%ymm0,%xmm1
  4011a6:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  4011aa:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  4011af:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  4011b3:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  4011b8:	c5 f8 77             	vzeroupper 
  4011bb:	c3                   	retq   
  4011bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011c0 <uint64_t_secure_load_impl>:
  4011c0:	41 57                	push   %r15
  4011c2:	41 56                	push   %r14
  4011c4:	53                   	push   %rbx
  4011c5:	85 d2                	test   %edx,%edx
  4011c7:	0f 84 d0 02 00 00    	je     40149d <uint64_t_secure_load_impl+0x2dd>
  4011cd:	48 89 f8             	mov    %rdi,%rax
  4011d0:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  4011d4:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4011d9:	c4 62 7d 59 c8       	vpbroadcastq %xmm0,%ymm9
  4011de:	41 89 d2             	mov    %edx,%r10d
  4011e1:	41 b3 01             	mov    $0x1,%r11b
  4011e4:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  4011e9:	45 31 c9             	xor    %r9d,%r9d
  4011ec:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4011f2:	c5 7e 7f 4c 24 c0    	vmovdqu %ymm9,-0x40(%rsp)
  4011f8:	eb 15                	jmp    40120f <uint64_t_secure_load_impl+0x4f>
  4011fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401200:	45 31 db             	xor    %r11d,%r11d
  401203:	49 ff c1             	inc    %r9
  401206:	4d 39 d1             	cmp    %r10,%r9
  401209:	0f 84 96 02 00 00    	je     4014a5 <uint64_t_secure_load_impl+0x2e5>
  40120f:	4c 89 ca             	mov    %r9,%rdx
  401212:	48 c1 e2 05          	shl    $0x5,%rdx
  401216:	80 7c 16 14 00       	cmpb   $0x0,0x14(%rsi,%rdx,1)
  40121b:	48 8b 1c 16          	mov    (%rsi,%rdx,1),%rbx
  40121f:	0f 84 7b 00 00 00    	je     4012a0 <uint64_t_secure_load_impl+0xe0>
  401225:	8b 44 16 18          	mov    0x18(%rsi,%rdx,1),%eax
  401229:	01 d8                	add    %ebx,%eax
  40122b:	83 e0 e0             	and    $0xffffffe0,%eax
  40122e:	8b 54 16 1c          	mov    0x1c(%rsi,%rdx,1),%edx
  401232:	48 01 da             	add    %rbx,%rdx
  401235:	48 39 c2             	cmp    %rax,%rdx
  401238:	72 c9                	jb     401203 <uint64_t_secure_load_impl+0x43>
  40123a:	c5 f9 6e c0          	vmovd  %eax,%xmm0
  40123e:	c4 e2 79 58 c0       	vpbroadcastd %xmm0,%xmm0
  401243:	c5 f9 eb 05 c5 2d 00 	vpor   0x2dc5(%rip),%xmm0,%xmm0        # 404010 <_IO_stdin_used+0x10>
  40124a:	00 
  40124b:	c4 e2 79 35 c0       	vpmovzxdq %xmm0,%xmm0
  401250:	89 c1                	mov    %eax,%ecx
  401252:	83 c9 18             	or     $0x18,%ecx
  401255:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  40125a:	c4 e3 71 0f c8 08    	vpalignr $0x8,%xmm0,%xmm1,%xmm1
  401260:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  401265:	c5 e9 6c c0          	vpunpcklqdq %xmm0,%xmm2,%xmm0
  401269:	c4 e3 7d 38 d9 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm3
  40126f:	90                   	nop
  401270:	c4 c2 65 29 e1       	vpcmpeqq %ymm9,%ymm3,%ymm4
  401275:	c4 63 3d 4b 00 40    	vblendvpd %ymm4,(%rax),%ymm8,%ymm8
  40127b:	c4 e2 7d 59 25 9c 2d 	vpbroadcastq 0x2d9c(%rip),%ymm4        # 404020 <_IO_stdin_used+0x20>
  401282:	00 00 
  401284:	c5 e5 d4 dc          	vpaddq %ymm4,%ymm3,%ymm3
  401288:	48 83 c0 20          	add    $0x20,%rax
  40128c:	48 39 d0             	cmp    %rdx,%rax
  40128f:	76 df                	jbe    401270 <uint64_t_secure_load_impl+0xb0>
  401291:	e9 6d ff ff ff       	jmpq   401203 <uint64_t_secure_load_impl+0x43>
  401296:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40129d:	00 00 00 
  4012a0:	48 89 f8             	mov    %rdi,%rax
  4012a3:	48 29 d8             	sub    %rbx,%rax
  4012a6:	c4 e1 f9 6e d8       	vmovq  %rax,%xmm3
  4012ab:	c4 e2 7d 59 fb       	vpbroadcastq %xmm3,%ymm7
  4012b0:	45 31 db             	xor    %r11d,%r11d
  4012b3:	eb 17                	jmp    4012cc <uint64_t_secure_load_impl+0x10c>
  4012b5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012bc:	00 00 00 
  4012bf:	90                   	nop
  4012c0:	49 ff c3             	inc    %r11
  4012c3:	4d 39 d3             	cmp    %r10,%r11
  4012c6:	0f 84 34 ff ff ff    	je     401200 <uint64_t_secure_load_impl+0x40>
  4012cc:	4c 89 d8             	mov    %r11,%rax
  4012cf:	48 c1 e0 05          	shl    $0x5,%rax
  4012d3:	44 8b 74 06 10       	mov    0x10(%rsi,%rax,1),%r14d
  4012d8:	41 83 fe 04          	cmp    $0x4,%r14d
  4012dc:	72 e2                	jb     4012c0 <uint64_t_secure_load_impl+0x100>
  4012de:	48 8b 0c 06          	mov    (%rsi,%rax,1),%rcx
  4012e2:	4c 8b 7c 06 08       	mov    0x8(%rsi,%rax,1),%r15
  4012e7:	41 c1 ee 02          	shr    $0x2,%r14d
  4012eb:	45 0f 44 f0          	cmove  %r8d,%r14d
  4012ef:	49 8d 46 ff          	lea    -0x1(%r14),%rax
  4012f3:	44 89 f2             	mov    %r14d,%edx
  4012f6:	83 e2 07             	and    $0x7,%edx
  4012f9:	48 83 f8 07          	cmp    $0x7,%rax
  4012fd:	73 11                	jae    401310 <uint64_t_secure_load_impl+0x150>
  4012ff:	45 31 f6             	xor    %r14d,%r14d
  401302:	48 85 d2             	test   %rdx,%rdx
  401305:	0f 85 54 01 00 00    	jne    40145f <uint64_t_secure_load_impl+0x29f>
  40130b:	eb b3                	jmp    4012c0 <uint64_t_secure_load_impl+0x100>
  40130d:	0f 1f 00             	nopl   (%rax)
  401310:	41 83 e6 f8          	and    $0xfffffff8,%r14d
  401314:	49 8d 9f e0 00 00 00 	lea    0xe0(%r15),%rbx
  40131b:	4c 89 f0             	mov    %r14,%rax
  40131e:	48 f7 d8             	neg    %rax
  401321:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401328:	00 00 00 
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401330:	c5 fe 6f ab 20 ff ff 	vmovdqu -0xe0(%rbx),%ymm5
  401337:	ff 
  401338:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
  40133d:	c5 dd 76 e4          	vpcmpeqd %ymm4,%ymm4,%ymm4
  401341:	c4 62 dd 91 0c 29    	vpgatherqq %ymm4,(%rcx,%ymm5,1),%ymm9
  401347:	c5 fe 6f b3 40 ff ff 	vmovdqu -0xc0(%rbx),%ymm6
  40134e:	ff 
  40134f:	c5 fe 6f 83 60 ff ff 	vmovdqu -0xa0(%rbx),%ymm0
  401356:	ff 
  401357:	c5 fe 7f 44 24 e0    	vmovdqu %ymm0,-0x20(%rsp)
  40135d:	c5 fe 6f 5b 80       	vmovdqu -0x80(%rbx),%ymm3
  401362:	c5 7d 29 c4          	vmovapd %ymm8,%ymm4
  401366:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  40136b:	c4 41 2d 76 d2       	vpcmpeqd %ymm10,%ymm10,%ymm10
  401370:	c4 41 21 ef db       	vpxor  %xmm11,%xmm11,%xmm11
  401375:	c4 41 1d 76 e4       	vpcmpeqd %ymm12,%ymm12,%ymm12
  40137a:	c4 62 ad 91 04 31    	vpgatherqq %ymm10,(%rcx,%ymm6,1),%ymm8
  401380:	c4 41 29 ef d2       	vpxor  %xmm10,%xmm10,%xmm10
  401385:	c4 62 9d 91 1c 01    	vpgatherqq %ymm12,(%rcx,%ymm0,1),%ymm11
  40138b:	c4 41 1d 76 e4       	vpcmpeqd %ymm12,%ymm12,%ymm12
  401390:	c5 7e 6f 6b a0       	vmovdqu -0x60(%rbx),%ymm13
  401395:	c4 41 09 ef f6       	vpxor  %xmm14,%xmm14,%xmm14
  40139a:	c4 41 05 76 ff       	vpcmpeqd %ymm15,%ymm15,%ymm15
  40139f:	c5 fe 6f 53 c0       	vmovdqu -0x40(%rbx),%ymm2
  4013a4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4013a8:	c5 f5 76 c9          	vpcmpeqd %ymm1,%ymm1,%ymm1
  4013ac:	c4 62 9d 91 14 19    	vpgatherqq %ymm12,(%rcx,%ymm3,1),%ymm10
  4013b2:	c5 7e 6f 63 e0       	vmovdqu -0x20(%rbx),%ymm12
  4013b7:	c4 22 85 91 34 29    	vpgatherqq %ymm15,(%rcx,%ymm13,1),%ymm14
  4013bd:	c4 41 01 ef ff       	vpxor  %xmm15,%xmm15,%xmm15
  4013c2:	c4 e2 f5 91 04 11    	vpgatherqq %ymm1,(%rcx,%ymm2,1),%ymm0
  4013c8:	c5 f5 76 c9          	vpcmpeqd %ymm1,%ymm1,%ymm1
  4013cc:	c4 22 f5 91 3c 21    	vpgatherqq %ymm1,(%rcx,%ymm12,1),%ymm15
  4013d2:	c4 e2 55 29 cf       	vpcmpeqq %ymm7,%ymm5,%ymm1
  4013d7:	c4 c3 5d 4b c9 10    	vblendvpd %ymm1,%ymm9,%ymm4,%ymm1
  4013dd:	c5 fe 6f 2b          	vmovdqu (%rbx),%ymm5
  4013e1:	c4 41 31 ef c9       	vpxor  %xmm9,%xmm9,%xmm9
  4013e6:	c5 dd 76 e4          	vpcmpeqd %ymm4,%ymm4,%ymm4
  4013ea:	c4 62 dd 91 0c 29    	vpgatherqq %ymm4,(%rcx,%ymm5,1),%ymm9
  4013f0:	c4 e2 4d 29 e7       	vpcmpeqq %ymm7,%ymm6,%ymm4
  4013f5:	c4 c3 75 4b c8 40    	vblendvpd %ymm4,%ymm8,%ymm1,%ymm1
  4013fb:	c4 e2 45 29 64 24 e0 	vpcmpeqq -0x20(%rsp),%ymm7,%ymm4
  401402:	c4 c3 75 4b cb 40    	vblendvpd %ymm4,%ymm11,%ymm1,%ymm1
  401408:	c4 e2 65 29 e7       	vpcmpeqq %ymm7,%ymm3,%ymm4
  40140d:	c4 c3 75 4b ca 40    	vblendvpd %ymm4,%ymm10,%ymm1,%ymm1
  401413:	c4 e2 15 29 e7       	vpcmpeqq %ymm7,%ymm13,%ymm4
  401418:	c4 c3 75 4b ce 40    	vblendvpd %ymm4,%ymm14,%ymm1,%ymm1
  40141e:	c4 e2 6d 29 d7       	vpcmpeqq %ymm7,%ymm2,%ymm2
  401423:	c4 e3 75 4b c0 20    	vblendvpd %ymm2,%ymm0,%ymm1,%ymm0
  401429:	c4 e2 1d 29 cf       	vpcmpeqq %ymm7,%ymm12,%ymm1
  40142e:	c4 c3 7d 4b c7 10    	vblendvpd %ymm1,%ymm15,%ymm0,%ymm0
  401434:	c4 e2 55 29 cf       	vpcmpeqq %ymm7,%ymm5,%ymm1
  401439:	c4 43 7d 4b c1 10    	vblendvpd %ymm1,%ymm9,%ymm0,%ymm8
  40143f:	48 81 c3 00 01 00 00 	add    $0x100,%rbx
  401446:	48 83 c0 08          	add    $0x8,%rax
  40144a:	0f 85 e0 fe ff ff    	jne    401330 <uint64_t_secure_load_impl+0x170>
  401450:	c5 7e 6f 4c 24 c0    	vmovdqu -0x40(%rsp),%ymm9
  401456:	48 85 d2             	test   %rdx,%rdx
  401459:	0f 84 61 fe ff ff    	je     4012c0 <uint64_t_secure_load_impl+0x100>
  40145f:	49 c1 e6 05          	shl    $0x5,%r14
  401463:	4d 01 f7             	add    %r14,%r15
  401466:	48 c1 e2 05          	shl    $0x5,%rdx
  40146a:	31 c0                	xor    %eax,%eax
  40146c:	0f 1f 40 00          	nopl   0x0(%rax)
  401470:	c4 c1 7e 6f 24 07    	vmovdqu (%r15,%rax,1),%ymm4
  401476:	c5 d1 ef ed          	vpxor  %xmm5,%xmm5,%xmm5
  40147a:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
  40147e:	c4 e2 cd 91 2c 21    	vpgatherqq %ymm6,(%rcx,%ymm4,1),%ymm5
  401484:	c4 e2 5d 29 e7       	vpcmpeqq %ymm7,%ymm4,%ymm4
  401489:	c4 63 3d 4b c5 40    	vblendvpd %ymm4,%ymm5,%ymm8,%ymm8
  40148f:	48 83 c0 20          	add    $0x20,%rax
  401493:	48 39 c2             	cmp    %rax,%rdx
  401496:	75 d8                	jne    401470 <uint64_t_secure_load_impl+0x2b0>
  401498:	e9 23 fe ff ff       	jmpq   4012c0 <uint64_t_secure_load_impl+0x100>
  40149d:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  4014a2:	41 b3 01             	mov    $0x1,%r11b
  4014a5:	c4 63 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm0
  4014ab:	c5 b9 d4 c0          	vpaddq %xmm0,%xmm8,%xmm0
  4014af:	c5 f9 70 c8 ee       	vpshufd $0xee,%xmm0,%xmm1
  4014b4:	c5 f1 d4 c0          	vpaddq %xmm0,%xmm1,%xmm0
  4014b8:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  4014bd:	41 80 e3 01          	and    $0x1,%r11b
  4014c1:	41 f6 db             	neg    %r11b
  4014c4:	c1 e7 03             	shl    $0x3,%edi
  4014c7:	44 20 df             	and    %r11b,%dil
  4014ca:	c4 e2 c3 f7 c0       	shrx   %rdi,%rax,%rax
  4014cf:	5b                   	pop    %rbx
  4014d0:	41 5e                	pop    %r14
  4014d2:	41 5f                	pop    %r15
  4014d4:	c5 f8 77             	vzeroupper 
  4014d7:	c3                   	retq   
  4014d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4014df:	00 

00000000004014e0 <uint64_t_secure_load>:
  4014e0:	83 f9 01             	cmp    $0x1,%ecx
  4014e3:	75 04                	jne    4014e9 <uint64_t_secure_load+0x9>
  4014e5:	48 8b 07             	mov    (%rdi),%rax
  4014e8:	c3                   	retq   
  4014e9:	e9 d2 fc ff ff       	jmpq   4011c0 <uint64_t_secure_load_impl>
  4014ee:	66 90                	xchg   %ax,%ax

00000000004014f0 <uint64_t_secure_load_sensitive>:
  4014f0:	83 f9 01             	cmp    $0x1,%ecx
  4014f3:	75 0b                	jne    401500 <uint64_t_secure_load_sensitive+0x10>
  4014f5:	48 8b 06             	mov    (%rsi),%rax
  4014f8:	8b 4e 18             	mov    0x18(%rsi),%ecx
  4014fb:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  4014ff:	c3                   	retq   
  401500:	e9 bb fc ff ff       	jmpq   4011c0 <uint64_t_secure_load_impl>
  401505:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150c:	00 00 00 
  40150f:	90                   	nop

0000000000401510 <uint32_t_secure_load>:
  401510:	50                   	push   %rax
  401511:	83 f9 01             	cmp    $0x1,%ecx
  401514:	75 05                	jne    40151b <uint32_t_secure_load+0xb>
  401516:	48 8b 07             	mov    (%rdi),%rax
  401519:	59                   	pop    %rcx
  40151a:	c3                   	retq   
  40151b:	e8 a0 fc ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401520:	59                   	pop    %rcx
  401521:	c3                   	retq   
  401522:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401529:	00 00 00 
  40152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401530 <uint16_t_secure_load>:
  401530:	50                   	push   %rax
  401531:	83 f9 01             	cmp    $0x1,%ecx
  401534:	75 05                	jne    40153b <uint16_t_secure_load+0xb>
  401536:	48 8b 07             	mov    (%rdi),%rax
  401539:	59                   	pop    %rcx
  40153a:	c3                   	retq   
  40153b:	e8 80 fc ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401540:	59                   	pop    %rcx
  401541:	c3                   	retq   
  401542:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401549:	00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <uint8_t_secure_load>:
  401550:	50                   	push   %rax
  401551:	83 f9 01             	cmp    $0x1,%ecx
  401554:	75 05                	jne    40155b <uint8_t_secure_load+0xb>
  401556:	48 8b 07             	mov    (%rdi),%rax
  401559:	59                   	pop    %rcx
  40155a:	c3                   	retq   
  40155b:	e8 60 fc ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401560:	59                   	pop    %rcx
  401561:	c3                   	retq   
  401562:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401569:	00 00 00 
  40156c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401570 <uint32_t_secure_load_sensitive>:
  401570:	50                   	push   %rax
  401571:	83 f9 01             	cmp    $0x1,%ecx
  401574:	75 0c                	jne    401582 <uint32_t_secure_load_sensitive+0x12>
  401576:	48 8b 06             	mov    (%rsi),%rax
  401579:	8b 4e 18             	mov    0x18(%rsi),%ecx
  40157c:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  401580:	59                   	pop    %rcx
  401581:	c3                   	retq   
  401582:	e8 39 fc ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401587:	59                   	pop    %rcx
  401588:	c3                   	retq   
  401589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401590 <uint16_t_secure_load_sensitive>:
  401590:	50                   	push   %rax
  401591:	83 f9 01             	cmp    $0x1,%ecx
  401594:	75 0c                	jne    4015a2 <uint16_t_secure_load_sensitive+0x12>
  401596:	48 8b 06             	mov    (%rsi),%rax
  401599:	8b 4e 18             	mov    0x18(%rsi),%ecx
  40159c:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  4015a0:	59                   	pop    %rcx
  4015a1:	c3                   	retq   
  4015a2:	e8 19 fc ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4015a7:	59                   	pop    %rcx
  4015a8:	c3                   	retq   
  4015a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004015b0 <uint8_t_secure_load_sensitive>:
  4015b0:	50                   	push   %rax
  4015b1:	83 f9 01             	cmp    $0x1,%ecx
  4015b4:	75 0c                	jne    4015c2 <uint8_t_secure_load_sensitive+0x12>
  4015b6:	48 8b 06             	mov    (%rsi),%rax
  4015b9:	8b 4e 18             	mov    0x18(%rsi),%ecx
  4015bc:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  4015c0:	59                   	pop    %rcx
  4015c1:	c3                   	retq   
  4015c2:	e8 f9 fb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4015c7:	59                   	pop    %rcx
  4015c8:	c3                   	retq   
  4015c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004015d0 <uint64_t_secure_store_impl>:
  4015d0:	85 c9                	test   %ecx,%ecx
  4015d2:	0f 84 f6 00 00 00    	je     4016ce <uint64_t_secure_store_impl+0xfe>
  4015d8:	c4 e1 f9 6e c7       	vmovq  %rdi,%xmm0
  4015dd:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  4015e2:	48 89 f0             	mov    %rsi,%rax
  4015e5:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  4015e9:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4015ee:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  4015f3:	c1 e6 03             	shl    $0x3,%esi
  4015f6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4015fd:	c4 e2 c9 f7 c0       	shlx   %rsi,%rax,%rax
  401602:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  401607:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  40160c:	41 89 c8             	mov    %ecx,%r8d
  40160f:	45 31 c9             	xor    %r9d,%r9d
  401612:	c5 f9 6f 1d f6 29 00 	vmovdqa 0x29f6(%rip),%xmm3        # 404010 <_IO_stdin_used+0x10>
  401619:	00 
  40161a:	c4 e2 7d 59 25 fd 29 	vpbroadcastq 0x29fd(%rip),%ymm4        # 404020 <_IO_stdin_used+0x20>
  401621:	00 00 
  401623:	eb 17                	jmp    40163c <uint64_t_secure_store_impl+0x6c>
  401625:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40162c:	00 00 00 
  40162f:	90                   	nop
  401630:	49 ff c1             	inc    %r9
  401633:	4d 39 c1             	cmp    %r8,%r9
  401636:	0f 84 92 00 00 00    	je     4016ce <uint64_t_secure_store_impl+0xfe>
  40163c:	4c 89 c8             	mov    %r9,%rax
  40163f:	48 c1 e0 05          	shl    $0x5,%rax
  401643:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401647:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40164b:	01 fe                	add    %edi,%esi
  40164d:	83 e6 e0             	and    $0xffffffe0,%esi
  401650:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401654:	48 01 f9             	add    %rdi,%rcx
  401657:	48 39 f1             	cmp    %rsi,%rcx
  40165a:	72 d4                	jb     401630 <uint64_t_secure_store_impl+0x60>
  40165c:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401660:	48 01 d0             	add    %rdx,%rax
  401663:	48 83 c0 1c          	add    $0x1c,%rax
  401667:	c5 f9 6e ee          	vmovd  %esi,%xmm5
  40166b:	c4 e2 79 58 ed       	vpbroadcastd %xmm5,%xmm5
  401670:	c5 d1 eb eb          	vpor   %xmm3,%xmm5,%xmm5
  401674:	c4 e2 79 35 ed       	vpmovzxdq %xmm5,%xmm5
  401679:	89 f1                	mov    %esi,%ecx
  40167b:	83 c9 18             	or     $0x18,%ecx
  40167e:	c4 e1 f9 6e f1       	vmovq  %rcx,%xmm6
  401683:	c4 e3 49 0f f5 08    	vpalignr $0x8,%xmm5,%xmm6,%xmm6
  401689:	c4 e1 f9 6e fe       	vmovq  %rsi,%xmm7
  40168e:	c5 c1 6c ed          	vpunpcklqdq %xmm5,%xmm7,%xmm5
  401692:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  401698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40169f:	00 
  4016a0:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  4016a5:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  4016a9:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  4016ad:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  4016b3:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  4016b7:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  4016bb:	48 83 c6 20          	add    $0x20,%rsi
  4016bf:	8b 08                	mov    (%rax),%ecx
  4016c1:	48 03 0f             	add    (%rdi),%rcx
  4016c4:	48 39 ce             	cmp    %rcx,%rsi
  4016c7:	76 d7                	jbe    4016a0 <uint64_t_secure_store_impl+0xd0>
  4016c9:	e9 62 ff ff ff       	jmpq   401630 <uint64_t_secure_store_impl+0x60>
  4016ce:	c5 f8 77             	vzeroupper 
  4016d1:	c3                   	retq   
  4016d2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016d9:	00 00 00 
  4016dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004016e0 <uint32_t_secure_store_impl>:
  4016e0:	85 c9                	test   %ecx,%ecx
  4016e2:	0f 84 f6 00 00 00    	je     4017de <uint32_t_secure_store_impl+0xfe>
  4016e8:	89 f8                	mov    %edi,%eax
  4016ea:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4016ef:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  4016f4:	48 89 f0             	mov    %rsi,%rax
  4016f7:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  4016fb:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  401700:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  401705:	c1 e6 03             	shl    $0x3,%esi
  401708:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40170d:	c4 e2 c9 f7 c0       	shlx   %rsi,%rax,%rax
  401712:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  401717:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  40171c:	41 89 c8             	mov    %ecx,%r8d
  40171f:	45 31 c9             	xor    %r9d,%r9d
  401722:	c5 f9 6f 1d e6 28 00 	vmovdqa 0x28e6(%rip),%xmm3        # 404010 <_IO_stdin_used+0x10>
  401729:	00 
  40172a:	c4 e2 7d 59 25 ed 28 	vpbroadcastq 0x28ed(%rip),%ymm4        # 404020 <_IO_stdin_used+0x20>
  401731:	00 00 
  401733:	eb 17                	jmp    40174c <uint32_t_secure_store_impl+0x6c>
  401735:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40173c:	00 00 00 
  40173f:	90                   	nop
  401740:	49 ff c1             	inc    %r9
  401743:	4d 39 c1             	cmp    %r8,%r9
  401746:	0f 84 92 00 00 00    	je     4017de <uint32_t_secure_store_impl+0xfe>
  40174c:	4c 89 c8             	mov    %r9,%rax
  40174f:	48 c1 e0 05          	shl    $0x5,%rax
  401753:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401757:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40175b:	01 fe                	add    %edi,%esi
  40175d:	83 e6 e0             	and    $0xffffffe0,%esi
  401760:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401764:	48 01 f9             	add    %rdi,%rcx
  401767:	48 39 f1             	cmp    %rsi,%rcx
  40176a:	72 d4                	jb     401740 <uint32_t_secure_store_impl+0x60>
  40176c:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401770:	48 01 d0             	add    %rdx,%rax
  401773:	48 83 c0 1c          	add    $0x1c,%rax
  401777:	c5 f9 6e ee          	vmovd  %esi,%xmm5
  40177b:	c4 e2 79 58 ed       	vpbroadcastd %xmm5,%xmm5
  401780:	c5 d1 eb eb          	vpor   %xmm3,%xmm5,%xmm5
  401784:	c4 e2 79 35 ed       	vpmovzxdq %xmm5,%xmm5
  401789:	89 f1                	mov    %esi,%ecx
  40178b:	83 c9 18             	or     $0x18,%ecx
  40178e:	c4 e1 f9 6e f1       	vmovq  %rcx,%xmm6
  401793:	c4 e3 49 0f f5 08    	vpalignr $0x8,%xmm5,%xmm6,%xmm6
  401799:	c4 e1 f9 6e fe       	vmovq  %rsi,%xmm7
  40179e:	c5 c1 6c ed          	vpunpcklqdq %xmm5,%xmm7,%xmm5
  4017a2:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  4017a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4017af:	00 
  4017b0:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  4017b5:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  4017b9:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  4017bd:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  4017c3:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  4017c7:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  4017cb:	48 83 c6 20          	add    $0x20,%rsi
  4017cf:	8b 08                	mov    (%rax),%ecx
  4017d1:	48 03 0f             	add    (%rdi),%rcx
  4017d4:	48 39 ce             	cmp    %rcx,%rsi
  4017d7:	76 d7                	jbe    4017b0 <uint32_t_secure_store_impl+0xd0>
  4017d9:	e9 62 ff ff ff       	jmpq   401740 <uint32_t_secure_store_impl+0x60>
  4017de:	c5 f8 77             	vzeroupper 
  4017e1:	c3                   	retq   
  4017e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017e9:	00 00 00 
  4017ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004017f0 <uint16_t_secure_store_impl>:
  4017f0:	85 c9                	test   %ecx,%ecx
  4017f2:	0f 84 f6 00 00 00    	je     4018ee <uint16_t_secure_store_impl+0xfe>
  4017f8:	0f b7 c7             	movzwl %di,%eax
  4017fb:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  401800:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  401805:	48 89 f0             	mov    %rsi,%rax
  401808:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  40180c:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  401811:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  401816:	c1 e6 03             	shl    $0x3,%esi
  401819:	b8 ff ff 00 00       	mov    $0xffff,%eax
  40181e:	c4 e2 c9 f7 c0       	shlx   %rsi,%rax,%rax
  401823:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  401828:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  40182d:	41 89 c8             	mov    %ecx,%r8d
  401830:	45 31 c9             	xor    %r9d,%r9d
  401833:	c5 f9 6f 1d d5 27 00 	vmovdqa 0x27d5(%rip),%xmm3        # 404010 <_IO_stdin_used+0x10>
  40183a:	00 
  40183b:	c4 e2 7d 59 25 dc 27 	vpbroadcastq 0x27dc(%rip),%ymm4        # 404020 <_IO_stdin_used+0x20>
  401842:	00 00 
  401844:	eb 16                	jmp    40185c <uint16_t_secure_store_impl+0x6c>
  401846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40184d:	00 00 00 
  401850:	49 ff c1             	inc    %r9
  401853:	4d 39 c1             	cmp    %r8,%r9
  401856:	0f 84 92 00 00 00    	je     4018ee <uint16_t_secure_store_impl+0xfe>
  40185c:	4c 89 c8             	mov    %r9,%rax
  40185f:	48 c1 e0 05          	shl    $0x5,%rax
  401863:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401867:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40186b:	01 fe                	add    %edi,%esi
  40186d:	83 e6 e0             	and    $0xffffffe0,%esi
  401870:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401874:	48 01 f9             	add    %rdi,%rcx
  401877:	48 39 f1             	cmp    %rsi,%rcx
  40187a:	72 d4                	jb     401850 <uint16_t_secure_store_impl+0x60>
  40187c:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401880:	48 01 d0             	add    %rdx,%rax
  401883:	48 83 c0 1c          	add    $0x1c,%rax
  401887:	c5 f9 6e ee          	vmovd  %esi,%xmm5
  40188b:	c4 e2 79 58 ed       	vpbroadcastd %xmm5,%xmm5
  401890:	c5 d1 eb eb          	vpor   %xmm3,%xmm5,%xmm5
  401894:	c4 e2 79 35 ed       	vpmovzxdq %xmm5,%xmm5
  401899:	89 f1                	mov    %esi,%ecx
  40189b:	83 c9 18             	or     $0x18,%ecx
  40189e:	c4 e1 f9 6e f1       	vmovq  %rcx,%xmm6
  4018a3:	c4 e3 49 0f f5 08    	vpalignr $0x8,%xmm5,%xmm6,%xmm6
  4018a9:	c4 e1 f9 6e fe       	vmovq  %rsi,%xmm7
  4018ae:	c5 c1 6c ed          	vpunpcklqdq %xmm5,%xmm7,%xmm5
  4018b2:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  4018b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4018bf:	00 
  4018c0:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  4018c5:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  4018c9:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  4018cd:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  4018d3:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  4018d7:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  4018db:	48 83 c6 20          	add    $0x20,%rsi
  4018df:	8b 08                	mov    (%rax),%ecx
  4018e1:	48 03 0f             	add    (%rdi),%rcx
  4018e4:	48 39 ce             	cmp    %rcx,%rsi
  4018e7:	76 d7                	jbe    4018c0 <uint16_t_secure_store_impl+0xd0>
  4018e9:	e9 62 ff ff ff       	jmpq   401850 <uint16_t_secure_store_impl+0x60>
  4018ee:	c5 f8 77             	vzeroupper 
  4018f1:	c3                   	retq   
  4018f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018f9:	00 00 00 
  4018fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401900 <uint8_t_secure_store_impl>:
  401900:	85 c9                	test   %ecx,%ecx
  401902:	0f 84 f6 00 00 00    	je     4019fe <uint8_t_secure_store_impl+0xfe>
  401908:	40 0f b6 c7          	movzbl %dil,%eax
  40190c:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  401911:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
  401916:	48 89 f0             	mov    %rsi,%rax
  401919:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
  40191d:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  401922:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  401927:	c1 e6 03             	shl    $0x3,%esi
  40192a:	b8 ff 00 00 00       	mov    $0xff,%eax
  40192f:	c4 e2 c9 f7 c0       	shlx   %rsi,%rax,%rax
  401934:	c4 e1 f9 6e d0       	vmovq  %rax,%xmm2
  401939:	c4 e2 7d 59 d2       	vpbroadcastq %xmm2,%ymm2
  40193e:	41 89 c8             	mov    %ecx,%r8d
  401941:	45 31 c9             	xor    %r9d,%r9d
  401944:	c5 f9 6f 1d c4 26 00 	vmovdqa 0x26c4(%rip),%xmm3        # 404010 <_IO_stdin_used+0x10>
  40194b:	00 
  40194c:	c4 e2 7d 59 25 cb 26 	vpbroadcastq 0x26cb(%rip),%ymm4        # 404020 <_IO_stdin_used+0x20>
  401953:	00 00 
  401955:	eb 15                	jmp    40196c <uint8_t_secure_store_impl+0x6c>
  401957:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40195e:	00 00 
  401960:	49 ff c1             	inc    %r9
  401963:	4d 39 c1             	cmp    %r8,%r9
  401966:	0f 84 92 00 00 00    	je     4019fe <uint8_t_secure_store_impl+0xfe>
  40196c:	4c 89 c8             	mov    %r9,%rax
  40196f:	48 c1 e0 05          	shl    $0x5,%rax
  401973:	48 8b 3c 02          	mov    (%rdx,%rax,1),%rdi
  401977:	8b 74 02 18          	mov    0x18(%rdx,%rax,1),%esi
  40197b:	01 fe                	add    %edi,%esi
  40197d:	83 e6 e0             	and    $0xffffffe0,%esi
  401980:	8b 4c 02 1c          	mov    0x1c(%rdx,%rax,1),%ecx
  401984:	48 01 f9             	add    %rdi,%rcx
  401987:	48 39 f1             	cmp    %rsi,%rcx
  40198a:	72 d4                	jb     401960 <uint8_t_secure_store_impl+0x60>
  40198c:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
  401990:	48 01 d0             	add    %rdx,%rax
  401993:	48 83 c0 1c          	add    $0x1c,%rax
  401997:	c5 f9 6e ee          	vmovd  %esi,%xmm5
  40199b:	c4 e2 79 58 ed       	vpbroadcastd %xmm5,%xmm5
  4019a0:	c5 d1 eb eb          	vpor   %xmm3,%xmm5,%xmm5
  4019a4:	c4 e2 79 35 ed       	vpmovzxdq %xmm5,%xmm5
  4019a9:	89 f1                	mov    %esi,%ecx
  4019ab:	83 c9 18             	or     $0x18,%ecx
  4019ae:	c4 e1 f9 6e f1       	vmovq  %rcx,%xmm6
  4019b3:	c4 e3 49 0f f5 08    	vpalignr $0x8,%xmm5,%xmm6,%xmm6
  4019b9:	c4 e1 f9 6e fe       	vmovq  %rsi,%xmm7
  4019be:	c5 c1 6c ed          	vpunpcklqdq %xmm5,%xmm7,%xmm5
  4019c2:	c4 e3 55 38 ee 01    	vinserti128 $0x1,%xmm6,%ymm5,%ymm5
  4019c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4019cf:	00 
  4019d0:	c4 e2 55 29 f1       	vpcmpeqq %ymm1,%ymm5,%ymm6
  4019d5:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  4019d9:	c5 fe 6f 3e          	vmovdqu (%rsi),%ymm7
  4019dd:	c4 e3 45 4c f0 60    	vpblendvb %ymm6,%ymm0,%ymm7,%ymm6
  4019e3:	c5 fe 7f 36          	vmovdqu %ymm6,(%rsi)
  4019e7:	c5 d5 d4 ec          	vpaddq %ymm4,%ymm5,%ymm5
  4019eb:	48 83 c6 20          	add    $0x20,%rsi
  4019ef:	8b 08                	mov    (%rax),%ecx
  4019f1:	48 03 0f             	add    (%rdi),%rcx
  4019f4:	48 39 ce             	cmp    %rcx,%rsi
  4019f7:	76 d7                	jbe    4019d0 <uint8_t_secure_store_impl+0xd0>
  4019f9:	e9 62 ff ff ff       	jmpq   401960 <uint8_t_secure_store_impl+0x60>
  4019fe:	c5 f8 77             	vzeroupper 
  401a01:	c3                   	retq   
  401a02:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a09:	00 00 00 
  401a0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a10 <uint64_t_secure_store>:
  401a10:	41 83 f8 01          	cmp    $0x1,%r8d
  401a14:	75 09                	jne    401a1f <uint64_t_secure_store+0xf>
  401a16:	48 85 f6             	test   %rsi,%rsi
  401a19:	74 03                	je     401a1e <uint64_t_secure_store+0xe>
  401a1b:	48 89 3e             	mov    %rdi,(%rsi)
  401a1e:	c3                   	retq   
  401a1f:	e9 ac fb ff ff       	jmpq   4015d0 <uint64_t_secure_store_impl>
  401a24:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a2b:	00 00 00 
  401a2e:	66 90                	xchg   %ax,%ax

0000000000401a30 <uint32_t_secure_store>:
  401a30:	41 83 f8 01          	cmp    $0x1,%r8d
  401a34:	75 08                	jne    401a3e <uint32_t_secure_store+0xe>
  401a36:	48 85 f6             	test   %rsi,%rsi
  401a39:	74 02                	je     401a3d <uint32_t_secure_store+0xd>
  401a3b:	89 3e                	mov    %edi,(%rsi)
  401a3d:	c3                   	retq   
  401a3e:	e9 9d fc ff ff       	jmpq   4016e0 <uint32_t_secure_store_impl>
  401a43:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a4a:	00 00 00 
  401a4d:	0f 1f 00             	nopl   (%rax)

0000000000401a50 <uint16_t_secure_store>:
  401a50:	41 83 f8 01          	cmp    $0x1,%r8d
  401a54:	75 09                	jne    401a5f <uint16_t_secure_store+0xf>
  401a56:	48 85 f6             	test   %rsi,%rsi
  401a59:	74 03                	je     401a5e <uint16_t_secure_store+0xe>
  401a5b:	66 89 3e             	mov    %di,(%rsi)
  401a5e:	c3                   	retq   
  401a5f:	0f b7 ff             	movzwl %di,%edi
  401a62:	e9 89 fd ff ff       	jmpq   4017f0 <uint16_t_secure_store_impl>
  401a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401a6e:	00 00 

0000000000401a70 <uint8_t_secure_store>:
  401a70:	41 83 f8 01          	cmp    $0x1,%r8d
  401a74:	75 09                	jne    401a7f <uint8_t_secure_store+0xf>
  401a76:	48 85 f6             	test   %rsi,%rsi
  401a79:	74 03                	je     401a7e <uint8_t_secure_store+0xe>
  401a7b:	40 88 3e             	mov    %dil,(%rsi)
  401a7e:	c3                   	retq   
  401a7f:	40 0f b6 ff          	movzbl %dil,%edi
  401a83:	e9 78 fe ff ff       	jmpq   401900 <uint8_t_secure_store_impl>
  401a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a8f:	00 

0000000000401a90 <uint64_t_secure_store_sensitive>:
  401a90:	41 83 f8 01          	cmp    $0x1,%r8d
  401a94:	75 10                	jne    401aa6 <uint64_t_secure_store_sensitive+0x16>
  401a96:	48 8b 02             	mov    (%rdx),%rax
  401a99:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401a9c:	48 85 f6             	test   %rsi,%rsi
  401a9f:	74 0a                	je     401aab <uint64_t_secure_store_sensitive+0x1b>
  401aa1:	48 89 3c 08          	mov    %rdi,(%rax,%rcx,1)
  401aa5:	c3                   	retq   
  401aa6:	e9 25 fb ff ff       	jmpq   4015d0 <uint64_t_secure_store_impl>
  401aab:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
  401aaf:	c3                   	retq   

0000000000401ab0 <uint32_t_secure_store_sensitive>:
  401ab0:	41 83 f8 01          	cmp    $0x1,%r8d
  401ab4:	75 0f                	jne    401ac5 <uint32_t_secure_store_sensitive+0x15>
  401ab6:	48 8b 02             	mov    (%rdx),%rax
  401ab9:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401abc:	48 85 f6             	test   %rsi,%rsi
  401abf:	74 09                	je     401aca <uint32_t_secure_store_sensitive+0x1a>
  401ac1:	89 3c 08             	mov    %edi,(%rax,%rcx,1)
  401ac4:	c3                   	retq   
  401ac5:	e9 16 fc ff ff       	jmpq   4016e0 <uint32_t_secure_store_impl>
  401aca:	8b 04 08             	mov    (%rax,%rcx,1),%eax
  401acd:	c3                   	retq   
  401ace:	66 90                	xchg   %ax,%ax

0000000000401ad0 <uint16_t_secure_store_sensitive>:
  401ad0:	41 83 f8 01          	cmp    $0x1,%r8d
  401ad4:	75 10                	jne    401ae6 <uint16_t_secure_store_sensitive+0x16>
  401ad6:	48 8b 02             	mov    (%rdx),%rax
  401ad9:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401adc:	48 85 f6             	test   %rsi,%rsi
  401adf:	74 0d                	je     401aee <uint16_t_secure_store_sensitive+0x1e>
  401ae1:	66 89 3c 08          	mov    %di,(%rax,%rcx,1)
  401ae5:	c3                   	retq   
  401ae6:	0f b7 ff             	movzwl %di,%edi
  401ae9:	e9 02 fd ff ff       	jmpq   4017f0 <uint16_t_secure_store_impl>
  401aee:	0f b7 04 08          	movzwl (%rax,%rcx,1),%eax
  401af2:	c3                   	retq   
  401af3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401afa:	00 00 00 
  401afd:	0f 1f 00             	nopl   (%rax)

0000000000401b00 <uint8_t_secure_store_sensitive>:
  401b00:	41 83 f8 01          	cmp    $0x1,%r8d
  401b04:	75 10                	jne    401b16 <uint8_t_secure_store_sensitive+0x16>
  401b06:	48 8b 02             	mov    (%rdx),%rax
  401b09:	8b 4a 18             	mov    0x18(%rdx),%ecx
  401b0c:	48 85 f6             	test   %rsi,%rsi
  401b0f:	74 0e                	je     401b1f <uint8_t_secure_store_sensitive+0x1f>
  401b11:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
  401b15:	c3                   	retq   
  401b16:	40 0f b6 ff          	movzbl %dil,%edi
  401b1a:	e9 e1 fd ff ff       	jmpq   401900 <uint8_t_secure_store_impl>
  401b1f:	8a 04 08             	mov    (%rax,%rcx,1),%al
  401b22:	c3                   	retq   
  401b23:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b2a:	00 00 00 
  401b2d:	0f 1f 00             	nopl   (%rax)

0000000000401b30 <branch_id>:
  401b30:	c3                   	retq   
  401b31:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b38:	00 00 00 
  401b3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401b40 <main>:
  401b40:	55                   	push   %rbp
  401b41:	41 57                	push   %r15
  401b43:	41 56                	push   %r14
  401b45:	41 55                	push   %r13
  401b47:	41 54                	push   %r12
  401b49:	53                   	push   %rbx
  401b4a:	48 81 ec 48 01 00 00 	sub    $0x148,%rsp
  401b51:	be 70 60 40 00       	mov    $0x406070,%esi
  401b56:	ba 01 00 00 00       	mov    $0x1,%edx
  401b5b:	31 ff                	xor    %edi,%edi
  401b5d:	e8 ee f4 ff ff       	callq  401050 <read@plt>
  401b62:	c6 05 07 45 00 00 00 	movb   $0x0,0x4507(%rip)        # 406070 <secret>
  401b69:	be a0 60 40 00       	mov    $0x4060a0,%esi
  401b6e:	ba 00 01 00 00       	mov    $0x100,%edx
  401b73:	31 ff                	xor    %edi,%edi
  401b75:	e8 d6 f4 ff ff       	callq  401050 <read@plt>
  401b7a:	c7 05 fc 44 00 00 01 	movl   $0x1,0x44fc(%rip)        # 406080 <vis>
  401b81:	00 00 00 
  401b84:	c5 fc 10 05 14 45 00 	vmovups 0x4514(%rip),%ymm0        # 4060a0 <in>
  401b8b:	00 
  401b8c:	c5 fc 11 05 bc 44 00 	vmovups %ymm0,0x44bc(%rip)        # 406050 <dis>
  401b93:	00 
  401b94:	b0 01                	mov    $0x1,%al
  401b96:	84 c0                	test   %al,%al
  401b98:	0f 84 9f 00 00 00    	je     401c3d <main+0xfd>
  401b9e:	48 8b 05 df 44 00 00 	mov    0x44df(%rip),%rax        # 406084 <vis+0x4>
  401ba5:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  401baa:	85 c0                	test   %eax,%eax
  401bac:	0f 84 aa 00 00 00    	je     401c5c <main+0x11c>
  401bb2:	48 8b 05 cf 44 00 00 	mov    0x44cf(%rip),%rax        # 406088 <vis+0x8>
  401bb9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  401bbe:	85 c0                	test   %eax,%eax
  401bc0:	0f 84 e8 00 00 00    	je     401cae <main+0x16e>
  401bc6:	48 8b 05 bf 44 00 00 	mov    0x44bf(%rip),%rax        # 40608c <vis+0xc>
  401bcd:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401bd2:	85 c0                	test   %eax,%eax
  401bd4:	0f 84 b8 01 00 00    	je     401d92 <main+0x252>
  401bda:	48 8b 05 af 44 00 00 	mov    0x44af(%rip),%rax        # 406090 <vis+0x10>
  401be1:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401be6:	85 c0                	test   %eax,%eax
  401be8:	0f 84 3c 02 00 00    	je     401e2a <main+0x2ea>
  401bee:	48 8b 05 9f 44 00 00 	mov    0x449f(%rip),%rax        # 406094 <vis+0x14>
  401bf5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  401bfa:	85 c0                	test   %eax,%eax
  401bfc:	0f 84 c0 02 00 00    	je     401ec2 <main+0x382>
  401c02:	48 8b 05 8f 44 00 00 	mov    0x448f(%rip),%rax        # 406098 <vis+0x18>
  401c09:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  401c0e:	85 c0                	test   %eax,%eax
  401c10:	0f 84 44 03 00 00    	je     401f5a <main+0x41a>
  401c16:	4c 8b 35 7f 44 00 00 	mov    0x447f(%rip),%r14        # 40609c <vis+0x1c>
  401c1d:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  401c23:	45 85 f6             	test   %r14d,%r14d
  401c26:	0f 85 05 04 00 00    	jne    402031 <main+0x4f1>
  401c2c:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  401c32:	8b 2d 38 44 00 00    	mov    0x4438(%rip),%ebp        # 406070 <secret>
  401c38:	e9 ad 03 00 00       	jmpq   401fea <main+0x4aa>
  401c3d:	8b 2d 2d 44 00 00    	mov    0x442d(%rip),%ebp        # 406070 <secret>
  401c43:	48 8b 05 3a 44 00 00 	mov    0x443a(%rip),%rax        # 406084 <vis+0x4>
  401c4a:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  401c4f:	85 c0                	test   %eax,%eax
  401c51:	0f 84 ed 00 00 00    	je     401d44 <main+0x204>
  401c57:	41 89 ed             	mov    %ebp,%r13d
  401c5a:	eb 1b                	jmp    401c77 <main+0x137>
  401c5c:	8b 2d 0e 44 00 00    	mov    0x440e(%rip),%ebp        # 406070 <secret>
  401c62:	44 8d 6d 01          	lea    0x1(%rbp),%r13d
  401c66:	8d 04 ad 04 00 00 00 	lea    0x4(,%rbp,4),%eax
  401c6d:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  401c74:	00 00 00 
  401c77:	48 8b 05 0a 44 00 00 	mov    0x440a(%rip),%rax        # 406088 <vis+0x8>
  401c7e:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  401c83:	85 c0                	test   %eax,%eax
  401c85:	75 61                	jne    401ce8 <main+0x1a8>
  401c87:	45 85 ed             	test   %r13d,%r13d
  401c8a:	78 2e                	js     401cba <main+0x17a>
  401c8c:	48 8b 0d c5 43 00 00 	mov    0x43c5(%rip),%rcx        # 406058 <dis+0x8>
  401c93:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  401c9a:	00 
  401c9b:	48 8b 90 50 60 40 00 	mov    0x406050(%rax),%rdx
  401ca2:	39 d1                	cmp    %edx,%ecx
  401ca4:	7c 2d                	jl     401cd3 <main+0x193>
  401ca6:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  401cac:	eb 3a                	jmp    401ce8 <main+0x1a8>
  401cae:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  401cb4:	8b 2d b6 43 00 00    	mov    0x43b6(%rip),%ebp        # 406070 <secret>
  401cba:	48 8b 05 97 43 00 00 	mov    0x4397(%rip),%rax        # 406058 <dis+0x8>
  401cc1:	41 c1 e5 02          	shl    $0x2,%r13d
  401cc5:	49 8b 85 50 60 40 00 	mov    0x406050(%r13),%rax
  401ccc:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  401cd3:	44 8d 6d 02          	lea    0x2(%rbp),%r13d
  401cd7:	8d 04 ad 08 00 00 00 	lea    0x8(,%rbp,4),%eax
  401cde:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  401ce5:	00 00 00 
  401ce8:	48 8b 05 9d 43 00 00 	mov    0x439d(%rip),%rax        # 40608c <vis+0xc>
  401cef:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401cf4:	85 c0                	test   %eax,%eax
  401cf6:	0f 85 dd 00 00 00    	jne    401dd9 <main+0x299>
  401cfc:	45 85 ed             	test   %r13d,%r13d
  401cff:	0f 88 99 00 00 00    	js     401d9e <main+0x25e>
  401d05:	48 8b 1d 50 43 00 00 	mov    0x4350(%rip),%rbx        # 40605c <dis+0xc>
  401d0c:	44 89 e8             	mov    %r13d,%eax
  401d0f:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  401d16:	00 
  401d17:	be 08 41 40 00       	mov    $0x404108,%esi
  401d1c:	ba 01 00 00 00       	mov    $0x1,%edx
  401d21:	c5 f8 77             	vzeroupper 
  401d24:	e8 97 f4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401d29:	39 c3                	cmp    %eax,%ebx
  401d2b:	0f 8c 93 00 00 00    	jl     401dc4 <main+0x284>
  401d31:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  401d38:	00 
  401d39:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  401d3f:	e9 95 00 00 00       	jmpq   401dd9 <main+0x299>
  401d44:	85 ed                	test   %ebp,%ebp
  401d46:	0f 88 16 ff ff ff    	js     401c62 <main+0x122>
  401d4c:	4c 8d 74 24 08       	lea    0x8(%rsp),%r14
  401d51:	bf 54 60 40 00       	mov    $0x406054,%edi
  401d56:	4c 89 f6             	mov    %r14,%rsi
  401d59:	31 d2                	xor    %edx,%edx
  401d5b:	c5 f8 77             	vzeroupper 
  401d5e:	e8 5d f4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401d63:	48 89 c3             	mov    %rax,%rbx
  401d66:	48 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%rdi
  401d6d:	00 
  401d6e:	4c 89 f6             	mov    %r14,%rsi
  401d71:	31 d2                	xor    %edx,%edx
  401d73:	e8 48 f4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401d78:	39 c3                	cmp    %eax,%ebx
  401d7a:	0f 8c e2 fe ff ff    	jl     401c62 <main+0x122>
  401d80:	8d 04 ad 00 00 00 00 	lea    0x0(,%rbp,4),%eax
  401d87:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  401d8d:	e9 c5 fe ff ff       	jmpq   401c57 <main+0x117>
  401d92:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  401d98:	8b 2d d2 42 00 00    	mov    0x42d2(%rip),%ebp        # 406070 <secret>
  401d9e:	48 8b 05 b7 42 00 00 	mov    0x42b7(%rip),%rax        # 40605c <dis+0xc>
  401da5:	be 08 41 40 00       	mov    $0x404108,%esi
  401daa:	31 ff                	xor    %edi,%edi
  401dac:	ba 01 00 00 00       	mov    $0x1,%edx
  401db1:	c5 f8 77             	vzeroupper 
  401db4:	e8 07 f4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401db9:	41 c1 e5 02          	shl    $0x2,%r13d
  401dbd:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  401dc4:	44 8d 6d 03          	lea    0x3(%rbp),%r13d
  401dc8:	8d 04 ad 0c 00 00 00 	lea    0xc(,%rbp,4),%eax
  401dcf:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  401dd6:	00 00 00 
  401dd9:	48 8b 05 b0 42 00 00 	mov    0x42b0(%rip),%rax        # 406090 <vis+0x10>
  401de0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401de5:	85 c0                	test   %eax,%eax
  401de7:	0f 85 84 00 00 00    	jne    401e71 <main+0x331>
  401ded:	45 85 ed             	test   %r13d,%r13d
  401df0:	78 44                	js     401e36 <main+0x2f6>
  401df2:	48 8b 1d 67 42 00 00 	mov    0x4267(%rip),%rbx        # 406060 <dis+0x10>
  401df9:	44 89 e8             	mov    %r13d,%eax
  401dfc:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  401e03:	00 
  401e04:	be 08 41 40 00       	mov    $0x404108,%esi
  401e09:	ba 01 00 00 00       	mov    $0x1,%edx
  401e0e:	c5 f8 77             	vzeroupper 
  401e11:	e8 aa f3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401e16:	39 c3                	cmp    %eax,%ebx
  401e18:	7c 42                	jl     401e5c <main+0x31c>
  401e1a:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  401e21:	00 
  401e22:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  401e28:	eb 47                	jmp    401e71 <main+0x331>
  401e2a:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  401e30:	8b 2d 3a 42 00 00    	mov    0x423a(%rip),%ebp        # 406070 <secret>
  401e36:	48 8b 05 23 42 00 00 	mov    0x4223(%rip),%rax        # 406060 <dis+0x10>
  401e3d:	be 08 41 40 00       	mov    $0x404108,%esi
  401e42:	31 ff                	xor    %edi,%edi
  401e44:	ba 01 00 00 00       	mov    $0x1,%edx
  401e49:	c5 f8 77             	vzeroupper 
  401e4c:	e8 6f f3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401e51:	41 c1 e5 02          	shl    $0x2,%r13d
  401e55:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  401e5c:	44 8d 6d 04          	lea    0x4(%rbp),%r13d
  401e60:	8d 04 ad 10 00 00 00 	lea    0x10(,%rbp,4),%eax
  401e67:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  401e6e:	00 00 00 
  401e71:	48 8b 05 1c 42 00 00 	mov    0x421c(%rip),%rax        # 406094 <vis+0x14>
  401e78:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  401e7d:	85 c0                	test   %eax,%eax
  401e7f:	0f 85 84 00 00 00    	jne    401f09 <main+0x3c9>
  401e85:	45 85 ed             	test   %r13d,%r13d
  401e88:	78 44                	js     401ece <main+0x38e>
  401e8a:	48 8b 1d d3 41 00 00 	mov    0x41d3(%rip),%rbx        # 406064 <dis+0x14>
  401e91:	44 89 e8             	mov    %r13d,%eax
  401e94:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  401e9b:	00 
  401e9c:	be 08 41 40 00       	mov    $0x404108,%esi
  401ea1:	ba 01 00 00 00       	mov    $0x1,%edx
  401ea6:	c5 f8 77             	vzeroupper 
  401ea9:	e8 12 f3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401eae:	39 c3                	cmp    %eax,%ebx
  401eb0:	7c 42                	jl     401ef4 <main+0x3b4>
  401eb2:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  401eb9:	00 
  401eba:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  401ec0:	eb 47                	jmp    401f09 <main+0x3c9>
  401ec2:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  401ec8:	8b 2d a2 41 00 00    	mov    0x41a2(%rip),%ebp        # 406070 <secret>
  401ece:	48 8b 05 8f 41 00 00 	mov    0x418f(%rip),%rax        # 406064 <dis+0x14>
  401ed5:	be 08 41 40 00       	mov    $0x404108,%esi
  401eda:	31 ff                	xor    %edi,%edi
  401edc:	ba 01 00 00 00       	mov    $0x1,%edx
  401ee1:	c5 f8 77             	vzeroupper 
  401ee4:	e8 d7 f2 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401ee9:	41 c1 e5 02          	shl    $0x2,%r13d
  401eed:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  401ef4:	44 8d 6d 05          	lea    0x5(%rbp),%r13d
  401ef8:	8d 04 ad 14 00 00 00 	lea    0x14(,%rbp,4),%eax
  401eff:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  401f06:	00 00 00 
  401f09:	48 8b 05 88 41 00 00 	mov    0x4188(%rip),%rax        # 406098 <vis+0x18>
  401f10:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  401f15:	85 c0                	test   %eax,%eax
  401f17:	0f 85 84 00 00 00    	jne    401fa1 <main+0x461>
  401f1d:	45 85 ed             	test   %r13d,%r13d
  401f20:	78 44                	js     401f66 <main+0x426>
  401f22:	48 8b 1d 3f 41 00 00 	mov    0x413f(%rip),%rbx        # 406068 <dis+0x18>
  401f29:	44 89 e8             	mov    %r13d,%eax
  401f2c:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  401f33:	00 
  401f34:	be 08 41 40 00       	mov    $0x404108,%esi
  401f39:	ba 01 00 00 00       	mov    $0x1,%edx
  401f3e:	c5 f8 77             	vzeroupper 
  401f41:	e8 7a f2 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401f46:	39 c3                	cmp    %eax,%ebx
  401f48:	7c 42                	jl     401f8c <main+0x44c>
  401f4a:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  401f51:	00 
  401f52:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  401f58:	eb 47                	jmp    401fa1 <main+0x461>
  401f5a:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  401f60:	8b 2d 0a 41 00 00    	mov    0x410a(%rip),%ebp        # 406070 <secret>
  401f66:	48 8b 05 fb 40 00 00 	mov    0x40fb(%rip),%rax        # 406068 <dis+0x18>
  401f6d:	be 08 41 40 00       	mov    $0x404108,%esi
  401f72:	31 ff                	xor    %edi,%edi
  401f74:	ba 01 00 00 00       	mov    $0x1,%edx
  401f79:	c5 f8 77             	vzeroupper 
  401f7c:	e8 3f f2 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401f81:	41 c1 e5 02          	shl    $0x2,%r13d
  401f85:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  401f8c:	44 8d 6d 06          	lea    0x6(%rbp),%r13d
  401f90:	8d 04 ad 18 00 00 00 	lea    0x18(,%rbp,4),%eax
  401f97:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  401f9e:	00 00 00 
  401fa1:	4c 8b 35 f4 40 00 00 	mov    0x40f4(%rip),%r14        # 40609c <vis+0x1c>
  401fa8:	45 85 f6             	test   %r14d,%r14d
  401fab:	75 7b                	jne    402028 <main+0x4e8>
  401fad:	45 85 ed             	test   %r13d,%r13d
  401fb0:	78 38                	js     401fea <main+0x4aa>
  401fb2:	48 8b 1d b3 40 00 00 	mov    0x40b3(%rip),%rbx        # 40606c <dis+0x1c>
  401fb9:	44 89 e8             	mov    %r13d,%eax
  401fbc:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  401fc3:	00 
  401fc4:	be 08 41 40 00       	mov    $0x404108,%esi
  401fc9:	ba 01 00 00 00       	mov    $0x1,%edx
  401fce:	c5 f8 77             	vzeroupper 
  401fd1:	e8 ea f1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  401fd6:	39 c3                	cmp    %eax,%ebx
  401fd8:	7c 36                	jl     402010 <main+0x4d0>
  401fda:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  401fe1:	00 
  401fe2:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  401fe8:	eb 3e                	jmp    402028 <main+0x4e8>
  401fea:	48 8b 05 7b 40 00 00 	mov    0x407b(%rip),%rax        # 40606c <dis+0x1c>
  401ff1:	be 08 41 40 00       	mov    $0x404108,%esi
  401ff6:	31 ff                	xor    %edi,%edi
  401ff8:	ba 01 00 00 00       	mov    $0x1,%edx
  401ffd:	c5 f8 77             	vzeroupper 
  402000:	e8 bb f1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402005:	41 c1 e5 02          	shl    $0x2,%r13d
  402009:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402010:	41 89 ed             	mov    %ebp,%r13d
  402013:	41 83 c5 07          	add    $0x7,%r13d
  402017:	8d 04 ad 1c 00 00 00 	lea    0x1c(,%rbp,4),%eax
  40201e:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  402025:	00 00 00 
  402028:	b8 01 00 00 00       	mov    $0x1,%eax
  40202d:	85 c0                	test   %eax,%eax
  40202f:	74 31                	je     402062 <main+0x522>
  402031:	be 08 41 40 00       	mov    $0x404108,%esi
  402036:	31 ff                	xor    %edi,%edi
  402038:	ba 01 00 00 00       	mov    $0x1,%edx
  40203d:	c5 f8 77             	vzeroupper 
  402040:	e8 7b f1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402045:	be 68 40 40 00       	mov    $0x404068,%esi
  40204a:	31 ff                	xor    %edi,%edi
  40204c:	ba 01 00 00 00       	mov    $0x1,%edx
  402051:	e8 6a f1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402056:	48 8b 05 f3 3f 00 00 	mov    0x3ff3(%rip),%rax        # 406050 <dis>
  40205d:	e9 3b 04 00 00       	jmpq   40249d <main+0x95d>
  402062:	49 63 ed             	movslq %r13d,%rbp
  402065:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  40206c:	00 
  40206d:	be 08 41 40 00       	mov    $0x404108,%esi
  402072:	4c 89 ff             	mov    %r15,%rdi
  402075:	ba 01 00 00 00       	mov    $0x1,%edx
  40207a:	c5 f8 77             	vzeroupper 
  40207d:	e8 3e f1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402082:	48 89 c3             	mov    %rax,%rbx
  402085:	48 c1 e5 05          	shl    $0x5,%rbp
  402089:	4c 8d a5 a0 60 40 00 	lea    0x4060a0(%rbp),%r12
  402090:	be 68 40 40 00       	mov    $0x404068,%esi
  402095:	4c 89 e7             	mov    %r12,%rdi
  402098:	ba 01 00 00 00       	mov    $0x1,%edx
  40209d:	e8 1e f1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4020a2:	48 8b 0d a7 3f 00 00 	mov    0x3fa7(%rip),%rcx        # 406050 <dis>
  4020a9:	01 d8                	add    %ebx,%eax
  4020ab:	39 c8                	cmp    %ecx,%eax
  4020ad:	0f 8d ea 03 00 00    	jge    40249d <main+0x95d>
  4020b3:	be 08 41 40 00       	mov    $0x404108,%esi
  4020b8:	4c 89 ff             	mov    %r15,%rdi
  4020bb:	ba 01 00 00 00       	mov    $0x1,%edx
  4020c0:	e8 fb f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4020c5:	48 89 c3             	mov    %rax,%rbx
  4020c8:	be 68 40 40 00       	mov    $0x404068,%esi
  4020cd:	4c 89 e7             	mov    %r12,%rdi
  4020d0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020d5:	e8 e6 f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4020da:	01 d8                	add    %ebx,%eax
  4020dc:	89 05 6e 3f 00 00    	mov    %eax,0x3f6e(%rip)        # 406050 <dis>
  4020e2:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
  4020e7:	0f 85 e3 03 00 00    	jne    4024d0 <main+0x990>
  4020ed:	49 63 ed             	movslq %r13d,%rbp
  4020f0:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  4020f7:	00 
  4020f8:	be 08 41 40 00       	mov    $0x404108,%esi
  4020fd:	4c 89 ff             	mov    %r15,%rdi
  402100:	ba 01 00 00 00       	mov    $0x1,%edx
  402105:	e8 b6 f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40210a:	48 89 c3             	mov    %rax,%rbx
  40210d:	48 c1 e5 05          	shl    $0x5,%rbp
  402111:	4c 8d a5 a4 60 40 00 	lea    0x4060a4(%rbp),%r12
  402118:	be 88 40 40 00       	mov    $0x404088,%esi
  40211d:	4c 89 e7             	mov    %r12,%rdi
  402120:	ba 01 00 00 00       	mov    $0x1,%edx
  402125:	e8 96 f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40212a:	48 8b 0d 23 3f 00 00 	mov    0x3f23(%rip),%rcx        # 406054 <dis+0x4>
  402131:	01 d8                	add    %ebx,%eax
  402133:	39 c8                	cmp    %ecx,%eax
  402135:	0f 8d be 03 00 00    	jge    4024f9 <main+0x9b9>
  40213b:	be 08 41 40 00       	mov    $0x404108,%esi
  402140:	4c 89 ff             	mov    %r15,%rdi
  402143:	ba 01 00 00 00       	mov    $0x1,%edx
  402148:	e8 73 f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40214d:	48 89 c3             	mov    %rax,%rbx
  402150:	be 88 40 40 00       	mov    $0x404088,%esi
  402155:	4c 89 e7             	mov    %r12,%rdi
  402158:	ba 01 00 00 00       	mov    $0x1,%edx
  40215d:	e8 5e f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402162:	01 d8                	add    %ebx,%eax
  402164:	89 05 ea 3e 00 00    	mov    %eax,0x3eea(%rip)        # 406054 <dis+0x4>
  40216a:	83 7c 24 30 00       	cmpl   $0x0,0x30(%rsp)
  40216f:	0f 85 b7 03 00 00    	jne    40252c <main+0x9ec>
  402175:	49 63 ed             	movslq %r13d,%rbp
  402178:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  40217f:	00 
  402180:	be 08 41 40 00       	mov    $0x404108,%esi
  402185:	4c 89 ff             	mov    %r15,%rdi
  402188:	ba 01 00 00 00       	mov    $0x1,%edx
  40218d:	e8 2e f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402192:	48 89 c3             	mov    %rax,%rbx
  402195:	48 c1 e5 05          	shl    $0x5,%rbp
  402199:	4c 8d a5 a8 60 40 00 	lea    0x4060a8(%rbp),%r12
  4021a0:	be a8 40 40 00       	mov    $0x4040a8,%esi
  4021a5:	4c 89 e7             	mov    %r12,%rdi
  4021a8:	ba 01 00 00 00       	mov    $0x1,%edx
  4021ad:	e8 0e f0 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4021b2:	48 8b 0d 9f 3e 00 00 	mov    0x3e9f(%rip),%rcx        # 406058 <dis+0x8>
  4021b9:	01 d8                	add    %ebx,%eax
  4021bb:	39 c8                	cmp    %ecx,%eax
  4021bd:	0f 8d 92 03 00 00    	jge    402555 <main+0xa15>
  4021c3:	be 08 41 40 00       	mov    $0x404108,%esi
  4021c8:	4c 89 ff             	mov    %r15,%rdi
  4021cb:	ba 01 00 00 00       	mov    $0x1,%edx
  4021d0:	e8 eb ef ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4021d5:	48 89 c3             	mov    %rax,%rbx
  4021d8:	be a8 40 40 00       	mov    $0x4040a8,%esi
  4021dd:	4c 89 e7             	mov    %r12,%rdi
  4021e0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021e5:	e8 d6 ef ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4021ea:	01 d8                	add    %ebx,%eax
  4021ec:	89 05 66 3e 00 00    	mov    %eax,0x3e66(%rip)        # 406058 <dis+0x8>
  4021f2:	83 7c 24 28 00       	cmpl   $0x0,0x28(%rsp)
  4021f7:	0f 85 8b 03 00 00    	jne    402588 <main+0xa48>
  4021fd:	49 63 ed             	movslq %r13d,%rbp
  402200:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402207:	00 
  402208:	be 08 41 40 00       	mov    $0x404108,%esi
  40220d:	4c 89 ff             	mov    %r15,%rdi
  402210:	ba 01 00 00 00       	mov    $0x1,%edx
  402215:	e8 a6 ef ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40221a:	48 89 c3             	mov    %rax,%rbx
  40221d:	48 c1 e5 05          	shl    $0x5,%rbp
  402221:	4c 8d a5 ac 60 40 00 	lea    0x4060ac(%rbp),%r12
  402228:	be c8 40 40 00       	mov    $0x4040c8,%esi
  40222d:	4c 89 e7             	mov    %r12,%rdi
  402230:	ba 01 00 00 00       	mov    $0x1,%edx
  402235:	e8 86 ef ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40223a:	48 8b 0d 1b 3e 00 00 	mov    0x3e1b(%rip),%rcx        # 40605c <dis+0xc>
  402241:	01 d8                	add    %ebx,%eax
  402243:	39 c8                	cmp    %ecx,%eax
  402245:	0f 8d 66 03 00 00    	jge    4025b1 <main+0xa71>
  40224b:	be 08 41 40 00       	mov    $0x404108,%esi
  402250:	4c 89 ff             	mov    %r15,%rdi
  402253:	ba 01 00 00 00       	mov    $0x1,%edx
  402258:	e8 63 ef ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40225d:	48 89 c3             	mov    %rax,%rbx
  402260:	be c8 40 40 00       	mov    $0x4040c8,%esi
  402265:	4c 89 e7             	mov    %r12,%rdi
  402268:	ba 01 00 00 00       	mov    $0x1,%edx
  40226d:	e8 4e ef ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402272:	01 d8                	add    %ebx,%eax
  402274:	89 05 e2 3d 00 00    	mov    %eax,0x3de2(%rip)        # 40605c <dis+0xc>
  40227a:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  40227f:	0f 85 5f 03 00 00    	jne    4025e4 <main+0xaa4>
  402285:	49 63 ed             	movslq %r13d,%rbp
  402288:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  40228f:	00 
  402290:	be 08 41 40 00       	mov    $0x404108,%esi
  402295:	4c 89 ff             	mov    %r15,%rdi
  402298:	ba 01 00 00 00       	mov    $0x1,%edx
  40229d:	e8 1e ef ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4022a2:	48 89 c3             	mov    %rax,%rbx
  4022a5:	48 c1 e5 05          	shl    $0x5,%rbp
  4022a9:	4c 8d a5 b0 60 40 00 	lea    0x4060b0(%rbp),%r12
  4022b0:	be e8 40 40 00       	mov    $0x4040e8,%esi
  4022b5:	4c 89 e7             	mov    %r12,%rdi
  4022b8:	ba 01 00 00 00       	mov    $0x1,%edx
  4022bd:	e8 fe ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4022c2:	48 8b 0d 97 3d 00 00 	mov    0x3d97(%rip),%rcx        # 406060 <dis+0x10>
  4022c9:	01 d8                	add    %ebx,%eax
  4022cb:	39 c8                	cmp    %ecx,%eax
  4022cd:	0f 8d 3a 03 00 00    	jge    40260d <main+0xacd>
  4022d3:	be 08 41 40 00       	mov    $0x404108,%esi
  4022d8:	4c 89 ff             	mov    %r15,%rdi
  4022db:	ba 01 00 00 00       	mov    $0x1,%edx
  4022e0:	e8 db ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4022e5:	48 89 c3             	mov    %rax,%rbx
  4022e8:	be e8 40 40 00       	mov    $0x4040e8,%esi
  4022ed:	4c 89 e7             	mov    %r12,%rdi
  4022f0:	ba 01 00 00 00       	mov    $0x1,%edx
  4022f5:	e8 c6 ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4022fa:	01 d8                	add    %ebx,%eax
  4022fc:	89 05 5e 3d 00 00    	mov    %eax,0x3d5e(%rip)        # 406060 <dis+0x10>
  402302:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  402307:	0f 85 33 03 00 00    	jne    402640 <main+0xb00>
  40230d:	49 63 ed             	movslq %r13d,%rbp
  402310:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402317:	00 
  402318:	be 08 41 40 00       	mov    $0x404108,%esi
  40231d:	4c 89 ff             	mov    %r15,%rdi
  402320:	ba 01 00 00 00       	mov    $0x1,%edx
  402325:	e8 96 ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40232a:	48 89 c3             	mov    %rax,%rbx
  40232d:	48 c1 e5 05          	shl    $0x5,%rbp
  402331:	4c 8d a5 b4 60 40 00 	lea    0x4060b4(%rbp),%r12
  402338:	be 28 41 40 00       	mov    $0x404128,%esi
  40233d:	4c 89 e7             	mov    %r12,%rdi
  402340:	ba 01 00 00 00       	mov    $0x1,%edx
  402345:	e8 76 ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40234a:	48 8b 0d 13 3d 00 00 	mov    0x3d13(%rip),%rcx        # 406064 <dis+0x14>
  402351:	01 d8                	add    %ebx,%eax
  402353:	39 c8                	cmp    %ecx,%eax
  402355:	0f 8d 0e 03 00 00    	jge    402669 <main+0xb29>
  40235b:	be 08 41 40 00       	mov    $0x404108,%esi
  402360:	4c 89 ff             	mov    %r15,%rdi
  402363:	ba 01 00 00 00       	mov    $0x1,%edx
  402368:	e8 53 ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40236d:	48 89 c3             	mov    %rax,%rbx
  402370:	be 28 41 40 00       	mov    $0x404128,%esi
  402375:	4c 89 e7             	mov    %r12,%rdi
  402378:	ba 01 00 00 00       	mov    $0x1,%edx
  40237d:	e8 3e ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402382:	01 d8                	add    %ebx,%eax
  402384:	89 05 da 3c 00 00    	mov    %eax,0x3cda(%rip)        # 406064 <dis+0x14>
  40238a:	83 7c 24 10 00       	cmpl   $0x0,0x10(%rsp)
  40238f:	0f 85 07 03 00 00    	jne    40269c <main+0xb5c>
  402395:	49 63 ed             	movslq %r13d,%rbp
  402398:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  40239f:	00 
  4023a0:	be 08 41 40 00       	mov    $0x404108,%esi
  4023a5:	4c 89 ff             	mov    %r15,%rdi
  4023a8:	ba 01 00 00 00       	mov    $0x1,%edx
  4023ad:	e8 0e ee ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4023b2:	48 89 c3             	mov    %rax,%rbx
  4023b5:	48 c1 e5 05          	shl    $0x5,%rbp
  4023b9:	4c 8d a5 b8 60 40 00 	lea    0x4060b8(%rbp),%r12
  4023c0:	be 28 40 40 00       	mov    $0x404028,%esi
  4023c5:	4c 89 e7             	mov    %r12,%rdi
  4023c8:	ba 01 00 00 00       	mov    $0x1,%edx
  4023cd:	e8 ee ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4023d2:	48 8b 0d 8f 3c 00 00 	mov    0x3c8f(%rip),%rcx        # 406068 <dis+0x18>
  4023d9:	01 d8                	add    %ebx,%eax
  4023db:	39 c8                	cmp    %ecx,%eax
  4023dd:	0f 8d e2 02 00 00    	jge    4026c5 <main+0xb85>
  4023e3:	be 08 41 40 00       	mov    $0x404108,%esi
  4023e8:	4c 89 ff             	mov    %r15,%rdi
  4023eb:	ba 01 00 00 00       	mov    $0x1,%edx
  4023f0:	e8 cb ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4023f5:	48 89 c3             	mov    %rax,%rbx
  4023f8:	be 28 40 40 00       	mov    $0x404028,%esi
  4023fd:	4c 89 e7             	mov    %r12,%rdi
  402400:	ba 01 00 00 00       	mov    $0x1,%edx
  402405:	e8 b6 ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40240a:	01 d8                	add    %ebx,%eax
  40240c:	89 05 56 3c 00 00    	mov    %eax,0x3c56(%rip)        # 406068 <dis+0x18>
  402412:	45 85 f6             	test   %r14d,%r14d
  402415:	0f 85 db 02 00 00    	jne    4026f6 <main+0xbb6>
  40241b:	49 63 ed             	movslq %r13d,%rbp
  40241e:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402425:	00 
  402426:	be 08 41 40 00       	mov    $0x404108,%esi
  40242b:	4c 89 ff             	mov    %r15,%rdi
  40242e:	ba 01 00 00 00       	mov    $0x1,%edx
  402433:	e8 88 ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402438:	48 89 c3             	mov    %rax,%rbx
  40243b:	48 c1 e5 05          	shl    $0x5,%rbp
  40243f:	4c 8d a5 bc 60 40 00 	lea    0x4060bc(%rbp),%r12
  402446:	be 48 40 40 00       	mov    $0x404048,%esi
  40244b:	4c 89 e7             	mov    %r12,%rdi
  40244e:	ba 01 00 00 00       	mov    $0x1,%edx
  402453:	e8 68 ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402458:	48 8b 0d 0d 3c 00 00 	mov    0x3c0d(%rip),%rcx        # 40606c <dis+0x1c>
  40245f:	01 d8                	add    %ebx,%eax
  402461:	39 c8                	cmp    %ecx,%eax
  402463:	0f 8d b6 02 00 00    	jge    40271f <main+0xbdf>
  402469:	be 08 41 40 00       	mov    $0x404108,%esi
  40246e:	4c 89 ff             	mov    %r15,%rdi
  402471:	ba 01 00 00 00       	mov    $0x1,%edx
  402476:	e8 45 ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40247b:	48 89 c3             	mov    %rax,%rbx
  40247e:	be 48 40 40 00       	mov    $0x404048,%esi
  402483:	4c 89 e7             	mov    %r12,%rdi
  402486:	ba 01 00 00 00       	mov    $0x1,%edx
  40248b:	e8 30 ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402490:	01 d8                	add    %ebx,%eax
  402492:	89 05 d4 3b 00 00    	mov    %eax,0x3bd4(%rip)        # 40606c <dis+0x1c>
  402498:	e9 aa 02 00 00       	jmpq   402747 <main+0xc07>
  40249d:	be 08 41 40 00       	mov    $0x404108,%esi
  4024a2:	31 ff                	xor    %edi,%edi
  4024a4:	ba 01 00 00 00       	mov    $0x1,%edx
  4024a9:	e8 12 ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4024ae:	be 68 40 40 00       	mov    $0x404068,%esi
  4024b3:	31 ff                	xor    %edi,%edi
  4024b5:	ba 01 00 00 00       	mov    $0x1,%edx
  4024ba:	e8 01 ed ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4024bf:	8b 05 8b 3b 00 00    	mov    0x3b8b(%rip),%eax        # 406050 <dis>
  4024c5:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
  4024ca:	0f 84 1d fc ff ff    	je     4020ed <main+0x5ad>
  4024d0:	be 08 41 40 00       	mov    $0x404108,%esi
  4024d5:	31 ff                	xor    %edi,%edi
  4024d7:	ba 01 00 00 00       	mov    $0x1,%edx
  4024dc:	e8 df ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4024e1:	be 88 40 40 00       	mov    $0x404088,%esi
  4024e6:	31 ff                	xor    %edi,%edi
  4024e8:	ba 01 00 00 00       	mov    $0x1,%edx
  4024ed:	e8 ce ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4024f2:	48 8b 05 5b 3b 00 00 	mov    0x3b5b(%rip),%rax        # 406054 <dis+0x4>
  4024f9:	be 08 41 40 00       	mov    $0x404108,%esi
  4024fe:	31 ff                	xor    %edi,%edi
  402500:	ba 01 00 00 00       	mov    $0x1,%edx
  402505:	e8 b6 ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40250a:	be 88 40 40 00       	mov    $0x404088,%esi
  40250f:	31 ff                	xor    %edi,%edi
  402511:	ba 01 00 00 00       	mov    $0x1,%edx
  402516:	e8 a5 ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40251b:	8b 05 33 3b 00 00    	mov    0x3b33(%rip),%eax        # 406054 <dis+0x4>
  402521:	83 7c 24 30 00       	cmpl   $0x0,0x30(%rsp)
  402526:	0f 84 49 fc ff ff    	je     402175 <main+0x635>
  40252c:	be 08 41 40 00       	mov    $0x404108,%esi
  402531:	31 ff                	xor    %edi,%edi
  402533:	ba 01 00 00 00       	mov    $0x1,%edx
  402538:	e8 83 ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40253d:	be a8 40 40 00       	mov    $0x4040a8,%esi
  402542:	31 ff                	xor    %edi,%edi
  402544:	ba 01 00 00 00       	mov    $0x1,%edx
  402549:	e8 72 ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40254e:	48 8b 05 03 3b 00 00 	mov    0x3b03(%rip),%rax        # 406058 <dis+0x8>
  402555:	be 08 41 40 00       	mov    $0x404108,%esi
  40255a:	31 ff                	xor    %edi,%edi
  40255c:	ba 01 00 00 00       	mov    $0x1,%edx
  402561:	e8 5a ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402566:	be a8 40 40 00       	mov    $0x4040a8,%esi
  40256b:	31 ff                	xor    %edi,%edi
  40256d:	ba 01 00 00 00       	mov    $0x1,%edx
  402572:	e8 49 ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402577:	8b 05 db 3a 00 00    	mov    0x3adb(%rip),%eax        # 406058 <dis+0x8>
  40257d:	83 7c 24 28 00       	cmpl   $0x0,0x28(%rsp)
  402582:	0f 84 75 fc ff ff    	je     4021fd <main+0x6bd>
  402588:	be 08 41 40 00       	mov    $0x404108,%esi
  40258d:	31 ff                	xor    %edi,%edi
  40258f:	ba 01 00 00 00       	mov    $0x1,%edx
  402594:	e8 27 ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402599:	be c8 40 40 00       	mov    $0x4040c8,%esi
  40259e:	31 ff                	xor    %edi,%edi
  4025a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4025a5:	e8 16 ec ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4025aa:	48 8b 05 ab 3a 00 00 	mov    0x3aab(%rip),%rax        # 40605c <dis+0xc>
  4025b1:	be 08 41 40 00       	mov    $0x404108,%esi
  4025b6:	31 ff                	xor    %edi,%edi
  4025b8:	ba 01 00 00 00       	mov    $0x1,%edx
  4025bd:	e8 fe eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4025c2:	be c8 40 40 00       	mov    $0x4040c8,%esi
  4025c7:	31 ff                	xor    %edi,%edi
  4025c9:	ba 01 00 00 00       	mov    $0x1,%edx
  4025ce:	e8 ed eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4025d3:	8b 05 83 3a 00 00    	mov    0x3a83(%rip),%eax        # 40605c <dis+0xc>
  4025d9:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  4025de:	0f 84 a1 fc ff ff    	je     402285 <main+0x745>
  4025e4:	be 08 41 40 00       	mov    $0x404108,%esi
  4025e9:	31 ff                	xor    %edi,%edi
  4025eb:	ba 01 00 00 00       	mov    $0x1,%edx
  4025f0:	e8 cb eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4025f5:	be e8 40 40 00       	mov    $0x4040e8,%esi
  4025fa:	31 ff                	xor    %edi,%edi
  4025fc:	ba 01 00 00 00       	mov    $0x1,%edx
  402601:	e8 ba eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402606:	48 8b 05 53 3a 00 00 	mov    0x3a53(%rip),%rax        # 406060 <dis+0x10>
  40260d:	be 08 41 40 00       	mov    $0x404108,%esi
  402612:	31 ff                	xor    %edi,%edi
  402614:	ba 01 00 00 00       	mov    $0x1,%edx
  402619:	e8 a2 eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40261e:	be e8 40 40 00       	mov    $0x4040e8,%esi
  402623:	31 ff                	xor    %edi,%edi
  402625:	ba 01 00 00 00       	mov    $0x1,%edx
  40262a:	e8 91 eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40262f:	8b 05 2b 3a 00 00    	mov    0x3a2b(%rip),%eax        # 406060 <dis+0x10>
  402635:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  40263a:	0f 84 cd fc ff ff    	je     40230d <main+0x7cd>
  402640:	be 08 41 40 00       	mov    $0x404108,%esi
  402645:	31 ff                	xor    %edi,%edi
  402647:	ba 01 00 00 00       	mov    $0x1,%edx
  40264c:	e8 6f eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402651:	be 28 41 40 00       	mov    $0x404128,%esi
  402656:	31 ff                	xor    %edi,%edi
  402658:	ba 01 00 00 00       	mov    $0x1,%edx
  40265d:	e8 5e eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402662:	48 8b 05 fb 39 00 00 	mov    0x39fb(%rip),%rax        # 406064 <dis+0x14>
  402669:	be 08 41 40 00       	mov    $0x404108,%esi
  40266e:	31 ff                	xor    %edi,%edi
  402670:	ba 01 00 00 00       	mov    $0x1,%edx
  402675:	e8 46 eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40267a:	be 28 41 40 00       	mov    $0x404128,%esi
  40267f:	31 ff                	xor    %edi,%edi
  402681:	ba 01 00 00 00       	mov    $0x1,%edx
  402686:	e8 35 eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40268b:	8b 05 d3 39 00 00    	mov    0x39d3(%rip),%eax        # 406064 <dis+0x14>
  402691:	83 7c 24 10 00       	cmpl   $0x0,0x10(%rsp)
  402696:	0f 84 f9 fc ff ff    	je     402395 <main+0x855>
  40269c:	be 08 41 40 00       	mov    $0x404108,%esi
  4026a1:	31 ff                	xor    %edi,%edi
  4026a3:	ba 01 00 00 00       	mov    $0x1,%edx
  4026a8:	e8 13 eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4026ad:	be 28 40 40 00       	mov    $0x404028,%esi
  4026b2:	31 ff                	xor    %edi,%edi
  4026b4:	ba 01 00 00 00       	mov    $0x1,%edx
  4026b9:	e8 02 eb ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4026be:	48 8b 05 a3 39 00 00 	mov    0x39a3(%rip),%rax        # 406068 <dis+0x18>
  4026c5:	be 08 41 40 00       	mov    $0x404108,%esi
  4026ca:	31 ff                	xor    %edi,%edi
  4026cc:	ba 01 00 00 00       	mov    $0x1,%edx
  4026d1:	e8 ea ea ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4026d6:	be 28 40 40 00       	mov    $0x404028,%esi
  4026db:	31 ff                	xor    %edi,%edi
  4026dd:	ba 01 00 00 00       	mov    $0x1,%edx
  4026e2:	e8 d9 ea ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4026e7:	8b 05 7b 39 00 00    	mov    0x397b(%rip),%eax        # 406068 <dis+0x18>
  4026ed:	45 85 f6             	test   %r14d,%r14d
  4026f0:	0f 84 25 fd ff ff    	je     40241b <main+0x8db>
  4026f6:	be 08 41 40 00       	mov    $0x404108,%esi
  4026fb:	31 ff                	xor    %edi,%edi
  4026fd:	ba 01 00 00 00       	mov    $0x1,%edx
  402702:	e8 b9 ea ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402707:	be 48 40 40 00       	mov    $0x404048,%esi
  40270c:	31 ff                	xor    %edi,%edi
  40270e:	ba 01 00 00 00       	mov    $0x1,%edx
  402713:	e8 a8 ea ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402718:	48 8b 05 4d 39 00 00 	mov    0x394d(%rip),%rax        # 40606c <dis+0x1c>
  40271f:	be 08 41 40 00       	mov    $0x404108,%esi
  402724:	31 ff                	xor    %edi,%edi
  402726:	ba 01 00 00 00       	mov    $0x1,%edx
  40272b:	e8 90 ea ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402730:	be 48 40 40 00       	mov    $0x404048,%esi
  402735:	31 ff                	xor    %edi,%edi
  402737:	ba 01 00 00 00       	mov    $0x1,%edx
  40273c:	e8 7f ea ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402741:	8b 05 25 39 00 00    	mov    0x3925(%rip),%eax        # 40606c <dis+0x1c>
  402747:	b8 01 00 00 00       	mov    $0x1,%eax
  40274c:	85 c0                	test   %eax,%eax
  40274e:	74 50                	je     4027a0 <main+0xc60>
  402750:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
  402755:	0f 84 ca 00 00 00    	je     402825 <main+0xce5>
  40275b:	83 7c 24 30 00       	cmpl   $0x0,0x30(%rsp)
  402760:	0f 84 47 01 00 00    	je     4028ad <main+0xd6d>
  402766:	83 7c 24 28 00       	cmpl   $0x0,0x28(%rsp)
  40276b:	0f 84 c5 01 00 00    	je     402936 <main+0xdf6>
  402771:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  402776:	0f 84 43 02 00 00    	je     4029bf <main+0xe7f>
  40277c:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  402781:	0f 84 c1 02 00 00    	je     402a48 <main+0xf08>
  402787:	83 7c 24 10 00       	cmpl   $0x0,0x10(%rsp)
  40278c:	0f 84 3f 03 00 00    	je     402ad1 <main+0xf91>
  402792:	45 85 f6             	test   %r14d,%r14d
  402795:	0f 85 2a 04 00 00    	jne    402bc5 <main+0x1085>
  40279b:	e9 b2 03 00 00       	jmpq   402b52 <main+0x1012>
  4027a0:	48 8b 1d a9 38 00 00 	mov    0x38a9(%rip),%rbx        # 406050 <dis>
  4027a7:	45 85 ed             	test   %r13d,%r13d
  4027aa:	78 39                	js     4027e5 <main+0xca5>
  4027ac:	44 89 e8             	mov    %r13d,%eax
  4027af:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  4027b6:	00 
  4027b7:	be 08 41 40 00       	mov    $0x404108,%esi
  4027bc:	ba 01 00 00 00       	mov    $0x1,%edx
  4027c1:	e8 fa e9 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4027c6:	39 c3                	cmp    %eax,%ebx
  4027c8:	7c 37                	jl     402801 <main+0xcc1>
  4027ca:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  4027d1:	00 
  4027d2:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  4027d8:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
  4027dd:	0f 85 78 ff ff ff    	jne    40275b <main+0xc1b>
  4027e3:	eb 40                	jmp    402825 <main+0xce5>
  4027e5:	be 08 41 40 00       	mov    $0x404108,%esi
  4027ea:	31 ff                	xor    %edi,%edi
  4027ec:	ba 01 00 00 00       	mov    $0x1,%edx
  4027f1:	e8 ca e9 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4027f6:	41 c1 e5 02          	shl    $0x2,%r13d
  4027fa:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402801:	44 8b 2d 68 38 00 00 	mov    0x3868(%rip),%r13d        # 406070 <secret>
  402808:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  40280f:	00 
  402810:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  402817:	00 00 00 
  40281a:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
  40281f:	0f 85 36 ff ff ff    	jne    40275b <main+0xc1b>
  402825:	48 8b 1d 28 38 00 00 	mov    0x3828(%rip),%rbx        # 406054 <dis+0x4>
  40282c:	45 85 ed             	test   %r13d,%r13d
  40282f:	78 39                	js     40286a <main+0xd2a>
  402831:	44 89 e8             	mov    %r13d,%eax
  402834:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  40283b:	00 
  40283c:	be 08 41 40 00       	mov    $0x404108,%esi
  402841:	ba 01 00 00 00       	mov    $0x1,%edx
  402846:	e8 75 e9 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40284b:	39 c3                	cmp    %eax,%ebx
  40284d:	7c 37                	jl     402886 <main+0xd46>
  40284f:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  402856:	00 
  402857:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  40285d:	83 7c 24 30 00       	cmpl   $0x0,0x30(%rsp)
  402862:	0f 85 fe fe ff ff    	jne    402766 <main+0xc26>
  402868:	eb 43                	jmp    4028ad <main+0xd6d>
  40286a:	be 08 41 40 00       	mov    $0x404108,%esi
  40286f:	31 ff                	xor    %edi,%edi
  402871:	ba 01 00 00 00       	mov    $0x1,%edx
  402876:	e8 45 e9 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40287b:	41 c1 e5 02          	shl    $0x2,%r13d
  40287f:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402886:	44 8b 2d e3 37 00 00 	mov    0x37e3(%rip),%r13d        # 406070 <secret>
  40288d:	42 8d 04 ad 04 00 00 	lea    0x4(,%r13,4),%eax
  402894:	00 
  402895:	41 ff c5             	inc    %r13d
  402898:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  40289f:	00 00 00 
  4028a2:	83 7c 24 30 00       	cmpl   $0x0,0x30(%rsp)
  4028a7:	0f 85 b9 fe ff ff    	jne    402766 <main+0xc26>
  4028ad:	48 8b 1d a4 37 00 00 	mov    0x37a4(%rip),%rbx        # 406058 <dis+0x8>
  4028b4:	45 85 ed             	test   %r13d,%r13d
  4028b7:	78 39                	js     4028f2 <main+0xdb2>
  4028b9:	44 89 e8             	mov    %r13d,%eax
  4028bc:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  4028c3:	00 
  4028c4:	be 08 41 40 00       	mov    $0x404108,%esi
  4028c9:	ba 01 00 00 00       	mov    $0x1,%edx
  4028ce:	e8 ed e8 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4028d3:	39 c3                	cmp    %eax,%ebx
  4028d5:	7c 37                	jl     40290e <main+0xdce>
  4028d7:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  4028de:	00 
  4028df:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  4028e5:	83 7c 24 28 00       	cmpl   $0x0,0x28(%rsp)
  4028ea:	0f 85 81 fe ff ff    	jne    402771 <main+0xc31>
  4028f0:	eb 44                	jmp    402936 <main+0xdf6>
  4028f2:	be 08 41 40 00       	mov    $0x404108,%esi
  4028f7:	31 ff                	xor    %edi,%edi
  4028f9:	ba 01 00 00 00       	mov    $0x1,%edx
  4028fe:	e8 bd e8 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402903:	41 c1 e5 02          	shl    $0x2,%r13d
  402907:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  40290e:	44 8b 2d 5b 37 00 00 	mov    0x375b(%rip),%r13d        # 406070 <secret>
  402915:	42 8d 04 ad 08 00 00 	lea    0x8(,%r13,4),%eax
  40291c:	00 
  40291d:	41 83 c5 02          	add    $0x2,%r13d
  402921:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  402928:	00 00 00 
  40292b:	83 7c 24 28 00       	cmpl   $0x0,0x28(%rsp)
  402930:	0f 85 3b fe ff ff    	jne    402771 <main+0xc31>
  402936:	48 8b 1d 1f 37 00 00 	mov    0x371f(%rip),%rbx        # 40605c <dis+0xc>
  40293d:	45 85 ed             	test   %r13d,%r13d
  402940:	78 39                	js     40297b <main+0xe3b>
  402942:	44 89 e8             	mov    %r13d,%eax
  402945:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  40294c:	00 
  40294d:	be 08 41 40 00       	mov    $0x404108,%esi
  402952:	ba 01 00 00 00       	mov    $0x1,%edx
  402957:	e8 64 e8 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40295c:	39 c3                	cmp    %eax,%ebx
  40295e:	7c 37                	jl     402997 <main+0xe57>
  402960:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  402967:	00 
  402968:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  40296e:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  402973:	0f 85 03 fe ff ff    	jne    40277c <main+0xc3c>
  402979:	eb 44                	jmp    4029bf <main+0xe7f>
  40297b:	be 08 41 40 00       	mov    $0x404108,%esi
  402980:	31 ff                	xor    %edi,%edi
  402982:	ba 01 00 00 00       	mov    $0x1,%edx
  402987:	e8 34 e8 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40298c:	41 c1 e5 02          	shl    $0x2,%r13d
  402990:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402997:	44 8b 2d d2 36 00 00 	mov    0x36d2(%rip),%r13d        # 406070 <secret>
  40299e:	42 8d 04 ad 0c 00 00 	lea    0xc(,%r13,4),%eax
  4029a5:	00 
  4029a6:	41 83 c5 03          	add    $0x3,%r13d
  4029aa:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  4029b1:	00 00 00 
  4029b4:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  4029b9:	0f 85 bd fd ff ff    	jne    40277c <main+0xc3c>
  4029bf:	48 8b 1d 9a 36 00 00 	mov    0x369a(%rip),%rbx        # 406060 <dis+0x10>
  4029c6:	45 85 ed             	test   %r13d,%r13d
  4029c9:	78 39                	js     402a04 <main+0xec4>
  4029cb:	44 89 e8             	mov    %r13d,%eax
  4029ce:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  4029d5:	00 
  4029d6:	be 08 41 40 00       	mov    $0x404108,%esi
  4029db:	ba 01 00 00 00       	mov    $0x1,%edx
  4029e0:	e8 db e7 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  4029e5:	39 c3                	cmp    %eax,%ebx
  4029e7:	7c 37                	jl     402a20 <main+0xee0>
  4029e9:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  4029f0:	00 
  4029f1:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  4029f7:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  4029fc:	0f 85 85 fd ff ff    	jne    402787 <main+0xc47>
  402a02:	eb 44                	jmp    402a48 <main+0xf08>
  402a04:	be 08 41 40 00       	mov    $0x404108,%esi
  402a09:	31 ff                	xor    %edi,%edi
  402a0b:	ba 01 00 00 00       	mov    $0x1,%edx
  402a10:	e8 ab e7 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402a15:	41 c1 e5 02          	shl    $0x2,%r13d
  402a19:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402a20:	44 8b 2d 49 36 00 00 	mov    0x3649(%rip),%r13d        # 406070 <secret>
  402a27:	42 8d 04 ad 10 00 00 	lea    0x10(,%r13,4),%eax
  402a2e:	00 
  402a2f:	41 83 c5 04          	add    $0x4,%r13d
  402a33:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  402a3a:	00 00 00 
  402a3d:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  402a42:	0f 85 3f fd ff ff    	jne    402787 <main+0xc47>
  402a48:	48 8b 1d 15 36 00 00 	mov    0x3615(%rip),%rbx        # 406064 <dis+0x14>
  402a4f:	45 85 ed             	test   %r13d,%r13d
  402a52:	78 39                	js     402a8d <main+0xf4d>
  402a54:	44 89 e8             	mov    %r13d,%eax
  402a57:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  402a5e:	00 
  402a5f:	be 08 41 40 00       	mov    $0x404108,%esi
  402a64:	ba 01 00 00 00       	mov    $0x1,%edx
  402a69:	e8 52 e7 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402a6e:	39 c3                	cmp    %eax,%ebx
  402a70:	7c 37                	jl     402aa9 <main+0xf69>
  402a72:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  402a79:	00 
  402a7a:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  402a80:	83 7c 24 10 00       	cmpl   $0x0,0x10(%rsp)
  402a85:	0f 85 07 fd ff ff    	jne    402792 <main+0xc52>
  402a8b:	eb 44                	jmp    402ad1 <main+0xf91>
  402a8d:	be 08 41 40 00       	mov    $0x404108,%esi
  402a92:	31 ff                	xor    %edi,%edi
  402a94:	ba 01 00 00 00       	mov    $0x1,%edx
  402a99:	e8 22 e7 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402a9e:	41 c1 e5 02          	shl    $0x2,%r13d
  402aa2:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402aa9:	44 8b 2d c0 35 00 00 	mov    0x35c0(%rip),%r13d        # 406070 <secret>
  402ab0:	42 8d 04 ad 14 00 00 	lea    0x14(,%r13,4),%eax
  402ab7:	00 
  402ab8:	41 83 c5 05          	add    $0x5,%r13d
  402abc:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  402ac3:	00 00 00 
  402ac6:	83 7c 24 10 00       	cmpl   $0x0,0x10(%rsp)
  402acb:	0f 85 c1 fc ff ff    	jne    402792 <main+0xc52>
  402ad1:	48 8b 1d 90 35 00 00 	mov    0x3590(%rip),%rbx        # 406068 <dis+0x18>
  402ad8:	45 85 ed             	test   %r13d,%r13d
  402adb:	78 37                	js     402b14 <main+0xfd4>
  402add:	44 89 e8             	mov    %r13d,%eax
  402ae0:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  402ae7:	00 
  402ae8:	be 08 41 40 00       	mov    $0x404108,%esi
  402aed:	ba 01 00 00 00       	mov    $0x1,%edx
  402af2:	e8 c9 e6 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402af7:	39 c3                	cmp    %eax,%ebx
  402af9:	7c 35                	jl     402b30 <main+0xff0>
  402afb:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  402b02:	00 
  402b03:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  402b09:	45 85 f6             	test   %r14d,%r14d
  402b0c:	0f 85 b3 00 00 00    	jne    402bc5 <main+0x1085>
  402b12:	eb 3e                	jmp    402b52 <main+0x1012>
  402b14:	be 08 41 40 00       	mov    $0x404108,%esi
  402b19:	31 ff                	xor    %edi,%edi
  402b1b:	ba 01 00 00 00       	mov    $0x1,%edx
  402b20:	e8 9b e6 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402b25:	41 c1 e5 02          	shl    $0x2,%r13d
  402b29:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402b30:	44 8b 2d 39 35 00 00 	mov    0x3539(%rip),%r13d        # 406070 <secret>
  402b37:	42 8d 04 ad 18 00 00 	lea    0x18(,%r13,4),%eax
  402b3e:	00 
  402b3f:	41 83 c5 06          	add    $0x6,%r13d
  402b43:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  402b4a:	00 00 00 
  402b4d:	45 85 f6             	test   %r14d,%r14d
  402b50:	75 73                	jne    402bc5 <main+0x1085>
  402b52:	48 8b 1d 13 35 00 00 	mov    0x3513(%rip),%rbx        # 40606c <dis+0x1c>
  402b59:	45 85 ed             	test   %r13d,%r13d
  402b5c:	78 2e                	js     402b8c <main+0x104c>
  402b5e:	44 89 e8             	mov    %r13d,%eax
  402b61:	48 8d 3c 85 50 60 40 	lea    0x406050(,%rax,4),%rdi
  402b68:	00 
  402b69:	be 08 41 40 00       	mov    $0x404108,%esi
  402b6e:	ba 01 00 00 00       	mov    $0x1,%edx
  402b73:	e8 48 e6 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402b78:	39 c3                	cmp    %eax,%ebx
  402b7a:	7c 2c                	jl     402ba8 <main+0x1068>
  402b7c:	42 8d 04 ad 00 00 00 	lea    0x0(,%r13,4),%eax
  402b83:	00 
  402b84:	8b 80 80 60 40 00    	mov    0x406080(%rax),%eax
  402b8a:	eb 39                	jmp    402bc5 <main+0x1085>
  402b8c:	be 08 41 40 00       	mov    $0x404108,%esi
  402b91:	31 ff                	xor    %edi,%edi
  402b93:	ba 01 00 00 00       	mov    $0x1,%edx
  402b98:	e8 23 e6 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402b9d:	41 c1 e5 02          	shl    $0x2,%r13d
  402ba1:	41 8b 85 80 60 40 00 	mov    0x406080(%r13),%eax
  402ba8:	44 8b 2d c1 34 00 00 	mov    0x34c1(%rip),%r13d        # 406070 <secret>
  402baf:	42 8d 04 ad 1c 00 00 	lea    0x1c(,%r13,4),%eax
  402bb6:	00 
  402bb7:	41 83 c5 07          	add    $0x7,%r13d
  402bbb:	c7 80 80 60 40 00 01 	movl   $0x1,0x406080(%rax)
  402bc2:	00 00 00 
  402bc5:	b8 01 00 00 00       	mov    $0x1,%eax
  402bca:	85 c0                	test   %eax,%eax
  402bcc:	74 2b                	je     402bf9 <main+0x10b9>
  402bce:	be 08 41 40 00       	mov    $0x404108,%esi
  402bd3:	31 ff                	xor    %edi,%edi
  402bd5:	ba 01 00 00 00       	mov    $0x1,%edx
  402bda:	e8 e1 e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402bdf:	be 68 40 40 00       	mov    $0x404068,%esi
  402be4:	31 ff                	xor    %edi,%edi
  402be6:	ba 01 00 00 00       	mov    $0x1,%edx
  402beb:	e8 d0 e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402bf0:	48 8b 05 59 34 00 00 	mov    0x3459(%rip),%rax        # 406050 <dis>
  402bf7:	eb 4e                	jmp    402c47 <main+0x1107>
  402bf9:	49 63 ed             	movslq %r13d,%rbp
  402bfc:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402c03:	00 
  402c04:	be 08 41 40 00       	mov    $0x404108,%esi
  402c09:	4c 89 ff             	mov    %r15,%rdi
  402c0c:	ba 01 00 00 00       	mov    $0x1,%edx
  402c11:	e8 aa e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402c16:	48 89 c3             	mov    %rax,%rbx
  402c19:	48 c1 e5 05          	shl    $0x5,%rbp
  402c1d:	4c 8d a5 a0 60 40 00 	lea    0x4060a0(%rbp),%r12
  402c24:	be 68 40 40 00       	mov    $0x404068,%esi
  402c29:	4c 89 e7             	mov    %r12,%rdi
  402c2c:	ba 01 00 00 00       	mov    $0x1,%edx
  402c31:	e8 8a e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402c36:	48 8b 0d 13 34 00 00 	mov    0x3413(%rip),%rcx        # 406050 <dis>
  402c3d:	01 d8                	add    %ebx,%eax
  402c3f:	39 c8                	cmp    %ecx,%eax
  402c41:	0f 8c 79 04 00 00    	jl     4030c0 <main+0x1580>
  402c47:	be 08 41 40 00       	mov    $0x404108,%esi
  402c4c:	31 ff                	xor    %edi,%edi
  402c4e:	ba 01 00 00 00       	mov    $0x1,%edx
  402c53:	e8 68 e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402c58:	be 68 40 40 00       	mov    $0x404068,%esi
  402c5d:	31 ff                	xor    %edi,%edi
  402c5f:	ba 01 00 00 00       	mov    $0x1,%edx
  402c64:	e8 57 e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402c69:	8b 05 e1 33 00 00    	mov    0x33e1(%rip),%eax        # 406050 <dis>
  402c6f:	83 7c 24 38 00       	cmpl   $0x0,0x38(%rsp)
  402c74:	74 2b                	je     402ca1 <main+0x1161>
  402c76:	be 08 41 40 00       	mov    $0x404108,%esi
  402c7b:	31 ff                	xor    %edi,%edi
  402c7d:	ba 01 00 00 00       	mov    $0x1,%edx
  402c82:	e8 39 e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402c87:	be 88 40 40 00       	mov    $0x404088,%esi
  402c8c:	31 ff                	xor    %edi,%edi
  402c8e:	ba 01 00 00 00       	mov    $0x1,%edx
  402c93:	e8 28 e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402c98:	48 8b 05 b5 33 00 00 	mov    0x33b5(%rip),%rax        # 406054 <dis+0x4>
  402c9f:	eb 4e                	jmp    402cef <main+0x11af>
  402ca1:	49 63 ed             	movslq %r13d,%rbp
  402ca4:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402cab:	00 
  402cac:	be 08 41 40 00       	mov    $0x404108,%esi
  402cb1:	4c 89 ff             	mov    %r15,%rdi
  402cb4:	ba 01 00 00 00       	mov    $0x1,%edx
  402cb9:	e8 02 e5 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402cbe:	48 89 c3             	mov    %rax,%rbx
  402cc1:	48 c1 e5 05          	shl    $0x5,%rbp
  402cc5:	4c 8d a5 a4 60 40 00 	lea    0x4060a4(%rbp),%r12
  402ccc:	be 88 40 40 00       	mov    $0x404088,%esi
  402cd1:	4c 89 e7             	mov    %r12,%rdi
  402cd4:	ba 01 00 00 00       	mov    $0x1,%edx
  402cd9:	e8 e2 e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402cde:	48 8b 0d 6f 33 00 00 	mov    0x336f(%rip),%rcx        # 406054 <dis+0x4>
  402ce5:	01 d8                	add    %ebx,%eax
  402ce7:	39 c8                	cmp    %ecx,%eax
  402ce9:	0f 8c 46 04 00 00    	jl     403135 <main+0x15f5>
  402cef:	be 08 41 40 00       	mov    $0x404108,%esi
  402cf4:	31 ff                	xor    %edi,%edi
  402cf6:	ba 01 00 00 00       	mov    $0x1,%edx
  402cfb:	e8 c0 e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402d00:	be 88 40 40 00       	mov    $0x404088,%esi
  402d05:	31 ff                	xor    %edi,%edi
  402d07:	ba 01 00 00 00       	mov    $0x1,%edx
  402d0c:	e8 af e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402d11:	8b 05 3d 33 00 00    	mov    0x333d(%rip),%eax        # 406054 <dis+0x4>
  402d17:	83 7c 24 30 00       	cmpl   $0x0,0x30(%rsp)
  402d1c:	74 2b                	je     402d49 <main+0x1209>
  402d1e:	be 08 41 40 00       	mov    $0x404108,%esi
  402d23:	31 ff                	xor    %edi,%edi
  402d25:	ba 01 00 00 00       	mov    $0x1,%edx
  402d2a:	e8 91 e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402d2f:	be a8 40 40 00       	mov    $0x4040a8,%esi
  402d34:	31 ff                	xor    %edi,%edi
  402d36:	ba 01 00 00 00       	mov    $0x1,%edx
  402d3b:	e8 80 e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402d40:	48 8b 05 11 33 00 00 	mov    0x3311(%rip),%rax        # 406058 <dis+0x8>
  402d47:	eb 4e                	jmp    402d97 <main+0x1257>
  402d49:	49 63 ed             	movslq %r13d,%rbp
  402d4c:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402d53:	00 
  402d54:	be 08 41 40 00       	mov    $0x404108,%esi
  402d59:	4c 89 ff             	mov    %r15,%rdi
  402d5c:	ba 01 00 00 00       	mov    $0x1,%edx
  402d61:	e8 5a e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402d66:	48 89 c3             	mov    %rax,%rbx
  402d69:	48 c1 e5 05          	shl    $0x5,%rbp
  402d6d:	4c 8d a5 a8 60 40 00 	lea    0x4060a8(%rbp),%r12
  402d74:	be a8 40 40 00       	mov    $0x4040a8,%esi
  402d79:	4c 89 e7             	mov    %r12,%rdi
  402d7c:	ba 01 00 00 00       	mov    $0x1,%edx
  402d81:	e8 3a e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402d86:	48 8b 0d cb 32 00 00 	mov    0x32cb(%rip),%rcx        # 406058 <dis+0x8>
  402d8d:	01 d8                	add    %ebx,%eax
  402d8f:	39 c8                	cmp    %ecx,%eax
  402d91:	0f 8c 13 04 00 00    	jl     4031aa <main+0x166a>
  402d97:	be 08 41 40 00       	mov    $0x404108,%esi
  402d9c:	31 ff                	xor    %edi,%edi
  402d9e:	ba 01 00 00 00       	mov    $0x1,%edx
  402da3:	e8 18 e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402da8:	be a8 40 40 00       	mov    $0x4040a8,%esi
  402dad:	31 ff                	xor    %edi,%edi
  402daf:	ba 01 00 00 00       	mov    $0x1,%edx
  402db4:	e8 07 e4 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402db9:	8b 05 99 32 00 00    	mov    0x3299(%rip),%eax        # 406058 <dis+0x8>
  402dbf:	83 7c 24 28 00       	cmpl   $0x0,0x28(%rsp)
  402dc4:	74 2e                	je     402df4 <main+0x12b4>
  402dc6:	be 08 41 40 00       	mov    $0x404108,%esi
  402dcb:	31 ff                	xor    %edi,%edi
  402dcd:	ba 01 00 00 00       	mov    $0x1,%edx
  402dd2:	e8 e9 e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402dd7:	be c8 40 40 00       	mov    $0x4040c8,%esi
  402ddc:	31 ff                	xor    %edi,%edi
  402dde:	ba 01 00 00 00       	mov    $0x1,%edx
  402de3:	e8 d8 e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402de8:	48 8b 05 6d 32 00 00 	mov    0x326d(%rip),%rax        # 40605c <dis+0xc>
  402def:	e9 c7 01 00 00       	jmpq   402fbb <main+0x147b>
  402df4:	49 63 ed             	movslq %r13d,%rbp
  402df7:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402dfe:	00 
  402dff:	be 08 41 40 00       	mov    $0x404108,%esi
  402e04:	4c 89 ff             	mov    %r15,%rdi
  402e07:	ba 01 00 00 00       	mov    $0x1,%edx
  402e0c:	e8 af e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402e11:	48 89 c3             	mov    %rax,%rbx
  402e14:	48 c1 e5 05          	shl    $0x5,%rbp
  402e18:	4c 8d a5 ac 60 40 00 	lea    0x4060ac(%rbp),%r12
  402e1f:	be c8 40 40 00       	mov    $0x4040c8,%esi
  402e24:	4c 89 e7             	mov    %r12,%rdi
  402e27:	ba 01 00 00 00       	mov    $0x1,%edx
  402e2c:	e8 8f e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402e31:	48 8b 0d 24 32 00 00 	mov    0x3224(%rip),%rcx        # 40605c <dis+0xc>
  402e38:	01 d8                	add    %ebx,%eax
  402e3a:	39 c8                	cmp    %ecx,%eax
  402e3c:	0f 8d 79 01 00 00    	jge    402fbb <main+0x147b>
  402e42:	be 08 41 40 00       	mov    $0x404108,%esi
  402e47:	4c 89 ff             	mov    %r15,%rdi
  402e4a:	ba 01 00 00 00       	mov    $0x1,%edx
  402e4f:	e8 6c e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402e54:	48 89 c3             	mov    %rax,%rbx
  402e57:	be c8 40 40 00       	mov    $0x4040c8,%esi
  402e5c:	4c 89 e7             	mov    %r12,%rdi
  402e5f:	ba 01 00 00 00       	mov    $0x1,%edx
  402e64:	e8 57 e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402e69:	01 d8                	add    %ebx,%eax
  402e6b:	89 05 eb 31 00 00    	mov    %eax,0x31eb(%rip)        # 40605c <dis+0xc>
  402e71:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  402e76:	0f 85 72 01 00 00    	jne    402fee <main+0x14ae>
  402e7c:	49 63 ed             	movslq %r13d,%rbp
  402e7f:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402e86:	00 
  402e87:	be 08 41 40 00       	mov    $0x404108,%esi
  402e8c:	4c 89 ff             	mov    %r15,%rdi
  402e8f:	ba 01 00 00 00       	mov    $0x1,%edx
  402e94:	e8 27 e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402e99:	48 89 c3             	mov    %rax,%rbx
  402e9c:	48 c1 e5 05          	shl    $0x5,%rbp
  402ea0:	4c 8d a5 b0 60 40 00 	lea    0x4060b0(%rbp),%r12
  402ea7:	be e8 40 40 00       	mov    $0x4040e8,%esi
  402eac:	4c 89 e7             	mov    %r12,%rdi
  402eaf:	ba 01 00 00 00       	mov    $0x1,%edx
  402eb4:	e8 07 e3 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402eb9:	48 8b 0d a0 31 00 00 	mov    0x31a0(%rip),%rcx        # 406060 <dis+0x10>
  402ec0:	01 d8                	add    %ebx,%eax
  402ec2:	39 c8                	cmp    %ecx,%eax
  402ec4:	0f 8d 4d 01 00 00    	jge    403017 <main+0x14d7>
  402eca:	be 08 41 40 00       	mov    $0x404108,%esi
  402ecf:	4c 89 ff             	mov    %r15,%rdi
  402ed2:	ba 01 00 00 00       	mov    $0x1,%edx
  402ed7:	e8 e4 e2 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402edc:	48 89 c3             	mov    %rax,%rbx
  402edf:	be e8 40 40 00       	mov    $0x4040e8,%esi
  402ee4:	4c 89 e7             	mov    %r12,%rdi
  402ee7:	ba 01 00 00 00       	mov    $0x1,%edx
  402eec:	e8 cf e2 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402ef1:	01 d8                	add    %ebx,%eax
  402ef3:	89 05 67 31 00 00    	mov    %eax,0x3167(%rip)        # 406060 <dis+0x10>
  402ef9:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  402efe:	0f 85 46 01 00 00    	jne    40304a <main+0x150a>
  402f04:	49 63 ed             	movslq %r13d,%rbp
  402f07:	4c 8d 3c ad 50 60 40 	lea    0x406050(,%rbp,4),%r15
  402f0e:	00 
  402f0f:	be 08 41 40 00       	mov    $0x404108,%esi
  402f14:	4c 89 ff             	mov    %r15,%rdi
  402f17:	ba 01 00 00 00       	mov    $0x1,%edx
  402f1c:	e8 9f e2 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402f21:	48 89 c3             	mov    %rax,%rbx
  402f24:	48 c1 e5 05          	shl    $0x5,%rbp
  402f28:	4c 8d a5 b4 60 40 00 	lea    0x4060b4(%rbp),%r12
  402f2f:	be 28 41 40 00       	mov    $0x404128,%esi
  402f34:	4c 89 e7             	mov    %r12,%rdi
  402f37:	ba 01 00 00 00       	mov    $0x1,%edx
  402f3c:	e8 7f e2 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402f41:	48 8b 0d 1c 31 00 00 	mov    0x311c(%rip),%rcx        # 406064 <dis+0x14>
  402f48:	01 d8                	add    %ebx,%eax
  402f4a:	39 c8                	cmp    %ecx,%eax
  402f4c:	0f 8d 21 01 00 00    	jge    403073 <main+0x1533>
  402f52:	c5 fc 10 05 ae 11 00 	vmovups 0x11ae(%rip),%ymm0        # 404108 <_IO_stdin_used+0x108>
  402f59:	00 
  402f5a:	c5 fc 11 44 24 60    	vmovups %ymm0,0x60(%rsp)
  402f60:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
  402f65:	4c 89 ff             	mov    %r15,%rdi
  402f68:	ba 01 00 00 00       	mov    $0x1,%edx
  402f6d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402f72:	c5 f8 77             	vzeroupper 
  402f75:	e8 f6 e5 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  402f7a:	c5 fc 10 05 a6 11 00 	vmovups 0x11a6(%rip),%ymm0        # 404128 <_IO_stdin_used+0x128>
  402f81:	00 
  402f82:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
  402f88:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402f8d:	4c 89 e7             	mov    %r12,%rdi
  402f90:	ba 01 00 00 00       	mov    $0x1,%edx
  402f95:	b9 08 00 00 00       	mov    $0x8,%ecx
  402f9a:	c5 f8 77             	vzeroupper 
  402f9d:	e8 ce e5 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  402fa2:	bf 48 41 40 00       	mov    $0x404148,%edi
  402fa7:	be 4e 41 40 00       	mov    $0x40414e,%esi
  402fac:	b9 5a 41 40 00       	mov    $0x40415a,%ecx
  402fb1:	ba 48 18 00 00       	mov    $0x1848,%edx
  402fb6:	e8 85 e0 ff ff       	callq  401040 <__assert_fail@plt>
  402fbb:	be 08 41 40 00       	mov    $0x404108,%esi
  402fc0:	31 ff                	xor    %edi,%edi
  402fc2:	ba 01 00 00 00       	mov    $0x1,%edx
  402fc7:	e8 f4 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402fcc:	be c8 40 40 00       	mov    $0x4040c8,%esi
  402fd1:	31 ff                	xor    %edi,%edi
  402fd3:	ba 01 00 00 00       	mov    $0x1,%edx
  402fd8:	e8 e3 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402fdd:	8b 05 79 30 00 00    	mov    0x3079(%rip),%eax        # 40605c <dis+0xc>
  402fe3:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  402fe8:	0f 84 8e fe ff ff    	je     402e7c <main+0x133c>
  402fee:	be 08 41 40 00       	mov    $0x404108,%esi
  402ff3:	31 ff                	xor    %edi,%edi
  402ff5:	ba 01 00 00 00       	mov    $0x1,%edx
  402ffa:	e8 c1 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  402fff:	be e8 40 40 00       	mov    $0x4040e8,%esi
  403004:	31 ff                	xor    %edi,%edi
  403006:	ba 01 00 00 00       	mov    $0x1,%edx
  40300b:	e8 b0 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  403010:	48 8b 05 49 30 00 00 	mov    0x3049(%rip),%rax        # 406060 <dis+0x10>
  403017:	be 08 41 40 00       	mov    $0x404108,%esi
  40301c:	31 ff                	xor    %edi,%edi
  40301e:	ba 01 00 00 00       	mov    $0x1,%edx
  403023:	e8 98 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  403028:	be e8 40 40 00       	mov    $0x4040e8,%esi
  40302d:	31 ff                	xor    %edi,%edi
  40302f:	ba 01 00 00 00       	mov    $0x1,%edx
  403034:	e8 87 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  403039:	8b 05 21 30 00 00    	mov    0x3021(%rip),%eax        # 406060 <dis+0x10>
  40303f:	83 7c 24 18 00       	cmpl   $0x0,0x18(%rsp)
  403044:	0f 84 ba fe ff ff    	je     402f04 <main+0x13c4>
  40304a:	be 08 41 40 00       	mov    $0x404108,%esi
  40304f:	31 ff                	xor    %edi,%edi
  403051:	ba 01 00 00 00       	mov    $0x1,%edx
  403056:	e8 65 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40305b:	be 28 41 40 00       	mov    $0x404128,%esi
  403060:	31 ff                	xor    %edi,%edi
  403062:	ba 01 00 00 00       	mov    $0x1,%edx
  403067:	e8 54 e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  40306c:	48 8b 05 f1 2f 00 00 	mov    0x2ff1(%rip),%rax        # 406064 <dis+0x14>
  403073:	be 08 41 40 00       	mov    $0x404108,%esi
  403078:	31 ff                	xor    %edi,%edi
  40307a:	ba 01 00 00 00       	mov    $0x1,%edx
  40307f:	e8 3c e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  403084:	be 28 41 40 00       	mov    $0x404128,%esi
  403089:	31 ff                	xor    %edi,%edi
  40308b:	ba 01 00 00 00       	mov    $0x1,%edx
  403090:	e8 2b e1 ff ff       	callq  4011c0 <uint64_t_secure_load_impl>
  403095:	8b 05 c9 2f 00 00    	mov    0x2fc9(%rip),%eax        # 406064 <dis+0x14>
  40309b:	bf 65 41 40 00       	mov    $0x404165,%edi
  4030a0:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  4030a5:	31 c0                	xor    %eax,%eax
  4030a7:	e8 84 df ff ff       	callq  401030 <printf@plt>
  4030ac:	31 c0                	xor    %eax,%eax
  4030ae:	48 81 c4 48 01 00 00 	add    $0x148,%rsp
  4030b5:	5b                   	pop    %rbx
  4030b6:	41 5c                	pop    %r12
  4030b8:	41 5d                	pop    %r13
  4030ba:	41 5e                	pop    %r14
  4030bc:	41 5f                	pop    %r15
  4030be:	5d                   	pop    %rbp
  4030bf:	c3                   	retq   
  4030c0:	c5 fc 10 05 40 10 00 	vmovups 0x1040(%rip),%ymm0        # 404108 <_IO_stdin_used+0x108>
  4030c7:	00 
  4030c8:	c5 fc 11 84 24 20 01 	vmovups %ymm0,0x120(%rsp)
  4030cf:	00 00 
  4030d1:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  4030d8:	00 
  4030d9:	4c 89 ff             	mov    %r15,%rdi
  4030dc:	ba 01 00 00 00       	mov    $0x1,%edx
  4030e1:	b9 08 00 00 00       	mov    $0x8,%ecx
  4030e6:	c5 f8 77             	vzeroupper 
  4030e9:	e8 82 e4 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  4030ee:	c5 fc 10 05 72 0f 00 	vmovups 0xf72(%rip),%ymm0        # 404068 <_IO_stdin_used+0x68>
  4030f5:	00 
  4030f6:	c5 fc 11 84 24 00 01 	vmovups %ymm0,0x100(%rsp)
  4030fd:	00 00 
  4030ff:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  403106:	00 
  403107:	4c 89 e7             	mov    %r12,%rdi
  40310a:	ba 01 00 00 00       	mov    $0x1,%edx
  40310f:	b9 08 00 00 00       	mov    $0x8,%ecx
  403114:	c5 f8 77             	vzeroupper 
  403117:	e8 54 e4 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  40311c:	bf 48 41 40 00       	mov    $0x404148,%edi
  403121:	be 4e 41 40 00       	mov    $0x40414e,%esi
  403126:	b9 5a 41 40 00       	mov    $0x40415a,%ecx
  40312b:	ba 64 17 00 00       	mov    $0x1764,%edx
  403130:	e8 0b df ff ff       	callq  401040 <__assert_fail@plt>
  403135:	c5 fc 10 05 cb 0f 00 	vmovups 0xfcb(%rip),%ymm0        # 404108 <_IO_stdin_used+0x108>
  40313c:	00 
  40313d:	c5 fc 11 84 24 e0 00 	vmovups %ymm0,0xe0(%rsp)
  403144:	00 00 
  403146:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
  40314d:	00 
  40314e:	4c 89 ff             	mov    %r15,%rdi
  403151:	ba 01 00 00 00       	mov    $0x1,%edx
  403156:	b9 08 00 00 00       	mov    $0x8,%ecx
  40315b:	c5 f8 77             	vzeroupper 
  40315e:	e8 0d e4 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  403163:	c5 fc 10 05 1d 0f 00 	vmovups 0xf1d(%rip),%ymm0        # 404088 <_IO_stdin_used+0x88>
  40316a:	00 
  40316b:	c5 fc 11 84 24 c0 00 	vmovups %ymm0,0xc0(%rsp)
  403172:	00 00 
  403174:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  40317b:	00 
  40317c:	4c 89 e7             	mov    %r12,%rdi
  40317f:	ba 01 00 00 00       	mov    $0x1,%edx
  403184:	b9 08 00 00 00       	mov    $0x8,%ecx
  403189:	c5 f8 77             	vzeroupper 
  40318c:	e8 df e3 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  403191:	bf 48 41 40 00       	mov    $0x404148,%edi
  403196:	be 4e 41 40 00       	mov    $0x40414e,%esi
  40319b:	b9 5a 41 40 00       	mov    $0x40415a,%ecx
  4031a0:	ba 92 17 00 00       	mov    $0x1792,%edx
  4031a5:	e8 96 de ff ff       	callq  401040 <__assert_fail@plt>
  4031aa:	c5 fc 10 05 56 0f 00 	vmovups 0xf56(%rip),%ymm0        # 404108 <_IO_stdin_used+0x108>
  4031b1:	00 
  4031b2:	c5 fc 11 84 24 a0 00 	vmovups %ymm0,0xa0(%rsp)
  4031b9:	00 00 
  4031bb:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  4031c2:	00 
  4031c3:	4c 89 ff             	mov    %r15,%rdi
  4031c6:	ba 01 00 00 00       	mov    $0x1,%edx
  4031cb:	b9 08 00 00 00       	mov    $0x8,%ecx
  4031d0:	c5 f8 77             	vzeroupper 
  4031d3:	e8 98 e3 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  4031d8:	c5 fc 10 05 c8 0e 00 	vmovups 0xec8(%rip),%ymm0        # 4040a8 <_IO_stdin_used+0xa8>
  4031df:	00 
  4031e0:	c5 fc 11 84 24 80 00 	vmovups %ymm0,0x80(%rsp)
  4031e7:	00 00 
  4031e9:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
  4031f0:	00 
  4031f1:	4c 89 e7             	mov    %r12,%rdi
  4031f4:	ba 01 00 00 00       	mov    $0x1,%edx
  4031f9:	b9 08 00 00 00       	mov    $0x8,%ecx
  4031fe:	c5 f8 77             	vzeroupper 
  403201:	e8 6a e3 ff ff       	callq  401570 <uint32_t_secure_load_sensitive>
  403206:	bf 48 41 40 00       	mov    $0x404148,%edi
  40320b:	be 4e 41 40 00       	mov    $0x40414e,%esi
  403210:	b9 5a 41 40 00       	mov    $0x40415a,%ecx
  403215:	ba c0 17 00 00       	mov    $0x17c0,%edx
  40321a:	e8 21 de ff ff       	callq  401040 <__assert_fail@plt>
  40321f:	90                   	nop

0000000000403220 <__libc_csu_init>:
  403220:	f3 0f 1e fa          	endbr64 
  403224:	41 57                	push   %r15
  403226:	4c 8d 3d e3 2b 00 00 	lea    0x2be3(%rip),%r15        # 405e10 <__frame_dummy_init_array_entry>
  40322d:	41 56                	push   %r14
  40322f:	49 89 d6             	mov    %rdx,%r14
  403232:	41 55                	push   %r13
  403234:	49 89 f5             	mov    %rsi,%r13
  403237:	41 54                	push   %r12
  403239:	41 89 fc             	mov    %edi,%r12d
  40323c:	55                   	push   %rbp
  40323d:	48 8d 2d d4 2b 00 00 	lea    0x2bd4(%rip),%rbp        # 405e18 <__do_global_dtors_aux_fini_array_entry>
  403244:	53                   	push   %rbx
  403245:	4c 29 fd             	sub    %r15,%rbp
  403248:	48 83 ec 08          	sub    $0x8,%rsp
  40324c:	e8 af dd ff ff       	callq  401000 <_init>
  403251:	48 c1 fd 03          	sar    $0x3,%rbp
  403255:	74 1f                	je     403276 <__libc_csu_init+0x56>
  403257:	31 db                	xor    %ebx,%ebx
  403259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403260:	4c 89 f2             	mov    %r14,%rdx
  403263:	4c 89 ee             	mov    %r13,%rsi
  403266:	44 89 e7             	mov    %r12d,%edi
  403269:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40326d:	48 83 c3 01          	add    $0x1,%rbx
  403271:	48 39 dd             	cmp    %rbx,%rbp
  403274:	75 ea                	jne    403260 <__libc_csu_init+0x40>
  403276:	48 83 c4 08          	add    $0x8,%rsp
  40327a:	5b                   	pop    %rbx
  40327b:	5d                   	pop    %rbp
  40327c:	41 5c                	pop    %r12
  40327e:	41 5d                	pop    %r13
  403280:	41 5e                	pop    %r14
  403282:	41 5f                	pop    %r15
  403284:	c3                   	retq   
  403285:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40328c:	00 00 00 00 

0000000000403290 <__libc_csu_fini>:
  403290:	f3 0f 1e fa          	endbr64 
  403294:	c3                   	retq   

Disassembly of section .fini:

0000000000403298 <_fini>:
  403298:	f3 0f 1e fa          	endbr64 
  40329c:	48 83 ec 08          	sub    $0x8,%rsp
  4032a0:	48 83 c4 08          	add    $0x8,%rsp
  4032a4:	c3                   	retq   

Disassembly of section .rodata:

0000000000404000 <_IO_stdin_used>:
  404000:	01 00                	add    %eax,(%rax)
  404002:	02 00                	add    (%rax),%al
	...
  404010:	08 00                	or     %al,(%rax)
  404012:	00 00                	add    %al,(%rax)
  404014:	10 00                	adc    %al,(%rax)
	...
  40401e:	00 00                	add    %al,(%rax)
  404020:	20 00                	and    %al,(%rax)
  404022:	00 00                	add    %al,(%rax)
  404024:	00 00                	add    %al,(%rax)
  404026:	00 00                	add    %al,(%rax)
  404028:	a0 60 40 00 00 00 00 	movabs 0x4060,%al
  40402f:	00 00 
  404031:	00 00                	add    %al,(%rax)
  404033:	00 00                	add    %al,(%rax)
  404035:	00 00                	add    %al,(%rax)
  404037:	00 08                	add    %cl,(%rax)
  404039:	00 00                	add    %al,(%rax)
  40403b:	00 01                	add    %al,(%rcx)
  40403d:	00 00                	add    %al,(%rax)
  40403f:	00 18                	add    %bl,(%rax)
  404041:	00 00                	add    %al,(%rax)
  404043:	00 f8                	add    %bh,%al
  404045:	00 00                	add    %al,(%rax)
  404047:	00 a0 60 40 00 00    	add    %ah,0x4060(%rax)
	...
  404055:	00 00                	add    %al,(%rax)
  404057:	00 08                	add    %cl,(%rax)
  404059:	00 00                	add    %al,(%rax)
  40405b:	00 01                	add    %al,(%rcx)
  40405d:	00 00                	add    %al,(%rax)
  40405f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  404062:	00 00                	add    %al,(%rax)
  404064:	fc                   	cld    
  404065:	00 00                	add    %al,(%rax)
  404067:	00 a0 60 40 00 00    	add    %ah,0x4060(%rax)
	...
  404075:	00 00                	add    %al,(%rax)
  404077:	00 08                	add    %cl,(%rax)
  404079:	00 00                	add    %al,(%rax)
  40407b:	00 01                	add    %al,(%rcx)
  40407d:	00 00                	add    %al,(%rax)
  40407f:	00 00                	add    %al,(%rax)
  404081:	00 00                	add    %al,(%rax)
  404083:	00 e0                	add    %ah,%al
  404085:	00 00                	add    %al,(%rax)
  404087:	00 a0 60 40 00 00    	add    %ah,0x4060(%rax)
	...
  404095:	00 00                	add    %al,(%rax)
  404097:	00 08                	add    %cl,(%rax)
  404099:	00 00                	add    %al,(%rax)
  40409b:	00 01                	add    %al,(%rcx)
  40409d:	00 00                	add    %al,(%rax)
  40409f:	00 04 00             	add    %al,(%rax,%rax,1)
  4040a2:	00 00                	add    %al,(%rax)
  4040a4:	e4 00                	in     $0x0,%al
  4040a6:	00 00                	add    %al,(%rax)
  4040a8:	a0 60 40 00 00 00 00 	movabs 0x4060,%al
  4040af:	00 00 
  4040b1:	00 00                	add    %al,(%rax)
  4040b3:	00 00                	add    %al,(%rax)
  4040b5:	00 00                	add    %al,(%rax)
  4040b7:	00 08                	add    %cl,(%rax)
  4040b9:	00 00                	add    %al,(%rax)
  4040bb:	00 01                	add    %al,(%rcx)
  4040bd:	00 00                	add    %al,(%rax)
  4040bf:	00 08                	add    %cl,(%rax)
  4040c1:	00 00                	add    %al,(%rax)
  4040c3:	00 e8                	add    %ch,%al
  4040c5:	00 00                	add    %al,(%rax)
  4040c7:	00 a0 60 40 00 00    	add    %ah,0x4060(%rax)
	...
  4040d5:	00 00                	add    %al,(%rax)
  4040d7:	00 08                	add    %cl,(%rax)
  4040d9:	00 00                	add    %al,(%rax)
  4040db:	00 01                	add    %al,(%rcx)
  4040dd:	00 00                	add    %al,(%rax)
  4040df:	00 0c 00             	add    %cl,(%rax,%rax,1)
  4040e2:	00 00                	add    %al,(%rax)
  4040e4:	ec                   	in     (%dx),%al
  4040e5:	00 00                	add    %al,(%rax)
  4040e7:	00 a0 60 40 00 00    	add    %ah,0x4060(%rax)
	...
  4040f5:	00 00                	add    %al,(%rax)
  4040f7:	00 08                	add    %cl,(%rax)
  4040f9:	00 00                	add    %al,(%rax)
  4040fb:	00 01                	add    %al,(%rcx)
  4040fd:	00 00                	add    %al,(%rax)
  4040ff:	00 10                	add    %dl,(%rax)
  404101:	00 00                	add    %al,(%rax)
  404103:	00 f0                	add    %dh,%al
  404105:	00 00                	add    %al,(%rax)
  404107:	00 50 60             	add    %dl,0x60(%rax)
  40410a:	40 00 00             	add    %al,(%rax)
	...
  404115:	00 00                	add    %al,(%rax)
  404117:	00 08                	add    %cl,(%rax)
  404119:	00 00                	add    %al,(%rax)
  40411b:	00 01                	add    %al,(%rcx)
  40411d:	00 00                	add    %al,(%rax)
  40411f:	00 00                	add    %al,(%rax)
  404121:	00 00                	add    %al,(%rax)
  404123:	00 1c 00             	add    %bl,(%rax,%rax,1)
  404126:	00 00                	add    %al,(%rax)
  404128:	a0 60 40 00 00 00 00 	movabs 0x4060,%al
  40412f:	00 00 
  404131:	00 00                	add    %al,(%rax)
  404133:	00 00                	add    %al,(%rax)
  404135:	00 00                	add    %al,(%rax)
  404137:	00 08                	add    %cl,(%rax)
  404139:	00 00                	add    %al,(%rax)
  40413b:	00 01                	add    %al,(%rcx)
  40413d:	00 00                	add    %al,(%rax)
  40413f:	00 14 00             	add    %dl,(%rax,%rax,1)
  404142:	00 00                	add    %al,(%rax)
  404144:	f4                   	hlt    
  404145:	00 00                	add    %al,(%rax)
  404147:	00 66 61             	add    %ah,0x61(%rsi)
  40414a:	6c                   	insb   (%dx),%es:(%rdi)
  40414b:	73 65                	jae    4041b2 <__GNU_EH_FRAME_HDR+0x46>
  40414d:	00 6d 69             	add    %ch,0x69(%rbp)
  404150:	74 69                	je     4041bb <__GNU_EH_FRAME_HDR+0x4f>
  404152:	67 61                	addr32 (bad) 
  404154:	74 65                	je     4041bb <__GNU_EH_FRAME_HDR+0x4f>
  404156:	64 2e 63 00          	fs movslq %cs:(%rax),%eax
  40415a:	69 6e 74 20 6d 61 69 	imul   $0x69616d20,0x74(%rsi),%ebp
  404161:	6e                   	outsb  %ds:(%rsi),(%dx)
  404162:	28 29                	sub    %ch,(%rcx)
  404164:	00                   	.byte 0x0
  404165:	25                   	.byte 0x25
  404166:	64 0a 00             	or     %fs:(%rax),%al

Disassembly of section .eh_frame_hdr:

000000000040416c <__GNU_EH_FRAME_HDR>:
  40416c:	01 1b                	add    %ebx,(%rbx)
  40416e:	03 3b                	add    (%rbx),%edi
  404170:	00 01                	add    %al,(%rcx)
  404172:	00 00                	add    %al,(%rax)
  404174:	1f                   	(bad)  
  404175:	00 00                	add    %al,(%rax)
  404177:	00 b4 ce ff ff 44 01 	add    %dh,0x144ffff(%rsi,%rcx,8)
  40417e:	00 00                	add    %al,(%rax)
  404180:	f4                   	hlt    
  404181:	ce                   	(bad)  
  404182:	ff                   	(bad)  
  404183:	ff 1c 01             	lcall  *(%rcx,%rax,1)
  404186:	00 00                	add    %al,(%rax)
  404188:	24 cf                	and    $0xcf,%al
  40418a:	ff                   	(bad)  
  40418b:	ff 30                	pushq  (%rax)
  40418d:	01 00                	add    %eax,(%rax)
  40418f:	00 e4                	add    %ah,%ah
  404191:	cf                   	iret   
  404192:	ff                   	(bad)  
  404193:	ff 6c 01 00          	ljmp   *0x0(%rcx,%rax,1)
  404197:	00 04 d0             	add    %al,(%rax,%rdx,8)
  40419a:	ff                   	(bad)  
  40419b:	ff 80 01 00 00 34    	incl   0x34000001(%rax)
  4041a1:	d0 ff                	sar    %bh
  4041a3:	ff 94 01 00 00 54 d0 	callq  *-0x2fac0000(%rcx,%rax,1)
  4041aa:	ff                   	(bad)  
  4041ab:	ff a8 01 00 00 74    	ljmp   *0x74000001(%rax)
  4041b1:	d3 ff                	sar    %cl,%edi
  4041b3:	ff d4                	callq  *%rsp
  4041b5:	01 00                	add    %eax,(%rax)
  4041b7:	00 84 d3 ff ff e8 01 	add    %al,0x1e8ffff(%rbx,%rdx,8)
  4041be:	00 00                	add    %al,(%rax)
  4041c0:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  4041c1:	d3 ff                	sar    %cl,%edi
  4041c3:	ff                   	(bad)  
  4041c4:	fc                   	cld    
  4041c5:	01 00                	add    %eax,(%rax)
  4041c7:	00 c4                	add    %al,%ah
  4041c9:	d3 ff                	sar    %cl,%edi
  4041cb:	ff 1c 02             	lcall  *(%rdx,%rax,1)
  4041ce:	00 00                	add    %al,(%rax)
  4041d0:	e4 d3                	in     $0xd3,%al
  4041d2:	ff                   	(bad)  
  4041d3:	ff                   	(bad)  
  4041d4:	3c 02                	cmp    $0x2,%al
  4041d6:	00 00                	add    %al,(%rax)
  4041d8:	04 d4                	add    $0xd4,%al
  4041da:	ff                   	(bad)  
  4041db:	ff 5c 02 00          	lcall  *0x0(%rdx,%rax,1)
  4041df:	00 24 d4             	add    %ah,(%rsp,%rdx,8)
  4041e2:	ff                   	(bad)  
  4041e3:	ff                   	(bad)  
  4041e4:	7c 02                	jl     4041e8 <__GNU_EH_FRAME_HDR+0x7c>
  4041e6:	00 00                	add    %al,(%rax)
  4041e8:	44 d4                	rex.R (bad) 
  4041ea:	ff                   	(bad)  
  4041eb:	ff 9c 02 00 00 64 d4 	lcall  *-0x2b9c0000(%rdx,%rax,1)
  4041f2:	ff                   	(bad)  
  4041f3:	ff                   	(bad)  
  4041f4:	bc 02 00 00 74       	mov    $0x74000002,%esp
  4041f9:	d5                   	(bad)  
  4041fa:	ff                   	(bad)  
  4041fb:	ff d0                	callq  *%rax
  4041fd:	02 00                	add    (%rax),%al
  4041ff:	00 84 d6 ff ff e4 02 	add    %al,0x2e4ffff(%rsi,%rdx,8)
  404206:	00 00                	add    %al,(%rax)
  404208:	94                   	xchg   %eax,%esp
  404209:	d7                   	xlat   %ds:(%rbx)
  40420a:	ff                   	(bad)  
  40420b:	ff                   	(bad)  
  40420c:	f8                   	clc    
  40420d:	02 00                	add    (%rax),%al
  40420f:	00 a4 d8 ff ff 0c 03 	add    %ah,0x30cffff(%rax,%rbx,8)
  404216:	00 00                	add    %al,(%rax)
  404218:	c4                   	(bad)  
  404219:	d8 ff                	fdivr  %st(7),%st
  40421b:	ff 20                	jmpq   *(%rax)
  40421d:	03 00                	add    (%rax),%eax
  40421f:	00 e4                	add    %ah,%ah
  404221:	d8 ff                	fdivr  %st(7),%st
  404223:	ff 34 03             	pushq  (%rbx,%rax,1)
  404226:	00 00                	add    %al,(%rax)
  404228:	04 d9                	add    $0xd9,%al
  40422a:	ff                   	(bad)  
  40422b:	ff 48 03             	decl   0x3(%rax)
  40422e:	00 00                	add    %al,(%rax)
  404230:	24 d9                	and    $0xd9,%al
  404232:	ff                   	(bad)  
  404233:	ff 5c 03 00          	lcall  *0x0(%rbx,%rax,1)
  404237:	00 44 d9 ff          	add    %al,-0x1(%rcx,%rbx,8)
  40423b:	ff 70 03             	pushq  0x3(%rax)
  40423e:	00 00                	add    %al,(%rax)
  404240:	64 d9 ff             	fs fcos 
  404243:	ff 84 03 00 00 94 d9 	incl   -0x266c0000(%rbx,%rax,1)
  40424a:	ff                   	(bad)  
  40424b:	ff 98 03 00 00 c4    	lcall  *-0x3bfffffd(%rax)
  404251:	d9 ff                	fcos   
  404253:	ff ac 03 00 00 d4 d9 	ljmp   *-0x262c0000(%rbx,%rax,1)
  40425a:	ff                   	(bad)  
  40425b:	ff c0                	inc    %eax
  40425d:	03 00                	add    (%rax),%eax
  40425f:	00 b4 f0 ff ff 14 04 	add    %dh,0x414ffff(%rax,%rsi,8)
  404266:	00 00                	add    %al,(%rax)
  404268:	24 f1                	and    $0xf1,%al
  40426a:	ff                   	(bad)  
  40426b:	ff 5c 04 00          	lcall  *0x0(%rsp,%rax,1)
	...

Disassembly of section .eh_frame:

0000000000404270 <__FRAME_END__-0x36c>:
  404270:	14 00                	adc    $0x0,%al
  404272:	00 00                	add    %al,(%rax)
  404274:	00 00                	add    %al,(%rax)
  404276:	00 00                	add    %al,(%rax)
  404278:	01 7a 52             	add    %edi,0x52(%rdx)
  40427b:	00 01                	add    %al,(%rcx)
  40427d:	78 10                	js     40428f <__GNU_EH_FRAME_HDR+0x123>
  40427f:	01 1b                	add    %ebx,(%rbx)
  404281:	0c 07                	or     $0x7,%al
  404283:	08 90 01 00 00 10    	or     %dl,0x10000001(%rax)
  404289:	00 00                	add    %al,(%rax)
  40428b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40428e:	00 00                	add    %al,(%rax)
  404290:	d0 cd                	ror    %ch
  404292:	ff                   	(bad)  
  404293:	ff 2f                	ljmp   *(%rdi)
  404295:	00 00                	add    %al,(%rax)
  404297:	00 00                	add    %al,(%rax)
  404299:	44 07                	rex.R (bad) 
  40429b:	10 10                	adc    %dl,(%rax)
  40429d:	00 00                	add    %al,(%rax)
  40429f:	00 30                	add    %dh,(%rax)
  4042a1:	00 00                	add    %al,(%rax)
  4042a3:	00 ec                	add    %ch,%ah
  4042a5:	cd ff                	int    $0xff
  4042a7:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 4042ad <__GNU_EH_FRAME_HDR+0x141>
  4042ad:	00 00                	add    %al,(%rax)
  4042af:	00 24 00             	add    %ah,(%rax,%rax,1)
  4042b2:	00 00                	add    %al,(%rax)
  4042b4:	44 00 00             	add    %r8b,(%rax)
  4042b7:	00 68 cd             	add    %ch,-0x33(%rax)
  4042ba:	ff                   	(bad)  
  4042bb:	ff 40 00             	incl   0x0(%rax)
  4042be:	00 00                	add    %al,(%rax)
  4042c0:	00 0e                	add    %cl,(%rsi)
  4042c2:	10 46 0e             	adc    %al,0xe(%rsi)
  4042c5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4042c8:	0b 77 08             	or     0x8(%rdi),%esi
  4042cb:	80 00 3f             	addb   $0x3f,(%rax)
  4042ce:	1a 3b                	sbb    (%rbx),%bh
  4042d0:	2a 33                	sub    (%rbx),%dh
  4042d2:	24 22                	and    $0x22,%al
  4042d4:	00 00                	add    %al,(%rax)
  4042d6:	00 00                	add    %al,(%rax)
  4042d8:	10 00                	adc    %al,(%rax)
  4042da:	00 00                	add    %al,(%rax)
  4042dc:	6c                   	insb   (%dx),%es:(%rdi)
  4042dd:	00 00                	add    %al,(%rax)
  4042df:	00 70 ce             	add    %dh,-0x32(%rax)
  4042e2:	ff                   	(bad)  
  4042e3:	ff 17                	callq  *(%rdi)
  4042e5:	00 00                	add    %al,(%rax)
  4042e7:	00 00                	add    %al,(%rax)
  4042e9:	00 00                	add    %al,(%rax)
  4042eb:	00 10                	add    %dl,(%rax)
  4042ed:	00 00                	add    %al,(%rax)
  4042ef:	00 80 00 00 00 7c    	add    %al,0x7c000000(%rax)
  4042f5:	ce                   	(bad)  
  4042f6:	ff                   	(bad)  
  4042f7:	ff 24 00             	jmpq   *(%rax,%rax,1)
  4042fa:	00 00                	add    %al,(%rax)
  4042fc:	00 00                	add    %al,(%rax)
  4042fe:	00 00                	add    %al,(%rax)
  404300:	10 00                	adc    %al,(%rax)
  404302:	00 00                	add    %al,(%rax)
  404304:	94                   	xchg   %eax,%esp
  404305:	00 00                	add    %al,(%rax)
  404307:	00 98 ce ff ff 1c    	add    %bl,0x1cffffce(%rax)
  40430d:	00 00                	add    %al,(%rax)
  40430f:	00 00                	add    %al,(%rax)
  404311:	00 00                	add    %al,(%rax)
  404313:	00 28                	add    %ch,(%rax)
  404315:	00 00                	add    %al,(%rax)
  404317:	00 a8 00 00 00 a4    	add    %ch,-0x5c000000(%rax)
  40431d:	ce                   	(bad)  
  40431e:	ff                   	(bad)  
  40431f:	ff 18                	lcall  *(%rax)
  404321:	03 00                	add    (%rax),%eax
  404323:	00 00                	add    %al,(%rax)
  404325:	42 0e                	rex.X (bad) 
  404327:	10 42 0e             	adc    %al,0xe(%rdx)
  40432a:	18 41 0e             	sbb    %al,0xe(%rcx)
  40432d:	20 83 04 8e 03 8f    	and    %al,-0x70fc71fc(%rbx)
  404333:	02 03                	add    (%rbx),%al
  404335:	0b 03                	or     (%rbx),%eax
  404337:	0e                   	(bad)  
  404338:	18 42 0e             	sbb    %al,0xe(%rdx)
  40433b:	10 42 0e             	adc    %al,0xe(%rdx)
  40433e:	08 00                	or     %al,(%rax)
  404340:	10 00                	adc    %al,(%rax)
  404342:	00 00                	add    %al,(%rax)
  404344:	d4                   	(bad)  
  404345:	00 00                	add    %al,(%rax)
  404347:	00 98 d1 ff ff 0e    	add    %bl,0xeffffd1(%rax)
  40434d:	00 00                	add    %al,(%rax)
  40434f:	00 00                	add    %al,(%rax)
  404351:	00 00                	add    %al,(%rax)
  404353:	00 10                	add    %dl,(%rax)
  404355:	00 00                	add    %al,(%rax)
  404357:	00 e8                	add    %ch,%al
  404359:	00 00                	add    %al,(%rax)
  40435b:	00 94 d1 ff ff 15 00 	add    %dl,0x15ffff(%rcx,%rdx,8)
  404362:	00 00                	add    %al,(%rax)
  404364:	00 00                	add    %al,(%rax)
  404366:	00 00                	add    %al,(%rax)
  404368:	1c 00                	sbb    $0x0,%al
  40436a:	00 00                	add    %al,(%rax)
  40436c:	fc                   	cld    
  40436d:	00 00                	add    %al,(%rax)
  40436f:	00 a0 d1 ff ff 12    	add    %ah,0x12ffffd1(%rax)
  404375:	00 00                	add    %al,(%rax)
  404377:	00 00                	add    %al,(%rax)
  404379:	41 0e                	rex.B (bad) 
  40437b:	10 49 0e             	adc    %cl,0xe(%rcx)
  40437e:	08 41 0e             	or     %al,0xe(%rcx)
  404381:	10 46 0e             	adc    %al,0xe(%rsi)
  404384:	08 00                	or     %al,(%rax)
  404386:	00 00                	add    %al,(%rax)
  404388:	1c 00                	sbb    $0x0,%al
  40438a:	00 00                	add    %al,(%rax)
  40438c:	1c 01                	sbb    $0x1,%al
  40438e:	00 00                	add    %al,(%rax)
  404390:	a0 d1 ff ff 12 00 00 	movabs 0x12ffffd1,%al
  404397:	00 00 
  404399:	41 0e                	rex.B (bad) 
  40439b:	10 49 0e             	adc    %cl,0xe(%rcx)
  40439e:	08 41 0e             	or     %al,0xe(%rcx)
  4043a1:	10 46 0e             	adc    %al,0xe(%rsi)
  4043a4:	08 00                	or     %al,(%rax)
  4043a6:	00 00                	add    %al,(%rax)
  4043a8:	1c 00                	sbb    $0x0,%al
  4043aa:	00 00                	add    %al,(%rax)
  4043ac:	3c 01                	cmp    $0x1,%al
  4043ae:	00 00                	add    %al,(%rax)
  4043b0:	a0 d1 ff ff 12 00 00 	movabs 0x12ffffd1,%al
  4043b7:	00 00 
  4043b9:	41 0e                	rex.B (bad) 
  4043bb:	10 49 0e             	adc    %cl,0xe(%rcx)
  4043be:	08 41 0e             	or     %al,0xe(%rcx)
  4043c1:	10 46 0e             	adc    %al,0xe(%rsi)
  4043c4:	08 00                	or     %al,(%rax)
  4043c6:	00 00                	add    %al,(%rax)
  4043c8:	1c 00                	sbb    $0x0,%al
  4043ca:	00 00                	add    %al,(%rax)
  4043cc:	5c                   	pop    %rsp
  4043cd:	01 00                	add    %eax,(%rax)
  4043cf:	00 a0 d1 ff ff 19    	add    %ah,0x19ffffd1(%rax)
  4043d5:	00 00                	add    %al,(%rax)
  4043d7:	00 00                	add    %al,(%rax)
  4043d9:	41 0e                	rex.B (bad) 
  4043db:	10 50 0e             	adc    %dl,0xe(%rax)
  4043de:	08 41 0e             	or     %al,0xe(%rcx)
  4043e1:	10 46 0e             	adc    %al,0xe(%rsi)
  4043e4:	08 00                	or     %al,(%rax)
  4043e6:	00 00                	add    %al,(%rax)
  4043e8:	1c 00                	sbb    $0x0,%al
  4043ea:	00 00                	add    %al,(%rax)
  4043ec:	7c 01                	jl     4043ef <__GNU_EH_FRAME_HDR+0x283>
  4043ee:	00 00                	add    %al,(%rax)
  4043f0:	a0 d1 ff ff 19 00 00 	movabs 0x19ffffd1,%al
  4043f7:	00 00 
  4043f9:	41 0e                	rex.B (bad) 
  4043fb:	10 50 0e             	adc    %dl,0xe(%rax)
  4043fe:	08 41 0e             	or     %al,0xe(%rcx)
  404401:	10 46 0e             	adc    %al,0xe(%rsi)
  404404:	08 00                	or     %al,(%rax)
  404406:	00 00                	add    %al,(%rax)
  404408:	1c 00                	sbb    $0x0,%al
  40440a:	00 00                	add    %al,(%rax)
  40440c:	9c                   	pushfq 
  40440d:	01 00                	add    %eax,(%rax)
  40440f:	00 a0 d1 ff ff 19    	add    %ah,0x19ffffd1(%rax)
  404415:	00 00                	add    %al,(%rax)
  404417:	00 00                	add    %al,(%rax)
  404419:	41 0e                	rex.B (bad) 
  40441b:	10 50 0e             	adc    %dl,0xe(%rax)
  40441e:	08 41 0e             	or     %al,0xe(%rcx)
  404421:	10 46 0e             	adc    %al,0xe(%rsi)
  404424:	08 00                	or     %al,(%rax)
  404426:	00 00                	add    %al,(%rax)
  404428:	10 00                	adc    %al,(%rax)
  40442a:	00 00                	add    %al,(%rax)
  40442c:	bc 01 00 00 a0       	mov    $0xa0000001,%esp
  404431:	d1 ff                	sar    %edi
  404433:	ff 02                	incl   (%rdx)
  404435:	01 00                	add    %eax,(%rax)
  404437:	00 00                	add    %al,(%rax)
  404439:	00 00                	add    %al,(%rax)
  40443b:	00 10                	add    %dl,(%rax)
  40443d:	00 00                	add    %al,(%rax)
  40443f:	00 d0                	add    %dl,%al
  404441:	01 00                	add    %eax,(%rax)
  404443:	00 9c d2 ff ff 02 01 	add    %bl,0x102ffff(%rdx,%rdx,8)
  40444a:	00 00                	add    %al,(%rax)
  40444c:	00 00                	add    %al,(%rax)
  40444e:	00 00                	add    %al,(%rax)
  404450:	10 00                	adc    %al,(%rax)
  404452:	00 00                	add    %al,(%rax)
  404454:	e4 01                	in     $0x1,%al
  404456:	00 00                	add    %al,(%rax)
  404458:	98                   	cwtl   
  404459:	d3 ff                	sar    %cl,%edi
  40445b:	ff 02                	incl   (%rdx)
  40445d:	01 00                	add    %eax,(%rax)
  40445f:	00 00                	add    %al,(%rax)
  404461:	00 00                	add    %al,(%rax)
  404463:	00 10                	add    %dl,(%rax)
  404465:	00 00                	add    %al,(%rax)
  404467:	00 f8                	add    %bh,%al
  404469:	01 00                	add    %eax,(%rax)
  40446b:	00 94 d4 ff ff 02 01 	add    %dl,0x102ffff(%rsp,%rdx,8)
  404472:	00 00                	add    %al,(%rax)
  404474:	00 00                	add    %al,(%rax)
  404476:	00 00                	add    %al,(%rax)
  404478:	10 00                	adc    %al,(%rax)
  40447a:	00 00                	add    %al,(%rax)
  40447c:	0c 02                	or     $0x2,%al
  40447e:	00 00                	add    %al,(%rax)
  404480:	90                   	nop
  404481:	d5                   	(bad)  
  404482:	ff                   	(bad)  
  404483:	ff 14 00             	callq  *(%rax,%rax,1)
  404486:	00 00                	add    %al,(%rax)
  404488:	00 00                	add    %al,(%rax)
  40448a:	00 00                	add    %al,(%rax)
  40448c:	10 00                	adc    %al,(%rax)
  40448e:	00 00                	add    %al,(%rax)
  404490:	20 02                	and    %al,(%rdx)
  404492:	00 00                	add    %al,(%rax)
  404494:	9c                   	pushfq 
  404495:	d5                   	(bad)  
  404496:	ff                   	(bad)  
  404497:	ff 13                	callq  *(%rbx)
  404499:	00 00                	add    %al,(%rax)
  40449b:	00 00                	add    %al,(%rax)
  40449d:	00 00                	add    %al,(%rax)
  40449f:	00 10                	add    %dl,(%rax)
  4044a1:	00 00                	add    %al,(%rax)
  4044a3:	00 34 02             	add    %dh,(%rdx,%rax,1)
  4044a6:	00 00                	add    %al,(%rax)
  4044a8:	a8 d5                	test   $0xd5,%al
  4044aa:	ff                   	(bad)  
  4044ab:	ff 17                	callq  *(%rdi)
  4044ad:	00 00                	add    %al,(%rax)
  4044af:	00 00                	add    %al,(%rax)
  4044b1:	00 00                	add    %al,(%rax)
  4044b3:	00 10                	add    %dl,(%rax)
  4044b5:	00 00                	add    %al,(%rax)
  4044b7:	00 48 02             	add    %cl,0x2(%rax)
  4044ba:	00 00                	add    %al,(%rax)
  4044bc:	b4 d5                	mov    $0xd5,%ah
  4044be:	ff                   	(bad)  
  4044bf:	ff 18                	lcall  *(%rax)
  4044c1:	00 00                	add    %al,(%rax)
  4044c3:	00 00                	add    %al,(%rax)
  4044c5:	00 00                	add    %al,(%rax)
  4044c7:	00 10                	add    %dl,(%rax)
  4044c9:	00 00                	add    %al,(%rax)
  4044cb:	00 5c 02 00          	add    %bl,0x0(%rdx,%rax,1)
  4044cf:	00 c0                	add    %al,%al
  4044d1:	d5                   	(bad)  
  4044d2:	ff                   	(bad)  
  4044d3:	ff 20                	jmpq   *(%rax)
  4044d5:	00 00                	add    %al,(%rax)
  4044d7:	00 00                	add    %al,(%rax)
  4044d9:	00 00                	add    %al,(%rax)
  4044db:	00 10                	add    %dl,(%rax)
  4044dd:	00 00                	add    %al,(%rax)
  4044df:	00 70 02             	add    %dh,0x2(%rax)
  4044e2:	00 00                	add    %al,(%rax)
  4044e4:	cc                   	int3   
  4044e5:	d5                   	(bad)  
  4044e6:	ff                   	(bad)  
  4044e7:	ff 1e                	lcall  *(%rsi)
  4044e9:	00 00                	add    %al,(%rax)
  4044eb:	00 00                	add    %al,(%rax)
  4044ed:	00 00                	add    %al,(%rax)
  4044ef:	00 10                	add    %dl,(%rax)
  4044f1:	00 00                	add    %al,(%rax)
  4044f3:	00 84 02 00 00 d8 d5 	add    %al,-0x2a280000(%rdx,%rax,1)
  4044fa:	ff                   	(bad)  
  4044fb:	ff 23                	jmpq   *(%rbx)
  4044fd:	00 00                	add    %al,(%rax)
  4044ff:	00 00                	add    %al,(%rax)
  404501:	00 00                	add    %al,(%rax)
  404503:	00 10                	add    %dl,(%rax)
  404505:	00 00                	add    %al,(%rax)
  404507:	00 98 02 00 00 f4    	add    %bl,-0xbfffffe(%rax)
  40450d:	d5                   	(bad)  
  40450e:	ff                   	(bad)  
  40450f:	ff 23                	jmpq   *(%rbx)
  404511:	00 00                	add    %al,(%rax)
  404513:	00 00                	add    %al,(%rax)
  404515:	00 00                	add    %al,(%rax)
  404517:	00 10                	add    %dl,(%rax)
  404519:	00 00                	add    %al,(%rax)
  40451b:	00 ac 02 00 00 10 d6 	add    %ch,-0x29f00000(%rdx,%rax,1)
  404522:	ff                   	(bad)  
  404523:	ff 01                	incl   (%rcx)
  404525:	00 00                	add    %al,(%rax)
  404527:	00 00                	add    %al,(%rax)
  404529:	00 00                	add    %al,(%rax)
  40452b:	00 50 00             	add    %dl,0x0(%rax)
  40452e:	00 00                	add    %al,(%rax)
  404530:	c0 02 00             	rolb   $0x0,(%rdx)
  404533:	00 0c d6             	add    %cl,(%rsi,%rdx,8)
  404536:	ff                   	(bad)  
  404537:	ff                   	(bad)  
  404538:	df 16                	fists  (%rsi)
  40453a:	00 00                	add    %al,(%rax)
  40453c:	00 41 0e             	add    %al,0xe(%rcx)
  40453f:	10 42 0e             	adc    %al,0xe(%rdx)
  404542:	18 42 0e             	sbb    %al,0xe(%rdx)
  404545:	20 42 0e             	and    %al,0xe(%rdx)
  404548:	28 42 0e             	sub    %al,0xe(%rdx)
  40454b:	30 41 0e             	xor    %al,0xe(%rcx)
  40454e:	38 47 0e             	cmp    %al,0xe(%rdi)
  404551:	80 03 83             	addb   $0x83,(%rbx)
  404554:	07                   	(bad)  
  404555:	8c 06                	mov    %es,(%rsi)
  404557:	8d 05 8e 04 8f 03    	lea    0x38f048e(%rip),%eax        # 3cf49eb <_end+0x38ee84b>
  40455d:	86 02                	xchg   %al,(%rdx)
  40455f:	03 64 15 0e          	add    0xe(%rbp,%rdx,1),%esp
  404563:	38 41 0e             	cmp    %al,0xe(%rcx)
  404566:	30 42 0e             	xor    %al,0xe(%rdx)
  404569:	28 42 0e             	sub    %al,0xe(%rdx)
  40456c:	20 42 0e             	and    %al,0xe(%rdx)
  40456f:	18 42 0e             	sbb    %al,0xe(%rdx)
  404572:	10 41 0e             	adc    %al,0xe(%rcx)
  404575:	08 41 0e             	or     %al,0xe(%rcx)
  404578:	80 03 00             	addb   $0x0,(%rbx)
  40457b:	00 00                	add    %al,(%rax)
  40457d:	00 00                	add    %al,(%rax)
  40457f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  404583:	00 14 03             	add    %dl,(%rbx,%rax,1)
  404586:	00 00                	add    %al,(%rax)
  404588:	98                   	cwtl   
  404589:	ec                   	in     (%dx),%al
  40458a:	ff                   	(bad)  
  40458b:	ff 65 00             	jmpq   *0x0(%rbp)
  40458e:	00 00                	add    %al,(%rax)
  404590:	00 46 0e             	add    %al,0xe(%rsi)
  404593:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
  404599:	8e 03                	mov    (%rbx),%es
  40459b:	45 0e                	rex.RB (bad) 
  40459d:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  4045a3:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff867053ed <_end+0xffffffff862ff24d>
  4045a9:	06                   	(bad)  
  4045aa:	48 0e                	rex.W (bad) 
  4045ac:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
  4045b2:	6e                   	outsb  %ds:(%rsi),(%dx)
  4045b3:	0e                   	(bad)  
  4045b4:	38 41 0e             	cmp    %al,0xe(%rcx)
  4045b7:	30 41 0e             	xor    %al,0xe(%rcx)
  4045ba:	28 42 0e             	sub    %al,0xe(%rdx)
  4045bd:	20 42 0e             	and    %al,0xe(%rdx)
  4045c0:	18 42 0e             	sbb    %al,0xe(%rdx)
  4045c3:	10 42 0e             	adc    %al,0xe(%rdx)
  4045c6:	08 00                	or     %al,(%rax)
  4045c8:	10 00                	adc    %al,(%rax)
  4045ca:	00 00                	add    %al,(%rax)
  4045cc:	5c                   	pop    %rsp
  4045cd:	03 00                	add    (%rax),%eax
  4045cf:	00 c0                	add    %al,%al
  4045d1:	ec                   	in     (%dx),%al
  4045d2:	ff                   	(bad)  
  4045d3:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 4045d9 <__GNU_EH_FRAME_HDR+0x46d>
  4045d9:	00 00                	add    %al,(%rax)
	...

00000000004045dc <__FRAME_END__>:
  4045dc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000405e10 <__frame_dummy_init_array_entry>:
  405e10:	40 11 40 00          	rex adc %eax,0x0(%rax)
  405e14:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000405e18 <__do_global_dtors_aux_fini_array_entry>:
  405e18:	10 11                	adc    %dl,(%rcx)
  405e1a:	40 00 00             	add    %al,(%rax)
  405e1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000405e20 <_DYNAMIC>:
  405e20:	01 00                	add    %eax,(%rax)
  405e22:	00 00                	add    %al,(%rax)
  405e24:	00 00                	add    %al,(%rax)
  405e26:	00 00                	add    %al,(%rax)
  405e28:	01 00                	add    %eax,(%rax)
  405e2a:	00 00                	add    %al,(%rax)
  405e2c:	00 00                	add    %al,(%rax)
  405e2e:	00 00                	add    %al,(%rax)
  405e30:	0c 00                	or     $0x0,%al
  405e32:	00 00                	add    %al,(%rax)
  405e34:	00 00                	add    %al,(%rax)
  405e36:	00 00                	add    %al,(%rax)
  405e38:	00 10                	add    %dl,(%rax)
  405e3a:	40 00 00             	add    %al,(%rax)
  405e3d:	00 00                	add    %al,(%rax)
  405e3f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 405e45 <_DYNAMIC+0x25>
  405e45:	00 00                	add    %al,(%rax)
  405e47:	00 98 32 40 00 00    	add    %bl,0x4032(%rax)
  405e4d:	00 00                	add    %al,(%rax)
  405e4f:	00 19                	add    %bl,(%rcx)
  405e51:	00 00                	add    %al,(%rax)
  405e53:	00 00                	add    %al,(%rax)
  405e55:	00 00                	add    %al,(%rax)
  405e57:	00 10                	add    %dl,(%rax)
  405e59:	5e                   	pop    %rsi
  405e5a:	40 00 00             	add    %al,(%rax)
  405e5d:	00 00                	add    %al,(%rax)
  405e5f:	00 1b                	add    %bl,(%rbx)
  405e61:	00 00                	add    %al,(%rax)
  405e63:	00 00                	add    %al,(%rax)
  405e65:	00 00                	add    %al,(%rax)
  405e67:	00 08                	add    %cl,(%rax)
  405e69:	00 00                	add    %al,(%rax)
  405e6b:	00 00                	add    %al,(%rax)
  405e6d:	00 00                	add    %al,(%rax)
  405e6f:	00 1a                	add    %bl,(%rdx)
  405e71:	00 00                	add    %al,(%rax)
  405e73:	00 00                	add    %al,(%rax)
  405e75:	00 00                	add    %al,(%rax)
  405e77:	00 18                	add    %bl,(%rax)
  405e79:	5e                   	pop    %rsi
  405e7a:	40 00 00             	add    %al,(%rax)
  405e7d:	00 00                	add    %al,(%rax)
  405e7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  405e82:	00 00                	add    %al,(%rax)
  405e84:	00 00                	add    %al,(%rax)
  405e86:	00 00                	add    %al,(%rax)
  405e88:	08 00                	or     %al,(%rax)
  405e8a:	00 00                	add    %al,(%rax)
  405e8c:	00 00                	add    %al,(%rax)
  405e8e:	00 00                	add    %al,(%rax)
  405e90:	f5                   	cmc    
  405e91:	fe                   	(bad)  
  405e92:	ff 6f 00             	ljmp   *0x0(%rdi)
  405e95:	00 00                	add    %al,(%rax)
  405e97:	00 08                	add    %cl,(%rax)
  405e99:	03 40 00             	add    0x0(%rax),%eax
  405e9c:	00 00                	add    %al,(%rax)
  405e9e:	00 00                	add    %al,(%rax)
  405ea0:	05 00 00 00 00       	add    $0x0,%eax
  405ea5:	00 00                	add    %al,(%rax)
  405ea7:	00 b8 03 40 00 00    	add    %bh,0x4003(%rax)
  405ead:	00 00                	add    %al,(%rax)
  405eaf:	00 06                	add    %al,(%rsi)
  405eb1:	00 00                	add    %al,(%rax)
  405eb3:	00 00                	add    %al,(%rax)
  405eb5:	00 00                	add    %al,(%rax)
  405eb7:	00 28                	add    %ch,(%rax)
  405eb9:	03 40 00             	add    0x0(%rax),%eax
  405ebc:	00 00                	add    %al,(%rax)
  405ebe:	00 00                	add    %al,(%rax)
  405ec0:	0a 00                	or     (%rax),%al
  405ec2:	00 00                	add    %al,(%rax)
  405ec4:	00 00                	add    %al,(%rax)
  405ec6:	00 00                	add    %al,(%rax)
  405ec8:	52                   	push   %rdx
  405ec9:	00 00                	add    %al,(%rax)
  405ecb:	00 00                	add    %al,(%rax)
  405ecd:	00 00                	add    %al,(%rax)
  405ecf:	00 0b                	add    %cl,(%rbx)
  405ed1:	00 00                	add    %al,(%rax)
  405ed3:	00 00                	add    %al,(%rax)
  405ed5:	00 00                	add    %al,(%rax)
  405ed7:	00 18                	add    %bl,(%rax)
  405ed9:	00 00                	add    %al,(%rax)
  405edb:	00 00                	add    %al,(%rax)
  405edd:	00 00                	add    %al,(%rax)
  405edf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 405ee5 <_DYNAMIC+0xc5>
	...
  405eed:	00 00                	add    %al,(%rax)
  405eef:	00 03                	add    %al,(%rbx)
	...
  405ef9:	60                   	(bad)  
  405efa:	40 00 00             	add    %al,(%rax)
  405efd:	00 00                	add    %al,(%rax)
  405eff:	00 02                	add    %al,(%rdx)
  405f01:	00 00                	add    %al,(%rax)
  405f03:	00 00                	add    %al,(%rax)
  405f05:	00 00                	add    %al,(%rax)
  405f07:	00 48 00             	add    %cl,0x0(%rax)
  405f0a:	00 00                	add    %al,(%rax)
  405f0c:	00 00                	add    %al,(%rax)
  405f0e:	00 00                	add    %al,(%rax)
  405f10:	14 00                	adc    $0x0,%al
  405f12:	00 00                	add    %al,(%rax)
  405f14:	00 00                	add    %al,(%rax)
  405f16:	00 00                	add    %al,(%rax)
  405f18:	07                   	(bad)  
  405f19:	00 00                	add    %al,(%rax)
  405f1b:	00 00                	add    %al,(%rax)
  405f1d:	00 00                	add    %al,(%rax)
  405f1f:	00 17                	add    %dl,(%rdi)
  405f21:	00 00                	add    %al,(%rax)
  405f23:	00 00                	add    %al,(%rax)
  405f25:	00 00                	add    %al,(%rax)
  405f27:	00 68 04             	add    %ch,0x4(%rax)
  405f2a:	40 00 00             	add    %al,(%rax)
  405f2d:	00 00                	add    %al,(%rax)
  405f2f:	00 07                	add    %al,(%rdi)
  405f31:	00 00                	add    %al,(%rax)
  405f33:	00 00                	add    %al,(%rax)
  405f35:	00 00                	add    %al,(%rax)
  405f37:	00 38                	add    %bh,(%rax)
  405f39:	04 40                	add    $0x40,%al
  405f3b:	00 00                	add    %al,(%rax)
  405f3d:	00 00                	add    %al,(%rax)
  405f3f:	00 08                	add    %cl,(%rax)
  405f41:	00 00                	add    %al,(%rax)
  405f43:	00 00                	add    %al,(%rax)
  405f45:	00 00                	add    %al,(%rax)
  405f47:	00 30                	add    %dh,(%rax)
  405f49:	00 00                	add    %al,(%rax)
  405f4b:	00 00                	add    %al,(%rax)
  405f4d:	00 00                	add    %al,(%rax)
  405f4f:	00 09                	add    %cl,(%rcx)
  405f51:	00 00                	add    %al,(%rax)
  405f53:	00 00                	add    %al,(%rax)
  405f55:	00 00                	add    %al,(%rax)
  405f57:	00 18                	add    %bl,(%rax)
  405f59:	00 00                	add    %al,(%rax)
  405f5b:	00 00                	add    %al,(%rax)
  405f5d:	00 00                	add    %al,(%rax)
  405f5f:	00 fe                	add    %bh,%dh
  405f61:	ff                   	(bad)  
  405f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  405f65:	00 00                	add    %al,(%rax)
  405f67:	00 18                	add    %bl,(%rax)
  405f69:	04 40                	add    $0x40,%al
  405f6b:	00 00                	add    %al,(%rax)
  405f6d:	00 00                	add    %al,(%rax)
  405f6f:	00 ff                	add    %bh,%bh
  405f71:	ff                   	(bad)  
  405f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  405f75:	00 00                	add    %al,(%rax)
  405f77:	00 01                	add    %al,(%rcx)
  405f79:	00 00                	add    %al,(%rax)
  405f7b:	00 00                	add    %al,(%rax)
  405f7d:	00 00                	add    %al,(%rax)
  405f7f:	00 f0                	add    %dh,%al
  405f81:	ff                   	(bad)  
  405f82:	ff 6f 00             	ljmp   *0x0(%rdi)
  405f85:	00 00                	add    %al,(%rax)
  405f87:	00 0a                	add    %cl,(%rdx)
  405f89:	04 40                	add    $0x40,%al
	...

Disassembly of section .got:

0000000000405ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000406000 <_GLOBAL_OFFSET_TABLE_>:
  406000:	20 5e 40             	and    %bl,0x40(%rsi)
	...
  406017:	00 36                	add    %dh,(%rsi)
  406019:	10 40 00             	adc    %al,0x0(%rax)
  40601c:	00 00                	add    %al,(%rax)
  40601e:	00 00                	add    %al,(%rax)
  406020:	46 10 40 00          	rex.RX adc %r8b,0x0(%rax)
  406024:	00 00                	add    %al,(%rax)
  406026:	00 00                	add    %al,(%rax)
  406028:	56                   	push   %rsi
  406029:	10 40 00             	adc    %al,0x0(%rax)
  40602c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000406030 <__data_start>:
	...

0000000000406038 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000406040 <completed.8060>:
	...

0000000000406050 <dis>:
	...

0000000000406070 <secret>:
	...

0000000000406080 <vis>:
	...

00000000004060a0 <in>:
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
  11:	30 2d 31 37 75 62    	xor    %ch,0x62753731(%rip)        # 62753748 <_end+0x6234d5a8>
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
  44:	30 2d 33 75 62 75    	xor    %ch,0x75627533(%rip)        # 7562757d <_end+0x752213dd>
  4a:	6e                   	outsb  %ds:(%rsi),(%dx)
  4b:	74 75                	je     c2 <_init-0x400f3e>
  4d:	31 7e 32             	xor    %edi,0x32(%rsi)
  50:	30 2e                	xor    %ch,(%rsi)
  52:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  55:	34 00                	xor    $0x0,%al
