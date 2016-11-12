	.text
	.file	"spngp.bc"
	.align	16, 0x90
	.type	s_PNGPE_init,@function
s_PNGPE_init:                           # @s_PNGPE_init
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	120(%rdi), %rax
	movzbl	pngp_case_needs_prev-10(%rax), %esi
	jmp	s_pngp_init             # TAILCALL
.Lfunc_end0:
	.size	s_PNGPE_init, .Lfunc_end0-s_PNGPE_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_PNGPE_process,@function
s_PNGPE_process:                        # @s_PNGPE_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	(%r12), %rcx
	movq	8(%r12), %r14
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	jae	.LBB1_15
# BB#1:                                 # %while.body.lr.ph
	movslq	132(%rdi), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leaq	160(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	negq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	-1(%rdx), %eax
	cltq
	negq	%rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_3
# BB#6:                                 # %if.end.16
                                        #   in Loop: Header=BB1_2 Depth=1
	subl	%ecx, %r14d
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	16(%rcx), %eax
	subl	8(%rcx), %eax
	cmpl	%esi, %r14d
	cmovael	%esi, %r14d
	cmpl	%r14d, %eax
	cmovbl	%eax, %r14d
	movl	$1, %eax
	testl	%r14d, %r14d
	je	.LBB1_15
# BB#7:                                 # %if.end.21
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	136(%rbx), %rax
	addq	%rdx, %rax
	movl	124(%rbx), %ebp
	addq	%rax, %rbp
	subq	%rsi, %rbp
	cmpl	%edx, %r14d
	movl	%edx, %r13d
	cmovbl	%r14d, %r13d
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %r15
	movl	%r13d, (%rsp)
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	callq	s_pngp_process
	movq	136(%rbx), %rax
	cmpq	$0, 152(%rbx)
	je	.LBB1_8
# BB#10:                                # %if.end.59
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%rax, %rax
	je	.LBB1_12
# BB#11:                                # %if.then.62
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %edx
	movq	%r15, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
.LBB1_12:                               # %if.end.70
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	jb	.LBB1_13
# BB#16:                                # %if.end.105
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r14d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	(%r12), %rdx
	movq	8(%rsp), %r15           # 8-byte Reload
	addq	%r15, %rdx
	leaq	(%rbp,%rax), %r9
	movl	%ecx, (%rsp)
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rcx
	movq	%rax, %r13
	movq	%rbp, %r8
	callq	s_pngp_process
	movq	(%r12), %rsi
	addq	%r15, %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy
	cmpq	$0, 136(%rbx)
	je	.LBB1_5
# BB#17:                                # %if.then.125
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r12), %rsi
	decl	%r14d
	subq	%r14, %rsi
	movl	20(%rsp), %r15d         # 4-byte Reload
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	memcpy
	cmpq	$0, 152(%rbx)
	jne	.LBB1_5
# BB#18:                                # %if.then.137
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	%r15, %rbp
	movq	%rbp, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_3:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsi), %rcx
	movl	$1, %eax
	cmpq	16(%rsi), %rcx
	jae	.LBB1_15
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	120(%rbx), %eax
	cmpl	$15, %eax
	movl	$11, %esi
	cmovel	%esi, %eax
	leal	246(%rax), %ebp
	leaq	1(%rcx), %rsi
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movb	%bpl, 1(%rcx)
	addl	$-10, %eax
	movl	%eax, 144(%rbx)
	movl	124(%rbx), %eax
	movq	%rax, 152(%rbx)
	xorl	%esi, %esi
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	memset
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_8:                                # %if.then.41
                                        #   in Loop: Header=BB1_2 Depth=1
	testq	%rax, %rax
	je	.LBB1_5
# BB#9:                                 # %if.then.43
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	(%r12), %rsi
	leal	-1(%r13), %eax
	subq	%rax, %rsi
	movl	%r13d, %edx
	movq	%rbp, %rdi
	callq	memcpy
	.align	16, 0x90
.LBB1_5:                                # %while.cond.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r12), %rcx
	movq	8(%r12), %r14
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	jb	.LBB1_2
	jmp	.LBB1_15
.LBB1_13:                               # %if.then.73
	subl	%r13d, %eax
	movl	%r13d, %r14d
	movq	40(%rsp), %rbx          # 8-byte Reload
	leaq	(%rbx,%r14), %rsi
	movslq	%eax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memmove
	addq	%rbp, %rbx
	movq	(%r12), %rsi
	decl	%r13d
	subq	%r13, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcpy
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	8(%rdx), %rcx
	xorl	%eax, %eax
	cmpq	16(%rdx), %rcx
	jb	.LBB1_15
# BB#14:                                # %land.lhs.true
	movq	(%r12), %rax
	cmpq	8(%r12), %rax
	sbbl	%eax, %eax
	andl	$1, %eax
