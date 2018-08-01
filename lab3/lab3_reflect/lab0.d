
lab0:     file format elf64-x86-64


Disassembly of section .init:

0000000000400558 <_init>:
  400558:	48 83 ec 08          	sub    $0x8,%rsp
  40055c:	48 8b 05 95 1a 20 00 	mov    0x201a95(%rip),%rax        # 601ff8 <__gmon_start__>
  400563:	48 85 c0             	test   %rax,%rax
  400566:	74 05                	je     40056d <_init+0x15>
  400568:	e8 b3 00 00 00       	callq  400620 <.plt.got>
  40056d:	48 83 c4 08          	add    $0x8,%rsp
  400571:	c3                   	retq   

Disassembly of section .plt:

0000000000400580 <.plt>:
  400580:	ff 35 82 1a 20 00    	pushq  0x201a82(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400586:	ff 25 84 1a 20 00    	jmpq   *0x201a84(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <free@plt>:
  400590:	ff 25 82 1a 20 00    	jmpq   *0x201a82(%rip)        # 602018 <free@GLIBC_2.2.5>
  400596:	68 00 00 00 00       	pushq  $0x0
  40059b:	e9 e0 ff ff ff       	jmpq   400580 <.plt>

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 7a 1a 20 00    	jmpq   *0x201a7a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4005a6:	68 01 00 00 00       	pushq  $0x1
  4005ab:	e9 d0 ff ff ff       	jmpq   400580 <.plt>

00000000004005b0 <clock@plt>:
  4005b0:	ff 25 72 1a 20 00    	jmpq   *0x201a72(%rip)        # 602028 <clock@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	pushq  $0x2
  4005bb:	e9 c0 ff ff ff       	jmpq   400580 <.plt>

00000000004005c0 <printf@plt>:
  4005c0:	ff 25 6a 1a 20 00    	jmpq   *0x201a6a(%rip)        # 602030 <printf@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <__assert_fail@plt>:
  4005d0:	ff 25 62 1a 20 00    	jmpq   *0x201a62(%rip)        # 602038 <__assert_fail@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	pushq  $0x4
  4005db:	e9 a0 ff ff ff       	jmpq   400580 <.plt>

00000000004005e0 <__libc_start_main@plt>:
  4005e0:	ff 25 5a 1a 20 00    	jmpq   *0x201a5a(%rip)        # 602040 <__libc_start_main@GLIBC_2.2.5>
  4005e6:	68 05 00 00 00       	pushq  $0x5
  4005eb:	e9 90 ff ff ff       	jmpq   400580 <.plt>

00000000004005f0 <malloc@plt>:
  4005f0:	ff 25 52 1a 20 00    	jmpq   *0x201a52(%rip)        # 602048 <malloc@GLIBC_2.2.5>
  4005f6:	68 06 00 00 00       	pushq  $0x6
  4005fb:	e9 80 ff ff ff       	jmpq   400580 <.plt>

0000000000400600 <atoi@plt>:
  400600:	ff 25 4a 1a 20 00    	jmpq   *0x201a4a(%rip)        # 602050 <atoi@GLIBC_2.2.5>
  400606:	68 07 00 00 00       	pushq  $0x7
  40060b:	e9 70 ff ff ff       	jmpq   400580 <.plt>

0000000000400610 <exit@plt>:
  400610:	ff 25 42 1a 20 00    	jmpq   *0x201a42(%rip)        # 602058 <exit@GLIBC_2.2.5>
  400616:	68 08 00 00 00       	pushq  $0x8
  40061b:	e9 60 ff ff ff       	jmpq   400580 <.plt>

Disassembly of section .plt.got:

0000000000400620 <.plt.got>:
  400620:	ff 25 d2 19 20 00    	jmpq   *0x2019d2(%rip)        # 601ff8 <__gmon_start__>
  400626:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400630 <_start>:
  400630:	31 ed                	xor    %ebp,%ebp
  400632:	49 89 d1             	mov    %rdx,%r9
  400635:	5e                   	pop    %rsi
  400636:	48 89 e2             	mov    %rsp,%rdx
  400639:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40063d:	50                   	push   %rax
  40063e:	54                   	push   %rsp
  40063f:	49 c7 c0 20 0b 40 00 	mov    $0x400b20,%r8
  400646:	48 c7 c1 b0 0a 40 00 	mov    $0x400ab0,%rcx
  40064d:	48 c7 c7 cf 09 40 00 	mov    $0x4009cf,%rdi
  400654:	e8 87 ff ff ff       	callq  4005e0 <__libc_start_main@plt>
  400659:	f4                   	hlt    
  40065a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400660 <deregister_tm_clones>:
  400660:	b8 6f 20 60 00       	mov    $0x60206f,%eax
  400665:	55                   	push   %rbp
  400666:	48 2d 68 20 60 00    	sub    $0x602068,%rax
  40066c:	48 83 f8 0e          	cmp    $0xe,%rax
  400670:	48 89 e5             	mov    %rsp,%rbp
  400673:	76 1b                	jbe    400690 <deregister_tm_clones+0x30>
  400675:	b8 00 00 00 00       	mov    $0x0,%eax
  40067a:	48 85 c0             	test   %rax,%rax
  40067d:	74 11                	je     400690 <deregister_tm_clones+0x30>
  40067f:	5d                   	pop    %rbp
  400680:	bf 68 20 60 00       	mov    $0x602068,%edi
  400685:	ff e0                	jmpq   *%rax
  400687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40068e:	00 00 
  400690:	5d                   	pop    %rbp
  400691:	c3                   	retq   
  400692:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400699:	1f 84 00 00 00 00 00 

00000000004006a0 <register_tm_clones>:
  4006a0:	be 68 20 60 00       	mov    $0x602068,%esi
  4006a5:	55                   	push   %rbp
  4006a6:	48 81 ee 68 20 60 00 	sub    $0x602068,%rsi
  4006ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4006b1:	48 89 e5             	mov    %rsp,%rbp
  4006b4:	48 89 f0             	mov    %rsi,%rax
  4006b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006bb:	48 01 c6             	add    %rax,%rsi
  4006be:	48 d1 fe             	sar    %rsi
  4006c1:	74 15                	je     4006d8 <register_tm_clones+0x38>
  4006c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006c8:	48 85 c0             	test   %rax,%rax
  4006cb:	74 0b                	je     4006d8 <register_tm_clones+0x38>
  4006cd:	5d                   	pop    %rbp
  4006ce:	bf 68 20 60 00       	mov    $0x602068,%edi
  4006d3:	ff e0                	jmpq   *%rax
  4006d5:	0f 1f 00             	nopl   (%rax)
  4006d8:	5d                   	pop    %rbp
  4006d9:	c3                   	retq   
  4006da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006e0 <__do_global_dtors_aux>:
  4006e0:	80 3d 7d 19 20 00 00 	cmpb   $0x0,0x20197d(%rip)        # 602064 <_edata>
  4006e7:	75 11                	jne    4006fa <__do_global_dtors_aux+0x1a>
  4006e9:	55                   	push   %rbp
  4006ea:	48 89 e5             	mov    %rsp,%rbp
  4006ed:	e8 6e ff ff ff       	callq  400660 <deregister_tm_clones>
  4006f2:	5d                   	pop    %rbp
  4006f3:	c6 05 6a 19 20 00 01 	movb   $0x1,0x20196a(%rip)        # 602064 <_edata>
  4006fa:	f3 c3                	repz retq 
  4006fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400700 <frame_dummy>:
  400700:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  400705:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400709:	75 05                	jne    400710 <frame_dummy+0x10>
  40070b:	eb 93                	jmp    4006a0 <register_tm_clones>
  40070d:	0f 1f 00             	nopl   (%rax)
  400710:	b8 00 00 00 00       	mov    $0x0,%eax
  400715:	48 85 c0             	test   %rax,%rax
  400718:	74 f1                	je     40070b <frame_dummy+0xb>
  40071a:	55                   	push   %rbp
  40071b:	48 89 e5             	mov    %rsp,%rbp
  40071e:	ff d0                	callq  *%rax
  400720:	5d                   	pop    %rbp
  400721:	e9 7a ff ff ff       	jmpq   4006a0 <register_tm_clones>

0000000000400726 <part1>:
  400726:	55                   	push   %rbp
  400727:	48 89 e5             	mov    %rsp,%rbp
  40072a:	48 83 ec 10          	sub    $0x10,%rsp
  40072e:	bf 40 0b 40 00       	mov    $0x400b40,%edi
  400733:	e8 68 fe ff ff       	callq  4005a0 <puts@plt>
  400738:	c7 45 fc 5f 01 00 00 	movl   $0x15f,-0x4(%rbp)
  40073f:	c7 45 f8 9a 01 00 00 	movl   $0x19a,-0x8(%rbp)
  400746:	8b 55 f8             	mov    -0x8(%rbp),%edx
  400749:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40074c:	89 c6                	mov    %eax,%esi
  40074e:	bf 55 0b 40 00       	mov    $0x400b55,%edi
  400753:	b8 00 00 00 00       	mov    $0x0,%eax
  400758:	e8 63 fe ff ff       	callq  4005c0 <printf@plt>
  40075d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400760:	89 c6                	mov    %eax,%esi
  400762:	bf 64 0b 40 00       	mov    $0x400b64,%edi
  400767:	b8 00 00 00 00       	mov    $0x0,%eax
  40076c:	e8 4f fe ff ff       	callq  4005c0 <printf@plt>
  400771:	90                   	nop
  400772:	c9                   	leaveq 
  400773:	c3                   	retq   

0000000000400774 <fillArray>:
  400774:	55                   	push   %rbp
  400775:	48 89 e5             	mov    %rsp,%rbp
  400778:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40077c:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  40077f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400786:	eb 27                	jmp    4007af <fillArray+0x3b>
  400788:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40078b:	48 98                	cltq   
  40078d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400794:	00 
  400795:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400799:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  40079d:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4007a0:	89 d0                	mov    %edx,%eax
  4007a2:	01 c0                	add    %eax,%eax
  4007a4:	01 d0                	add    %edx,%eax
  4007a6:	83 c0 02             	add    $0x2,%eax
  4007a9:	89 01                	mov    %eax,(%rcx)
  4007ab:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4007af:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007b2:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  4007b5:	7c d1                	jl     400788 <fillArray+0x14>
  4007b7:	90                   	nop
  4007b8:	5d                   	pop    %rbp
  4007b9:	c3                   	retq   

00000000004007ba <part2>:
  4007ba:	55                   	push   %rbp
  4007bb:	48 89 e5             	mov    %rsp,%rbp
  4007be:	48 83 ec 30          	sub    $0x30,%rsp
  4007c2:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4007c6:	be 64 00 00 00       	mov    $0x64,%esi
  4007cb:	48 89 c7             	mov    %rax,%rdi
  4007ce:	e8 a1 ff ff ff       	callq  400774 <fillArray>
  4007d3:	90                   	nop
  4007d4:	c9                   	leaveq 
  4007d5:	c3                   	retq   

00000000004007d6 <part3>:
  4007d6:	55                   	push   %rbp
  4007d7:	48 89 e5             	mov    %rsp,%rbp
  4007da:	48 83 ec 10          	sub    $0x10,%rsp
  4007de:	bf 70 0b 40 00       	mov    $0x400b70,%edi
  4007e3:	e8 b8 fd ff ff       	callq  4005a0 <puts@plt>
  4007e8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  4007ef:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4007f2:	85 c0                	test   %eax,%eax
  4007f4:	74 19                	je     40080f <part3+0x39>
  4007f6:	b9 88 0c 40 00       	mov    $0x400c88,%ecx
  4007fb:	ba 9c 00 00 00       	mov    $0x9c,%edx
  400800:	be 85 0b 40 00       	mov    $0x400b85,%esi
  400805:	bf 8c 0b 40 00       	mov    $0x400b8c,%edi
  40080a:	e8 c1 fd ff ff       	callq  4005d0 <__assert_fail@plt>
  40080f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400813:	be 04 00 00 00       	mov    $0x4,%esi
  400818:	48 89 c7             	mov    %rax,%rdi
  40081b:	e8 54 ff ff ff       	callq  400774 <fillArray>
  400820:	8b 45 f0             	mov    -0x10(%rbp),%eax
  400823:	83 f8 02             	cmp    $0x2,%eax
  400826:	74 19                	je     400841 <part3+0x6b>
  400828:	b9 88 0c 40 00       	mov    $0x400c88,%ecx
  40082d:	ba ac 00 00 00       	mov    $0xac,%edx
  400832:	be 85 0b 40 00       	mov    $0x400b85,%esi
  400837:	bf 9c 0b 40 00       	mov    $0x400b9c,%edi
  40083c:	e8 8f fd ff ff       	callq  4005d0 <__assert_fail@plt>
  400841:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400844:	83 f8 05             	cmp    $0x5,%eax
  400847:	74 19                	je     400862 <part3+0x8c>
  400849:	b9 88 0c 40 00       	mov    $0x400c88,%ecx
  40084e:	ba ad 00 00 00       	mov    $0xad,%edx
  400853:	be 85 0b 40 00       	mov    $0x400b85,%esi
  400858:	bf ac 0b 40 00       	mov    $0x400bac,%edi
  40085d:	e8 6e fd ff ff       	callq  4005d0 <__assert_fail@plt>
  400862:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400865:	83 f8 08             	cmp    $0x8,%eax
  400868:	74 19                	je     400883 <part3+0xad>
  40086a:	b9 88 0c 40 00       	mov    $0x400c88,%ecx
  40086f:	ba ae 00 00 00       	mov    $0xae,%edx
  400874:	be 85 0b 40 00       	mov    $0x400b85,%esi
  400879:	bf bd 0b 40 00       	mov    $0x400bbd,%edi
  40087e:	e8 4d fd ff ff       	callq  4005d0 <__assert_fail@plt>
  400883:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400886:	83 f8 0b             	cmp    $0xb,%eax
  400889:	74 19                	je     4008a4 <part3+0xce>
  40088b:	b9 88 0c 40 00       	mov    $0x400c88,%ecx
  400890:	ba af 00 00 00       	mov    $0xaf,%edx
  400895:	be 85 0b 40 00       	mov    $0x400b85,%esi
  40089a:	bf d2 0b 40 00       	mov    $0x400bd2,%edi
  40089f:	e8 2c fd ff ff       	callq  4005d0 <__assert_fail@plt>
  4008a4:	90                   	nop
  4008a5:	c9                   	leaveq 
  4008a6:	c3                   	retq   

00000000004008a7 <bigArrayIndex>:
  4008a7:	55                   	push   %rbp
  4008a8:	48 89 e5             	mov    %rsp,%rbp
  4008ab:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4008ae:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4008b1:	89 55 f4             	mov    %edx,-0xc(%rbp)
  4008b4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4008b7:	69 d0 90 d0 03 00    	imul   $0x3d090,%eax,%edx
  4008bd:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4008c0:	69 c0 f4 01 00 00    	imul   $0x1f4,%eax,%eax
  4008c6:	01 c2                	add    %eax,%edx
  4008c8:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4008cb:	01 d0                	add    %edx,%eax
  4008cd:	5d                   	pop    %rbp
  4008ce:	c3                   	retq   

00000000004008cf <part4>:
  4008cf:	55                   	push   %rbp
  4008d0:	48 89 e5             	mov    %rsp,%rbp
  4008d3:	48 83 ec 20          	sub    $0x20,%rsp
  4008d7:	bf e6 0b 40 00       	mov    $0x400be6,%edi
  4008dc:	e8 bf fc ff ff       	callq  4005a0 <puts@plt>
  4008e1:	bf 00 65 cd 1d       	mov    $0x1dcd6500,%edi
  4008e6:	e8 05 fd ff ff       	callq  4005f0 <malloc@plt>
  4008eb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4008ef:	e8 bc fc ff ff       	callq  4005b0 <clock@plt>
  4008f4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4008f8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4008ff:	eb 62                	jmp    400963 <part4+0x94>
  400901:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400908:	eb 4c                	jmp    400956 <part4+0x87>
  40090a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  400911:	eb 36                	jmp    400949 <part4+0x7a>
  400913:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400916:	8b 4d f8             	mov    -0x8(%rbp),%ecx
  400919:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40091c:	89 ce                	mov    %ecx,%esi
  40091e:	89 c7                	mov    %eax,%edi
  400920:	e8 82 ff ff ff       	callq  4008a7 <bigArrayIndex>
  400925:	48 98                	cltq   
  400927:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40092e:	00 
  40092f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400933:	48 01 d0             	add    %rdx,%rax
  400936:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  400939:	8b 55 f8             	mov    -0x8(%rbp),%edx
  40093c:	01 d1                	add    %edx,%ecx
  40093e:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400941:	01 ca                	add    %ecx,%edx
  400943:	89 10                	mov    %edx,(%rax)
  400945:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  400949:	81 7d f4 f3 01 00 00 	cmpl   $0x1f3,-0xc(%rbp)
  400950:	7e c1                	jle    400913 <part4+0x44>
  400952:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  400956:	81 7d f8 f3 01 00 00 	cmpl   $0x1f3,-0x8(%rbp)
  40095d:	7e ab                	jle    40090a <part4+0x3b>
  40095f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400963:	81 7d fc f3 01 00 00 	cmpl   $0x1f3,-0x4(%rbp)
  40096a:	7e 95                	jle    400901 <part4+0x32>
  40096c:	e8 3f fc ff ff       	callq  4005b0 <clock@plt>
  400971:	89 c2                	mov    %eax,%edx
  400973:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400977:	29 c2                	sub    %eax,%edx
  400979:	89 d0                	mov    %edx,%eax
  40097b:	89 c6                	mov    %eax,%esi
  40097d:	bf fb 0b 40 00       	mov    $0x400bfb,%edi
  400982:	b8 00 00 00 00       	mov    $0x0,%eax
  400987:	e8 34 fc ff ff       	callq  4005c0 <printf@plt>
  40098c:	90                   	nop
  40098d:	c9                   	leaveq 
  40098e:	c3                   	retq   

000000000040098f <part5>:
  40098f:	55                   	push   %rbp
  400990:	48 89 e5             	mov    %rsp,%rbp
  400993:	48 83 ec 10          	sub    $0x10,%rsp
  400997:	bf 15 0c 40 00       	mov    $0x400c15,%edi
  40099c:	e8 ff fb ff ff       	callq  4005a0 <puts@plt>
  4009a1:	bf 50 00 00 00       	mov    $0x50,%edi
  4009a6:	e8 45 fc ff ff       	callq  4005f0 <malloc@plt>
  4009ab:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009b3:	be 14 00 00 00       	mov    $0x14,%esi
  4009b8:	48 89 c7             	mov    %rax,%rdi
  4009bb:	e8 b4 fd ff ff       	callq  400774 <fillArray>
  4009c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009c4:	48 89 c7             	mov    %rax,%rdi
  4009c7:	e8 c4 fb ff ff       	callq  400590 <free@plt>
  4009cc:	90                   	nop
  4009cd:	c9                   	leaveq 
  4009ce:	c3                   	retq   

00000000004009cf <main>:
  4009cf:	55                   	push   %rbp
  4009d0:	48 89 e5             	mov    %rsp,%rbp
  4009d3:	48 83 ec 10          	sub    $0x10,%rsp
  4009d7:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4009da:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4009de:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  4009e2:	75 17                	jne    4009fb <main+0x2c>
  4009e4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4009e8:	48 83 c0 08          	add    $0x8,%rax
  4009ec:	48 8b 00             	mov    (%rax),%rax
  4009ef:	48 89 c7             	mov    %rax,%rdi
  4009f2:	e8 09 fc ff ff       	callq  400600 <atoi@plt>
  4009f7:	85 c0                	test   %eax,%eax
  4009f9:	75 23                	jne    400a1e <main+0x4f>
  4009fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4009ff:	48 8b 00             	mov    (%rax),%rax
  400a02:	48 89 c6             	mov    %rax,%rsi
  400a05:	bf 2a 0c 40 00       	mov    $0x400c2a,%edi
  400a0a:	b8 00 00 00 00       	mov    $0x0,%eax
  400a0f:	e8 ac fb ff ff       	callq  4005c0 <printf@plt>
  400a14:	bf 00 00 00 00       	mov    $0x0,%edi
  400a19:	e8 f2 fb ff ff       	callq  400610 <exit@plt>
  400a1e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a22:	48 83 c0 08          	add    $0x8,%rax
  400a26:	48 8b 00             	mov    (%rax),%rax
  400a29:	48 89 c7             	mov    %rax,%rdi
  400a2c:	e8 cf fb ff ff       	callq  400600 <atoi@plt>
  400a31:	83 f8 05             	cmp    $0x5,%eax
  400a34:	77 48                	ja     400a7e <main+0xaf>
  400a36:	89 c0                	mov    %eax,%eax
  400a38:	48 8b 04 c5 58 0c 40 	mov    0x400c58(,%rax,8),%rax
  400a3f:	00 
  400a40:	ff e0                	jmpq   *%rax
  400a42:	b8 00 00 00 00       	mov    $0x0,%eax
  400a47:	e8 da fc ff ff       	callq  400726 <part1>
  400a4c:	eb 57                	jmp    400aa5 <main+0xd6>
  400a4e:	b8 00 00 00 00       	mov    $0x0,%eax
  400a53:	e8 62 fd ff ff       	callq  4007ba <part2>
  400a58:	eb 4b                	jmp    400aa5 <main+0xd6>
  400a5a:	b8 00 00 00 00       	mov    $0x0,%eax
  400a5f:	e8 72 fd ff ff       	callq  4007d6 <part3>
  400a64:	eb 3f                	jmp    400aa5 <main+0xd6>
  400a66:	b8 00 00 00 00       	mov    $0x0,%eax
  400a6b:	e8 5f fe ff ff       	callq  4008cf <part4>
  400a70:	eb 33                	jmp    400aa5 <main+0xd6>
  400a72:	b8 00 00 00 00       	mov    $0x0,%eax
  400a77:	e8 13 ff ff ff       	callq  40098f <part5>
  400a7c:	eb 27                	jmp    400aa5 <main+0xd6>
  400a7e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a82:	48 83 c0 08          	add    $0x8,%rax
  400a86:	48 8b 00             	mov    (%rax),%rax
  400a89:	48 89 c6             	mov    %rax,%rsi
  400a8c:	bf 3b 0c 40 00       	mov    $0x400c3b,%edi
  400a91:	b8 00 00 00 00       	mov    $0x0,%eax
  400a96:	e8 25 fb ff ff       	callq  4005c0 <printf@plt>
  400a9b:	bf 00 00 00 00       	mov    $0x0,%edi
  400aa0:	e8 6b fb ff ff       	callq  400610 <exit@plt>
  400aa5:	b8 00 00 00 00       	mov    $0x0,%eax
  400aaa:	c9                   	leaveq 
  400aab:	c3                   	retq   
  400aac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ab0 <__libc_csu_init>:
  400ab0:	41 57                	push   %r15
  400ab2:	41 89 ff             	mov    %edi,%r15d
  400ab5:	41 56                	push   %r14
  400ab7:	49 89 f6             	mov    %rsi,%r14
  400aba:	41 55                	push   %r13
  400abc:	49 89 d5             	mov    %rdx,%r13
  400abf:	41 54                	push   %r12
  400ac1:	4c 8d 25 48 13 20 00 	lea    0x201348(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400ac8:	55                   	push   %rbp
  400ac9:	48 8d 2d 48 13 20 00 	lea    0x201348(%rip),%rbp        # 601e18 <__init_array_end>
  400ad0:	53                   	push   %rbx
  400ad1:	4c 29 e5             	sub    %r12,%rbp
  400ad4:	31 db                	xor    %ebx,%ebx
  400ad6:	48 c1 fd 03          	sar    $0x3,%rbp
  400ada:	48 83 ec 08          	sub    $0x8,%rsp
  400ade:	e8 75 fa ff ff       	callq  400558 <_init>
  400ae3:	48 85 ed             	test   %rbp,%rbp
  400ae6:	74 1e                	je     400b06 <__libc_csu_init+0x56>
  400ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aef:	00 
  400af0:	4c 89 ea             	mov    %r13,%rdx
  400af3:	4c 89 f6             	mov    %r14,%rsi
  400af6:	44 89 ff             	mov    %r15d,%edi
  400af9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400afd:	48 83 c3 01          	add    $0x1,%rbx
  400b01:	48 39 eb             	cmp    %rbp,%rbx
  400b04:	75 ea                	jne    400af0 <__libc_csu_init+0x40>
  400b06:	48 83 c4 08          	add    $0x8,%rsp
  400b0a:	5b                   	pop    %rbx
  400b0b:	5d                   	pop    %rbp
  400b0c:	41 5c                	pop    %r12
  400b0e:	41 5d                	pop    %r13
  400b10:	41 5e                	pop    %r14
  400b12:	41 5f                	pop    %r15
  400b14:	c3                   	retq   
  400b15:	90                   	nop
  400b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b1d:	00 00 00 

0000000000400b20 <__libc_csu_fini>:
  400b20:	f3 c3                	repz retq 
  400b22:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000400b24 <_fini>:
  400b24:	48 83 ec 08          	sub    $0x8,%rsp
  400b28:	48 83 c4 08          	add    $0x8,%rsp
  400b2c:	c3                   	retq   
