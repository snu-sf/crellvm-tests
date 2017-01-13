	.text
	.file	"lister.bc"
	.globl	lister_initialize
	.align	16, 0x90
	.type	lister_initialize,@function
lister_initialize:                      # @lister_initialize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rsi
	callq	tterm_initialize
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lister_initialize, .Lfunc_end0-lister_initialize
	.cfi_endproc

	.globl	lister_tterm_set
	.align	16, 0x90
	.type	lister_tterm_set,@function
lister_tterm_set:                       # @lister_tterm_set
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lister_tterm_set, .Lfunc_end1-lister_tterm_set
	.cfi_endproc

	.globl	lister_before_set
	.align	16, 0x90
	.type	lister_before_set,@function
lister_before_set:                      # @lister_before_set
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lister_before_set, .Lfunc_end2-lister_before_set
	.cfi_endproc

	.globl	lister_after_set
	.align	16, 0x90
	.type	lister_after_set,@function
lister_after_set:                       # @lister_after_set
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lister_after_set, .Lfunc_end3-lister_after_set
	.cfi_endproc

	.globl	lister_fprint_vertical
	.align	16, 0x90
	.type	lister_fprint_vertical,@function
lister_fprint_vertical:                 # @lister_fprint_vertical
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	callq	tterm_tabsize
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-120(%rbp), %rdi
	callq	init_worlds
	cmpq	$-1, -32(%rbp)
	jne	.LBB4_9
# BB#4:                                 # %if.then
	movq	$0, -32(%rbp)
.LBB4_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB4_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end
	jmp	.LBB4_9