.LBB1_15:                               # %while.end
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_PNGPE_process, .Lfunc_end1-s_PNGPE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_PNGP_release,@function
s_PNGP_release:                         # @s_PNGP_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_1
# BB#2:                                 # %if.then
	movq	8(%rdi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.1, %edx
	jmpq	*%rax                   # TAILCALL
.LBB2_1:                                # %if.end
	retq
.Lfunc_end2:
	.size	s_PNGP_release, .Lfunc_end2-s_PNGP_release
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	15                      # 0xf
	.text
	.align	16, 0x90
	.type	s_PNGP_set_defaults,@function
s_PNGP_set_defaults:                    # @s_PNGP_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [1,8,1,15]
	movups	%xmm0, 108(%rdi)
	movq	$0, 136(%rdi)
	retq
.Lfunc_end3:
	.size	s_PNGP_set_defaults, .Lfunc_end3-s_PNGP_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	s_PNGP_reinit,@function
s_PNGP_reinit:                          # @s_PNGP_reinit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_2
# BB#1:                                 # %if.then
	movslq	132(%rbx), %rax
	addq	%rax, %rdi
	movl	124(%rbx), %edx
	xorl	%esi, %esi
	callq	memset
.LBB4_2:                                # %if.end
	movq	$0, 152(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	s_PNGP_reinit, .Lfunc_end4-s_PNGP_reinit
	.cfi_endproc

	.align	16, 0x90
	.type	s_PNGPD_init,@function
s_PNGPD_init:                           # @s_PNGPD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	s_pngp_init             # TAILCALL
.Lfunc_end5:
	.size	s_PNGPD_init, .Lfunc_end5-s_PNGPD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_PNGPD_process,@function
s_PNGPD_process:                        # @s_PNGPD_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 128
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	(%rsi), %rcx
	movq	8(%rsi), %r14
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	jae	.LBB6_15
# BB#1:                                 # %while.body.lr.ph
	movslq	132(%rbx), %r12
	leaq	160(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rax
	negq	%rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	-1(%r12), %eax
	cltq
	negq	%rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB6_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_3
# BB#6:                                 # %if.end.12
                                        #   in Loop: Header=BB6_2 Depth=1
	subl	%ecx, %r14d
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	16(%rcx), %eax
	subl	8(%rcx), %eax
	cmpl	%esi, %r14d
	cmovael	%esi, %r14d
	cmpl	%r14d, %eax
	cmovbl	%eax, %r14d
	movl	$1, %eax
	testl	%r14d, %r14d
	je	.LBB6_15
# BB#7:                                 # %if.end.17
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	136(%rbx), %rax
	addq	%r12, %rax
	movl	124(%rbx), %ebp
	addq	%rax, %rbp
	subq	%rsi, %rbp
	cmpl	%r12d, %r14d
	movl	%r12d, %r13d
	cmovbl	%r14d, %r13d
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %r15
	movl	%r13d, (%rsp)
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%r15, %r8
	movq	%rbp, %r9
	callq	s_pngp_process
	movq	136(%rbx), %rax
	cmpq	$0, 152(%rbx)
	je	.LBB6_8
# BB#10:                                # %if.end.50
                                        #   in Loop: Header=BB6_2 Depth=1
	testq	%rax, %rax
	je	.LBB6_12
# BB#11:                                # %if.then.53
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%r13d, %edx
	movq	%r15, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
.LBB6_12:                               # %if.end.61
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, %rax
	cmpl	%eax, %r14d
	jb	.LBB6_13
# BB#16:                                # %if.end.96
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%r14d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	8(%rbx), %rdx
	movq	16(%rsp), %r12          # 8-byte Reload
	addq	%r12, %rdx
	leaq	(%rbp,%rax), %r9
	movl	%ecx, (%rsp)
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %r13
	movq	%rbp, %r8
	callq	s_pngp_process
	movq	8(%rbx), %rsi
	addq	%r12, %rsi
	movq	%r15, %rbx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rdx
	movq	%r13, %r12
	callq	memcpy
	cmpq	$0, 136(%rbx)
	je	.LBB6_5
# BB#17:                                # %if.then.116
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rsi
	decl	%r14d
	subq	%r14, %rsi
	movl	36(%rsp), %r15d         # 4-byte Reload
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	memcpy
	cmpq	$0, 152(%rbx)
	jne	.LBB6_5
# BB#18:                                # %if.then.128
                                        #   in Loop: Header=BB6_2 Depth=1
	addq	%r15, %rbp
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	jmp	.LBB6_5
	.align	16, 0x90
.LBB6_3:                                # %if.then
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	1(%rcx), %esi
	cmpl	$4, %esi
	movl	$-2, %eax
	ja	.LBB6_15
# BB#4:                                 # %cleanup.139.thread93
                                        #   in Loop: Header=BB6_2 Depth=1
	incq	%rcx
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rcx, (%rax)
	addl	$6, %esi
	movl	%esi, 144(%rbx)
	movl	124(%rbx), %eax
	movq	%rax, 152(%rbx)
	xorl	%esi, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	memset
	jmp	.LBB6_5
	.align	16, 0x90
.LBB6_8:                                # %if.then.33
                                        #   in Loop: Header=BB6_2 Depth=1
	testq	%rax, %rax
	je	.LBB6_5
# BB#9:                                 # %if.then.35
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rsi
	leal	-1(%r13), %eax
	subq	%rax, %rsi
	movl	%r13d, %edx
	movq	%rbp, %rdi
	callq	memcpy
	.align	16, 0x90
.LBB6_5:                                # %while.cond.backedge
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	movq	8(%rax), %r14
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	jb	.LBB6_2
	jmp	.LBB6_15
.LBB6_13:                               # %if.then.64
	subl	%r13d, %eax
	movl	%r13d, %r14d
	movq	48(%rsp), %rbx          # 8-byte Reload
	leaq	(%rbx,%r14), %rsi
	movslq	%eax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memmove
	addq	%rbp, %rbx
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	8(%rbp), %rsi
	decl	%r13d
	subq	%r13, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcpy
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	cmpq	16(%rbp), %rcx
	jb	.LBB6_15
# BB#14:                                # %land.lhs.true
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rax
	cmpq	8(%rcx), %rax
	sbbl	%eax, %eax
	andl	$1, %eax
.LBB6_15:                               # %while.end
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	s_PNGPD_process, .Lfunc_end6-s_PNGPD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_pngp_init,@function
s_pngp_init:                            # @s_pngp_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	108(%rbx), %rdi
	movslq	112(%rbx), %rdx
	imulq	%rdi, %rdx
	movl	116(%rbx), %ecx
	imulq	%rdx, %rcx
	movl	$-2, %r15d
	movabsq	$30064771065, %rax      # imm = 0x6FFFFFFF9
	cmpq	%rax, %rcx
	jg	.LBB7_7
# BB#1:                                 # %if.end
	leaq	7(%rcx), %rax
	shrq	$3, %rax
	movl	%eax, 124(%rbx)
	negl	%ecx
	andb	$7, %cl
	movl	$1, %ebp
	shll	%cl, %ebp
	addl	$255, %ebp
	movb	%bpl, 128(%rbx)
	cmpl	$256, %edi              # imm = 0x100
	jg	.LBB7_7
# BB#2:                                 # %if.end.11
	addl	$7, %edx
	sarl	$3, %edx
	movl	%edx, 132(%rbx)
	testl	%esi, %esi
	je	.LBB7_3
# BB#4:                                 # %if.then.14
	movq	8(%rbx), %rdi
	addl	%edx, %eax
	movl	$.L.str.1, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB7_7
# BB#5:                                 # %if.then.i
	movslq	132(%rbx), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movq	%r14, 136(%rbx)
	movslq	132(%rbx), %rdi
	addq	%r14, %rdi
	movl	124(%rbx), %edx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB7_6
.LBB7_3:                                # %if.end.26.thread
	movq	$0, 136(%rbx)
.LBB7_6:                                # %s_PNGP_reinit.exit
	movq	$0, 152(%rbx)
	xorl	%r15d, %r15d
.LBB7_7:                                # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	s_pngp_init, .Lfunc_end7-s_pngp_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.align	16, 0x90
	.type	s_pngp_process,@function
s_pngp_process:                         # @s_pngp_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	56(%rsp), %r14d
	movq	8(%rsi), %r11
	movq	(%rcx), %r10
	leaq	(%r10,%r14), %rax
	movq	%rax, (%rcx)
	leaq	(%r11,%r14), %rax
	movq	%rax, 8(%rsi)
	subq	%r14, 152(%rdi)
	movl	144(%rdi), %eax
	cmpq	$10, %rax
	ja	.LBB8_128
# BB#1:                                 # %entry
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	leaq	1(%r11), %rdi
	leaq	1(%r10), %rsi
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_129:                              # %sw.bb
	movq	%r14, %rdx
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB8_112:                              # %for.cond.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#113:                               # %for.body.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %r8
	xorl	%ebp, %ebp
	movq	%r8, %r9
	andq	%rcx, %r9
	je	.LBB8_122
# BB#114:                               # %vector.memcheck1319
	leaq	1(%r11,%rbx), %rbp
	leaq	1(%r10,%rbx), %rax
	leaq	(%rdx,%rbx), %r15
	cmpq	%rax, %rdi
	setbe	%r12b
	cmpq	%rbp, %rsi
	setbe	%r13b
	cmpq	%r15, %rdi
	setbe	%al
	cmpq	%rdx, %rbp
	setae	%r15b
	xorl	%ebp, %ebp
	testb	%r13b, %r12b
	jne	.LBB8_122
# BB#115:                               # %vector.memcheck1319
	andb	%r15b, %al
	jne	.LBB8_122
# BB#116:                               # %vector.body1295.preheader
	leaq	1(%rbx), %rax
	andq	%rcx, %rax
	addq	$-32, %rax
	movq	%rax, %r15
	shrq	$5, %r15
	xorl	%ebp, %ebp
	btq	$5, %rax
	jb	.LBB8_118
# BB#117:                               # %vector.body1295.prol
	movdqu	1(%r10), %xmm0
	movdqu	17(%r10), %xmm1
	movdqu	(%rdx), %xmm2
	movdqu	16(%rdx), %xmm3
	psubb	%xmm2, %xmm0
	psubb	%xmm3, %xmm1
	movdqu	%xmm0, 1(%r11)
	movdqu	%xmm1, 17(%r11)
	movl	$32, %ebp
.LBB8_118:                              # %vector.body1295.preheader.split
	addq	%r9, %rsi
	addq	%r9, %rdi
	leaq	(%rdx,%r9), %r12
	subl	%r9d, %r14d
	testq	%r15, %r15
	je	.LBB8_121
# BB#119:                               # %vector.body1295.preheader.split.split
	incq	%rbx
	andq	%rcx, %rbx
	subq	%rbp, %rbx
	leaq	48(%rbp,%rdx), %rax
	leaq	49(%r11,%rbp), %rcx
	leaq	49(%r10,%rbp), %rbp
.LBB8_120:                              # %vector.body1295
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbp), %xmm0
	movdqu	-32(%rbp), %xmm1
	movdqu	-48(%rax), %xmm2
	movdqu	-32(%rax), %xmm3
	psubb	%xmm2, %xmm0
	psubb	%xmm3, %xmm1
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm1, -32(%rcx)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	-16(%rax), %xmm2
	movdqu	(%rax), %xmm3
	psubb	%xmm2, %xmm0
	psubb	%xmm3, %xmm1
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm1, (%rcx)
	addq	$64, %rax
	addq	$64, %rcx
	addq	$64, %rbp
	addq	$-64, %rbx
	jne	.LBB8_120
.LBB8_121:
	movq	%r12, %rdx
	movq	%r9, %rbp
.LBB8_122:                              # %middle.block1296
	cmpq	%rbp, %r8
	je	.LBB8_128
# BB#123:                               # %for.body.preheader1542
	leal	-1(%r14), %ecx
	testb	$3, %r14b
	je	.LBB8_126
# BB#124:                               # %for.body.prol.preheader
	movl	%r14d, %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB8_125:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %al
	subb	(%rdx), %al
	movb	%al, (%rdi)
	incq	%rdi
	incq	%rdx
	incq	%rsi
	decl	%r14d
	incl	%ebp
	jne	.LBB8_125
.LBB8_126:                              # %for.body.preheader1542.split
	cmpl	$3, %ecx
	jb	.LBB8_128
	.align	16, 0x90
.LBB8_127:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %al
	subb	(%rdx), %al
	movb	%al, (%rdi)
	movb	1(%rsi), %al
	subb	1(%rdx), %al
	movb	%al, 1(%rdi)
	movb	2(%rsi), %al
	subb	2(%rdx), %al
	movb	%al, 2(%rdi)
	movb	3(%rsi), %al
	subb	3(%rdx), %al
	movb	%al, 3(%rdi)
	addq	$4, %rsi
	addq	$4, %rdx
	addq	$4, %rdi
	addl	$-4, %r14d
	jne	.LBB8_127
	jmp	.LBB8_128
.LBB8_80:                               # %for.cond.30.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#81:                                # %for.body.32.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %r8
	xorl	%eax, %eax
	movq	%r8, %r15
	andq	%rcx, %r15
	je	.LBB8_90
# BB#82:                                # %vector.memcheck823
	leaq	1(%r11,%rbx), %rax
	leaq	1(%r10,%rbx), %rdx
	leaq	(%r9,%rbx), %rbp
	cmpq	%rdx, %rdi
	setbe	%r12b
	cmpq	%rax, %rsi
	setbe	%r13b
	cmpq	%rbp, %rdi
	setbe	%dl
	cmpq	%r9, %rax
	setae	%bpl
	xorl	%eax, %eax
	testb	%r13b, %r12b
	jne	.LBB8_90
# BB#83:                                # %vector.memcheck823
	andb	%bpl, %dl
	jne	.LBB8_90
# BB#84:                                # %vector.body799.preheader
	leaq	1(%rbx), %rdx
	andq	%rcx, %rdx
	addq	$-32, %rdx
	movq	%rdx, %rbp
	shrq	$5, %rbp
	xorl	%eax, %eax
	btq	$5, %rdx
	jb	.LBB8_86
# BB#85:                                # %vector.body799.prol
	movdqu	1(%r10), %xmm0
	movdqu	17(%r10), %xmm1
	movdqu	(%r9), %xmm2
	movdqu	16(%r9), %xmm3
	psubb	%xmm2, %xmm0
	psubb	%xmm3, %xmm1
	movdqu	%xmm0, 1(%r11)
	movdqu	%xmm1, 17(%r11)
	movl	$32, %eax
.LBB8_86:                               # %vector.body799.preheader.split
	addq	%r15, %rsi
	addq	%r15, %rdi
	subl	%r15d, %r14d
	leaq	(%r9,%r15), %rdx
	testq	%rbp, %rbp
	je	.LBB8_89
# BB#87:                                # %vector.body799.preheader.split.split
	incq	%rbx
	andq	%rcx, %rbx
	subq	%rax, %rbx
	leaq	48(%rax,%r9), %rcx
	leaq	49(%r11,%rax), %rbp
	leaq	49(%r10,%rax), %rax
.LBB8_88:                               # %vector.body799
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rax), %xmm0
	movdqu	-32(%rax), %xmm1
	movdqu	-48(%rcx), %xmm2
	movdqu	-32(%rcx), %xmm3
	psubb	%xmm2, %xmm0
	psubb	%xmm3, %xmm1
	movdqu	%xmm0, -48(%rbp)
	movdqu	%xmm1, -32(%rbp)
	movdqu	-16(%rax), %xmm0
	movdqu	(%rax), %xmm1
	movdqu	-16(%rcx), %xmm2
	movdqu	(%rcx), %xmm3
	psubb	%xmm2, %xmm0
	psubb	%xmm3, %xmm1
	movdqu	%xmm0, -16(%rbp)
	movdqu	%xmm1, (%rbp)
	addq	$64, %rcx
	addq	$64, %rbp
	addq	$64, %rax
	addq	$-64, %rbx
	jne	.LBB8_88
.LBB8_89:
	movq	%rdx, %r9
	movq	%r15, %rax
.LBB8_90:                               # %middle.block800
	cmpq	%rax, %r8
	je	.LBB8_128
# BB#91:                                # %for.body.32.preheader1545
	leal	-1(%r14), %eax
	testb	$3, %r14b
	je	.LBB8_94
# BB#92:                                # %for.body.32.prol.preheader
	movl	%r14d, %ecx
	andl	$3, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB8_93:                               # %for.body.32.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %dl
	subb	(%r9), %dl
	movb	%dl, (%rdi)
	incq	%rdi
	incq	%r9
	incq	%rsi
	decl	%r14d
	incl	%ecx
	jne	.LBB8_93
.LBB8_94:                               # %for.body.32.preheader1545.split
	cmpl	$3, %eax
	jb	.LBB8_128
	.align	16, 0x90
.LBB8_95:                               # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %al
	subb	(%r9), %al
	movb	%al, (%rdi)
	movb	1(%rsi), %al
	subb	1(%r9), %al
	movb	%al, 1(%rdi)
	movb	2(%rsi), %al
	subb	2(%r9), %al
	movb	%al, 2(%rdi)
	movb	3(%rsi), %al
	subb	3(%r9), %al
	movb	%al, 3(%rdi)
	addq	$4, %rsi
	addq	$4, %r9
	addq	$4, %rdi
	addl	$-4, %r14d
	jne	.LBB8_95
	jmp	.LBB8_128
.LBB8_49:                               # %for.cond.58.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#50:                                # %for.body.60.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %rax
	addq	$28, %rcx
	xorl	%ebp, %ebp
	andq	%rax, %rcx
	je	.LBB8_58
# BB#51:                                # %vector.memcheck485
	movq	%rax, -8(%rsp)          # 8-byte Spill
	leaq	1(%r11,%rbx), %rbp
	leaq	1(%r10,%rbx), %rax
	leaq	(%rdx,%rbx), %r8
	leaq	(%r9,%rbx), %r13
	cmpq	%rax, %rdi
	setbe	%r15b
	cmpq	%rbp, %rsi
	setbe	%r12b
	cmpq	%r8, %rdi
	setbe	%al
	cmpq	%rdx, %rbp
	setae	-9(%rsp)                # 1-byte Folded Spill
	cmpq	%r13, %rdi
	setbe	%r8b
	cmpq	%r9, %rbp
	setae	%r13b
	xorl	%ebp, %ebp
	testb	%r12b, %r15b
	jne	.LBB8_57
# BB#52:                                # %vector.memcheck485
	andb	-9(%rsp), %al           # 1-byte Folded Reload
	jne	.LBB8_57
# BB#53:                                # %vector.memcheck485
	andb	%r13b, %r8b
	jne	.LBB8_57
# BB#54:                                # %vector.body456.preheader
	addq	%rcx, %rsi
	addq	%rcx, %rdi
	leaq	(%rdx,%rcx), %r8
	subl	%ecx, %r14d
	leaq	(%r9,%rcx), %rax
	incq	%r11
	incq	%r10
	incq	%rbx
	movabsq	$8589934588, %rbp       # imm = 0x1FFFFFFFC
	andq	%rbx, %rbp
	pxor	%xmm0, %xmm0
	movdqa	.LCPI8_0(%rip), %xmm1   # xmm1 = [255,255,255,255]
	.align	16, 0x90
.LBB8_55:                               # %vector.body456
                                        # =>This Inner Loop Header: Depth=1
	movd	(%r10), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movd	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	(%r9), %xmm4            # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	paddd	%xmm3, %xmm4
	psrld	$1, %xmm4
	psubd	%xmm4, %xmm2
	pand	%xmm1, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%r11)
	addq	$4, %r9
	addq	$4, %rdx
	addq	$4, %r11
	addq	$4, %r10
	addq	$-4, %rbp
	jne	.LBB8_55
