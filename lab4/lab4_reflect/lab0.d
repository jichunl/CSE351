
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
  40063f:	49 c7 c0 b0 0b 40 00 	mov    $0x400bb0,%r8
  400646:	48 c7 c1 40 0b 40 00 	mov    $0x400b40,%rcx
  40064d:	48 c7 c7 57 0a 40 00 	mov    $0x400a57,%rdi
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
  40072e:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  400733:	e8 68 fe ff ff       	callq  4005a0 <puts@plt>
  400738:	c7 45 fc 5f 01 00 00 	movl   $0x15f,-0x4(%rbp)
  40073f:	c7 45 f8 9a 01 00 00 	movl   $0x19a,-0x8(%rbp)
  400746:	8b 55 f8             	mov    -0x8(%rbp),%edx
  400749:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40074c:	89 c6                	mov    %eax,%esi
  40074e:	bf e5 0b 40 00       	mov    $0x400be5,%edi
  400753:	b8 00 00 00 00       	mov    $0x0,%eax
  400758:	e8 63 fe ff ff       	callq  4005c0 <printf@plt>
  40075d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400760:	89 c6                	mov    %eax,%esi
  400762:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  400767:	b8 00 00 00 00       	mov    $0x0,%eax
  40076c:	e8 4f fe ff ff       	callq  4005c0 <printf@plt>
  400771:	90                   	nop
  400772:	c9                   	leaveq 
  400773:	c3                   	retq   

0000000000400774 <fillArray>:
  400774:	55                   	push   %rbp
  400775:	48 89 e5             	mov    %rsp,%rbp
  400778:	48 83 ec 20          	sub    $0x20,%rsp
  40077c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400780:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400783:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  400786:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40078a:	48 89 c6             	mov    %rax,%rsi
  40078d:	bf 00 0c 40 00       	mov    $0x400c00,%edi
  400792:	b8 00 00 00 00       	mov    $0x0,%eax
  400797:	e8 24 fe ff ff       	callq  4005c0 <printf@plt>
  40079c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4007a3:	eb 66                	jmp    40080b <fillArray+0x97>
  4007a5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007a8:	48 98                	cltq   
  4007aa:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4007b1:	00 
  4007b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4007b6:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  4007ba:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4007bd:	89 d0                	mov    %edx,%eax
  4007bf:	01 c0                	add    %eax,%eax
  4007c1:	01 d0                	add    %edx,%eax
  4007c3:	83 c0 02             	add    $0x2,%eax
  4007c6:	89 01                	mov    %eax,(%rcx)
  4007c8:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007cb:	48 98                	cltq   
  4007cd:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4007d4:	00 
  4007d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4007d9:	48 01 d0             	add    %rdx,%rax
  4007dc:	8b 08                	mov    (%rax),%ecx
  4007de:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4007e1:	89 d0                	mov    %edx,%eax
  4007e3:	01 c0                	add    %eax,%eax
  4007e5:	01 d0                	add    %edx,%eax
  4007e7:	83 c0 02             	add    $0x2,%eax
  4007ea:	39 c1                	cmp    %eax,%ecx
  4007ec:	74 19                	je     400807 <fillArray+0x93>
  4007ee:	b9 78 0d 40 00       	mov    $0x400d78,%ecx
  4007f3:	ba 53 00 00 00       	mov    $0x53,%edx
  4007f8:	be 2f 0c 40 00       	mov    $0x400c2f,%esi
  4007fd:	bf 36 0c 40 00       	mov    $0x400c36,%edi
  400802:	e8 c9 fd ff ff       	callq  4005d0 <__assert_fail@plt>
  400807:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40080b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40080e:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400811:	7c 92                	jl     4007a5 <fillArray+0x31>
  400813:	bf 4c 0c 40 00       	mov    $0x400c4c,%edi
  400818:	e8 83 fd ff ff       	callq  4005a0 <puts@plt>
  40081d:	90                   	nop
  40081e:	c9                   	leaveq 
  40081f:	c3                   	retq   

