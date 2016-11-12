	.text
	.file	"confg.bc"
	.globl	in_word_set
	.align	16, 0x90
	.type	in_word_set,@function
in_word_set:                            # @in_word_set
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$19, -20(%rbp)
	ja	.LBB0_11
# BB#1:                                 # %land.lhs.true
	cmpl	$6, -20(%rbp)
	jb	.LBB0_11
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	hash
	movl	%eax, -24(%rbp)
	cmpl	$33, -24(%rbp)
	jg	.LBB0_10
# BB#3:                                 # %land.lhs.true.3
	cmpl	$0, -24(%rbp)
	jl	.LBB0_10
# BB#4:                                 # %if.then.5
	movslq	-24(%rbp), %rax
	movswl	in_word_set.lookup(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB0_9
# BB#5:                                 # %if.then.8
	movabsq	$in_word_set.wordlist, %rax
	movslq	-28(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movsbl	(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB0_8
# BB#6:                                 # %land.lhs.true.15
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_8
# BB#7:                                 # %if.then.18
	movabsq	$in_word_set.wordlist, %rax
	movslq	-28(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_8:                                # %if.end
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.21
	jmp	.LBB0_10
.LBB0_10:                               # %if.end.22
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.23
	movq	$0, -8(%rbp)
.LBB0_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	in_word_set, .Lfunc_end0-in_word_set
	.cfi_endproc

	.align	16, 0x90
	.type	hash,@function
hash:                                   # @hash
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %eax
	movl	%eax, %edi
	movzbl	hash.asso_values(,%rdi), %eax
	addl	%eax, %esi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	hash, .Lfunc_end1-hash
	.cfi_endproc

	.globl	a2_read_config
	.align	16, 0x90
	.type	a2_read_config,@function
a2_read_config:                         # @a2_read_config
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$608, %rsp              # imm = 0x260
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdx
	callq	xpath_concat
	movabsq	$.L.str.21, %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	free
	movl	$0, -4(%rbp)
	jmp	.LBB2_105
.LBB2_2:                                # %if.end
	jmp	.LBB2_3
.LBB2_3:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$96, %eax
	cmpl	$0, %eax
	je	.LBB2_5
# BB#4:                                 # %if.then.2
	movabsq	$.L.str.22, %rsi
	movq	stderr, %rdi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB2_5:                                # %if.end.4
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	jmp	.LBB2_7
.LBB2_7:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	getshline_numbered
	cmpl	$-1, %eax
	je	.LBB2_100
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.23, %rsi
	movq	-56(%rbp), %rdi
	callq	strtok
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB2_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_7
.LBB2_10:                               # %if.end.11
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-176(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	in_word_set
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.24, %rdi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movl	-268(%rbp), %ecx        # 4-byte Reload
	movq	-288(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB2_12:                               # %if.end.21
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$1, -84(%rbp)
.LBB2_13:                               # %for.cond
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jg	.LBB2_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB2_13 Depth=2
	movq	-80(%rbp), %rax
	testb	$1, 16(%rax)
	je	.LBB2_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB2_17
# BB#16:                                # %if.then.30
                                        #   in Loop: Header=BB2_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.25, %rsi
	callq	strtok
	movslq	-84(%rbp), %rsi
	movq	%rax, -176(%rbp,%rsi,8)
	jmp	.LBB2_18
.LBB2_17:                               # %if.else
                                        #   in Loop: Header=BB2_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.23, %rsi
	callq	strtok
	movslq	-84(%rbp), %rsi
	movq	%rax, -176(%rbp,%rsi,8)
.LBB2_18:                               # %if.end.36
                                        #   in Loop: Header=BB2_13 Depth=2
	movslq	-84(%rbp), %rax
	cmpq	$0, -176(%rbp,%rax,8)
	jne	.LBB2_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB2_13 Depth=2
	movabsq	$.L.str.26, %rdi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movl	-292(%rbp), %ecx        # 4-byte Reload
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB2_20:                               # %if.end.45
                                        #   in Loop: Header=BB2_13 Depth=2
	jmp	.LBB2_21
.LBB2_21:                               # %for.inc
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB2_13
.LBB2_22:                               # %for.end
                                        #   in Loop: Header=BB2_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.25, %rsi
	callq	strtok
	cmpq	$0, %rax
	je	.LBB2_24
# BB#23:                                # %if.then.48
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-176(%rbp), %rdi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.27, %r8
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB2_24:                               # %if.end.51
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$16, %rdx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	ja	.LBB2_99
# BB#106:                               # %if.end.51
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_25:                               # %sw.bb
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-168(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB2_27
# BB#26:                                # %if.then.56
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	$0, -184(%rbp)
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.57
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-48(%rbp), %rdi
	callq	dir_name
	movq	%rax, -184(%rbp)
.LBB2_28:                               # %if.end.59
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-168(%rbp), %rdx
	callq	a2_read_config
	cmpl	$0, %eax
	jne	.LBB2_30
# BB#29:                                # %if.then.63
                                        #   in Loop: Header=BB2_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	xpath_concat
	movq	%rax, -192(%rbp)
	callq	__errno_location
	movabsq	$.L.str.28, %rdi
	movl	(%rax), %esi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%esi, -352(%rbp)        # 4-byte Spill
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-192(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-352(%rbp), %esi        # 4-byte Reload
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movl	-348(%rbp), %ecx        # 4-byte Reload
	movq	-368(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
	movq	-192(%rbp), %rdi
	callq	free
.LBB2_30:                               # %if.end.69
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_31
.LBB2_31:                               # %do.body.70
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB2_33
# BB#32:                                # %if.then.72
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-184(%rbp), %rdi
	callq	free
.LBB2_33:                               # %if.end.73
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_34
.LBB2_34:                               # %do.end.74
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_35:                               # %sw.bb.75
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.29, %rsi
	movq	program_name(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	program_name(%rip), %rdi
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-48(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-384(%rbp), %rsi        # 8-byte Reload
	leaq	25(%rsi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, program_name
	movq	program_name, %rdi
	movq	-200(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %r8d
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	a2ps_handle_string_options
	movq	-200(%rbp), %rcx
	movq	%rcx, program_name
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB2_99
.LBB2_36:                               # %sw.bb.82
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-168(%rbp), %rsi
	callq	a2ps_printers_default_ppdkey_set
	jmp	.LBB2_99
.LBB2_37:                               # %sw.bb.84
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rdx
	callq	a2ps_printers_add
	testb	$1, %al
	jne	.LBB2_39
# BB#38:                                # %if.then.89
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.30, %rdi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %r9
	movq	-160(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%r9, -424(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	subq	$16, %rsp
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movl	-396(%rbp), %ecx        # 4-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	-424(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	error_at_line
	addq	$16, %rsp
.LBB2_39:                               # %if.end.94
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_40:                               # %sw.bb.95
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %rdx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	a2ps_printers_add
	testb	$1, %al
	jne	.LBB2_42
# BB#41:                                # %if.then.100
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.30, %rdi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	subq	$16, %rsp
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movl	-436(%rbp), %ecx        # 4-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	movq	-464(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	error_at_line
	addq	$16, %rsp
.LBB2_42:                               # %if.end.105
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_43:                               # %sw.bb.106
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.32, %rdi
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %rdx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	a2ps_printers_add
	testb	$1, %al
	jne	.LBB2_45
# BB#44:                                # %if.then.111
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.30, %rdi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	subq	$16, %rsp
	movq	-488(%rbp), %rdx        # 8-byte Reload
	movl	-476(%rbp), %ecx        # 4-byte Reload
	movq	-496(%rbp), %r8         # 8-byte Reload
	movq	-504(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	error_at_line
	addq	$16, %rsp
.LBB2_45:                               # %if.end.116
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_46:                               # %sw.bb.117
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpq	$0, delegation_hook
	je	.LBB2_48
# BB#47:                                # %if.then.119
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	delegation_hook, %rax
	movq	-48(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-168(%rbp), %rdx
	callq	*%rax
.LBB2_48:                               # %if.end.121
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_49:                               # %sw.bb.122
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rdx
	callq	user_option_add
	jmp	.LBB2_99
.LBB2_50:                               # %sw.bb.125
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_51
.LBB2_51:                               # %do.body.126
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -208(%rbp)
# BB#52:                                # %do.body.128
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_54
# BB#53:                                # %if.then.130
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movq	32(%rax), %rdi
	callq	free
.LBB2_54:                               # %if.end.133
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_55
.LBB2_55:                               # %do.end.134
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpq	$0, -208(%rbp)
	je	.LBB2_58
# BB#56:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_58
# BB#57:                                # %cond.true
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-208(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB2_59
.LBB2_58:                               # %cond.false
                                        #   in Loop: Header=BB2_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB2_59
.LBB2_59:                               # %cond.end
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	%rax, 32(%rcx)
# BB#60:                                # %do.end.143
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_61:                               # %sw.bb.144
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_62
.LBB2_62:                               # %do.body.145
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -216(%rbp)
# BB#63:                                # %do.body.148
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB2_65
# BB#64:                                # %if.then.151
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movq	40(%rax), %rdi
	callq	free
.LBB2_65:                               # %if.end.154
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_66
.LBB2_66:                               # %do.end.155
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpq	$0, -216(%rbp)
	je	.LBB2_69
# BB#67:                                # %lor.lhs.false.158
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_69
# BB#68:                                # %cond.true.162
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-216(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB2_70
.LBB2_69:                               # %cond.false.164
                                        #   in Loop: Header=BB2_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB2_70
.LBB2_70:                               # %cond.end.165
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	%rax, 40(%rcx)
# BB#71:                                # %do.end.169
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_72:                               # %sw.bb.170
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-160(%rbp), %rdi
	subq	$16, %rsp
	movq	%rsp, %rax
	leaq	-240(%rbp), %rcx
	movq	%rcx, 8(%rax)
	leaq	-236(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$.L.str.33, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movb	%dl, %r8b
	leaq	-220(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-228(%rbp), %rax
	leaq	-232(%rbp), %r9
	movb	%r8b, -521(%rbp)        # 1-byte Spill
	movq	%rax, %r8
	movb	-521(%rbp), %al         # 1-byte Reload
	callq	__isoc99_sscanf
	addq	$16, %rsp
	movl	%eax, %r10d
	subl	$2, %eax
	movl	%r10d, -528(%rbp)       # 4-byte Spill
	movl	%eax, -532(%rbp)        # 4-byte Spill
	je	.LBB2_74
	jmp	.LBB2_107
.LBB2_107:                              # %sw.bb.170
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-528(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jne	.LBB2_75
	jmp	.LBB2_73
.LBB2_73:                               # %sw.bb.173
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_76
.LBB2_74:                               # %sw.bb.174
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$24, -232(%rbp)
	movl	$24, -228(%rbp)
	movl	-220(%rbp), %eax
	subl	$24, %eax
	movl	%eax, -236(%rbp)
	movl	-224(%rbp), %eax
	subl	$24, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB2_76
.LBB2_75:                               # %sw.default
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-176(%rbp), %rdi
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.34, %r8
	movq	-544(%rbp), %rdx        # 8-byte Reload
	movl	-548(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB2_76:                               # %sw.epilog
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	movl	-228(%rbp), %r8d
	movl	-232(%rbp), %r9d
	movl	-236(%rbp), %eax
	movl	-240(%rbp), %r10d
	subq	$16, %rsp
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_medium
	addq	$16, %rsp
	jmp	.LBB2_99
.LBB2_77:                               # %sw.bb.179
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rdx
	callq	macro_meta_sequence_add
	testb	$1, %al
	jne	.LBB2_79
# BB#78:                                # %if.then.183
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.35, %rdi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -552(%rbp)        # 4-byte Spill
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movl	-552(%rbp), %ecx        # 4-byte Reload
	movq	-568(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB2_79:                               # %if.end.187
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_80:                               # %sw.bb.188
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_81
.LBB2_81:                               # %do.body.189
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_83
# BB#82:                                # %if.then.192
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB2_83:                               # %if.end.195
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_84
.LBB2_84:                               # %do.end.196
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-168(%rbp), %rdi
	callq	pw_string_to_path
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB2_99
.LBB2_85:                               # %sw.bb.201
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-168(%rbp), %rsi
	callq	pw_append_string_to_path
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB2_99
.LBB2_86:                               # %sw.bb.208
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-168(%rbp), %rsi
	callq	pw_prepend_string_to_path
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB2_99
.LBB2_87:                               # %sw.bb.215
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_88
.LBB2_88:                               # %do.body.216
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -248(%rbp)
# BB#89:                                # %do.body.219
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_91
# BB#90:                                # %if.then.221
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB2_91:                               # %if.end.223
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_92
.LBB2_92:                               # %do.end.224
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpq	$0, -248(%rbp)
	je	.LBB2_95
# BB#93:                                # %lor.lhs.false.227
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-248(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_95
# BB#94:                                # %cond.true.231
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-248(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB2_96
.LBB2_95:                               # %cond.false.233
                                        #   in Loop: Header=BB2_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB2_96
.LBB2_96:                               # %cond.end.234
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
# BB#97:                                # %do.end.237
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_99
.LBB2_98:                               # %sw.bb.238
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.36, %rdi
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-176(%rbp), %r9
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-592(%rbp), %rdx        # 8-byte Reload
	movl	-580(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error_at_line
.LBB2_99:                               # %sw.epilog.241
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_7
.LBB2_100:                              # %while.end
	jmp	.LBB2_101
.LBB2_101:                              # %do.body.242
	cmpq	$0, -48(%rbp)
	je	.LBB2_103
# BB#102:                               # %if.then.244
	movq	-48(%rbp), %rdi
	callq	free
.LBB2_103:                              # %if.end.245
	jmp	.LBB2_104
.LBB2_104:                              # %do.end.246
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-56(%rbp), %rdi
	movl	%eax, -596(%rbp)        # 4-byte Spill
	callq	free
	movl	$1, -4(%rbp)
.LBB2_105:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	a2_read_config, .Lfunc_end2-a2_read_config
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_85
	.quad	.LBB2_36
	.quad	.LBB2_43
	.quad	.LBB2_46
	.quad	.LBB2_87
	.quad	.LBB2_25
	.quad	.LBB2_80
	.quad	.LBB2_72
	.quad	.LBB2_98
	.quad	.LBB2_35
	.quad	.LBB2_50
	.quad	.LBB2_61
	.quad	.LBB2_86
	.quad	.LBB2_37
	.quad	.LBB2_40
	.quad	.LBB2_49
	.quad	.LBB2_77

	.text
	.globl	a2_read_sys_config
	.align	16, 0x90
	.type	a2_read_sys_config,@function
a2_read_sys_config:                     # @a2_read_sys_config
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.37, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.38, %rax
	movq	%rax, -16(%rbp)
.LBB3_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	a2_read_config
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.3
	jmp	.LBB3_5
.LBB3_4:                                # %if.end.4
	callq	__errno_location
	movabsq	$.L.str.28, %rdi
	movl	(%rax), %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-20(%rbp), %esi         # 4-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB3_5:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	a2_read_sys_config, .Lfunc_end3-a2_read_sys_config
	.cfi_endproc

	.type	delegation_hook,@object # @delegation_hook
	.bss
	.globl	delegation_hook
	.align	8
delegation_hook:
	.quad	0
	.size	delegation_hook, 8

	.type	toc_entry_hook,@object  # @toc_entry_hook
	.globl	toc_entry_hook
	.align	8
toc_entry_hook:
	.quad	0
	.size	toc_entry_hook, 8

	.type	in_word_set.wordlist,@object # @in_word_set.wordlist
	.data
	.align	16
in_word_set.wordlist:
	.quad	.L.str
	.long	7                       # 0x7
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.1
	.long	7                       # 0x7
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.2
	.long	5                       # 0x5
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.3
	.long	16                      # 0x10
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.5
	.long	6                       # 0x6
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.6
	.long	9                       # 0x9
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.7
	.long	2                       # 0x2
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.8
	.long	10                      # 0xa
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.9
	.long	8                       # 0x8
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.10
	.long	8                       # 0x8
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.11
	.long	14                      # 0xe
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.12
	.long	3                       # 0x3
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.13
	.long	4                       # 0x4
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.14
	.long	16                      # 0x10
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.15
	.long	8                       # 0x8
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.16
	.long	15                      # 0xf
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.17
	.long	13                      # 0xd
	.long	2                       # 0x2
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.18
	.long	12                      # 0xc
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.19
	.long	11                      # 0xb
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.20
	.long	0                       # 0x0
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	7
	.size	in_word_set.wordlist, 504

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Media:"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Medium:"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Include:"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Variable:"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DefaultPPD:"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LibraryPath:"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Options:"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"DefaultPrinter:"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"OutputFirstLine:"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"PassThrough:"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Pattern:"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"UnknownPrinter:"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Delegation:"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"FileCommand:"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"MacroMetaSequence:"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"TemporaryDirectory:"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"UserOption:"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Printer:"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"PrependLibraryPath:"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"PageLabelFormat:"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"AppendLibraryPath:"
	.size	.L.str.20, 19

	.type	in_word_set.lookup,@object # @in_word_set.lookup
	.data
	.align	16
in_word_set.lookup:
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	65535                   # 0xffff
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	65535                   # 0xffff
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	65535                   # 0xffff
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	65535                   # 0xffff
	.short	16                      # 0x10
	.short	65535                   # 0xffff
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	65535                   # 0xffff
	.short	19                      # 0x13
	.short	65535                   # 0xffff
	.short	20                      # 0x14
	.size	in_word_set.lookup, 68

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"r"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Reading configuration file `%s'\n"
	.size	.L.str.22, 33

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	" \t\n"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"invalid option `%s'"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\n"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"missing argument for `%s'"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"extra argument for `%s'"
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"cannot open file `%s'"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s:%s:%d"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"invalid definition for printer `%s': %s"
	.size	.L.str.30, 40

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unknown Printer"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Default Printer"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%d %d %d %d %d %d"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"invalid number of arguments for `%s'"
	.size	.L.str.34, 37

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"invalid variable identifier `%s'"
	.size	.L.str.35, 33

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"obsolete `%s' entry.  Ignored"
	.size	.L.str.36, 30

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"A2PS_CONFIG"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/usr/local/etc/a2ps.cfg"
	.size	.L.str.38, 24

	.type	hash.asso_values,@object # @hash.asso_values
	.data
	.align	16
hash.asso_values:
	.ascii	"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\n\"\"\"\"\"\"\"\"\017\"\"\017\"\"\"\"\005\"\"\"\"\"\"\"\"\"\"\"\"\000\"\"\"\n\"\n\"\"\"\"\"\"\017\005\"\"\"\"\024\000\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\""
	.size	hash.asso_values, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