# BB#56:
	movq	%r8, %rdx
	movq	%rax, %r9
	movq	%rcx, %rbp
.LBB8_57:                               # %middle.block457
	movq	-8(%rsp), %rax          # 8-byte Reload
.LBB8_58:                               # %middle.block457
	cmpq	%rbp, %rax
	je	.LBB8_128
# BB#59:                                # %for.body.60.preheader1549
	testb	$1, %r14b
	jne	.LBB8_61
# BB#60:
	movl	%r14d, %ecx
	jmp	.LBB8_62
.LBB8_18:                               # %for.cond.93.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#19:                                # %for.body.95.preheader
	leal	-1(%r14), %ebp
	leaq	1(%rbp), %rax
	addq	$28, %rcx
	xorl	%r13d, %r13d
	andq	%rax, %rcx
	je	.LBB8_28
# BB#20:                                # %vector.memcheck282
	movq	%rax, -24(%rsp)         # 8-byte Spill
	leaq	1(%r11,%rbp), %rbx
	leaq	1(%r10,%rbp), %rax
	leaq	(%rdx,%rbp), %r15
	leaq	(%r9,%rbp), %r12
	leaq	(%r8,%rbp), %r13
	cmpq	%rax, %rdi
	setbe	-8(%rsp)                # 1-byte Folded Spill
	cmpq	%rbx, %rsi
	setbe	-9(%rsp)                # 1-byte Folded Spill
	cmpq	%r15, %rdi
	setbe	%al
	cmpq	%rdx, %rbx
	setae	-25(%rsp)               # 1-byte Folded Spill
	cmpq	%r12, %rdi
	setbe	%r15b
	cmpq	%r9, %rbx
	setae	-26(%rsp)               # 1-byte Folded Spill
	cmpq	%r13, %rdi
	setbe	%r12b
	cmpq	%r8, %rbx
	setae	-27(%rsp)               # 1-byte Folded Spill
	xorl	%r13d, %r13d
	movb	-9(%rsp), %bl           # 1-byte Reload
	testb	-8(%rsp), %bl           # 1-byte Folded Reload
	jne	.LBB8_27