0000000000400820 <part2>:
  400820:	55                   	push   %rbp
  400821:	48 89 e5             	mov    %rsp,%rbp
  400824:	48 83 ec 40          	sub    $0x40,%rsp
  400828:	bf 52 0c 40 00       	mov    $0x400c52,%edi
  40082d:	e8 6e fd ff ff       	callq  4005a0 <puts@plt>
  400832:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400836:	be 0a 00 00 00       	mov    $0xa,%esi
  40083b:	48 89 c7             	mov    %rax,%rdi
  40083e:	e8 31 ff ff ff       	callq  400774 <fillArray>
  400843:	c7 45 cc 5f 01 00 00 	movl   $0x15f,-0x34(%rbp)
  40084a:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
  40084e:	be 01 00 00 00       	mov    $0x1,%esi
  400853:	48 89 c7             	mov    %rax,%rdi
  400856:	e8 19 ff ff ff       	callq  400774 <fillArray>
  40085b:	90                   	nop
  40085c:	c9                   	leaveq 
  40085d:	c3                   	retq   

000000000040085e <part3>:
  40085e:	55                   	push   %rbp
  40085f:	48 89 e5             	mov    %rsp,%rbp
  400862:	48 83 ec 10          	sub    $0x10,%rsp
  400866:	bf 67 0c 40 00       	mov    $0x400c67,%edi
  40086b:	e8 30 fd ff ff       	callq  4005a0 <puts@plt>
  400870:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  400877:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40087a:	85 c0                	test   %eax,%eax
  40087c:	74 19                	je     400897 <part3+0x39>
  40087e:	b9 82 0d 40 00       	mov    $0x400d82,%ecx
  400883:	ba 9c 00 00 00       	mov    $0x9c,%edx
  400888:	be 2f 0c 40 00       	mov    $0x400c2f,%esi
  40088d:	bf 7c 0c 40 00       	mov    $0x400c7c,%edi
  400892:	e8 39 fd ff ff       	callq  4005d0 <__assert_fail@plt>
  400897:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40089b:	be 04 00 00 00       	mov    $0x4,%esi
  4008a0:	48 89 c7             	mov    %rax,%rdi
  4008a3:	e8 cc fe ff ff       	callq  400774 <fillArray>
  4008a8:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4008ab:	83 f8 02             	cmp    $0x2,%eax
  4008ae:	74 19                	je     4008c9 <part3+0x6b>
  4008b0:	b9 82 0d 40 00       	mov    $0x400d82,%ecx
  4008b5:	ba ac 00 00 00       	mov    $0xac,%edx
  4008ba:	be 2f 0c 40 00       	mov    $0x400c2f,%esi
  4008bf:	bf 8c 0c 40 00       	mov    $0x400c8c,%edi
  4008c4:	e8 07 fd ff ff       	callq  4005d0 <__assert_fail@plt>
  4008c9:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4008cc:	83 f8 05             	cmp    $0x5,%eax
  4008cf:	74 19                	je     4008ea <part3+0x8c>
  4008d1:	b9 82 0d 40 00       	mov    $0x400d82,%ecx
  4008d6:	ba ad 00 00 00       	mov    $0xad,%edx
  4008db:	be 2f 0c 40 00       	mov    $0x400c2f,%esi
  4008e0:	bf 9c 0c 40 00       	mov    $0x400c9c,%edi
  4008e5:	e8 e6 fc ff ff       	callq  4005d0 <__assert_fail@plt>
  4008ea:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4008ed:	83 f8 08             	cmp    $0x8,%eax
  4008f0:	74 19                	je     40090b <part3+0xad>
  4008f2:	b9 82 0d 40 00       	mov    $0x400d82,%ecx
  4008f7:	ba ae 00 00 00       	mov    $0xae,%edx
  4008fc:	be 2f 0c 40 00       	mov    $0x400c2f,%esi
  400901:	bf ad 0c 40 00       	mov    $0x400cad,%edi
  400906:	e8 c5 fc ff ff       	callq  4005d0 <__assert_fail@plt>
  40090b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40090e:	83 f8 0b             	cmp    $0xb,%eax
  400911:	74 19                	je     40092c <part3+0xce>
  400913:	b9 82 0d 40 00       	mov    $0x400d82,%ecx
  400918:	ba af 00 00 00       	mov    $0xaf,%edx
  40091d:	be 2f 0c 40 00       	mov    $0x400c2f,%esi
  400922:	bf c2 0c 40 00       	mov    $0x400cc2,%edi
  400927:	e8 a4 fc ff ff       	callq  4005d0 <__assert_fail@plt>
  40092c:	90                   	nop
  40092d:	c9                   	leaveq 
  40092e:	c3                   	retq   

