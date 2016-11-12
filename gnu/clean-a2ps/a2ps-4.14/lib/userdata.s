	.text
	.file	"userdata.bc"
	.globl	userdata_free
	.align	16, 0x90
	.type	userdata_free,@function
userdata_free:                          # @userdata_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %do.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.body.2
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB0_7:                                # %if.end.6
	jmp	.LBB0_8
.LBB0_8:                                # %do.end.7
	jmp	.LBB0_9
.LBB0_9:                                # %do.body.8
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_11
# BB#10:                                # %if.then.10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB0_11:                               # %if.end.12
	jmp	.LBB0_12
.LBB0_12:                               # %do.end.13
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.14
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_15
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB0_15:                               # %if.end.18
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.19
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	userdata_free, .Lfunc_end0-userdata_free
	.cfi_endproc

	.globl	userdata_get
	.align	16, 0x90
	.type	userdata_get,@function
userdata_get:                           # @userdata_get
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movabsq	$.L.str, %rdi
	movq	%rax, -16(%rbp)
	callq	getenv
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB1_5
# BB#4:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.7
	movabsq	$.L.str.1, %rax
	movq	%rax, -24(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.8
	movabsq	$.L.str.2, %rdi
	callq	getenv
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB1_9
# BB#8:                                 # %if.then.11
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_17
.LBB1_9:                                # %if.else.12
	movabsq	$.L.str.3, %rdi
	callq	getenv
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB1_11
# BB#10:                                # %if.then.15
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_16
.LBB1_11:                               # %if.else.16
	cmpq	$0, -16(%rbp)
	je	.LBB1_14
# BB#12:                                # %land.lhs.true.18
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.22
	movq	$0, -32(%rbp)
.LBB1_15:                               # %if.end.23
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.24
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.25
	cmpq	$0, -16(%rbp)
	je	.LBB1_38
# BB#18:                                # %land.lhs.true.27
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB1_38
# BB#19:                                # %if.then.29
	movq	$0, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_34
# BB#20:                                # %if.then.31
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB1_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_26
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	jne	.LBB1_24
# BB#23:                                # %if.then.35
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB1_24:                               # %if.end.36
                                        #   in Loop: Header=BB1_21 Depth=1
	jmp	.LBB1_25
.LBB1_25:                               # %for.inc
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_21
.LBB1_26:                               # %for.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	strlen
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	strlen
	decq	%rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	imulq	%rax, %rcx
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	16(%rax,%rcx), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdi
	subq	%rcx, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -56(%rbp)
.LBB1_27:                               # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_33
# BB#28:                                # %for.body.45
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	jne	.LBB1_30
# BB#29:                                # %if.then.49
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edi
	callq	toupper
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -80(%rbp)
	movb	%cl, (%rdx)
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	callq	stpcpy
	movq	%rax, -80(%rbp)
	jmp	.LBB1_31
.LBB1_30:                               # %if.else.55
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movb	%cl, (%rax)
.LBB1_31:                               # %if.end.57
                                        #   in Loop: Header=BB1_27 Depth=1
	jmp	.LBB1_32
.LBB1_32:                               # %for.inc.58
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_27
.LBB1_33:                               # %for.end.60
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.61
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	stpcpy
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB1_35:                               # %if.end.68
	movl	$44, %esi
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB1_37
# BB#36:                                # %if.then.71
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB1_37:                               # %if.end.73
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.74
	cmpq	$0, -32(%rbp)
	je	.LBB1_40
# BB#39:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_41
.LBB1_40:                               # %cond.false
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB1_41:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	xstrdup
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, -48(%rbp)
	je	.LBB1_43
# BB#42:                                # %cond.true.80
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_44
.LBB1_43:                               # %cond.false.81
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB1_44:                               # %cond.end.83
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	xstrdup
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	cmpq	$0, -40(%rbp)
	je	.LBB1_46
# BB#45:                                # %cond.true.88
	movq	-40(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_47
.LBB1_46:                               # %cond.false.90
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_47
.LBB1_47:                               # %cond.end.91
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	cmpq	$0, -24(%rbp)
	je	.LBB1_49
# BB#48:                                # %cond.true.95
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_50
.LBB1_49:                               # %cond.false.96
	movabsq	$.L.str.1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_50
.LBB1_50:                               # %cond.end.97
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	xstrdup
	movq	-8(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	userdata_get, .Lfunc_end1-userdata_get
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HOME"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/home"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LOGNAME"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"USERNAME"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"user"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown User"
	.size	.L.str.5, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