# BB#21:                                # %vector.memcheck282
	andb	-25(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB8_27
# BB#22:                                # %vector.memcheck282
	andb	-26(%rsp), %r15b        # 1-byte Folded Reload
	jne	.LBB8_27
# BB#23:                                # %vector.memcheck282
	andb	-27(%rsp), %r12b        # 1-byte Folded Reload
	jne	.LBB8_27
# BB#24:                                # %vector.body248.preheader
	addq	%rcx, %rsi
	addq	%rcx, %rdi
	leaq	(%rdx,%rcx), %rax
	subl	%ecx, %r14d
	leaq	(%r9,%rcx), %r15
	leaq	(%r8,%rcx), %r12
	incq	%r11
	incq	%r10
	incq	%rbp
	movabsq	$8589934588, %rbx       # imm = 0x1FFFFFFFC
	andq	%rbp, %rbx
	pxor	%xmm10, %xmm10
	pcmpeqd	%xmm8, %xmm8
	movdqa	.LCPI8_0(%rip), %xmm9   # xmm9 = [255,255,255,255]
	.align	16, 0x90
.LBB8_25:                               # %vector.body248
                                        # =>This Inner Loop Header: Depth=1
	movd	(%r10), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	(%rdx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	movdqa	%xmm5, %xmm4
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpcklbw	%xmm10, %xmm5   # xmm5 = xmm5[0],xmm10[0],xmm5[1],xmm10[1],xmm5[2],xmm10[2],xmm5[3],xmm10[3],xmm5[4],xmm10[4],xmm5[5],xmm10[5],xmm5[6],xmm10[6],xmm5[7],xmm10[7]
	punpcklwd	%xmm10, %xmm5   # xmm5 = xmm5[0],xmm10[0],xmm5[1],xmm10[1],xmm5[2],xmm10[2],xmm5[3],xmm10[3]
	movd	(%r9), %xmm6            # xmm6 = mem[0],zero,zero,zero
	movdqa	%xmm6, %xmm7
	punpcklbw	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	punpcklbw	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3],xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	punpcklwd	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3]
	movd	(%r8), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpcklbw	%xmm10, %xmm1   # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3],xmm1[4],xmm10[4],xmm1[5],xmm10[5],xmm1[6],xmm10[6],xmm1[7],xmm10[7]
	punpcklwd	%xmm10, %xmm1   # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	psubd	%xmm1, %xmm6
	psubd	%xmm1, %xmm5
	movdqa	%xmm6, %xmm1
	paddd	%xmm5, %xmm1
	movdqa	%xmm6, %xmm0
	psrad	$31, %xmm0
	paddd	%xmm0, %xmm6
	pxor	%xmm0, %xmm6
	movdqa	%xmm5, %xmm0
	psrad	$31, %xmm0
	paddd	%xmm0, %xmm5
	pxor	%xmm0, %xmm5
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm6, %xmm0
	pcmpgtd	%xmm5, %xmm0
	pcmpgtd	%xmm1, %xmm6
	por	%xmm0, %xmm6
	pcmpgtd	%xmm1, %xmm5
	movdqa	%xmm5, %xmm0
	pxor	%xmm8, %xmm0
	pandn	%xmm7, %xmm5
	pandn	%xmm2, %xmm0
	por	%xmm5, %xmm0
	pand	%xmm6, %xmm0
	pandn	%xmm4, %xmm6
	por	%xmm0, %xmm6
	psubd	%xmm6, %xmm3
	pand	%xmm9, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, (%r11)
	addq	$4, %r8
	addq	$4, %r9
	addq	$4, %rdx
	addq	$4, %r11
	addq	$4, %r10
	addq	$-4, %rbx
	jne	.LBB8_25