000000000040092f <bigArrayIndex>:
  40092f:	55                   	push   %rbp
  400930:	48 89 e5             	mov    %rsp,%rbp
  400933:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400936:	89 75 f8             	mov    %esi,-0x8(%rbp)
  400939:	89 55 f4             	mov    %edx,-0xc(%rbp)
  40093c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40093f:	69 d0 90 d0 03 00    	imul   $0x3d090,%eax,%edx
  400945:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400948:	69 c0 f4 01 00 00    	imul   $0x1f4,%eax,%eax
  40094e:	01 c2                	add    %eax,%edx
  400950:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400953:	01 d0                	add    %edx,%eax
  400955:	5d                   	pop    %rbp
  400956:	c3                   	retq   

0000000000400957 <part4>:
  400957:	55                   	push   %rbp
  400958:	48 89 e5             	mov    %rsp,%rbp
  40095b:	48 83 ec 20          	sub    $0x20,%rsp
  40095f:	bf d6 0c 40 00       	mov    $0x400cd6,%edi
  400964:	e8 37 fc ff ff       	callq  4005a0 <puts@plt>
  400969:	bf 00 65 cd 1d       	mov    $0x1dcd6500,%edi
  40096e:	e8 7d fc ff ff       	callq  4005f0 <malloc@plt>
  400973:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400977:	e8 34 fc ff ff       	callq  4005b0 <clock@plt>
  40097c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  400980:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400987:	eb 62                	jmp    4009eb <part4+0x94>
  400989:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400990:	eb 4c                	jmp    4009de <part4+0x87>
  400992:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  400999:	eb 36                	jmp    4009d1 <part4+0x7a>
  40099b:	8b 55 f4             	mov    -0xc(%rbp),%edx
  40099e:	8b 4d f8             	mov    -0x8(%rbp),%ecx
  4009a1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009a4:	89 ce                	mov    %ecx,%esi
  4009a6:	89 c7                	mov    %eax,%edi
  4009a8:	e8 82 ff ff ff       	callq  40092f <bigArrayIndex>
  4009ad:	48 98                	cltq   
  4009af:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4009b6:	00 
  4009b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009bb:	48 01 d0             	add    %rdx,%rax
  4009be:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  4009c1:	8b 55 f8             	mov    -0x8(%rbp),%edx
  4009c4:	01 d1                	add    %edx,%ecx
  4009c6:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4009c9:	01 ca                	add    %ecx,%edx
  4009cb:	89 10                	mov    %edx,(%rax)
  4009cd:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  4009d1:	81 7d f4 f3 01 00 00 	cmpl   $0x1f3,-0xc(%rbp)
  4009d8:	7e c1                	jle    40099b <part4+0x44>
  4009da:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  4009de:	81 7d f8 f3 01 00 00 	cmpl   $0x1f3,-0x8(%rbp)
  4009e5:	7e ab                	jle    400992 <part4+0x3b>
  4009e7:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4009eb:	81 7d fc f3 01 00 00 	cmpl   $0x1f3,-0x4(%rbp)
  4009f2:	7e 95                	jle    400989 <part4+0x32>
  4009f4:	e8 b7 fb ff ff       	callq  4005b0 <clock@plt>
  4009f9:	89 c2                	mov    %eax,%edx
  4009fb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4009ff:	29 c2                	sub    %eax,%edx
  400a01:	89 d0                	mov    %edx,%eax
  400a03:	89 c6                	mov    %eax,%esi
  400a05:	bf eb 0c 40 00       	mov    $0x400ceb,%edi
  400a0a:	b8 00 00 00 00       	mov    $0x0,%eax
  400a0f:	e8 ac fb ff ff       	callq  4005c0 <printf@plt>
  400a14:	90                   	nop
  400a15:	c9                   	leaveq 
  400a16:	c3                   	retq   