.LBB4_9:                                # %if.end
	leaq	-56(%rbp), %r8
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	lister_vertical_format
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	divq	-104(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	divq	-104(%rbp)
	cmpq	$0, %rdx
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, -112(%rbp)
	movq	$0, -72(%rbp)
.LBB4_10:                               # %for.cond.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	movq	-72(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jae	.LBB4_26
# BB#11:                                # %for.body.9
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	$0, -152(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	%rax, -168(%rbp)
.LBB4_12:                               # %while.body
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	*%rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	-128(%rbp), %rcx
	imulq	8(%rcx), %rax
	shrq	$1, %rax
	addq	-160(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	(%rcx), %rax
	addq	-168(%rbp), %rax
	movq	%rax, -168(%rbp)
# BB#13:                                # %do.body
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB4_14:                               # %while.cond.18
                                        #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-176(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jae	.LBB4_20
# BB#15:                                # %while.body.21
                                        #   in Loop: Header=BB4_14 Depth=3
	cmpq	$0, -136(%rbp)
	jbe	.LBB4_18
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_14 Depth=3
	movq	-184(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-136(%rbp)
	movq	-176(%rbp), %rsi
	addq	$1, %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-136(%rbp)
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jbe	.LBB4_18
# BB#17:                                # %if.then.29
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	$9, %edi
	movq	-144(%rbp), %rsi
	callq	_IO_putc
	movq	-136(%rbp), %rsi
	movq	-176(%rbp), %rcx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	-136(%rbp)
	subq	%rdx, %rsi
	addq	-176(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	$32, %edi
	movq	-144(%rbp), %rsi
	callq	_IO_putc
	movq	-176(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -176(%rbp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB4_19:                               # %if.end.36
                                        #   in Loop: Header=BB4_14 Depth=3
	jmp	.LBB4_14
.LBB4_20:                               # %while.end
                                        #   in Loop: Header=BB4_12 Depth=2
	jmp	.LBB4_21
.LBB4_21:                               # %do.end
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-144(%rbp), %rsi
	callq	*%rax
	movq	-112(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.LBB4_23
# BB#22:                                # %if.then.41
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_24
.LBB4_23:                               # %if.end.42
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	-160(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB4_12
.LBB4_24:                               # %while.end.44
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	$10, %edi
	movq	-144(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -220(%rbp)        # 4-byte Spill
# BB#25:                                # %for.inc.46
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB4_10
.LBB4_26:                               # %for.end.48
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lister_fprint_vertical, .Lfunc_end4-lister_fprint_vertical
	.cfi_endproc

	.align	16, 0x90
	.type	init_worlds,@function
init_worlds:                            # @init_worlds
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	tterm_width
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB5_6
# BB#1:                                 # %if.then
	imulq	$24, -24(%rbp), %rdi
	callq	xmalloc
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	$0, -16(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	imulq	$24, %rdi, %rdi
	addq	64(%rcx), %rdi
	movq	%rax, (%rdi)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_2
.LBB5_5:                                # %for.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	32(%rcx), %rax
	movq	-8(%rbp), %rcx
	subq	40(%rcx), %rax
	movq	-8(%rbp), %rcx
	subq	48(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	addq	$1, %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movq	%rax, max_idx
	cmpq	$0, max_idx
	jne	.LBB5_8
# BB#7:                                 # %if.then.16
	movq	$1, max_idx
.LBB5_8:                                # %if.end.17
	movq	$0, -16(%rbp)
.LBB5_9:                                # %for.cond.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	movq	-16(%rbp), %rax
	cmpq	max_idx, %rax
	jae	.LBB5_16
# BB#10:                                # %for.body.20
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	64(%rcx), %rax
	movq	$1, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	64(%rdx), %rcx
	movq	%rax, 8(%rcx)
	movq	$0, -32(%rbp)
.LBB5_11:                               # %for.cond.29
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.LBB5_14
# BB#12:                                # %for.body.31
                                        #   in Loop: Header=BB5_11 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	64(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	$1, (%rcx,%rax,8)
# BB#13:                                # %for.inc.37
                                        #   in Loop: Header=BB5_11 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end.39
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %for.inc.40
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_9
.LBB5_16:                               # %for.end.42
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	init_worlds, .Lfunc_end5-init_worlds
	.cfi_endproc

	.align	16, 0x90
	.type	lister_vertical_format,@function
lister_vertical_format:                 # @lister_vertical_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	addq	$48, %rcx
	movq	%rcx, -80(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	tterm_width
	movq	-8(%rbp), %rcx
	subq	40(%rcx), %rax
	movq	-8(%rbp), %rcx
	subq	32(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	max_idx, %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB6_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movq	max_idx, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB6_3:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
.LBB6_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB6_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	*%rax
	movq	%rax, -72(%rbp)
	movq	$0, -104(%rbp)
.LBB6_6:                                # %for.cond.5
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB6_13
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB6_6 Depth=2
	movq	-104(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_11
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB6_6 Depth=2
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-80(%rbp), %rdx
	imulq	(%rdx), %rcx
	subq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-104(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	$1, %rdx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	xorl	%esi, %esi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	divq	%rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-160(%rbp), %r8         # 8-byte Reload
	divq	%r8
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %r9
	movq	-104(%rbp), %r10
	imulq	$24, %r10, %r10
	addq	-96(%rbp), %r10
	movq	(%r10), %r10
	cmpq	(%r10,%r9,8), %rax
	jbe	.LBB6_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB6_6 Depth=2
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	(%rdx,%rcx,8), %rax
	movq	-104(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-96(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-104(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-112(%rbp), %rax
	setbe	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %rax
	movq	-104(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-96(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB6_10:                               # %if.end
                                        #   in Loop: Header=BB6_6 Depth=2
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.31
                                        #   in Loop: Header=BB6_6 Depth=2
	jmp	.LBB6_12
.LBB6_12:                               # %for.inc
                                        #   in Loop: Header=BB6_6 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB6_6
.LBB6_13:                               # %for.end
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_14
.LBB6_14:                               # %for.inc.32
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB6_4
.LBB6_15:                               # %for.end.34
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB6_16:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, -56(%rbp)
	jbe	.LBB6_21
# BB#17:                                # %for.body.38
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-56(%rbp), %rax
	subq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_19
# BB#18:                                # %if.then.43
	jmp	.LBB6_21
.LBB6_19:                               # %if.end.44
                                        #   in Loop: Header=BB6_16 Depth=1
	jmp	.LBB6_20
.LBB6_20:                               # %for.inc.45
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB6_16
.LBB6_21:                               # %for.end.46
	movq	-56(%rbp), %rax
	subq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lister_vertical_format, .Lfunc_end6-lister_vertical_format
	.cfi_endproc

	.globl	lister_print_vertical
	.align	16, 0x90
	.type	lister_print_vertical,@function
lister_print_vertical:                  # @lister_print_vertical
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB7_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %r9
	callq	lister_fprint_vertical
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lister_print_vertical, .Lfunc_end7-lister_print_vertical
	.cfi_endproc

	.globl	lister_fprint_horizontal
	.align	16, 0x90
	.type	lister_fprint_horizontal,@function
lister_fprint_horizontal:               # @lister_fprint_horizontal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB8_3
.LBB8_3:                                # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	callq	tterm_tabsize
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-120(%rbp), %rdi
	callq	init_worlds
	cmpq	$-1, -32(%rbp)
	jne	.LBB8_9
# BB#4:                                 # %if.then
	movq	$0, -32(%rbp)
.LBB8_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB8_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_5
.LBB8_8:                                # %for.end
	jmp	.LBB8_9
.LBB8_9:                                # %if.end
	leaq	-56(%rbp), %r8
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	lister_horizontal_format
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	$0, -64(%rbp)
.LBB8_10:                               # %for.cond.4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB8_25
# BB#11:                                # %for.body.6
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-64(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-88(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	callq	strlen
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB8_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_10 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.12
                                        #   in Loop: Header=BB8_10 Depth=1
	movl	$10, %edi
	movq	-144(%rbp), %rsi
	callq	_IO_putc
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB8_14:                               # %if.end.15
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-72(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	-128(%rbp), %rcx
	imulq	8(%rcx), %rax
	shrq	$1, %rax
	addq	-104(%rbp), %rax
	movq	%rax, -104(%rbp)
# BB#15:                                # %do.body
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB8_16:                               # %while.cond
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jae	.LBB8_22
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB8_16 Depth=2
	cmpq	$0, -136(%rbp)
	jbe	.LBB8_20
# BB#18:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB8_16 Depth=2
	movq	-168(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-136(%rbp)
	movq	-160(%rbp), %rsi
	addq	$1, %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-136(%rbp)
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jbe	.LBB8_20
# BB#19:                                # %if.then.23
                                        #   in Loop: Header=BB8_16 Depth=2
	movl	$9, %edi
	movq	-144(%rbp), %rsi
	callq	_IO_putc
	movq	-136(%rbp), %rsi
	movq	-160(%rbp), %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	-136(%rbp)
	subq	%rdx, %rsi
	addq	-160(%rbp), %rsi
	movq	%rsi, -160(%rbp)
	jmp	.LBB8_21
.LBB8_20:                               # %if.else
                                        #   in Loop: Header=BB8_16 Depth=2
	movl	$32, %edi
	movq	-144(%rbp), %rsi
	callq	_IO_putc
	movq	-160(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -160(%rbp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB8_21:                               # %if.end.30
                                        #   in Loop: Header=BB8_16 Depth=2
	jmp	.LBB8_16
.LBB8_22:                               # %while.end
                                        #   in Loop: Header=BB8_10 Depth=1
	jmp	.LBB8_23
.LBB8_23:                               # %do.end
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-144(%rbp), %rsi
	callq	*%rax
	movq	-104(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	(%rcx), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
# BB#24:                                # %for.inc.35
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_10
.LBB8_25:                               # %for.end.37
	movl	$10, %edi
	movq	-144(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -204(%rbp)        # 4-byte Spill
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lister_fprint_horizontal, .Lfunc_end8-lister_fprint_horizontal
	.cfi_endproc

	.align	16, 0x90
	.type	lister_horizontal_format,@function
lister_horizontal_format:               # @lister_horizontal_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	addq	$48, %rcx
	movq	%rcx, -80(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	tterm_width
	movq	-8(%rbp), %rcx
	subq	40(%rcx), %rax
	movq	-8(%rbp), %rcx
	subq	32(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	max_idx, %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB9_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movq	max_idx, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
.LBB9_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB9_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	*%rax
	movq	%rax, -72(%rbp)
	movq	$0, -104(%rbp)
.LBB9_6:                                # %for.cond.5
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB9_13
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB9_6 Depth=2
	movq	-104(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_11
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB9_6 Depth=2
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-80(%rbp), %rdx
	imulq	(%rdx), %rcx
	subq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx
	addq	$1, %rcx
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	%rcx
	movq	%rdx, -120(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	-96(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	(%rdi,%rdx,8), %rcx
	jbe	.LBB9_10
# BB#9:                                 # %if.then.13
                                        #   in Loop: Header=BB9_6 Depth=2
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	(%rdx,%rcx,8), %rax
	movq	-104(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-96(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-104(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-112(%rbp), %rax
	setbe	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %rax
	movq	-104(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-96(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB9_10:                               # %if.end
                                        #   in Loop: Header=BB9_6 Depth=2
	jmp	.LBB9_11
.LBB9_11:                               # %if.end.29
                                        #   in Loop: Header=BB9_6 Depth=2
	jmp	.LBB9_12
.LBB9_12:                               # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB9_6
.LBB9_13:                               # %for.end
                                        #   in Loop: Header=BB9_4 Depth=1
	jmp	.LBB9_14
.LBB9_14:                               # %for.inc.30
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB9_4
.LBB9_15:                               # %for.end.32
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB9_16:                               # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, -56(%rbp)
	jbe	.LBB9_21
# BB#17:                                # %for.body.36
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	-56(%rbp), %rax
	subq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_19
# BB#18:                                # %if.then.41
	jmp	.LBB9_21
.LBB9_19:                               # %if.end.42
                                        #   in Loop: Header=BB9_16 Depth=1
	jmp	.LBB9_20
.LBB9_20:                               # %for.inc.43
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB9_16
.LBB9_21:                               # %for.end.44
	movq	-56(%rbp), %rax
	subq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	lister_horizontal_format, .Lfunc_end9-lister_horizontal_format
	.cfi_endproc

	.globl	lister_print_horizontal
	.align	16, 0x90
	.type	lister_print_horizontal,@function
lister_print_horizontal:                # @lister_print_horizontal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB10_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %r9
	callq	lister_fprint_horizontal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	lister_print_horizontal, .Lfunc_end10-lister_print_horizontal
	.cfi_endproc

	.globl	lister_fprint_separated
	.align	16, 0x90
	.type	lister_fprint_separated,@function
lister_fprint_separated:                # @lister_fprint_separated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB11_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	callq	strlen
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	callq	tterm_tabsize
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	callq	tterm_width
	movq	-72(%rbp), %rdi
	subq	40(%rdi), %rax
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
# BB#4:                                 # %do.body
	movq	$0, -136(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB11_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jae	.LBB11_11
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB11_5 Depth=1
	cmpq	$0, -104(%rbp)
	jbe	.LBB11_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-144(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-104(%rbp)
	movq	-136(%rbp), %rsi
	addq	$1, %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-104(%rbp)
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jbe	.LBB11_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	$9, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movq	-104(%rbp), %rsi
	movq	-136(%rbp), %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	-104(%rbp)
	subq	%rdx, %rsi
	addq	-136(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	jmp	.LBB11_10
.LBB11_9:                               # %if.else
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	$32, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movq	-136(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -136(%rbp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB11_10:                              # %if.end
                                        #   in Loop: Header=BB11_5 Depth=1
	jmp	.LBB11_5
.LBB11_11:                              # %while.end
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	$0, -56(%rbp)
.LBB11_13:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_24 Depth 2
                                        #     Child Loop BB11_34 Depth 2
	cmpq	$-1, -32(%rbp)
	je	.LBB11_15
# BB#14:                                # %cond.true.14
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB11_16
.LBB11_15:                              # %cond.false.16
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -204(%rbp)        # 4-byte Spill
.LBB11_16:                              # %cond.end.19
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB11_48
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	*%rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB11_19
# BB#18:                                # %cond.true.28
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB11_20
.LBB11_19:                              # %cond.false.29
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB11_20:                              # %cond.end.30
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB11_43
# BB#21:                                # %if.then.34
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	8(%rcx), %rax
	cmpq	-120(%rbp), %rax
	jbe	.LBB11_32
# BB#22:                                # %if.then.38
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	$10, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -220(%rbp)        # 4-byte Spill
# BB#23:                                # %do.body.40
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	$0, -152(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -160(%rbp)
.LBB11_24:                              # %while.cond.44
                                        #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jae	.LBB11_30
# BB#25:                                # %while.body.47
                                        #   in Loop: Header=BB11_24 Depth=2
	cmpq	$0, -104(%rbp)
	jbe	.LBB11_28
# BB#26:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB11_24 Depth=2
	movq	-160(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-104(%rbp)
	movq	-152(%rbp), %rsi
	addq	$1, %rsi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-104(%rbp)
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jbe	.LBB11_28
# BB#27:                                # %if.then.56
                                        #   in Loop: Header=BB11_24 Depth=2
	movl	$9, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movq	-104(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	-104(%rbp)
	subq	%rdx, %rsi
	addq	-152(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	jmp	.LBB11_29
.LBB11_28:                              # %if.else.61
                                        #   in Loop: Header=BB11_24 Depth=2
	movl	$32, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movq	-152(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -152(%rbp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB11_29:                              # %if.end.64
                                        #   in Loop: Header=BB11_24 Depth=2
	jmp	.LBB11_24
.LBB11_30:                              # %while.end.65
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_31
.LBB11_31:                              # %do.end.66
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-64(%rbp), %rax
	subq	-128(%rbp), %rax
	movq	-72(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB11_42
.LBB11_32:                              # %if.else.70
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_33
.LBB11_33:                              # %do.body.71
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-128(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, -176(%rbp)
.LBB11_34:                              # %while.cond.76
                                        #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jae	.LBB11_40
# BB#35:                                # %while.body.79
                                        #   in Loop: Header=BB11_34 Depth=2
	cmpq	$0, -104(%rbp)
	jbe	.LBB11_38
# BB#36:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB11_34 Depth=2
	movq	-176(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-104(%rbp)
	movq	-168(%rbp), %rsi
	addq	$1, %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-104(%rbp)
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jbe	.LBB11_38
# BB#37:                                # %if.then.88
                                        #   in Loop: Header=BB11_34 Depth=2
	movl	$9, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movq	-104(%rbp), %rsi
	movq	-168(%rbp), %rcx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	-104(%rbp)
	subq	%rdx, %rsi
	addq	-168(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	jmp	.LBB11_39
.LBB11_38:                              # %if.else.93
                                        #   in Loop: Header=BB11_34 Depth=2
	movl	$32, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movq	-168(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB11_39:                              # %if.end.96
                                        #   in Loop: Header=BB11_34 Depth=2
	jmp	.LBB11_34
.LBB11_40:                              # %while.end.97
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_41
.LBB11_41:                              # %do.end.98
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB11_42:                              # %if.end.101
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_43
.LBB11_43:                              # %if.end.102
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-112(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rax
	addq	$1, %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB11_45
# BB#44:                                # %cond.true.107
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB11_46
.LBB11_45:                              # %cond.false.109
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB11_46:                              # %cond.end.111
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	%eax, -268(%rbp)        # 4-byte Spill
# BB#47:                                # %for.inc
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_13
.LBB11_48:                              # %for.end
	movl	$10, %edi
	movq	-112(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -272(%rbp)        # 4-byte Spill
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end11:
	.size	lister_fprint_separated, .Lfunc_end11-lister_fprint_separated
	.cfi_endproc

	.globl	lister_print_separated
	.align	16, 0x90
	.type	lister_print_separated,@function
lister_print_separated:                 # @lister_print_separated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB12_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movabsq	$lister_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %r9
	callq	lister_fprint_separated
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	lister_print_separated, .Lfunc_end12-lister_print_separated
	.cfi_endproc

	.type	lister_default,@object  # @lister_default
	.data
	.align	8
lister_default:
	.quad	0
	.quad	0
	.quad	strlen
	.quad	fputs
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	2                       # 0x2
	.quad	0                       # 0x0
	.quad	0
	.quad	.L.str
	.quad	2                       # 0x2
	.quad	.L.str.1
	.size	lister_default, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	","
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"."
	.size	.L.str.1, 2

	.type	max_idx,@object         # @max_idx
	.local	max_idx
	.comm	max_idx,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