# BB#26:
	movq	%rax, %rdx
	movq	%r15, %r9
	movq	%r12, %r8
	movq	%rcx, %r13
.LBB8_27:                               # %middle.block249
	movq	-24(%rsp), %rax         # 8-byte Reload
.LBB8_28:                               # %middle.block249
	cmpq	%r13, %rax
	je	.LBB8_128
	.align	16, 0x90
.LBB8_29:                               # %for.body.95
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %r11b
	movzbl	(%rdx), %r10d
	movzbl	(%r9), %r15d
	movzbl	(%r8), %r12d
	movl	%r15d, %ecx
	subl	%r12d, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	movl	%r10d, %ebp
	subl	%r12d, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovll	%ebp, %ebx
	addl	%ecx, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	cmovll	%ebp, %ecx
	cmpl	%ecx, %ebx
	cmovlel	%r15d, %r12d
	cmpl	%ecx, %eax
	movb	%r12b, %cl
	jg	.LBB8_31
# BB#30:                                # %for.body.95
                                        #   in Loop: Header=BB8_29 Depth=1
	movb	%r10b, %cl
.LBB8_31:                               # %for.body.95
                                        #   in Loop: Header=BB8_29 Depth=1
	cmpl	%ebx, %eax
	jg	.LBB8_33
# BB#32:                                # %for.body.95
                                        #   in Loop: Header=BB8_29 Depth=1
	movb	%cl, %r12b
.LBB8_33:                               # %for.body.95
                                        #   in Loop: Header=BB8_29 Depth=1
	subb	%r12b, %r11b
	movb	%r11b, (%rdi)
	incq	%rdi
	incq	%rdx
	incq	%r9
	incq	%r8
	incq	%rsi
	decl	%r14d
	jne	.LBB8_29
	jmp	.LBB8_128
.LBB8_96:                               # %for.cond.17.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#97:                                # %for.body.19.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %r8
	xorl	%ebp, %ebp
	movq	%r8, %r9
	andq	%rcx, %r9
	je	.LBB8_106
# BB#98:                                # %vector.memcheck1071
	leaq	1(%r11,%rbx), %rbp
	leaq	1(%r10,%rbx), %rax
	leaq	(%rdx,%rbx), %r15
	cmpq	%rax, %rdi
	setbe	%r12b
	cmpq	%rbp, %rsi
	setbe	%r13b
	cmpq	%r15, %rdi
	setbe	%al
	cmpq	%rdx, %rbp
	setae	%r15b
	xorl	%ebp, %ebp
	testb	%r13b, %r12b
	jne	.LBB8_106
# BB#99:                                # %vector.memcheck1071
	andb	%r15b, %al
	jne	.LBB8_106
# BB#100:                               # %vector.body1047.preheader
	leaq	1(%rbx), %rax
	andq	%rcx, %rax
	addq	$-32, %rax
	movq	%rax, %r15
	shrq	$5, %r15
	xorl	%ebp, %ebp
	btq	$5, %rax
	jb	.LBB8_102
# BB#101:                               # %vector.body1047.prol
	movdqu	1(%r10), %xmm0
	movdqu	17(%r10), %xmm1
	movdqu	(%rdx), %xmm2
	movdqu	16(%rdx), %xmm3
	paddb	%xmm0, %xmm2
	paddb	%xmm1, %xmm3
	movdqu	%xmm2, 1(%r11)
	movdqu	%xmm3, 17(%r11)
	movl	$32, %ebp
.LBB8_102:                              # %vector.body1047.preheader.split
	addq	%r9, %rsi
	addq	%r9, %rdi
	leaq	(%rdx,%r9), %r12
	subl	%r9d, %r14d
	testq	%r15, %r15
	je	.LBB8_105
# BB#103:                               # %vector.body1047.preheader.split.split
	incq	%rbx
	andq	%rcx, %rbx
	subq	%rbp, %rbx
	leaq	48(%rbp,%rdx), %rax
	leaq	49(%r11,%rbp), %rcx
	leaq	49(%r10,%rbp), %rbp