0000000000400a17 <part5>:
  400a17:	55                   	push   %rbp
  400a18:	48 89 e5             	mov    %rsp,%rbp
  400a1b:	48 83 ec 10          	sub    $0x10,%rsp
  400a1f:	bf 05 0d 40 00       	mov    $0x400d05,%edi
  400a24:	e8 77 fb ff ff       	callq  4005a0 <puts@plt>
  400a29:	bf 50 00 00 00       	mov    $0x50,%edi
  400a2e:	e8 bd fb ff ff       	callq  4005f0 <malloc@plt>
  400a33:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a37:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a3b:	be 14 00 00 00       	mov    $0x14,%esi
  400a40:	48 89 c7             	mov    %rax,%rdi
  400a43:	e8 2c fd ff ff       	callq  400774 <fillArray>
  400a48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a4c:	48 89 c7             	mov    %rax,%rdi
  400a4f:	e8 3c fb ff ff       	callq  400590 <free@plt>
  400a54:	90                   	nop
  400a55:	c9                   	leaveq 
  400a56:	c3                   	retq   

0000000000400a57 <main>:
  400a57:	55                   	push   %rbp
  400a58:	48 89 e5             	mov    %rsp,%rbp
  400a5b:	48 83 ec 10          	sub    $0x10,%rsp
  400a5f:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400a62:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400a66:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  400a6a:	75 17                	jne    400a83 <main+0x2c>
  400a6c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a70:	48 83 c0 08          	add    $0x8,%rax
  400a74:	48 8b 00             	mov    (%rax),%rax
  400a77:	48 89 c7             	mov    %rax,%rdi
  400a7a:	e8 81 fb ff ff       	callq  400600 <atoi@plt>
  400a7f:	85 c0                	test   %eax,%eax
  400a81:	75 23                	jne    400aa6 <main+0x4f>
  400a83:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a87:	48 8b 00             	mov    (%rax),%rax
  400a8a:	48 89 c6             	mov    %rax,%rsi
  400a8d:	bf 1a 0d 40 00       	mov    $0x400d1a,%edi
  400a92:	b8 00 00 00 00       	mov    $0x0,%eax
  400a97:	e8 24 fb ff ff       	callq  4005c0 <printf@plt>
  400a9c:	bf 00 00 00 00       	mov    $0x0,%edi
  400aa1:	e8 6a fb ff ff       	callq  400610 <exit@plt>
  400aa6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400aaa:	48 83 c0 08          	add    $0x8,%rax
  400aae:	48 8b 00             	mov    (%rax),%rax
  400ab1:	48 89 c7             	mov    %rax,%rdi
  400ab4:	e8 47 fb ff ff       	callq  400600 <atoi@plt>
  400ab9:	83 f8 05             	cmp    $0x5,%eax
  400abc:	77 48                	ja     400b06 <main+0xaf>
  400abe:	89 c0                	mov    %eax,%eax
  400ac0:	48 8b 04 c5 48 0d 40 	mov    0x400d48(,%rax,8),%rax
  400ac7:	00 
  400ac8:	ff e0                	jmpq   *%rax
  400aca:	b8 00 00 00 00       	mov    $0x0,%eax
  400acf:	e8 52 fc ff ff       	callq  400726 <part1>
  400ad4:	eb 57                	jmp    400b2d <main+0xd6>
  400ad6:	b8 00 00 00 00       	mov    $0x0,%eax
  400adb:	e8 40 fd ff ff       	callq  400820 <part2>
  400ae0:	eb 4b                	jmp    400b2d <main+0xd6>
  400ae2:	b8 00 00 00 00       	mov    $0x0,%eax
  400ae7:	e8 72 fd ff ff       	callq  40085e <part3>
  400aec:	eb 3f                	jmp    400b2d <main+0xd6>
  400aee:	b8 00 00 00 00       	mov    $0x0,%eax
  400af3:	e8 5f fe ff ff       	callq  400957 <part4>
  400af8:	eb 33                	jmp    400b2d <main+0xd6>
  400afa:	b8 00 00 00 00       	mov    $0x0,%eax
  400aff:	e8 13 ff ff ff       	callq  400a17 <part5>
  400b04:	eb 27                	jmp    400b2d <main+0xd6>
  400b06:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400b0a:	48 83 c0 08          	add    $0x8,%rax
  400b0e:	48 8b 00             	mov    (%rax),%rax
  400b11:	48 89 c6             	mov    %rax,%rsi
  400b14:	bf 2b 0d 40 00       	mov    $0x400d2b,%edi
  400b19:	b8 00 00 00 00       	mov    $0x0,%eax
  400b1e:	e8 9d fa ff ff       	callq  4005c0 <printf@plt>
  400b23:	bf 00 00 00 00       	mov    $0x0,%edi
  400b28:	e8 e3 fa ff ff       	callq  400610 <exit@plt>
  400b2d:	b8 00 00 00 00       	mov    $0x0,%eax
  400b32:	c9                   	leaveq 
  400b33:	c3                   	retq   
  400b34:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b3b:	00 00 00 
  400b3e:	66 90                	xchg   %ax,%ax

