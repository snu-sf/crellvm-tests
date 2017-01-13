	.text
	.file	"strftime.bc"
	.globl	nstrftime
	.align	16, 0x90
	.type	nstrftime,@function
nstrftime:                              # @nstrftime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movl	-44(%rbp), %r10d
	movl	%eax, %edi
	movl	%r10d, (%rsp)
	callq	strftime_case_
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	nstrftime, .Lfunc_end0-nstrftime
	.cfi_endproc

	.align	16, 0x90
	.type	strftime_case_,@function
strftime_case_:                         # @strftime_case_
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$2520, %rsp             # imm = 0x9D8
.Ltmp6:
	.cfi_offset %rbx, -24
	movb	%dil, %al
	movl	16(%rbp), %edi
	leaq	-160(%rbp), %r10
	movl	$56, %r11d
	movl	%r11d, %ebx
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	%edi, -68(%rbp)
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%edi, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%r10, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	movq	%r10, -1888(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1888(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	-56(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rax
	movq	%rax, -80(%rbp)
.LBB1_2:                                # %if.end
	cmpl	$12, -72(%rbp)
	jle	.LBB1_4
# BB#3:                                 # %if.then.1
	movl	-72(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB1_7
.LBB1_4:                                # %if.else
	cmpl	$0, -72(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$12, -72(%rbp)
.LBB1_6:                                # %if.end.4
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.5
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB1_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_38 Depth 2
                                        #     Child Loop BB1_386 Depth 2
                                        #     Child Loop BB1_350 Depth 2
                                        #     Child Loop BB1_500 Depth 2
                                        #     Child Loop BB1_177 Depth 2
                                        #     Child Loop BB1_528 Depth 2
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_558
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -164(%rbp)
	movl	$0, -172(%rbp)
	movl	$-1, -244(%rbp)
	movb	$0, -245(%rbp)
	movb	-17(%rbp), %al
	andb	$1, %al
	movb	%al, -246(%rbp)
	movb	$0, -257(%rbp)
	movq	-104(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$37, %edx
	je	.LBB1_29
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               # %do.body
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -272(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1892(%rbp)       # 4-byte Spill
	jmp	.LBB1_14
.LBB1_13:                               # %cond.false
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -1892(%rbp)       # 4-byte Spill
.LBB1_14:                               # %cond.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1892(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -280(%rbp)
	movq	-272(%rbp), %rcx
	cmpq	-280(%rbp), %rcx
	jae	.LBB1_16
# BB#15:                                # %cond.true.19
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %cond.false.20
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-272(%rbp), %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
.LBB1_17:                               # %cond.end.21
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1904(%rbp), %rax       # 8-byte Reload
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_19
# BB#18:                                # %if.then.26
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_19:                               # %if.end.27
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_27
# BB#20:                                # %if.then.29
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_26
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-272(%rbp), %rax
	cmpq	-280(%rbp), %rax
	jae	.LBB1_26
# BB#22:                                # %if.then.34
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-272(%rbp), %rax
	movq	%rax, -296(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.39
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-296(%rbp), %rdx
	callq	memset
	movq	-296(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_25
.LBB1_24:                               # %if.else.40
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-296(%rbp), %rdx
	callq	memset
	movq	-296(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_25:                               # %if.end.42
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.43
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	movb	(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, (%rax)
	movq	-272(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_27:                               # %if.end.45
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-288(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#28:                                # %do.end
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_557
.LBB1_29:                               # %if.end.46
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_30
.LBB1_30:                               # %while.body
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -104(%rbp)
	movsbl	1(%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -1908(%rbp)       # 4-byte Spill
	movl	%esi, -1912(%rbp)       # 4-byte Spill
	je	.LBB1_33
	jmp	.LBB1_563
.LBB1_563:                              # %while.body
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	-1908(%rbp), %eax       # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -1916(%rbp)       # 4-byte Spill
	je	.LBB1_31
	jmp	.LBB1_564
.LBB1_564:                              # %while.body
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	-1908(%rbp), %eax       # 4-byte Reload
	subl	$48, %eax
	movl	%eax, -1920(%rbp)       # 4-byte Spill
	je	.LBB1_31
	jmp	.LBB1_565
.LBB1_565:                              # %while.body
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	-1908(%rbp), %eax       # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -1924(%rbp)       # 4-byte Spill
	je	.LBB1_32
	jmp	.LBB1_566
.LBB1_566:                              # %while.body
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	-1908(%rbp), %eax       # 4-byte Reload
	subl	$95, %eax
	movl	%eax, -1928(%rbp)       # 4-byte Spill
	jne	.LBB1_34
	jmp	.LBB1_31
.LBB1_31:                               # %sw.bb
                                        #   in Loop: Header=BB1_30 Depth=2
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -164(%rbp)
	jmp	.LBB1_30
.LBB1_32:                               # %sw.bb.49
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	$1, -246(%rbp)
	jmp	.LBB1_30
.LBB1_33:                               # %sw.bb.50
                                        #   in Loop: Header=BB1_30 Depth=2
	movb	$1, -257(%rbp)
	jmp	.LBB1_30
.LBB1_34:                               # %sw.default
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_35
.LBB1_35:                               # %sw.epilog
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_36
.LBB1_36:                               # %while.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	cmpl	$9, %ecx
	ja	.LBB1_46
# BB#37:                                # %if.then.55
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -244(%rbp)
.LBB1_38:                               # %do.body.56
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$214748364, -244(%rbp)  # imm = 0xCCCCCCC
	jg	.LBB1_41
# BB#39:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_38 Depth=2
	cmpl	$214748364, -244(%rbp)  # imm = 0xCCCCCCC
	jne	.LBB1_42
# BB#40:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB1_38 Depth=2
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	cmpl	$7, %ecx
	jle	.LBB1_42
.LBB1_41:                               # %if.then.66
                                        #   in Loop: Header=BB1_38 Depth=2
	movl	$2147483647, -244(%rbp) # imm = 0x7FFFFFFF
	jmp	.LBB1_43
.LBB1_42:                               # %if.else.67
                                        #   in Loop: Header=BB1_38 Depth=2
	imull	$10, -244(%rbp), %eax
	movl	%eax, -244(%rbp)
	movq	-104(%rbp), %rcx
	movsbl	(%rcx), %eax
	subl	$48, %eax
	addl	-244(%rbp), %eax
	movl	%eax, -244(%rbp)
.LBB1_43:                               # %if.end.71
                                        #   in Loop: Header=BB1_38 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
# BB#44:                                # %do.cond
                                        #   in Loop: Header=BB1_38 Depth=2
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	cmpl	$9, %ecx
	jbe	.LBB1_38
# BB#45:                                # %do.end.77
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_46
.LBB1_46:                               # %if.end.78
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$69, %edx
	movl	%ecx, -1932(%rbp)       # 4-byte Spill
	movl	%edx, -1936(%rbp)       # 4-byte Spill
	je	.LBB1_47
	jmp	.LBB1_567
.LBB1_567:                              # %if.end.78
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1932(%rbp), %eax       # 4-byte Reload
	subl	$79, %eax
	movl	%eax, -1940(%rbp)       # 4-byte Spill
	jne	.LBB1_48
	jmp	.LBB1_47
.LBB1_47:                               # %sw.bb.80
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, -168(%rbp)
	jmp	.LBB1_49
.LBB1_48:                               # %sw.default.83
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -168(%rbp)
.LBB1_49:                               # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -264(%rbp)
	testl	%ecx, %ecx
	movl	%ecx, -1944(%rbp)       # 4-byte Spill
	je	.LBB1_525
	jmp	.LBB1_568
.LBB1_568:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -1948(%rbp)       # 4-byte Spill
	je	.LBB1_50
	jmp	.LBB1_569
.LBB1_569:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -1952(%rbp)       # 4-byte Spill
	je	.LBB1_499
	jmp	.LBB1_570
.LBB1_570:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$65, %eax
	movl	%eax, -1956(%rbp)       # 4-byte Spill
	je	.LBB1_76
	jmp	.LBB1_571
.LBB1_571:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$66, %eax
	movl	%eax, -1960(%rbp)       # 4-byte Spill
	je	.LBB1_86
	jmp	.LBB1_572
.LBB1_572:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -1964(%rbp)       # 4-byte Spill
	je	.LBB1_142
	jmp	.LBB1_573
.LBB1_573:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -1968(%rbp)       # 4-byte Spill
	je	.LBB1_153
	jmp	.LBB1_574
.LBB1_574:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$70, %eax
	movl	%eax, -1972(%rbp)       # 4-byte Spill
	je	.LBB1_314
	jmp	.LBB1_575
.LBB1_575:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$71, %eax
	movl	%eax, -1976(%rbp)       # 4-byte Spill
	je	.LBB1_421
	jmp	.LBB1_576
.LBB1_576:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -1980(%rbp)       # 4-byte Spill
	je	.LBB1_317
	jmp	.LBB1_577
.LBB1_577:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$73, %eax
	movl	%eax, -1984(%rbp)       # 4-byte Spill
	je	.LBB1_321
	jmp	.LBB1_578
.LBB1_578:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -1988(%rbp)       # 4-byte Spill
	je	.LBB1_337
	jmp	.LBB1_579
.LBB1_579:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$78, %eax
	movl	%eax, -1992(%rbp)       # 4-byte Spill
	je	.LBB1_345
	jmp	.LBB1_580
.LBB1_580:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$80, %eax
	movl	%eax, -1996(%rbp)       # 4-byte Spill
	je	.LBB1_375
	jmp	.LBB1_581
.LBB1_581:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$82, %eax
	movl	%eax, -2000(%rbp)       # 4-byte Spill
	je	.LBB1_379
	jmp	.LBB1_582
.LBB1_582:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -2004(%rbp)       # 4-byte Spill
	je	.LBB1_381
	jmp	.LBB1_583
.LBB1_583:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -2008(%rbp)       # 4-byte Spill
	je	.LBB1_395
	jmp	.LBB1_584
.LBB1_584:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$85, %eax
	movl	%eax, -2012(%rbp)       # 4-byte Spill
	je	.LBB1_417
	jmp	.LBB1_585
.LBB1_585:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$86, %eax
	movl	%eax, -2016(%rbp)       # 4-byte Spill
	je	.LBB1_421
	jmp	.LBB1_586
.LBB1_586:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -2020(%rbp)       # 4-byte Spill
	je	.LBB1_449
	jmp	.LBB1_587
.LBB1_587:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$88, %eax
	movl	%eax, -2024(%rbp)       # 4-byte Spill
	je	.LBB1_392
	jmp	.LBB1_588
.LBB1_588:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$89, %eax
	movl	%eax, -2028(%rbp)       # 4-byte Spill
	je	.LBB1_457
	jmp	.LBB1_589
.LBB1_589:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$90, %eax
	movl	%eax, -2032(%rbp)       # 4-byte Spill
	je	.LBB1_472
	jmp	.LBB1_590
.LBB1_590:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -2036(%rbp)       # 4-byte Spill
	je	.LBB1_71
	jmp	.LBB1_591
.LBB1_591:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -2040(%rbp)       # 4-byte Spill
	je	.LBB1_81
	jmp	.LBB1_592
.LBB1_592:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -2044(%rbp)       # 4-byte Spill
	je	.LBB1_91
	jmp	.LBB1_593
.LBB1_593:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -2048(%rbp)       # 4-byte Spill
	je	.LBB1_156
	jmp	.LBB1_594
.LBB1_594:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -2052(%rbp)       # 4-byte Spill
	je	.LBB1_160
	jmp	.LBB1_595
.LBB1_595:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$103, %eax
	movl	%eax, -2056(%rbp)       # 4-byte Spill
	je	.LBB1_421
	jmp	.LBB1_596
.LBB1_596:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -2060(%rbp)       # 4-byte Spill
	je	.LBB1_81
	jmp	.LBB1_597
.LBB1_597:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$106, %eax
	movl	%eax, -2064(%rbp)       # 4-byte Spill
	je	.LBB1_333
	jmp	.LBB1_598
.LBB1_598:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$107, %eax
	movl	%eax, -2068(%rbp)       # 4-byte Spill
	je	.LBB1_325
	jmp	.LBB1_599
.LBB1_599:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -2072(%rbp)       # 4-byte Spill
	je	.LBB1_329
	jmp	.LBB1_600
.LBB1_600:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -2076(%rbp)       # 4-byte Spill
	je	.LBB1_341
	jmp	.LBB1_601
.LBB1_601:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -2080(%rbp)       # 4-byte Spill
	je	.LBB1_356
	jmp	.LBB1_602
.LBB1_602:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -2084(%rbp)       # 4-byte Spill
	je	.LBB1_376
	jmp	.LBB1_603
.LBB1_603:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -2088(%rbp)       # 4-byte Spill
	je	.LBB1_380
	jmp	.LBB1_604
.LBB1_604:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -2092(%rbp)       # 4-byte Spill
	je	.LBB1_385
	jmp	.LBB1_605
.LBB1_605:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -2096(%rbp)       # 4-byte Spill
	je	.LBB1_396
	jmp	.LBB1_606
.LBB1_606:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -2100(%rbp)       # 4-byte Spill
	je	.LBB1_415
	jmp	.LBB1_607
.LBB1_607:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -2104(%rbp)       # 4-byte Spill
	je	.LBB1_453
	jmp	.LBB1_608
.LBB1_608:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -2108(%rbp)       # 4-byte Spill
	je	.LBB1_150
	jmp	.LBB1_609
.LBB1_609:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -2112(%rbp)       # 4-byte Spill
	je	.LBB1_463
	jmp	.LBB1_610
.LBB1_610:                              # %sw.epilog.84
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1944(%rbp), %eax       # 4-byte Reload
	subl	$122, %eax
	movl	%eax, -2116(%rbp)       # 4-byte Spill
	je	.LBB1_506
	jmp	.LBB1_526
.LBB1_50:                               # %sw.bb.86
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB1_52
# BB#51:                                # %if.then.89
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_52:                               # %if.end.90
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_53
.LBB1_53:                               # %do.body.91
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -304(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_55
# BB#54:                                # %cond.true.96
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2120(%rbp)       # 4-byte Spill
	jmp	.LBB1_56
.LBB1_55:                               # %cond.false.97
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2120(%rbp)       # 4-byte Spill
.LBB1_56:                               # %cond.end.98
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2120(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -312(%rbp)
	movq	-304(%rbp), %rcx
	cmpq	-312(%rbp), %rcx
	jae	.LBB1_58
# BB#57:                                # %cond.true.104
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-312(%rbp), %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	jmp	.LBB1_59
.LBB1_58:                               # %cond.false.105
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-304(%rbp), %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
.LBB1_59:                               # %cond.end.106
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2128(%rbp), %rax       # 8-byte Reload
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_61
# BB#60:                                # %if.then.111
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_61:                               # %if.end.112
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_69
# BB#62:                                # %if.then.114
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_68
# BB#63:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-304(%rbp), %rax
	cmpq	-312(%rbp), %rax
	jae	.LBB1_68
# BB#64:                                # %if.then.120
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-304(%rbp), %rax
	movq	%rax, -328(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_66
# BB#65:                                # %if.then.126
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-328(%rbp), %rdx
	callq	memset
	movq	-328(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_67
.LBB1_66:                               # %if.else.128
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-328(%rbp), %rdx
	callq	memset
	movq	-328(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_67:                               # %if.end.130
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_68
.LBB1_68:                               # %if.end.131
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	movb	(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, (%rax)
	movq	-304(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_69:                               # %if.end.133
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-320(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#70:                                # %do.end.136
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_71:                               # %sw.bb.137
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB1_73
# BB#72:                                # %if.then.140
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_73:                               # %if.end.141
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -257(%rbp)
	je	.LBB1_75
# BB#74:                                # %if.then.143
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, -246(%rbp)
	movb	$0, -245(%rbp)
.LBB1_75:                               # %if.end.144
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_76:                               # %sw.bb.145
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB1_78
# BB#77:                                # %if.then.148
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_78:                               # %if.end.149
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -257(%rbp)
	je	.LBB1_80
# BB#79:                                # %if.then.151
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, -246(%rbp)
	movb	$0, -245(%rbp)
.LBB1_80:                               # %if.end.152
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_81:                               # %sw.bb.153
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -257(%rbp)
	je	.LBB1_83
# BB#82:                                # %if.then.155
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, -246(%rbp)
	movb	$0, -245(%rbp)
.LBB1_83:                               # %if.end.156
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB1_85
# BB#84:                                # %if.then.159
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_85:                               # %if.end.160
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_86:                               # %sw.bb.161
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB1_88
# BB#87:                                # %if.then.164
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_88:                               # %if.end.165
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -257(%rbp)
	je	.LBB1_90
# BB#89:                                # %if.then.167
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, -246(%rbp)
	movb	$0, -245(%rbp)
.LBB1_90:                               # %if.end.168
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_91:                               # %sw.bb.169
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$79, -168(%rbp)
	jne	.LBB1_93
# BB#92:                                # %if.then.172
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_93:                               # %if.end.173
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_94:                               # %subformat
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movb	-246(%rbp), %cl
	movq	-200(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movl	-68(%rbp), %eax
	andb	$1, %cl
	movzbl	%cl, %r10d
	movq	%rdi, -2136(%rbp)       # 8-byte Spill
	movl	%r10d, %edi
	movq	-2136(%rbp), %rcx       # 8-byte Reload
	movl	%eax, (%rsp)
	callq	strftime_case_
	movq	%rax, -336(%rbp)
# BB#95:                                # %do.body.175
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_97
# BB#96:                                # %cond.true.180
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2140(%rbp)       # 4-byte Spill
	jmp	.LBB1_98
.LBB1_97:                               # %cond.false.181
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2140(%rbp)       # 4-byte Spill
.LBB1_98:                               # %cond.end.182
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2140(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -352(%rbp)
	movq	-344(%rbp), %rcx
	cmpq	-352(%rbp), %rcx
	jae	.LBB1_100
# BB#99:                                # %cond.true.188
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-352(%rbp), %rax
	movq	%rax, -2152(%rbp)       # 8-byte Spill
	jmp	.LBB1_101
.LBB1_100:                              # %cond.false.189
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-344(%rbp), %rax
	movq	%rax, -2152(%rbp)       # 8-byte Spill
.LBB1_101:                              # %cond.end.190
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2152(%rbp), %rax       # 8-byte Reload
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_103
# BB#102:                               # %if.then.195
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_103:                              # %if.end.196
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_111
# BB#104:                               # %if.then.198
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_110
# BB#105:                               # %land.lhs.true.201
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-344(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jae	.LBB1_110
# BB#106:                               # %if.then.204
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-344(%rbp), %rax
	movq	%rax, -368(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_108
# BB#107:                               # %if.then.210
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-368(%rbp), %rdx
	callq	memset
	movq	-368(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_109
.LBB1_108:                              # %if.else.212
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-368(%rbp), %rdx
	callq	memset
	movq	-368(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_109:                              # %if.end.214
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_110
.LBB1_110:                              # %if.end.215
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-246(%rbp), %al
	movq	-96(%rbp), %rsi
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movl	-68(%rbp), %edi
	andb	$1, %al
	movzbl	%al, %r10d
	movl	%edi, -2156(%rbp)       # 4-byte Spill
	movl	%r10d, %edi
	movq	%rdx, -2168(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-2168(%rbp), %rcx       # 8-byte Reload
	movl	-2156(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	strftime_case_
	movq	-344(%rbp), %rcx
	addq	-96(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -2176(%rbp)       # 8-byte Spill
.LBB1_111:                              # %if.end.220
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-360(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#112:                               # %do.end.223
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_113:                              # %underlying_strftime
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-373(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -384(%rbp)
	movb	$32, (%rax)
	movq	-384(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -384(%rbp)
	movb	$37, (%rax)
	cmpl	$0, -168(%rbp)
	je	.LBB1_115
# BB#114:                               # %if.then.229
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-168(%rbp), %eax
	movb	%al, %cl
	movq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -384(%rbp)
	movb	%cl, (%rdx)
.LBB1_115:                              # %if.end.232
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	leaq	-373(%rbp), %rdx
	leaq	-1408(%rbp), %rdi
	movl	-264(%rbp), %eax
	movb	%al, %cl
	movq	-384(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -384(%rbp)
	movb	%cl, (%r8)
	movq	-384(%rbp), %r8
	movb	$0, (%r8)
	movq	-56(%rbp), %rcx
	callq	strftime
	movq	%rax, -1416(%rbp)
	cmpq	$0, -1416(%rbp)
	je	.LBB1_141
# BB#116:                               # %if.then.240
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_117
.LBB1_117:                              # %do.body.241
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1416(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -1424(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_119
# BB#118:                               # %cond.true.247
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2180(%rbp)       # 4-byte Spill
	jmp	.LBB1_120
.LBB1_119:                              # %cond.false.248
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2180(%rbp)       # 4-byte Spill
.LBB1_120:                              # %cond.end.249
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2180(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1432(%rbp)
	movq	-1424(%rbp), %rcx
	cmpq	-1432(%rbp), %rcx
	jae	.LBB1_122
# BB#121:                               # %cond.true.255
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1432(%rbp), %rax
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	jmp	.LBB1_123
.LBB1_122:                              # %cond.false.256
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1424(%rbp), %rax
	movq	%rax, -2192(%rbp)       # 8-byte Spill
.LBB1_123:                              # %cond.end.257
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2192(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1440(%rbp)
	movq	-1440(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_125
# BB#124:                               # %if.then.262
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_125:                              # %if.end.263
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_139
# BB#126:                               # %if.then.265
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_132
# BB#127:                               # %land.lhs.true.268
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1424(%rbp), %rax
	cmpq	-1432(%rbp), %rax
	jae	.LBB1_132
# BB#128:                               # %if.then.271
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1424(%rbp), %rax
	movq	%rax, -1448(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_130
# BB#129:                               # %if.then.277
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1448(%rbp), %rdx
	callq	memset
	movq	-1448(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_131
.LBB1_130:                              # %if.else.279
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1448(%rbp), %rdx
	callq	memset
	movq	-1448(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_131:                              # %if.end.281
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_132
.LBB1_132:                              # %if.end.282
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -245(%rbp)
	je	.LBB1_134
# BB#133:                               # %if.then.284
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-1408(%rbp), %rax
	movq	-96(%rbp), %rdi
	addq	$1, %rax
	movq	-1424(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy_lowcase
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	jmp	.LBB1_138
.LBB1_134:                              # %if.else.288
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -246(%rbp)
	je	.LBB1_136
# BB#135:                               # %if.then.290
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-1408(%rbp), %rax
	movq	-96(%rbp), %rdi
	addq	$1, %rax
	movq	-1424(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy_uppcase
	movq	%rax, -2208(%rbp)       # 8-byte Spill
	jmp	.LBB1_137
.LBB1_136:                              # %if.else.294
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-1408(%rbp), %rax
	movq	-96(%rbp), %rdi
	addq	$1, %rax
	movq	-1424(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
.LBB1_137:                              # %if.end.297
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_138
.LBB1_138:                              # %if.end.298
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1424(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_139:                              # %if.end.300
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1440(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#140:                               # %do.end.303
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_141
.LBB1_141:                              # %if.end.304
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_142:                              # %sw.bb.305
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$79, -168(%rbp)
	jne	.LBB1_144
# BB#143:                               # %if.then.308
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_144:                              # %if.end.309
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_146
# BB#145:                               # %if.then.312
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_146:                              # %if.end.313
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$100, %eax
	movq	-56(%rbp), %rdx
	movl	20(%rdx), %esi
	movl	%eax, -2212(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-2212(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	$19, %eax
	movl	%eax, -1452(%rbp)
	movq	-56(%rbp), %rdi
	movl	20(%rdi), %eax
	cltd
	idivl	%esi
	cmpl	$0, %edx
	movb	%cl, -2213(%rbp)        # 1-byte Spill
	jge	.LBB1_148
# BB#147:                               # %land.rhs
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	cmpl	-1452(%rbp), %eax
	setl	%cl
	movb	%cl, -2213(%rbp)        # 1-byte Spill
.LBB1_148:                              # %land.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-2213(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1452(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -1452(%rbp)
# BB#149:                               # %do.body.321
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$-1900, 20(%rax)        # imm = 0xFFFFFFFFFFFFF894
	setl	%cl
	andb	$1, %cl
	movb	%cl, -181(%rbp)
	movl	-1452(%rbp), %edx
	movl	%edx, -180(%rbp)
	jmp	.LBB1_170
.LBB1_150:                              # %sw.bb.328
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$79, -168(%rbp)
	jne	.LBB1_152
# BB#151:                               # %if.then.331
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_152:                              # %if.end.332
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_153:                              # %sw.bb.333
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB1_155
# BB#154:                               # %if.then.336
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_155:                              # %if.end.337
                                        #   in Loop: Header=BB1_8 Depth=1
	movabsq	$.L.str.1, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB1_94
.LBB1_156:                              # %sw.bb.338
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_158
# BB#157:                               # %if.then.341
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_158:                              # %if.end.342
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_159
.LBB1_159:                              # %do.body.343
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -176(%rbp)
	jmp	.LBB1_169
.LBB1_160:                              # %sw.bb.346
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_162
# BB#161:                               # %if.then.349
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_162:                              # %if.end.350
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_163
.LBB1_163:                              # %do.body.351
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -176(%rbp)
	jmp	.LBB1_165
.LBB1_164:                              # %do_tz_offset
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, -182(%rbp)
	jmp	.LBB1_171
.LBB1_165:                              # %do_number_spacepad
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$48, -164(%rbp)
	je	.LBB1_168
# BB#166:                               # %land.lhs.true.357
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$45, -164(%rbp)
	je	.LBB1_168
# BB#167:                               # %if.then.360
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$95, -164(%rbp)
.LBB1_168:                              # %if.end.361
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_169
.LBB1_169:                              # %do_number
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -176(%rbp)
	setl	%al
	andb	$1, %al
	movb	%al, -181(%rbp)
	movl	-176(%rbp), %ecx
	movl	%ecx, -180(%rbp)
.LBB1_170:                              # %do_signed_number
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$0, -182(%rbp)
	movl	$0, -188(%rbp)
.LBB1_171:                              # %do_number_body
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$79, -168(%rbp)
	jne	.LBB1_174
# BB#172:                               # %land.lhs.true.367
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -181(%rbp)
	jne	.LBB1_174
# BB#173:                               # %if.then.369
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_174:                              # %if.end.370
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-240(%rbp), %rax
	addq	$23, %rax
	movq	%rax, -216(%rbp)
	testb	$1, -181(%rbp)
	je	.LBB1_176
# BB#175:                               # %if.then.374
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	subl	-180(%rbp), %eax
	movl	%eax, -180(%rbp)
.LBB1_176:                              # %if.end.376
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_177
.LBB1_177:                              # %do.body.377
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_179
# BB#178:                               # %if.then.379
                                        #   in Loop: Header=BB1_177 Depth=2
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -216(%rbp)
	movb	$58, -1(%rax)
.LBB1_179:                              # %if.end.381
                                        #   in Loop: Header=BB1_177 Depth=2
	movl	$10, %eax
	movl	-188(%rbp), %ecx
	sarl	$1, %ecx
	movl	%ecx, -188(%rbp)
	movl	-180(%rbp), %ecx
	movl	%eax, -2220(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-2220(%rbp), %ecx       # 4-byte Reload
	divl	%ecx
	addl	$48, %edx
	movb	%dl, %sil
	movq	-216(%rbp), %rdi
	movq	%rdi, %r8
	addq	$-1, %r8
	movq	%r8, -216(%rbp)
	movb	%sil, -1(%rdi)
	movl	-180(%rbp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, -180(%rbp)
# BB#180:                               # %do.cond.387
                                        #   in Loop: Header=BB1_177 Depth=2
	movb	$1, %al
	cmpl	$0, -180(%rbp)
	movb	%al, -2221(%rbp)        # 1-byte Spill
	jne	.LBB1_182
# BB#181:                               # %lor.rhs
                                        #   in Loop: Header=BB1_177 Depth=2
	cmpl	$0, -188(%rbp)
	setne	%al
	movb	%al, -2221(%rbp)        # 1-byte Spill
.LBB1_182:                              # %lor.end
                                        #   in Loop: Header=BB1_177 Depth=2
	movb	-2221(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_177
# BB#183:                               # %do.end.392
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_184
.LBB1_184:                              # %do_number_sign_and_padding
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-172(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jge	.LBB1_186
# BB#185:                               # %if.then.395
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB1_186:                              # %if.end.396
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -181(%rbp)
	je	.LBB1_188
# BB#187:                               # %cond.true.399
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$45, %eax
	movl	%eax, -2228(%rbp)       # 4-byte Spill
	jmp	.LBB1_189
.LBB1_188:                              # %cond.false.400
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	$43, %ecx
	movb	-182(%rbp), %dl
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movl	%eax, -2228(%rbp)       # 4-byte Spill
.LBB1_189:                              # %cond.end.404
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2228(%rbp), %eax       # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -201(%rbp)
	cmpl	$45, -164(%rbp)
	jne	.LBB1_211
# BB#190:                               # %if.then.409
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, -201(%rbp)
	je	.LBB1_210
# BB#191:                               # %if.then.411
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_192
.LBB1_192:                              # %do.body.412
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -1464(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_194
# BB#193:                               # %cond.true.417
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2232(%rbp)       # 4-byte Spill
	jmp	.LBB1_195
.LBB1_194:                              # %cond.false.418
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2232(%rbp)       # 4-byte Spill
.LBB1_195:                              # %cond.end.419
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2232(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1472(%rbp)
	movq	-1464(%rbp), %rcx
	cmpq	-1472(%rbp), %rcx
	jae	.LBB1_197
# BB#196:                               # %cond.true.425
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1472(%rbp), %rax
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	jmp	.LBB1_198
.LBB1_197:                              # %cond.false.426
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1464(%rbp), %rax
	movq	%rax, -2240(%rbp)       # 8-byte Spill
.LBB1_198:                              # %cond.end.427
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2240(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1480(%rbp)
	movq	-1480(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_200
# BB#199:                               # %if.then.432
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_200:                              # %if.end.433
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_208
# BB#201:                               # %if.then.435
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_207
# BB#202:                               # %land.lhs.true.438
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1464(%rbp), %rax
	cmpq	-1472(%rbp), %rax
	jae	.LBB1_207
# BB#203:                               # %if.then.441
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1464(%rbp), %rax
	movq	%rax, -1488(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_205
# BB#204:                               # %if.then.447
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1488(%rbp), %rdx
	callq	memset
	movq	-1488(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_206
.LBB1_205:                              # %if.else.449
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1488(%rbp), %rdx
	callq	memset
	movq	-1488(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_206:                              # %if.end.451
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_207
.LBB1_207:                              # %if.end.452
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-201(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-1464(%rbp), %rcx
	addq	-96(%rbp), %rcx
	movq	%rcx, -96(%rbp)
.LBB1_208:                              # %if.end.454
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1480(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#209:                               # %do.end.457
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_210
.LBB1_210:                              # %if.end.458
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_289
.LBB1_211:                              # %if.else.459
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-240(%rbp), %rax
	movslq	-172(%rbp), %rcx
	addq	$23, %rax
	movq	-216(%rbp), %rdx
	subq	%rdx, %rax
	subq	%rax, %rcx
	cmpb	$0, -201(%rbp)
	setne	%sil
	xorb	$-1, %sil
	xorb	$-1, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %rax
	subq	%rax, %rcx
	movl	%ecx, %edi
	movl	%edi, -1492(%rbp)
	cmpl	$0, -1492(%rbp)
	jle	.LBB1_267
# BB#212:                               # %if.then.471
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$95, -164(%rbp)
	jne	.LBB1_241
# BB#213:                               # %if.then.474
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-1492(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_215
# BB#214:                               # %if.then.479
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_215:                              # %if.end.480
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_217
# BB#216:                               # %if.then.482
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movslq	-1492(%rbp), %rdx
	callq	memset
	movl	-1492(%rbp), %esi
	movq	-96(%rbp), %rdx
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -96(%rbp)
.LBB1_217:                              # %if.end.485
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-1492(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-244(%rbp), %ecx
	cmpl	-1492(%rbp), %ecx
	jle	.LBB1_219
# BB#218:                               # %cond.true.490
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	subl	-1492(%rbp), %eax
	movl	%eax, -2244(%rbp)       # 4-byte Spill
	jmp	.LBB1_220
.LBB1_219:                              # %cond.false.492
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2244(%rbp)       # 4-byte Spill
	jmp	.LBB1_220
.LBB1_220:                              # %cond.end.493
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2244(%rbp), %eax       # 4-byte Reload
	movl	%eax, -244(%rbp)
	cmpb	$0, -201(%rbp)
	je	.LBB1_240
# BB#221:                               # %if.then.496
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_222
.LBB1_222:                              # %do.body.497
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -1504(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_224
# BB#223:                               # %cond.true.502
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2248(%rbp)       # 4-byte Spill
	jmp	.LBB1_225
.LBB1_224:                              # %cond.false.503
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2248(%rbp)       # 4-byte Spill
.LBB1_225:                              # %cond.end.504
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2248(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1512(%rbp)
	movq	-1504(%rbp), %rcx
	cmpq	-1512(%rbp), %rcx
	jae	.LBB1_227
# BB#226:                               # %cond.true.510
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1512(%rbp), %rax
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	jmp	.LBB1_228
.LBB1_227:                              # %cond.false.511
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1504(%rbp), %rax
	movq	%rax, -2256(%rbp)       # 8-byte Spill
.LBB1_228:                              # %cond.end.512
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2256(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1520(%rbp)
	movq	-1520(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_230
# BB#229:                               # %if.then.517
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_230:                              # %if.end.518
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_238
# BB#231:                               # %if.then.520
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_237
# BB#232:                               # %land.lhs.true.523
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1504(%rbp), %rax
	cmpq	-1512(%rbp), %rax
	jae	.LBB1_237
# BB#233:                               # %if.then.526
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1504(%rbp), %rax
	movq	%rax, -1528(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_235
# BB#234:                               # %if.then.532
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1528(%rbp), %rdx
	callq	memset
	movq	-1528(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_236
.LBB1_235:                              # %if.else.534
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1528(%rbp), %rdx
	callq	memset
	movq	-1528(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_236:                              # %if.end.536
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_237
.LBB1_237:                              # %if.end.537
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-201(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-1504(%rbp), %rcx
	addq	-96(%rbp), %rcx
	movq	%rcx, -96(%rbp)
.LBB1_238:                              # %if.end.539
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1520(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#239:                               # %do.end.542
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_240
.LBB1_240:                              # %if.end.543
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_266
.LBB1_241:                              # %if.else.544
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-172(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_243
# BB#242:                               # %if.then.549
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_243:                              # %if.end.550
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, -201(%rbp)
	je	.LBB1_263
# BB#244:                               # %if.then.552
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_245
.LBB1_245:                              # %do.body.553
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -1536(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_247
# BB#246:                               # %cond.true.558
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2260(%rbp)       # 4-byte Spill
	jmp	.LBB1_248
.LBB1_247:                              # %cond.false.559
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2260(%rbp)       # 4-byte Spill
.LBB1_248:                              # %cond.end.560
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2260(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1544(%rbp)
	movq	-1536(%rbp), %rcx
	cmpq	-1544(%rbp), %rcx
	jae	.LBB1_250
# BB#249:                               # %cond.true.566
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1544(%rbp), %rax
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	jmp	.LBB1_251
.LBB1_250:                              # %cond.false.567
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1536(%rbp), %rax
	movq	%rax, -2272(%rbp)       # 8-byte Spill
.LBB1_251:                              # %cond.end.568
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2272(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1552(%rbp)
	movq	-1552(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_253
# BB#252:                               # %if.then.573
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_253:                              # %if.end.574
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_261
# BB#254:                               # %if.then.576
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_260
# BB#255:                               # %land.lhs.true.579
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1536(%rbp), %rax
	cmpq	-1544(%rbp), %rax
	jae	.LBB1_260
# BB#256:                               # %if.then.582
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1536(%rbp), %rax
	movq	%rax, -1560(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_258
# BB#257:                               # %if.then.588
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1560(%rbp), %rdx
	callq	memset
	movq	-1560(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_259
.LBB1_258:                              # %if.else.590
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1560(%rbp), %rdx
	callq	memset
	movq	-1560(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_259:                              # %if.end.592
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_260
.LBB1_260:                              # %if.end.593
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-201(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-1536(%rbp), %rcx
	addq	-96(%rbp), %rcx
	movq	%rcx, -96(%rbp)
.LBB1_261:                              # %if.end.595
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1552(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#262:                               # %do.end.598
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_263
.LBB1_263:                              # %if.end.599
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_265
# BB#264:                               # %if.then.601
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movslq	-1492(%rbp), %rdx
	callq	memset
	movl	-1492(%rbp), %esi
	movq	-96(%rbp), %rdx
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -96(%rbp)
.LBB1_265:                              # %if.end.605
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-1492(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -244(%rbp)
.LBB1_266:                              # %if.end.608
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_288
.LBB1_267:                              # %if.else.609
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, -201(%rbp)
	je	.LBB1_287
# BB#268:                               # %if.then.611
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_269
.LBB1_269:                              # %do.body.612
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -1568(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_271
# BB#270:                               # %cond.true.617
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2276(%rbp)       # 4-byte Spill
	jmp	.LBB1_272
.LBB1_271:                              # %cond.false.618
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2276(%rbp)       # 4-byte Spill
.LBB1_272:                              # %cond.end.619
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2276(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1576(%rbp)
	movq	-1568(%rbp), %rcx
	cmpq	-1576(%rbp), %rcx
	jae	.LBB1_274
# BB#273:                               # %cond.true.625
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1576(%rbp), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	jmp	.LBB1_275
.LBB1_274:                              # %cond.false.626
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1568(%rbp), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
.LBB1_275:                              # %cond.end.627
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2288(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1584(%rbp)
	movq	-1584(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_277
# BB#276:                               # %if.then.632
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_277:                              # %if.end.633
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_285
# BB#278:                               # %if.then.635
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_284
# BB#279:                               # %land.lhs.true.638
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1568(%rbp), %rax
	cmpq	-1576(%rbp), %rax
	jae	.LBB1_284
# BB#280:                               # %if.then.641
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1568(%rbp), %rax
	movq	%rax, -1592(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_282
# BB#281:                               # %if.then.647
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1592(%rbp), %rdx
	callq	memset
	movq	-1592(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_283
.LBB1_282:                              # %if.else.649
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1592(%rbp), %rdx
	callq	memset
	movq	-1592(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_283:                              # %if.end.651
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_284
.LBB1_284:                              # %if.end.652
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-201(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-1568(%rbp), %rcx
	addq	-96(%rbp), %rcx
	movq	%rcx, -96(%rbp)
.LBB1_285:                              # %if.end.654
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1584(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#286:                               # %do.end.657
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_287
.LBB1_287:                              # %if.end.658
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_288
.LBB1_288:                              # %if.end.659
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_289
.LBB1_289:                              # %if.end.660
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_290
.LBB1_290:                              # %do.body.661
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-240(%rbp), %rax
	addq	$23, %rax
	movq	-216(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -1600(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_292
# BB#291:                               # %cond.true.671
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2292(%rbp)       # 4-byte Spill
	jmp	.LBB1_293
.LBB1_292:                              # %cond.false.672
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2292(%rbp)       # 4-byte Spill
.LBB1_293:                              # %cond.end.673
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2292(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1608(%rbp)
	movq	-1600(%rbp), %rcx
	cmpq	-1608(%rbp), %rcx
	jae	.LBB1_295
# BB#294:                               # %cond.true.679
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1608(%rbp), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	jmp	.LBB1_296
.LBB1_295:                              # %cond.false.680
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1600(%rbp), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
.LBB1_296:                              # %cond.end.681
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2304(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1616(%rbp)
	movq	-1616(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_298
# BB#297:                               # %if.then.686
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_298:                              # %if.end.687
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_312
# BB#299:                               # %if.then.689
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_305
# BB#300:                               # %land.lhs.true.692
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1600(%rbp), %rax
	cmpq	-1608(%rbp), %rax
	jae	.LBB1_305
# BB#301:                               # %if.then.695
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1600(%rbp), %rax
	movq	%rax, -1624(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_303
# BB#302:                               # %if.then.701
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1624(%rbp), %rdx
	callq	memset
	movq	-1624(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_304
.LBB1_303:                              # %if.else.703
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1624(%rbp), %rdx
	callq	memset
	movq	-1624(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_304:                              # %if.end.705
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_305
.LBB1_305:                              # %if.end.706
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -245(%rbp)
	je	.LBB1_307
# BB#306:                               # %if.then.708
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-1600(%rbp), %rdx
	callq	memcpy_lowcase
	movq	%rax, -2312(%rbp)       # 8-byte Spill
	jmp	.LBB1_311
.LBB1_307:                              # %if.else.710
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -246(%rbp)
	je	.LBB1_309
# BB#308:                               # %if.then.712
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-1600(%rbp), %rdx
	callq	memcpy_uppcase
	movq	%rax, -2320(%rbp)       # 8-byte Spill
	jmp	.LBB1_310
.LBB1_309:                              # %if.else.714
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-1600(%rbp), %rdx
	callq	memcpy
.LBB1_310:                              # %if.end.715
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_311
.LBB1_311:                              # %if.end.716
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1600(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_312:                              # %if.end.718
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1616(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#313:                               # %do.end.721
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_314:                              # %sw.bb.722
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB1_316
# BB#315:                               # %if.then.725
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_316:                              # %if.end.726
                                        #   in Loop: Header=BB1_8 Depth=1
	movabsq	$.L.str.2, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB1_94
.LBB1_317:                              # %sw.bb.727
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_319
# BB#318:                               # %if.then.730
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_319:                              # %if.end.731
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_320
.LBB1_320:                              # %do.body.732
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -176(%rbp)
	jmp	.LBB1_169
.LBB1_321:                              # %sw.bb.736
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_323
# BB#322:                               # %if.then.739
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_323:                              # %if.end.740
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_324
.LBB1_324:                              # %do.body.741
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB1_169
.LBB1_325:                              # %sw.bb.744
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_327
# BB#326:                               # %if.then.747
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_327:                              # %if.end.748
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_328
.LBB1_328:                              # %do.body.749
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -176(%rbp)
	jmp	.LBB1_165
.LBB1_329:                              # %sw.bb.753
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_331
# BB#330:                               # %if.then.756
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_331:                              # %if.end.757
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_332
.LBB1_332:                              # %do.body.758
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB1_165
.LBB1_333:                              # %sw.bb.761
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_335
# BB#334:                               # %if.then.764
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_335:                              # %if.end.765
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_336
.LBB1_336:                              # %do.body.766
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$3, -172(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$-1, 28(%rax)
	setl	%cl
	andb	$1, %cl
	movb	%cl, -181(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
	jmp	.LBB1_170
.LBB1_337:                              # %sw.bb.774
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_339
# BB#338:                               # %if.then.777
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_339:                              # %if.end.778
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_340
.LBB1_340:                              # %do.body.779
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -176(%rbp)
	jmp	.LBB1_169
.LBB1_341:                              # %sw.bb.782
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_343
# BB#342:                               # %if.then.785
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_343:                              # %if.end.786
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_344
.LBB1_344:                              # %do.body.787
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$-1, 16(%rax)
	setl	%cl
	andb	$1, %cl
	movb	%cl, -181(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
	jmp	.LBB1_170
.LBB1_345:                              # %sw.bb.795
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_347
# BB#346:                               # %if.then.798
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_347:                              # %if.end.799
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$-1, -244(%rbp)
	jne	.LBB1_349
# BB#348:                               # %if.then.802
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$9, -244(%rbp)
	jmp	.LBB1_354
.LBB1_349:                              # %if.else.803
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -1628(%rbp)
.LBB1_350:                              # %for.cond.804
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$9, -1628(%rbp)
	jge	.LBB1_353
# BB#351:                               # %for.body.807
                                        #   in Loop: Header=BB1_350 Depth=2
	movl	$10, %eax
	movl	-176(%rbp), %ecx
	movl	%eax, -2324(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2324(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -176(%rbp)
# BB#352:                               # %for.inc
                                        #   in Loop: Header=BB1_350 Depth=2
	movl	-1628(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1628(%rbp)
	jmp	.LBB1_350
.LBB1_353:                              # %for.end
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_354
.LBB1_354:                              # %if.end.809
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_355
.LBB1_355:                              # %do.body.810
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -172(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB1_169
.LBB1_356:                              # %sw.bb.813
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_357
.LBB1_357:                              # %do.body.814
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -1640(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_359
# BB#358:                               # %cond.true.819
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2328(%rbp)       # 4-byte Spill
	jmp	.LBB1_360
.LBB1_359:                              # %cond.false.820
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2328(%rbp)       # 4-byte Spill
.LBB1_360:                              # %cond.end.821
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2328(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1648(%rbp)
	movq	-1640(%rbp), %rcx
	cmpq	-1648(%rbp), %rcx
	jae	.LBB1_362
# BB#361:                               # %cond.true.827
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1648(%rbp), %rax
	movq	%rax, -2336(%rbp)       # 8-byte Spill
	jmp	.LBB1_363
.LBB1_362:                              # %cond.false.828
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1640(%rbp), %rax
	movq	%rax, -2336(%rbp)       # 8-byte Spill
.LBB1_363:                              # %cond.end.829
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2336(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1656(%rbp)
	movq	-1656(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_365
# BB#364:                               # %if.then.834
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_365:                              # %if.end.835
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_373
# BB#366:                               # %if.then.837
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_372
# BB#367:                               # %land.lhs.true.840
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1640(%rbp), %rax
	cmpq	-1648(%rbp), %rax
	jae	.LBB1_372
# BB#368:                               # %if.then.843
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1640(%rbp), %rax
	movq	%rax, -1664(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_370
# BB#369:                               # %if.then.849
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1664(%rbp), %rdx
	callq	memset
	movq	-1664(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_371
.LBB1_370:                              # %if.else.851
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1664(%rbp), %rdx
	callq	memset
	movq	-1664(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_371:                              # %if.end.853
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_372
.LBB1_372:                              # %if.end.854
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rax
	movb	$10, (%rax)
	movq	-1640(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_373:                              # %if.end.856
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1656(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#374:                               # %do.end.859
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_375:                              # %sw.bb.860
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, -245(%rbp)
	movl	$112, -264(%rbp)
.LBB1_376:                              # %sw.bb.861
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -257(%rbp)
	je	.LBB1_378
# BB#377:                               # %if.then.863
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$0, -246(%rbp)
	movb	$1, -245(%rbp)
.LBB1_378:                              # %if.end.864
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_379:                              # %sw.bb.865
                                        #   in Loop: Header=BB1_8 Depth=1
	movabsq	$.L.str.3, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB1_94
.LBB1_380:                              # %sw.bb.866
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_381:                              # %sw.bb.867
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_383
# BB#382:                               # %if.then.870
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_383:                              # %if.end.871
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_384
.LBB1_384:                              # %do.body.872
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -176(%rbp)
	jmp	.LBB1_169
.LBB1_385:                              # %sw.bb.875
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-1720(%rbp), %rax
	movl	$56, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2344(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-64(%rbp), %rdi
	movq	-2344(%rbp), %rsi       # 8-byte Reload
	callq	mktime_z
	leaq	-240(%rbp), %rdx
	movq	%rax, -1728(%rbp)
	addq	$23, %rdx
	movq	%rdx, -216(%rbp)
	cmpq	$0, -1728(%rbp)
	setl	%r8b
	andb	$1, %r8b
	movb	%r8b, -181(%rbp)
.LBB1_386:                              # %do.body.882
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$10, %eax
	movl	%eax, %ecx
	movq	-1728(%rbp), %rax
	cqto
	idivq	%rcx
	movl	%edx, %esi
	movl	%esi, -1732(%rbp)
	movq	-1728(%rbp), %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movq	%rax, -1728(%rbp)
	testb	$1, -181(%rbp)
	je	.LBB1_388
# BB#387:                               # %cond.true.888
                                        #   in Loop: Header=BB1_386 Depth=2
	xorl	%eax, %eax
	subl	-1732(%rbp), %eax
	movl	%eax, -2348(%rbp)       # 4-byte Spill
	jmp	.LBB1_389
.LBB1_388:                              # %cond.false.890
                                        #   in Loop: Header=BB1_386 Depth=2
	movl	-1732(%rbp), %eax
	movl	%eax, -2348(%rbp)       # 4-byte Spill
.LBB1_389:                              # %cond.end.891
                                        #   in Loop: Header=BB1_386 Depth=2
	movl	-2348(%rbp), %eax       # 4-byte Reload
	addl	$48, %eax
	movb	%al, %cl
	movq	-216(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -216(%rbp)
	movb	%cl, -1(%rdx)
# BB#390:                               # %do.cond.896
                                        #   in Loop: Header=BB1_386 Depth=2
	cmpq	$0, -1728(%rbp)
	jne	.LBB1_386
# BB#391:                               # %do.end.899
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, -172(%rbp)
	movb	$0, -182(%rbp)
	jmp	.LBB1_184
.LBB1_392:                              # %sw.bb.900
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$79, -168(%rbp)
	jne	.LBB1_394
# BB#393:                               # %if.then.903
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_394:                              # %if.end.904
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_395:                              # %sw.bb.905
                                        #   in Loop: Header=BB1_8 Depth=1
	movabsq	$.L.str.4, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB1_94
.LBB1_396:                              # %sw.bb.906
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_397
.LBB1_397:                              # %do.body.907
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -1744(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_399
# BB#398:                               # %cond.true.912
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2352(%rbp)       # 4-byte Spill
	jmp	.LBB1_400
.LBB1_399:                              # %cond.false.913
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2352(%rbp)       # 4-byte Spill
.LBB1_400:                              # %cond.end.914
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2352(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1752(%rbp)
	movq	-1744(%rbp), %rcx
	cmpq	-1752(%rbp), %rcx
	jae	.LBB1_402
# BB#401:                               # %cond.true.920
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1752(%rbp), %rax
	movq	%rax, -2360(%rbp)       # 8-byte Spill
	jmp	.LBB1_403
.LBB1_402:                              # %cond.false.921
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1744(%rbp), %rax
	movq	%rax, -2360(%rbp)       # 8-byte Spill
.LBB1_403:                              # %cond.end.922
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2360(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1760(%rbp)
	movq	-1760(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_405
# BB#404:                               # %if.then.927
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_405:                              # %if.end.928
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_413
# BB#406:                               # %if.then.930
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_412
# BB#407:                               # %land.lhs.true.933
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1744(%rbp), %rax
	cmpq	-1752(%rbp), %rax
	jae	.LBB1_412
# BB#408:                               # %if.then.936
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1744(%rbp), %rax
	movq	%rax, -1768(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_410
# BB#409:                               # %if.then.942
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1768(%rbp), %rdx
	callq	memset
	movq	-1768(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_411
.LBB1_410:                              # %if.else.944
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1768(%rbp), %rdx
	callq	memset
	movq	-1768(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_411:                              # %if.end.946
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_412
.LBB1_412:                              # %if.end.947
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rax
	movb	$9, (%rax)
	movq	-1744(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_413:                              # %if.end.949
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1760(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#414:                               # %do.end.952
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_415:                              # %sw.bb.953
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_416
.LBB1_416:                              # %do.body.954
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$7, %eax
	movl	$1, -172(%rbp)
	movq	-56(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	addl	$7, %edx
	movl	%eax, -2364(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-2364(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	$1, %edx
	movl	%edx, -176(%rbp)
	jmp	.LBB1_169
.LBB1_417:                              # %sw.bb.961
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_419
# BB#418:                               # %if.then.964
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_419:                              # %if.end.965
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_420
.LBB1_420:                              # %do.body.966
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$7, %eax
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rcx
	movl	28(%rcx), %edx
	movq	-56(%rbp), %rcx
	subl	24(%rcx), %edx
	addl	$7, %edx
	movl	%eax, -2368(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-2368(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%eax, -176(%rbp)
	jmp	.LBB1_169
.LBB1_421:                              # %sw.bb.974
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_423
# BB#422:                               # %if.then.977
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_423:                              # %if.end.978
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$4294967196, %eax       # imm = 0xFFFFFF9C
	movl	$300, %ecx              # imm = 0x12C
	movq	-56(%rbp), %rdx
	movl	20(%rdx), %esi
	movq	-56(%rbp), %rdx
	cmpl	$0, 20(%rdx)
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1772(%rbp)
	movl	$0, -1776(%rbp)
	movq	-56(%rbp), %rdx
	movl	28(%rdx), %edi
	movq	-56(%rbp), %rdx
	movl	24(%rdx), %esi
	callq	iso_week_days
	movl	%eax, -1780(%rbp)
	cmpl	$0, -1780(%rbp)
	jge	.LBB1_429
# BB#424:                               # %if.then.990
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$4, %eax
	movl	$-1, -1776(%rbp)
	movq	-56(%rbp), %rdx
	movl	28(%rdx), %esi
	movl	-1772(%rbp), %edi
	subl	$1, %edi
	movl	%eax, -2372(%rbp)       # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-2372(%rbp), %edi       # 4-byte Reload
	idivl	%edi
	cmpl	$0, %edx
	movl	%esi, -2376(%rbp)       # 4-byte Spill
	movb	%cl, -2377(%rbp)        # 1-byte Spill
	jne	.LBB1_428
# BB#425:                               # %land.rhs.996
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, %al
	movl	$100, %ecx
	movl	-1772(%rbp), %edx
	subl	$1, %edx
	movb	%al, -2378(%rbp)        # 1-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	movb	-2378(%rbp), %sil       # 1-byte Reload
	movb	%sil, -2379(%rbp)       # 1-byte Spill
	jne	.LBB1_427
# BB#426:                               # %lor.rhs.1001
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$400, %eax              # imm = 0x190
	movl	-1772(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, -2384(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2384(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	sete	%sil
	movb	%sil, -2379(%rbp)       # 1-byte Spill
.LBB1_427:                              # %lor.end.1006
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-2379(%rbp), %al        # 1-byte Reload
	movb	%al, -2377(%rbp)        # 1-byte Spill
.LBB1_428:                              # %land.end.1007
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-2377(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	addl	$365, %ecx              # imm = 0x16D
	movl	-2376(%rbp), %edx       # 4-byte Reload
	addl	%ecx, %edx
	movq	-56(%rbp), %rsi
	movl	24(%rsi), %esi
	movl	%edx, %edi
	callq	iso_week_days
	movl	%eax, -1780(%rbp)
	jmp	.LBB1_436
.LBB1_429:                              # %if.else.1013
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$4, %eax
	movq	-56(%rbp), %rdx
	movl	28(%rdx), %esi
	movl	-1772(%rbp), %edi
	movl	%eax, -2388(%rbp)       # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-2388(%rbp), %edi       # 4-byte Reload
	idivl	%edi
	cmpl	$0, %edx
	movl	%esi, -2392(%rbp)       # 4-byte Spill
	movb	%cl, -2393(%rbp)        # 1-byte Spill
	jne	.LBB1_433
# BB#430:                               # %land.rhs.1019
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$1, %al
	movl	$100, %ecx
	movl	-1772(%rbp), %edx
	movb	%al, -2394(%rbp)        # 1-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	movb	-2394(%rbp), %sil       # 1-byte Reload
	movb	%sil, -2395(%rbp)       # 1-byte Spill
	jne	.LBB1_432
# BB#431:                               # %lor.rhs.1023
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$400, %eax              # imm = 0x190
	movl	-1772(%rbp), %ecx
	movl	%eax, -2400(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2400(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	sete	%sil
	movb	%sil, -2395(%rbp)       # 1-byte Spill
.LBB1_432:                              # %lor.end.1027
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-2395(%rbp), %al        # 1-byte Reload
	movb	%al, -2393(%rbp)        # 1-byte Spill
.LBB1_433:                              # %land.end.1028
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	-2393(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	addl	$365, %ecx              # imm = 0x16D
	movl	-2392(%rbp), %edx       # 4-byte Reload
	subl	%ecx, %edx
	movq	-56(%rbp), %rsi
	movl	24(%rsi), %esi
	movl	%edx, %edi
	callq	iso_week_days
	xorl	%ecx, %ecx
	movl	%eax, -1784(%rbp)
	cmpl	-1784(%rbp), %ecx
	jg	.LBB1_435
# BB#434:                               # %if.then.1036
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, -1776(%rbp)
	movl	-1784(%rbp), %eax
	movl	%eax, -1780(%rbp)
.LBB1_435:                              # %if.end.1037
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_436
.LBB1_436:                              # %if.end.1038
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$71, %edx
	movl	%ecx, -2404(%rbp)       # 4-byte Spill
	movl	%edx, -2408(%rbp)       # 4-byte Spill
	je	.LBB1_445
	jmp	.LBB1_612
.LBB1_612:                              # %if.end.1038
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2404(%rbp), %eax       # 4-byte Reload
	subl	$103, %eax
	movl	%eax, -2412(%rbp)       # 4-byte Spill
	jne	.LBB1_447
	jmp	.LBB1_437
.LBB1_437:                              # %sw.bb.1040
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$100, %eax
	movq	-56(%rbp), %rcx
	movl	20(%rcx), %edx
	movl	%eax, -2416(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-2416(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	-1776(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movl	%edx, -1788(%rbp)
# BB#438:                               # %do.body.1045
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	$2, -172(%rbp)
	cmpl	-1788(%rbp), %eax
	jg	.LBB1_440
# BB#439:                               # %cond.true.1048
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1788(%rbp), %eax
	movl	%eax, -2420(%rbp)       # 4-byte Spill
	jmp	.LBB1_444
.LBB1_440:                              # %cond.false.1049
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$4294965396, %eax       # imm = 0xFFFFF894
	movq	-56(%rbp), %rcx
	movl	20(%rcx), %edx
	subl	-1776(%rbp), %eax
	cmpl	%eax, %edx
	jge	.LBB1_442
# BB#441:                               # %cond.true.1054
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	subl	-1788(%rbp), %eax
	movl	%eax, -2424(%rbp)       # 4-byte Spill
	jmp	.LBB1_443
.LBB1_442:                              # %cond.false.1056
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1788(%rbp), %eax
	addl	$100, %eax
	movl	%eax, -2424(%rbp)       # 4-byte Spill
.LBB1_443:                              # %cond.end.1058
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2424(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2420(%rbp)       # 4-byte Spill
.LBB1_444:                              # %cond.end.1060
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2420(%rbp), %eax       # 4-byte Reload
	movl	%eax, -176(%rbp)
	jmp	.LBB1_169
.LBB1_445:                              # %sw.bb.1064
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_446
.LBB1_446:                              # %do.body.1065
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$4294965396, %eax       # imm = 0xFFFFF894
	movl	$4, -172(%rbp)
	movq	-56(%rbp), %rcx
	movl	20(%rcx), %edx
	subl	-1776(%rbp), %eax
	cmpl	%eax, %edx
	setl	%sil
	andb	$1, %sil
	movb	%sil, -181(%rbp)
	movq	-56(%rbp), %rcx
	movl	20(%rcx), %eax
	addl	$1900, %eax             # imm = 0x76C
	addl	-1776(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB1_170
.LBB1_447:                              # %sw.default.1076
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_448
.LBB1_448:                              # %do.body.1077
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$7, %eax
	movl	$2, -172(%rbp)
	movl	-1780(%rbp), %ecx
	movl	%eax, -2428(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2428(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB1_169
.LBB1_449:                              # %sw.bb.1083
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_451
# BB#450:                               # %if.then.1086
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_451:                              # %if.end.1087
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_452
.LBB1_452:                              # %do.body.1088
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$7, %eax
	movl	$2, -172(%rbp)
	movq	-56(%rbp), %rcx
	movl	28(%rcx), %edx
	movq	-56(%rbp), %rcx
	movl	24(%rcx), %esi
	subl	$1, %esi
	addl	$7, %esi
	movl	%eax, -2432(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -2436(%rbp)       # 4-byte Spill
	cltd
	movl	-2432(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2436(%rbp), %edi       # 4-byte Reload
	subl	%edx, %edi
	addl	$7, %edi
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%eax, -176(%rbp)
	jmp	.LBB1_169
.LBB1_453:                              # %sw.bb.1099
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_455
# BB#454:                               # %if.then.1102
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_455:                              # %if.end.1103
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_456
.LBB1_456:                              # %do.body.1104
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, -172(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -176(%rbp)
	jmp	.LBB1_169
.LBB1_457:                              # %sw.bb.1108
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_459
# BB#458:                               # %if.then.1111
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_459:                              # %if.end.1112
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$79, -168(%rbp)
	jne	.LBB1_461
# BB#460:                               # %if.then.1115
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_461:                              # %if.end.1116
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_462
.LBB1_462:                              # %do.body.1117
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$4, -172(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$-1900, 20(%rax)        # imm = 0xFFFFFFFFFFFFF894
	setl	%cl
	andb	$1, %cl
	movb	%cl, -181(%rbp)
	movq	-56(%rbp), %rax
	movl	20(%rax), %edx
	addl	$1900, %edx             # imm = 0x76C
	movl	%edx, -180(%rbp)
	jmp	.LBB1_170
.LBB1_463:                              # %sw.bb.1126
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$69, -168(%rbp)
	jne	.LBB1_465
# BB#464:                               # %if.then.1129
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_113
.LBB1_465:                              # %if.end.1130
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$100, %eax
	movq	-56(%rbp), %rcx
	movl	20(%rcx), %edx
	movl	%eax, -2440(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-2440(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	%edx, -1792(%rbp)
	cmpl	$0, -1792(%rbp)
	jge	.LBB1_470
# BB#466:                               # %if.then.1136
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$-1900, 20(%rax)        # imm = 0xFFFFFFFFFFFFF894
	jge	.LBB1_468
# BB#467:                               # %cond.true.1140
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	subl	-1792(%rbp), %eax
	movl	%eax, -2444(%rbp)       # 4-byte Spill
	jmp	.LBB1_469
.LBB1_468:                              # %cond.false.1142
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-1792(%rbp), %eax
	addl	$100, %eax
	movl	%eax, -2444(%rbp)       # 4-byte Spill
.LBB1_469:                              # %cond.end.1144
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2444(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1792(%rbp)
.LBB1_470:                              # %if.end.1146
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_471
.LBB1_471:                              # %do.body.1147
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$2, -172(%rbp)
	movl	-1792(%rbp), %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB1_169
.LBB1_472:                              # %sw.bb.1150
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -257(%rbp)
	je	.LBB1_474
# BB#473:                               # %if.then.1152
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	$0, -246(%rbp)
	movb	$1, -245(%rbp)
.LBB1_474:                              # %if.end.1153
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_475
.LBB1_475:                              # %do.body.1154
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-80(%rbp), %rdi
	callq	strlen
	movq	%rax, -1800(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_477
# BB#476:                               # %cond.true.1160
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2448(%rbp)       # 4-byte Spill
	jmp	.LBB1_478
.LBB1_477:                              # %cond.false.1161
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2448(%rbp)       # 4-byte Spill
.LBB1_478:                              # %cond.end.1162
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2448(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1808(%rbp)
	movq	-1800(%rbp), %rcx
	cmpq	-1808(%rbp), %rcx
	jae	.LBB1_480
# BB#479:                               # %cond.true.1168
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1808(%rbp), %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
	jmp	.LBB1_481
.LBB1_480:                              # %cond.false.1169
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1800(%rbp), %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
.LBB1_481:                              # %cond.end.1170
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2456(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1816(%rbp)
	movq	-1816(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_483
# BB#482:                               # %if.then.1175
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_483:                              # %if.end.1176
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_497
# BB#484:                               # %if.then.1178
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_490
# BB#485:                               # %land.lhs.true.1181
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1800(%rbp), %rax
	cmpq	-1808(%rbp), %rax
	jae	.LBB1_490
# BB#486:                               # %if.then.1184
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1800(%rbp), %rax
	movq	%rax, -1824(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_488
# BB#487:                               # %if.then.1190
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1824(%rbp), %rdx
	callq	memset
	movq	-1824(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_489
.LBB1_488:                              # %if.else.1192
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1824(%rbp), %rdx
	callq	memset
	movq	-1824(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_489:                              # %if.end.1194
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_490
.LBB1_490:                              # %if.end.1195
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -245(%rbp)
	je	.LBB1_492
# BB#491:                               # %if.then.1197
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-1800(%rbp), %rdx
	callq	memcpy_lowcase
	movq	%rax, -2464(%rbp)       # 8-byte Spill
	jmp	.LBB1_496
.LBB1_492:                              # %if.else.1199
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -246(%rbp)
	je	.LBB1_494
# BB#493:                               # %if.then.1201
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-1800(%rbp), %rdx
	callq	memcpy_uppcase
	movq	%rax, -2472(%rbp)       # 8-byte Spill
	jmp	.LBB1_495
.LBB1_494:                              # %if.else.1203
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-1800(%rbp), %rdx
	callq	memcpy
.LBB1_495:                              # %if.end.1204
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_496
.LBB1_496:                              # %if.end.1205
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1800(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_497:                              # %if.end.1207
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1816(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#498:                               # %do.end.1210
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_499:                              # %sw.bb.1211
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$1, -256(%rbp)
.LBB1_500:                              # %for.cond.1212
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp), %rax
	movq	-104(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB1_503
# BB#501:                               # %for.body.1216
                                        #   in Loop: Header=BB1_500 Depth=2
	jmp	.LBB1_502
.LBB1_502:                              # %for.inc.1217
                                        #   in Loop: Header=BB1_500 Depth=2
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB1_500
.LBB1_503:                              # %for.end.1219
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-256(%rbp), %rax
	movq	-104(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$122, %edx
	je	.LBB1_505
# BB#504:                               # %if.then.1224
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_505:                              # %if.end.1225
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-256(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_507
.LBB1_506:                              # %sw.bb.1227
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$0, -256(%rbp)
.LBB1_507:                              # %do_z_conversion
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 32(%rax)
	jge	.LBB1_509
# BB#508:                               # %if.then.1230
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_509:                              # %if.end.1231
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -1828(%rbp)
	movslq	-1828(%rbp), %rax
	movl	%eax, %ecx
	imulq	$-2004318071, %rax, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	movl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	sarl	$5, %edx
	addl	%ecx, %edx
	movslq	%edx, %rax
	imulq	$-2004318071, %rax, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$5, %ecx
	addl	%edx, %ecx
	movl	%ecx, -1832(%rbp)
	movslq	-1828(%rbp), %rax
	movl	%eax, %ecx
	imulq	$-2004318071, %rax, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	movl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	sarl	$5, %edx
	addl	%ecx, %edx
	movslq	%edx, %rax
	imulq	$-2004318071, %rax, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %esi
	shrl	$31, %esi
	sarl	$5, %ecx
	addl	%esi, %ecx
	imull	$60, %ecx, %ecx
	subl	%ecx, %edx
	movl	%edx, -1836(%rbp)
	movslq	-1828(%rbp), %rax
	movl	%eax, %ecx
	imulq	$-2004318071, %rax, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	movl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, %esi
	shrl	$31, %esi
	sarl	$5, %edx
	addl	%esi, %edx
	imull	$60, %edx, %edx
	subl	%edx, %ecx
	movl	%ecx, -1840(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	subq	$3, %rdi
	movq	%rax, -2480(%rbp)       # 8-byte Spill
	movq	%rdi, -2488(%rbp)       # 8-byte Spill
	ja	.LBB1_524
# BB#611:                               # %if.end.1231
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2480(%rbp), %rax       # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_510:                              # %sw.bb.1238
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_511
.LBB1_511:                              # %do.body.1239
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$5, -172(%rbp)
	cmpl	$0, -1828(%rbp)
	setl	%al
	andb	$1, %al
	movb	%al, -181(%rbp)
	movl	$0, -188(%rbp)
	imull	$100, -1832(%rbp), %ecx
	addl	-1836(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB1_164
.LBB1_512:                              # %sw.bb.1247
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_513
.LBB1_513:                              # %tz_hh_mm
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_514
.LBB1_514:                              # %do.body.1248
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$6, -172(%rbp)
	cmpl	$0, -1828(%rbp)
	setl	%al
	andb	$1, %al
	movb	%al, -181(%rbp)
	movl	$4, -188(%rbp)
	imull	$100, -1832(%rbp), %ecx
	addl	-1836(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB1_164
.LBB1_515:                              # %sw.bb.1256
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_516
.LBB1_516:                              # %tz_hh_mm_ss
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_517
.LBB1_517:                              # %do.body.1257
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$9, -172(%rbp)
	cmpl	$0, -1828(%rbp)
	setl	%al
	andb	$1, %al
	movb	%al, -181(%rbp)
	movl	$20, -188(%rbp)
	imull	$10000, -1832(%rbp), %ecx # imm = 0x2710
	imull	$100, -1836(%rbp), %edx
	addl	%edx, %ecx
	addl	-1840(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB1_164
.LBB1_518:                              # %sw.bb.1267
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -1840(%rbp)
	je	.LBB1_520
# BB#519:                               # %if.then.1270
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_516
.LBB1_520:                              # %if.end.1271
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -1836(%rbp)
	je	.LBB1_522
# BB#521:                               # %if.then.1274
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_513
.LBB1_522:                              # %if.end.1275
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_523
.LBB1_523:                              # %do.body.1276
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$3, -172(%rbp)
	cmpl	$0, -1828(%rbp)
	setl	%al
	andb	$1, %al
	movb	%al, -181(%rbp)
	movl	$0, -188(%rbp)
	movl	-1832(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB1_164
.LBB1_524:                              # %sw.default.1282
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_525:                              # %sw.bb.1283
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
.LBB1_526:                              # %sw.default.1285
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_527
.LBB1_527:                              # %bad_format
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, -1844(%rbp)
.LBB1_528:                              # %for.cond.1286
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	subl	-1844(%rbp), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$37, %eax
	je	.LBB1_531
# BB#529:                               # %for.body.1292
                                        #   in Loop: Header=BB1_528 Depth=2
	jmp	.LBB1_530
.LBB1_530:                              # %for.inc.1293
                                        #   in Loop: Header=BB1_528 Depth=2
	movl	-1844(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1844(%rbp)
	jmp	.LBB1_528
.LBB1_531:                              # %for.end.1295
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_532
.LBB1_532:                              # %do.body.1296
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-1844(%rbp), %rax
	movq	%rax, -1856(%rbp)
	cmpl	$0, -244(%rbp)
	jge	.LBB1_534
# BB#533:                               # %cond.true.1302
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2492(%rbp)       # 4-byte Spill
	jmp	.LBB1_535
.LBB1_534:                              # %cond.false.1303
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -2492(%rbp)       # 4-byte Spill
.LBB1_535:                              # %cond.end.1304
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-2492(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -1864(%rbp)
	movq	-1856(%rbp), %rcx
	cmpq	-1864(%rbp), %rcx
	jae	.LBB1_537
# BB#536:                               # %cond.true.1310
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1864(%rbp), %rax
	movq	%rax, -2504(%rbp)       # 8-byte Spill
	jmp	.LBB1_538
.LBB1_537:                              # %cond.false.1311
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1856(%rbp), %rax
	movq	%rax, -2504(%rbp)       # 8-byte Spill
.LBB1_538:                              # %cond.end.1312
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-2504(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1872(%rbp)
	movq	-1872(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_540
# BB#539:                               # %if.then.1317
	movq	$0, -16(%rbp)
	jmp	.LBB1_562
.LBB1_540:                              # %if.end.1318
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_554
# BB#541:                               # %if.then.1320
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB1_547
# BB#542:                               # %land.lhs.true.1323
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1856(%rbp), %rax
	cmpq	-1864(%rbp), %rax
	jae	.LBB1_547
# BB#543:                               # %if.then.1326
                                        #   in Loop: Header=BB1_8 Depth=1
	movslq	-244(%rbp), %rax
	subq	-1856(%rbp), %rax
	movq	%rax, -1880(%rbp)
	cmpl	$48, -164(%rbp)
	jne	.LBB1_545
# BB#544:                               # %if.then.1332
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$48, %esi
	movq	-96(%rbp), %rdi
	movq	-1880(%rbp), %rdx
	callq	memset
	movq	-1880(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB1_546
.LBB1_545:                              # %if.else.1334
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$32, %esi
	movq	-96(%rbp), %rdi
	movq	-1880(%rbp), %rdx
	callq	memset
	movq	-1880(%rbp), %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
.LBB1_546:                              # %if.end.1336
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_547
.LBB1_547:                              # %if.end.1337
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -245(%rbp)
	je	.LBB1_549
# BB#548:                               # %if.then.1339
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %eax
	movq	-96(%rbp), %rdi
	subl	-1844(%rbp), %eax
	movslq	%eax, %rcx
	addq	-104(%rbp), %rcx
	movq	-1856(%rbp), %rdx
	movq	%rcx, %rsi
	callq	memcpy_lowcase
	movq	%rax, -2512(%rbp)       # 8-byte Spill
	jmp	.LBB1_553
.LBB1_549:                              # %if.else.1344
                                        #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -246(%rbp)
	je	.LBB1_551
# BB#550:                               # %if.then.1346
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %eax
	movq	-96(%rbp), %rdi
	subl	-1844(%rbp), %eax
	movslq	%eax, %rcx
	addq	-104(%rbp), %rcx
	movq	-1856(%rbp), %rdx
	movq	%rcx, %rsi
	callq	memcpy_uppcase
	movq	%rax, -2520(%rbp)       # 8-byte Spill
	jmp	.LBB1_552
.LBB1_551:                              # %if.else.1351
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %eax
	movq	-96(%rbp), %rdi
	subl	-1844(%rbp), %eax
	movslq	%eax, %rcx
	addq	-104(%rbp), %rcx
	movq	-1856(%rbp), %rdx
	movq	%rcx, %rsi
	callq	memcpy
.LBB1_552:                              # %if.end.1355
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_553
.LBB1_553:                              # %if.end.1356
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1856(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_554:                              # %if.end.1358
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-1872(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#555:                               # %do.end.1361
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_556
.LBB1_556:                              # %sw.epilog.1362
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_557
.LBB1_557:                              # %for.inc.1363
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_8
.LBB1_558:                              # %for.end.1365
	cmpq	$0, -96(%rbp)
	je	.LBB1_561
# BB#559:                               # %land.lhs.true.1367
	cmpq	$0, -40(%rbp)
	je	.LBB1_561
# BB#560:                               # %if.then.1370
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
.LBB1_561:                              # %if.end.1371
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB1_562:                              # %return
	movq	-16(%rbp), %rax
	addq	$2520, %rsp             # imm = 0x9D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	strftime_case_, .Lfunc_end1-strftime_case_
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_510
	.quad	.LBB1_512
	.quad	.LBB1_515
	.quad	.LBB1_518

	.text
	.align	16, 0x90
	.type	memcpy_lowcase,@function
memcpy_lowcase:                         # @memcpy_lowcase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, %rax
	jbe	.LBB2_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	tolower
	movb	%al, %dl
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	jmp	.LBB2_1
.LBB2_3:                                # %while.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	memcpy_lowcase, .Lfunc_end2-memcpy_lowcase
	.cfi_endproc

	.align	16, 0x90
	.type	memcpy_uppcase,@function
memcpy_uppcase:                         # @memcpy_uppcase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, %rax
	jbe	.LBB3_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	toupper
	movb	%al, %dl
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	jmp	.LBB3_1
.LBB3_3:                                # %while.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	memcpy_uppcase, .Lfunc_end3-memcpy_uppcase
	.cfi_endproc

	.align	16, 0x90
	.type	iso_week_days,@function
iso_week_days:                          # @iso_week_days
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	movl	$7, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$378, -12(%rbp)         # imm = 0x17A
	movl	-4(%rbp), %esi
	movl	-4(%rbp), %edi
	subl	-8(%rbp), %edi
	addl	$4, %edi
	addl	-12(%rbp), %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-16(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	subl	%edx, %esi
	addl	$4, %esi
	subl	$1, %esi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	iso_week_days, .Lfunc_end4-iso_week_days
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%m/%d/%y"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%Y-%m-%d"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%H:%M"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%H:%M:%S"
	.size	.L.str.4, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