.LBB8_104:                              # %vector.body1047
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbp), %xmm0
	movdqu	-32(%rbp), %xmm1
	movdqu	-48(%rax), %xmm2
	movdqu	-32(%rax), %xmm3
	paddb	%xmm0, %xmm2
	paddb	%xmm1, %xmm3
	movdqu	%xmm2, -48(%rcx)
	movdqu	%xmm3, -32(%rcx)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	-16(%rax), %xmm2
	movdqu	(%rax), %xmm3
	paddb	%xmm0, %xmm2
	paddb	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rcx)
	movdqu	%xmm3, (%rcx)
	addq	$64, %rax
	addq	$64, %rcx
	addq	$64, %rbp
	addq	$-64, %rbx
	jne	.LBB8_104
.LBB8_105:
	movq	%r12, %rdx
	movq	%r9, %rbp
.LBB8_106:                              # %middle.block1048
	cmpq	%rbp, %r8
	je	.LBB8_128
# BB#107:                               # %for.body.19.preheader1543
	leal	-1(%r14), %ecx
	testb	$3, %r14b
	je	.LBB8_110
# BB#108:                               # %for.body.19.prol.preheader
	movl	%r14d, %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB8_109:                              # %for.body.19.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdx), %al
	addb	(%rsi), %al
	movb	%al, (%rdi)
	incq	%rdi
	incq	%rdx
	incq	%rsi
	decl	%r14d
	incl	%ebp
	jne	.LBB8_109
.LBB8_110:                              # %for.body.19.preheader1543.split
	cmpl	$3, %ecx
	jb	.LBB8_128
	.align	16, 0x90
.LBB8_111:                              # %for.body.19
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdx), %al
	addb	(%rsi), %al
	movb	%al, (%rdi)
	movb	1(%rdx), %al
	addb	1(%rsi), %al
	movb	%al, 1(%rdi)
	movb	2(%rdx), %al
	addb	2(%rsi), %al
	movb	%al, 2(%rdi)
	movb	3(%rdx), %al
	addb	3(%rsi), %al
	movb	%al, 3(%rdi)
	addq	$4, %rsi
	addq	$4, %rdx
	addq	$4, %rdi
	addl	$-4, %r14d
	jne	.LBB8_111
	jmp	.LBB8_128
.LBB8_64:                               # %for.cond.44.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#65:                                # %for.body.46.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %r8
	xorl	%eax, %eax
	movq	%r8, %r15
	andq	%rcx, %r15
	je	.LBB8_74
# BB#66:                                # %vector.memcheck575
	leaq	1(%r11,%rbx), %rax
	leaq	1(%r10,%rbx), %rdx
	leaq	(%r9,%rbx), %rbp
	cmpq	%rdx, %rdi
	setbe	%r12b
	cmpq	%rax, %rsi
	setbe	%r13b
	cmpq	%rbp, %rdi
	setbe	%dl
	cmpq	%r9, %rax
	setae	%bpl
	xorl	%eax, %eax
	testb	%r13b, %r12b
	jne	.LBB8_74
# BB#67:                                # %vector.memcheck575
	andb	%bpl, %dl
	jne	.LBB8_74
# BB#68:                                # %vector.body551.preheader
	leaq	1(%rbx), %rdx
	andq	%rcx, %rdx
	addq	$-32, %rdx
	movq	%rdx, %rbp
	shrq	$5, %rbp
	xorl	%eax, %eax
	btq	$5, %rdx
	jb	.LBB8_70
# BB#69:                                # %vector.body551.prol
	movdqu	1(%r10), %xmm0
	movdqu	17(%r10), %xmm1
	movdqu	(%r9), %xmm2
	movdqu	16(%r9), %xmm3
	paddb	%xmm0, %xmm2
	paddb	%xmm1, %xmm3
	movdqu	%xmm2, 1(%r11)
	movdqu	%xmm3, 17(%r11)
	movl	$32, %eax
.LBB8_70:                               # %vector.body551.preheader.split
	addq	%r15, %rsi
	addq	%r15, %rdi
	subl	%r15d, %r14d
	leaq	(%r9,%r15), %rdx
	testq	%rbp, %rbp
	je	.LBB8_73
# BB#71:                                # %vector.body551.preheader.split.split
	incq	%rbx
	andq	%rcx, %rbx
	subq	%rax, %rbx
	leaq	48(%rax,%r9), %rcx
	leaq	49(%r11,%rax), %rbp
	leaq	49(%r10,%rax), %rax
.LBB8_72:                               # %vector.body551
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rax), %xmm0
	movdqu	-32(%rax), %xmm1
	movdqu	-48(%rcx), %xmm2
	movdqu	-32(%rcx), %xmm3
	paddb	%xmm0, %xmm2
	paddb	%xmm1, %xmm3
	movdqu	%xmm2, -48(%rbp)
	movdqu	%xmm3, -32(%rbp)
	movdqu	-16(%rax), %xmm0
	movdqu	(%rax), %xmm1
	movdqu	-16(%rcx), %xmm2
	movdqu	(%rcx), %xmm3
	paddb	%xmm0, %xmm2
	paddb	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rbp)
	movdqu	%xmm3, (%rbp)
	addq	$64, %rcx
	addq	$64, %rbp
	addq	$64, %rax
	addq	$-64, %rbx
	jne	.LBB8_72
.LBB8_73:
	movq	%rdx, %r9
	movq	%r15, %rax
.LBB8_74:                               # %middle.block552
	cmpq	%rax, %r8
	je	.LBB8_128
# BB#75:                                # %for.body.46.preheader1547
	leal	-1(%r14), %eax
	testb	$3, %r14b
	je	.LBB8_78
# BB#76:                                # %for.body.46.prol.preheader
	movl	%r14d, %ecx
	andl	$3, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB8_77:                               # %for.body.46.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r9), %dl
	addb	(%rsi), %dl
	movb	%dl, (%rdi)
	incq	%rdi
	incq	%r9
	incq	%rsi
	decl	%r14d
	incl	%ecx
	jne	.LBB8_77
.LBB8_78:                               # %for.body.46.preheader1547.split
	cmpl	$3, %eax
	jb	.LBB8_128
	.align	16, 0x90
.LBB8_79:                               # %for.body.46
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r9), %al
	addb	(%rsi), %al
	movb	%al, (%rdi)
	movb	1(%r9), %al
	addb	1(%rsi), %al
	movb	%al, 1(%rdi)
	movb	2(%r9), %al
	addb	2(%rsi), %al
	movb	%al, 2(%rdi)
	movb	3(%r9), %al
	addb	3(%rsi), %al
	movb	%al, 3(%rdi)
	addq	$4, %rsi
	addq	$4, %r9
	addq	$4, %rdi
	addl	$-4, %r14d
	jne	.LBB8_79
	jmp	.LBB8_128