0000000000400b40 <__libc_csu_init>:
  400b40:	41 57                	push   %r15
  400b42:	41 89 ff             	mov    %edi,%r15d
  400b45:	41 56                	push   %r14
  400b47:	49 89 f6             	mov    %rsi,%r14
  400b4a:	41 55                	push   %r13
  400b4c:	49 89 d5             	mov    %rdx,%r13
  400b4f:	41 54                	push   %r12
  400b51:	4c 8d 25 b8 12 20 00 	lea    0x2012b8(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400b58:	55                   	push   %rbp
  400b59:	48 8d 2d b8 12 20 00 	lea    0x2012b8(%rip),%rbp        # 601e18 <__init_array_end>
  400b60:	53                   	push   %rbx
  400b61:	4c 29 e5             	sub    %r12,%rbp
  400b64:	31 db                	xor    %ebx,%ebx
  400b66:	48 c1 fd 03          	sar    $0x3,%rbp
  400b6a:	48 83 ec 08          	sub    $0x8,%rsp
  400b6e:	e8 e5 f9 ff ff       	callq  400558 <_init>
  400b73:	48 85 ed             	test   %rbp,%rbp
  400b76:	74 1e                	je     400b96 <__libc_csu_init+0x56>
  400b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b7f:	00 
  400b80:	4c 89 ea             	mov    %r13,%rdx
  400b83:	4c 89 f6             	mov    %r14,%rsi
  400b86:	44 89 ff             	mov    %r15d,%edi
  400b89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400b8d:	48 83 c3 01          	add    $0x1,%rbx
  400b91:	48 39 eb             	cmp    %rbp,%rbx
  400b94:	75 ea                	jne    400b80 <__libc_csu_init+0x40>
  400b96:	48 83 c4 08          	add    $0x8,%rsp
  400b9a:	5b                   	pop    %rbx
  400b9b:	5d                   	pop    %rbp
  400b9c:	41 5c                	pop    %r12
  400b9e:	41 5d                	pop    %r13
  400ba0:	41 5e                	pop    %r14
  400ba2:	41 5f                	pop    %r15
  400ba4:	c3                   	retq   
  400ba5:	90                   	nop
  400ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bad:	00 00 00 

0000000000400bb0 <__libc_csu_fini>:
  400bb0:	f3 c3                	repz retq 
  400bb2:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000400bb4 <_fini>:
  400bb4:	48 83 ec 08          	sub    $0x8,%rsp
  400bb8:	48 83 c4 08          	add    $0x8,%rsp
  400bbc:	c3                   	retq   