.LBB8_34:                               # %for.cond.75.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#35:                                # %for.body.77.preheader
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %rax
	addq	$28, %rcx
	xorl	%ebp, %ebp
	andq	%rax, %rcx
	je	.LBB8_43
# BB#36:                                # %vector.memcheck390
	movq	%rax, -8(%rsp)          # 8-byte Spill
	leaq	1(%r11,%rbx), %rbp
	leaq	1(%r10,%rbx), %rax
	leaq	(%rdx,%rbx), %r8
	leaq	(%r9,%rbx), %r13
	cmpq	%rax, %rdi
	setbe	%r15b
	cmpq	%rbp, %rsi
	setbe	%r12b
	cmpq	%r8, %rdi
	setbe	%al
	cmpq	%rdx, %rbp
	setae	-9(%rsp)                # 1-byte Folded Spill
	cmpq	%r13, %rdi
	setbe	%r8b
	cmpq	%r9, %rbp
	setae	%r13b
	xorl	%ebp, %ebp
	testb	%r12b, %r15b
	jne	.LBB8_42
# BB#37:                                # %vector.memcheck390
	andb	-9(%rsp), %al           # 1-byte Folded Reload
	jne	.LBB8_42
# BB#38:                                # %vector.memcheck390
	andb	%r13b, %r8b
	jne	.LBB8_42
# BB#39:                                # %vector.body361.preheader
	addq	%rcx, %rsi
	addq	%rcx, %rdi
	leaq	(%rdx,%rcx), %r8
	subl	%ecx, %r14d
	leaq	(%r9,%rcx), %rax
	incq	%r11
	incq	%r10
	incq	%rbx
	movabsq	$8589934588, %rbp       # imm = 0x1FFFFFFFC
	andq	%rbx, %rbp
	pxor	%xmm0, %xmm0
	movdqa	.LCPI8_0(%rip), %xmm1   # xmm1 = [255,255,255,255]
	.align	16, 0x90
.LBB8_40:                               # %vector.body361
                                        # =>This Inner Loop Header: Depth=1
	movd	(%r10), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movd	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	(%r9), %xmm4            # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	paddd	%xmm3, %xmm4
	psrld	$1, %xmm4
	paddd	%xmm2, %xmm4
	pand	%xmm1, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%r11)
	addq	$4, %r9
	addq	$4, %rdx
	addq	$4, %r11
	addq	$4, %r10
	addq	$-4, %rbp
	jne	.LBB8_40
# BB#41:
	movq	%r8, %rdx
	movq	%rax, %r9
	movq	%rcx, %rbp
.LBB8_42:                               # %middle.block362
	movq	-8(%rsp), %rax          # 8-byte Reload
.LBB8_43:                               # %middle.block362
	cmpq	%rbp, %rax
	je	.LBB8_128
# BB#44:                                # %for.body.77.preheader1551
	testb	$1, %r14b
	jne	.LBB8_46
# BB#45:
	movl	%r14d, %ecx
	jmp	.LBB8_47
.LBB8_2:                                # %for.cond.112.preheader
	testl	%r14d, %r14d
	je	.LBB8_128
# BB#3:                                 # %for.body.114.preheader
	leal	-1(%r14), %ebp
	leaq	1(%rbp), %rax
	addq	$28, %rcx
	xorl	%r12d, %r12d
	andq	%rax, %rcx
	je	.LBB8_12
# BB#4:                                 # %vector.memcheck
	movq	%rax, -24(%rsp)         # 8-byte Spill
	leaq	1(%r11,%rbp), %rbx
	leaq	1(%r10,%rbp), %rax
	leaq	(%rdx,%rbp), %r15
	leaq	(%r9,%rbp), %r13
	leaq	(%r8,%rbp), %r12
	cmpq	%rax, %rdi
	setbe	-8(%rsp)                # 1-byte Folded Spill
	cmpq	%rbx, %rsi
	setbe	-9(%rsp)                # 1-byte Folded Spill
	cmpq	%r15, %rdi
	setbe	%al
	cmpq	%rdx, %rbx
	setae	-25(%rsp)               # 1-byte Folded Spill
	cmpq	%r13, %rdi
	setbe	%r15b
	cmpq	%r9, %rbx
	setae	-26(%rsp)               # 1-byte Folded Spill
	cmpq	%r12, %rdi
	setbe	%r13b
	cmpq	%r8, %rbx
	setae	-27(%rsp)               # 1-byte Folded Spill
	xorl	%r12d, %r12d
	movb	-9(%rsp), %bl           # 1-byte Reload
	testb	-8(%rsp), %bl           # 1-byte Folded Reload
	jne	.LBB8_11
# BB#5:                                 # %vector.memcheck
	andb	-25(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB8_11
# BB#6:                                 # %vector.memcheck
	andb	-26(%rsp), %r15b        # 1-byte Folded Reload
	jne	.LBB8_11
# BB#7:                                 # %vector.memcheck
	andb	-27(%rsp), %r13b        # 1-byte Folded Reload
	jne	.LBB8_11
# BB#8:                                 # %vector.body.preheader
	addq	%rcx, %rsi
	addq	%rcx, %rdi
	leaq	(%rdx,%rcx), %rax
	subl	%ecx, %r14d
	leaq	(%r9,%rcx), %r15
	incq	%r11
	incq	%r10
	incq	%rbp
	movabsq	$8589934588, %rbx       # imm = 0x1FFFFFFFC
	andq	%rbp, %rbx
	pxor	%xmm10, %xmm10
	pcmpeqd	%xmm8, %xmm8
	movdqa	.LCPI8_0(%rip), %xmm9   # xmm9 = [255,255,255,255]
	leaq	(%r8,%rcx), %r13
	.align	16, 0x90
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	(%r10), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movd	(%rdx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movdqa	%xmm6, %xmm5
	punpcklbw	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	punpcklbw	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3],xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	punpcklwd	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3]
	movd	(%r9), %xmm4            # xmm4 = mem[0],zero,zero,zero
	movdqa	%xmm4, %xmm7
	punpcklbw	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	punpcklbw	%xmm10, %xmm4   # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3],xmm4[4],xmm10[4],xmm4[5],xmm10[5],xmm4[6],xmm10[6],xmm4[7],xmm10[7]
	punpcklwd	%xmm10, %xmm4   # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	movd	(%r8), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpcklbw	%xmm10, %xmm1   # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3],xmm1[4],xmm10[4],xmm1[5],xmm10[5],xmm1[6],xmm10[6],xmm1[7],xmm10[7]
	punpcklwd	%xmm10, %xmm1   # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	psubd	%xmm1, %xmm4
	psubd	%xmm1, %xmm6
	movdqa	%xmm4, %xmm1
	paddd	%xmm6, %xmm1
	movdqa	%xmm4, %xmm0
	psrad	$31, %xmm0
	paddd	%xmm0, %xmm4
	pxor	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrad	$31, %xmm0
	paddd	%xmm0, %xmm6
	pxor	%xmm0, %xmm6
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pcmpgtd	%xmm1, %xmm4
	por	%xmm0, %xmm4
	pcmpgtd	%xmm1, %xmm6
	movdqa	%xmm6, %xmm0
	pxor	%xmm8, %xmm0
	pandn	%xmm7, %xmm6
	pandn	%xmm2, %xmm0
	por	%xmm6, %xmm0
	pand	%xmm4, %xmm0
	pandn	%xmm5, %xmm4
	por	%xmm0, %xmm4
	paddd	%xmm3, %xmm4
	pand	%xmm9, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%r11)
	addq	$4, %r8
	addq	$4, %r9
	addq	$4, %rdx
	addq	$4, %r11
	addq	$4, %r10
	addq	$-4, %rbx
	jne	.LBB8_9
# BB#10:
	movq	%rax, %rdx
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%rcx, %r12
.LBB8_11:                               # %middle.block
	movq	-24(%rsp), %rax         # 8-byte Reload
.LBB8_12:                               # %middle.block
	cmpq	%r12, %rax
	je	.LBB8_128
	.align	16, 0x90
.LBB8_13:                               # %for.body.114
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %r11d
	movzbl	(%r9), %r10d
	movzbl	(%r8), %ecx
	movl	%r10d, %ebp
	subl	%ecx, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovll	%ebp, %r15d
	movl	%r11d, %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	addl	%ebp, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovll	%ebx, %ebp
	cmpl	%ebp, %eax
	cmovlel	%r10d, %ecx
	cmpl	%ebp, %r15d
	movb	%cl, %r10b
	jg	.LBB8_15
# BB#14:                                # %for.body.114
                                        #   in Loop: Header=BB8_13 Depth=1
	movb	%r11b, %r10b
.LBB8_15:                               # %for.body.114
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpl	%eax, %r15d
	jg	.LBB8_17
# BB#16:                                # %for.body.114
                                        #   in Loop: Header=BB8_13 Depth=1
	movb	%r10b, %cl
.LBB8_17:                               # %for.body.114
                                        #   in Loop: Header=BB8_13 Depth=1
	addb	(%rsi), %cl
	movb	%cl, (%rdi)
	incq	%rdi
	incq	%rdx
	incq	%r9
	incq	%r8
	incq	%rsi
	decl	%r14d
	jne	.LBB8_13
	jmp	.LBB8_128
.LBB8_61:                               # %for.body.60.prol
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	movzbl	(%r9), %ebp
	addl	%ecx, %ebp
	shrl	%ebp
	subl	%ebp, %eax
	movb	%al, (%rdi)
	incq	%rdi
	incq	%rdx
	incq	%r9
	incq	%rsi
	leal	-1(%r14), %ecx
.LBB8_62:                               # %for.body.60.preheader1549.split
	cmpl	$1, %r14d
	je	.LBB8_128
	.align	16, 0x90
.LBB8_63:                               # %for.body.60
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ebp
	movzbl	(%r9), %ebx
	addl	%ebp, %ebx
	shrl	%ebx
	subl	%ebx, %eax
	movb	%al, (%rdi)
	movzbl	1(%rsi), %eax
	movzbl	1(%rdx), %ebp
	movzbl	1(%r9), %ebx
	addl	%ebp, %ebx
	shrl	%ebx
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	addq	$2, %rsi
	addq	$2, %rdx
	addq	$2, %r9
	addq	$2, %rdi
	addl	$-2, %ecx
	jne	.LBB8_63
	jmp	.LBB8_128
.LBB8_46:                               # %for.body.77.prol
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ecx
	movzbl	(%r9), %ebp
	addl	%ecx, %ebp
	shrl	%ebp
	addl	%eax, %ebp
	movb	%bpl, (%rdi)
	incq	%rdi
	incq	%rdx
	incq	%r9
	incq	%rsi
	leal	-1(%r14), %ecx
.LBB8_47:                               # %for.body.77.preheader1551.split
	cmpl	$1, %r14d
	je	.LBB8_128
	.align	16, 0x90
.LBB8_48:                               # %for.body.77
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %eax
	movzbl	(%rdx), %ebp
	movzbl	(%r9), %ebx
	addl	%ebp, %ebx
	shrl	%ebx
	addl	%eax, %ebx
	movb	%bl, (%rdi)
	movzbl	1(%rsi), %eax
	movzbl	1(%rdx), %ebp
	movzbl	1(%r9), %ebx
	addl	%ebp, %ebx
	shrl	%ebx
	addl	%eax, %ebx
	movb	%bl, 1(%rdi)
	addq	$2, %rsi
	addq	$2, %rdx
	addq	$2, %r9
	addq	$2, %rdi
	addl	$-2, %ecx
	jne	.LBB8_48
.LBB8_128:                              # %sw.epilog
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	s_pngp_process, .Lfunc_end8-s_pngp_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_129
	.quad	.LBB8_112
	.quad	.LBB8_80
	.quad	.LBB8_49
	.quad	.LBB8_18
	.quad	.LBB8_128
	.quad	.LBB8_129
	.quad	.LBB8_96
	.quad	.LBB8_64
	.quad	.LBB8_34
	.quad	.LBB8_2

	.type	st_PNGP_state,@object   # @st_PNGP_state
	.align	8
st_PNGP_state:
	.long	672                     # 0x2a0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pngp_reloc_ptrs
	.size	st_PNGP_state, 64

	.type	s_PNGPE_template,@object # @s_PNGPE_template
	.globl	s_PNGPE_template
	.align	8
s_PNGPE_template:
	.quad	st_PNGP_state
	.quad	s_PNGPE_init
	.quad	s_PNGPE_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_PNGP_release
	.quad	s_PNGP_set_defaults
	.quad	s_PNGP_reinit
	.size	s_PNGPE_template, 56

	.type	s_PNGPD_template,@object # @s_PNGPD_template
	.globl	s_PNGPD_template
	.align	8
s_PNGPD_template:
	.quad	st_PNGP_state
	.quad	s_PNGPD_init
	.quad	s_PNGPD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_PNGP_release
	.quad	s_PNGP_set_defaults
	.quad	s_PNGP_reinit
	.size	s_PNGPD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PNGPredictorEncode/Decode state"
	.size	.L.str, 32

	.type	pngp_reloc_ptrs,@object # @pngp_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pngp_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pngp_enum_ptrs
	.size	pngp_reloc_ptrs, 24

	.type	pngp_enum_ptrs,@object  # @pngp_enum_ptrs
	.align	2
pngp_enum_ptrs:
	.short	0                       # 0x0
	.short	136                     # 0x88
	.size	pngp_enum_ptrs, 4

	.type	pngp_case_needs_prev,@object # @pngp_case_needs_prev
pngp_case_needs_prev:
	.ascii	"\000\000\001\001\001\001"
	.size	pngp_case_needs_prev, 6

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"PNGPredictor prev row"
	.size	.L.str.1, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
