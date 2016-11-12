	.text
	.file	"gsicc_replacecm.bc"
	.globl	gsicc_rcm_get_link
	.align	16, 0x90
	.type	gsicc_rcm_get_link,@function
gsicc_rcm_get_link:                     # @gsicc_rcm_get_link
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
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
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
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	24(%rbx), %rax
	movq	200(%rax), %r12
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB0_3
# BB#1:                                 # %if.then
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_3
# BB#2:                                 # %if.then.2
	movl	160(%rax), %ebp
.LBB0_3:                                # %if.end.4
	movq	%rbx, %rdi
	callq	fwd_uses_fwd_cmap_procs
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB0_5
# BB#4:                                 # %if.then.6
	callq	fwd_get_target_cmap_procs
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	callq	*1536(%rbx)
.LBB0_6:                                # %if.end.10
	movq	%rax, %r13
	movq	$2, 72(%rsp)
	movslq	100(%rbx), %rax
	movq	%rax, 64(%rsp)
	movl	%r15d, %ecx
	movq	%rcx, 56(%rsp)
	shlq	$8, %rax
	leaq	8192(%rax,%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	344(%r14), %rdi
	movaps	48(%rsp), %xmm0
	movaps	64(%rsp), %xmm1
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	gsicc_findcachelink
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	testq	%rcx, %rcx
	jne	.LBB0_24
# BB#7:                                 # %if.end.21
	movq	344(%r14), %rdi
	movaps	48(%rsp), %xmm0
	movaps	64(%rsp), %xmm1
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	leaq	80(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	gsicc_alloc_link_entry
	testl	%eax, %eax
	movq	80(%rsp), %rcx
	jne	.LBB0_24
# BB#8:                                 # %if.end.21
	testq	%rcx, %rcx
	je	.LBB0_24
# BB#9:                                 # %if.end.30
	movq	344(%r14), %rax
	movq	48(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	80(%rsp), %rax
	movq	$gsicc_rcm_transform_color_buffer, 8(%rax)
	movq	80(%rsp), %rax
	movq	$gsicc_rcm_transform_color, 16(%rax)
	movq	80(%rsp), %rax
	movq	$gsicc_rcm_freelink, 24(%rax)
	movq	80(%rsp), %rax
	movaps	48(%rsp), %xmm0
	movaps	64(%rsp), %xmm1
	movups	%xmm1, 56(%rax)
	movups	%xmm0, 40(%rax)
	movl	$0, 116(%rax)
	movl	$48, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	callq	*64(%r12)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_24
# BB#10:                                # %if.end.41
	movq	80(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	%r12, 8(%rax)
	movl	100(%rbx), %edx
	cmpl	$65, %edx
	movl	$64, %ecx
	cmovll	%edx, %ecx
	cmpl	$64, %edx
	jl	.LBB0_12
# BB#11:                                # %if.end.41
	movb	$64, %dl
.LBB0_12:                               # %if.end.41
	movb	%dl, (%rax)
	movl	%r15d, 4(%rax)
	movq	16(%r13), %rdx
	movq	%rdx, 32(%rax)
	movups	(%r13), %xmm0
	movups	%xmm0, 16(%rax)
	leal	-1(%r15), %edx
	cmpl	$5, %edx
	ja	.LBB0_16
# BB#13:                                # %if.end.41
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_14:                               # %sw.bb.56
	movb	$3, 1(%rax)
	movl	$3, %edx
	jmp	.LBB0_18
.LBB0_16:                               # %sw.default
	movq	80(%rsp), %rdi
	callq	*24(%rdi)
	xorl	%ecx, %ecx
	jmp	.LBB0_24
.LBB0_17:                               # %sw.bb
	movb	$1, 1(%rax)
	movl	$1, %edx
	jmp	.LBB0_18
.LBB0_15:                               # %sw.bb.58
	movb	$4, 1(%rax)
	movl	$4, %edx
.LBB0_18:                               # %sw.epilog
	movq	$0, 40(%rax)
	movq	80(%rsp), %rsi
	movl	%edx, 164(%rsi)
	movzbl	%cl, %ecx
	movl	%ecx, 168(%rsi)
	movq	%rax, (%rsi)
	movq	80(%rsp), %rdi
	movq	64(%rsp), %rax
	movq	%rax, 56(%rdi)
	movaps	48(%rsp), %xmm0
	movups	%xmm0, 40(%rdi)
	movq	72(%rsp), %rax
	movq	%rax, 64(%rdi)
	movq	$0, 108(%rdi)
	movq	56(%rsp), %rax
	cmpq	64(%rsp), %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 116(%rdi)
	movl	$1, 120(%rdi)
	cmpl	$1, %r15d
	je	.LBB0_21
# BB#19:                                # %sw.epilog
	testl	%ebp, %ebp
	je	.LBB0_21
# BB#20:                                # %if.then.91
	callq	gsicc_mcm_set_link
	movq	80(%rsp), %rdi
.LBB0_21:                               # %while.cond.preheader
	cmpl	$0, 104(%rdi)
	jle	.LBB0_23
	.align	16, 0x90
.LBB0_22:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rdi), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_signal
	movq	80(%rsp), %rdi
	movl	104(%rdi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 104(%rdi)
	cmpl	$1, %eax
	jg	.LBB0_22
.LBB0_23:                               # %while.end
	movq	344(%r14), %rax
	movq	48(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	80(%rsp), %rcx
.LBB0_24:                               # %cleanup
	movq	%rcx, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gsicc_rcm_get_link, .Lfunc_end0-gsicc_rcm_get_link
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_17
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_14

	.text
	.align	16, 0x90
	.type	gsicc_rcm_transform_color_buffer,@function
gsicc_rcm_transform_color_buffer:       # @gsicc_rcm_transform_color_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 224
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 16(%rdx)
	movl	16(%rcx), %eax
	je	.LBB1_28
# BB#1:                                 # %if.then
	testl	%eax, %eax
	je	.LBB1_53
# BB#2:                                 # %if.then.3
	movq	%rcx, %r15
	movzbl	(%rdx), %r11d
	testq	%r11, %r11
	movslq	20(%rdx), %r12
	movq	%rdx, %rax
	je	.LBB1_9
# BB#3:                                 # %for.body.lr.ph.i
	leaq	-1(%r11), %rcx
	xorl	%edx, %edx
	testb	$3, %r11b
	je	.LBB1_6
# BB#4:                                 # %for.body.i.prol.preheader
	movzbl	%r11b, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	movq	%r8, %rdi
	.align	16, 0x90
.LBB1_5:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, 128(%rsp,%rdx,8)
	incq	%rdx
	addq	%r12, %rdi
	cmpq	%rdx, %rsi
	jne	.LBB1_5
.LBB1_6:                                # %for.body.lr.ph.i.split
	cmpq	$3, %rcx
	jb	.LBB1_9
# BB#7:                                 # %for.body.lr.ph.i.split.split
	movq	%r11, %rsi
	subq	%rdx, %rsi
	leaq	3(%rdx), %r14
	leaq	152(%rsp,%rdx,8), %rbp
	imulq	%r12, %r14
	leaq	(,%r12,4), %r10
	leaq	2(%rdx), %rcx
	imulq	%r12, %rcx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	incq	%rdx
	imulq	%r12, %rdx
	.align	16, 0x90
.LBB1_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rdi), %rbx
	movq	%rbx, -24(%rbp)
	leaq	(%r8,%rdx), %rbx
	movq	%rbx, -16(%rbp)
	leaq	(%r8,%rcx), %rbx
	movq	%rbx, -8(%rbp)
	leaq	(%r8,%r14), %rbx
	movq	%rbx, (%rbp)
	addq	$32, %rbp
	addq	%r10, %r8
	addq	$-4, %rsi
	jne	.LBB1_8
.LBB1_9:                                # %for.cond.2.preheader.i
	movzbl	(%r15), %edx
	testq	%rdx, %rdx
	je	.LBB1_16
# BB#10:                                # %for.body.7.lr.ph.i
	leaq	-1(%rdx), %rcx
	xorl	%esi, %esi
	testb	$3, %dl
	je	.LBB1_13
# BB#11:                                # %for.body.7.i.prol.preheader
	movl	%edx, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	movq	%r9, %rbp
	.align	16, 0x90
.LBB1_12:                               # %for.body.7.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, 96(%rsp,%rsi,8)
	incq	%rsi
	addq	%r12, %rbp
	cmpq	%rsi, %rdi
	jne	.LBB1_12
.LBB1_13:                               # %for.body.7.lr.ph.i.split
	cmpq	$3, %rcx
	jb	.LBB1_16
# BB#14:                                # %for.body.7.lr.ph.i.split.split
	subq	%rsi, %rdx
	leaq	3(%rsi), %r14
	leaq	120(%rsp,%rsi,8), %rbp
	imulq	%r12, %r14
	leaq	(,%r12,4), %r10
	leaq	2(%rsi), %rcx
	imulq	%r12, %rcx
	movq	%rsi, %rdi
	imulq	%r12, %rdi
	incq	%rsi
	imulq	%r12, %rsi
	.align	16, 0x90
.LBB1_15:                               # %for.body.7.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r9,%rdi), %rbx
	movq	%rbx, -24(%rbp)
	leaq	(%r9,%rsi), %rbx
	movq	%rbx, -16(%rbp)
	leaq	(%r9,%rcx), %rbx
	movq	%rbx, -8(%rbp)
	leaq	(%r9,%r14), %rbx
	movq	%rbx, (%rbp)
	addq	$32, %rbp
	addq	%r10, %r9
	addq	$-4, %rdx
	jne	.LBB1_15
.LBB1_16:                               # %for.cond.17.preheader.i
	testl	%r12d, %r12d
	movq	%rax, %rbp
	jle	.LBB1_53
# BB#17:                                # %for.cond.22.preheader.lr.ph.i
	xorl	%r12d, %r12d
	leaq	88(%rsp), %r14
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %r13          # 8-byte Reload
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_27:                               # %for.inc.61.for.cond.22.preheader_crit_edge.i
                                        #   in Loop: Header=BB1_18 Depth=1
	movb	(%rbp), %r11b
	movq	%rbx, %rsi
.LBB1_18:                               # %for.cond.22.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_25 Depth 2
	testb	%r11b, %r11b
	je	.LBB1_24
# BB#19:                                # %for.body.27.lr.ph.i
                                        #   in Loop: Header=BB1_18 Depth=1
	movzbl	1(%rbp), %r8d
	testb	$1, %r11b
	movl	$0, %ecx
	je	.LBB1_21
# BB#20:                                # %for.body.27.i.prol
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	128(%rsp), %rdx
	movb	(%rdx), %al
	movb	%al, 92(%rsp)
	addq	%r8, %rdx
	movq	%rdx, 128(%rsp)
	movl	$1, %ecx
.LBB1_21:                               # %for.body.27.lr.ph.i.split
                                        #   in Loop: Header=BB1_18 Depth=1
	movzbl	%r11b, %r9d
	cmpl	$1, %r9d
	je	.LBB1_24
# BB#22:                                # %for.body.27.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_18 Depth=1
	subq	%rcx, %r9
	leaq	93(%rsp), %rax
	leaq	(%rax,%rcx), %rdx
	leaq	136(%rsp), %rax
	leaq	(%rax,%rcx,8), %rcx
	.align	16, 0x90
.LBB1_23:                               # %for.body.27.i
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rcx), %rax
	movb	(%rax), %bl
	movb	%bl, -1(%rdx)
	addq	%r8, %rax
	movq	%rax, -8(%rcx)
	movq	(%rcx), %rax
	movb	(%rax), %bl
	movb	%bl, (%rdx)
	addq	%r8, %rax
	movq	%rax, (%rcx)
	addq	$2, %rdx
	addq	$16, %rcx
	addq	$-2, %r9
	jne	.LBB1_23
.LBB1_24:                               # %for.end.39.i
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$1, %r8d
	movl	$1, %r9d
	movq	%r13, %rdi
	movq	%rsi, %rbx
	leaq	92(%rsp), %rdx
	movq	%r14, %rcx
	callq	gsicc_rcm_transform_general
	cmpb	$0, (%r15)
	movl	$0, %eax
	je	.LBB1_26
	.align	16, 0x90
.LBB1_25:                               # %for.body.47.i
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	88(%rsp,%rax), %cl
	movq	96(%rsp,%rax,8), %rdx
	movb	%cl, (%rdx)
	movzbl	1(%r15), %ecx
	addq	%rdx, %rcx
	movq	%rcx, 96(%rsp,%rax,8)
	incq	%rax
	movzbl	(%r15), %ecx
	cmpq	%rcx, %rax
	jl	.LBB1_25
.LBB1_26:                               # %for.inc.61.i
                                        #   in Loop: Header=BB1_18 Depth=1
	incl	%r12d
	cmpl	20(%rbp), %r12d
	jl	.LBB1_27
	jmp	.LBB1_53
.LBB1_28:                               # %if.else.4
	testl	%eax, %eax
	je	.LBB1_47
# BB#29:                                # %if.then.7
	movzbl	1(%rdx), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpl	$0, 28(%rdx)
	jle	.LBB1_53
# BB#30:                                # %for.body.lr.ph.i.17
	movb	1(%rcx), %bl
	movzbl	%bl, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movzbl	(%rdx), %eax
	imulq	48(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	32(%rdx), %eax
	movslq	20(%rcx), %r13
	leaq	(%r13,%r13), %r14
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	jmp	.LBB1_31
	.align	16, 0x90
.LBB1_46:                               # %for.inc.68.for.body_crit_edge.i
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movslq	24(%rcx), %rbp
	addq	%rbp, %r9
	movslq	24(%rdx), %rbp
	movq	16(%rsp), %r8           # 8-byte Reload
	addq	%rbp, %r8
	movb	1(%rcx), %bl
.LBB1_31:                               # %for.body.i.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
                                        #       Child Loop BB1_39 Depth 3
                                        #     Child Loop BB1_42 Depth 2
                                        #       Child Loop BB1_43 Depth 3
	movzbl	%bl, %ecx
	cmpl	$1, %ecx
	jne	.LBB1_32
# BB#41:                                # %for.cond.10.preheader.i
                                        #   in Loop: Header=BB1_31 Depth=1
	testl	%eax, %eax
	movq	%r9, %r15
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	$0, %ebx
	movq	%r8, %rbp
	movq	%r8, 16(%rsp)           # 8-byte Spill
	jle	.LBB1_45
	.align	16, 0x90
.LBB1_42:                               # %for.body.13.i
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_43 Depth 3
	movq	%rdx, %r12
	movq	%rbp, %rdx
	leaq	128(%rsp), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	callq	gsicc_rcm_transform_general
	movq	72(%rsp), %rsi          # 8-byte Reload
	cmpb	$0, (%rsi)
	movq	%r15, %rax
	movl	$0, %ecx
	je	.LBB1_44
	.align	16, 0x90
.LBB1_43:                               # %for.body.19.i
                                        #   Parent Loop BB1_31 Depth=1
                                        #     Parent Loop BB1_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	128(%rsp,%rcx), %dl
	movb	%dl, (%rax)
	incq	%rcx
	movzbl	(%rsi), %edx
	addq	%r13, %rax
	cmpq	%rdx, %rcx
	jl	.LBB1_43
.LBB1_44:                               # %for.end.i.20
                                        #   in Loop: Header=BB1_42 Depth=2
	addq	32(%rsp), %rbp          # 8-byte Folded Reload
	incq	%rbx
	movq	%r12, %rdx
	movslq	32(%rdx), %rax
	incq	%r15
	cmpq	%rax, %rbx
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	jl	.LBB1_42
	jmp	.LBB1_45
	.align	16, 0x90
.LBB1_32:                               # %for.cond.34.preheader.i
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB1_45
# BB#33:                                # %for.body.38.lr.ph.i
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	24(%rsp), %rbp          # 8-byte Reload
	xorl	%r12d, %r12d
	movq	16(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB1_34:                               # %for.body.38.i
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_39 Depth 3
	movq	%r15, %rdx
	leaq	128(%rsp), %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	40(%rsp), %r9d          # 4-byte Reload
	callq	gsicc_rcm_transform_general
	movq	72(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax), %eax
	testq	%rax, %rax
	je	.LBB1_40
# BB#35:                                # %for.body.46.lr.ph.i
                                        #   in Loop: Header=BB1_34 Depth=2
	testb	$1, %al
	movl	$0, %esi
	je	.LBB1_37
# BB#36:                                # %for.body.46.i.prol
                                        #   in Loop: Header=BB1_34 Depth=2
	movw	128(%rsp), %cx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movw	%cx, (%rdx,%r12,2)
	movl	$1, %esi
.LBB1_37:                               # %for.body.46.lr.ph.i.split
                                        #   in Loop: Header=BB1_34 Depth=2
	cmpl	$1, %eax
	je	.LBB1_40
# BB#38:                                # %for.body.46.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_34 Depth=2
	subq	%rsi, %rax
	movq	%r14, %rcx
	imulq	%rsi, %rcx
	leaq	(%rcx,%rbp), %rcx
	leaq	1(%rsi), %rdx
	imulq	%r14, %rdx
	leaq	(%rdx,%rbp), %rdx
	leaq	130(%rsp), %rdi
	leaq	(%rdi,%rsi,2), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB1_39:                               # %for.body.46.i
                                        #   Parent Loop BB1_31 Depth=1
                                        #     Parent Loop BB1_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	-2(%rsi), %bx
	movw	%bx, (%rcx,%rdi,2)
	movw	(%rsi), %bx
	movw	%bx, (%rdx,%rdi,2)
	addq	%r14, %rdi
	addq	$4, %rsi
	addq	$-2, %rax
	jne	.LBB1_39
.LBB1_40:                               # %for.end.56.i
                                        #   in Loop: Header=BB1_34 Depth=2
	addq	32(%rsp), %r15          # 8-byte Folded Reload
	incq	%r12
	movq	80(%rsp), %rdx          # 8-byte Reload
	movslq	32(%rdx), %rax
	addq	$2, %rbp
	cmpq	%rax, %r12
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	jl	.LBB1_34
.LBB1_45:                               # %for.inc.68.i
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	8(%rsp), %rbp           # 8-byte Reload
	incl	%ebp
	cmpl	28(%rdx), %ebp
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	jl	.LBB1_46
	jmp	.LBB1_53
.LBB1_47:                               # %if.else.8
	movzbl	1(%rdx), %r15d
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movzbl	1(%rcx), %r12d
	movl	28(%rdx), %r11d
	testl	%r11d, %r11d
	jle	.LBB1_53
# BB#48:                                # %for.cond.8.preheader.lr.ph.i
	movzbl	(%rcx), %eax
	imulq	%r12, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movzbl	(%rdx), %eax
	imulq	%r15, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	32(%rdx), %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_49:                               # %for.cond.8.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	movl	$0, %r14d
	movq	%r9, %rbp
	movq	%r8, %rbx
	jle	.LBB1_52
	.align	16, 0x90
.LBB1_50:                               # %for.body.11.i
                                        #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	movq	%rsi, %r13
	movq	%rdi, %r15
	callq	gsicc_rcm_transform_general
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%r15, %rdi
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%r13, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	addq	%rcx, %rbx
	addq	%rax, %rbp
	incl	%r14d
	movl	32(%rdx), %eax
	cmpl	%eax, %r14d
	jl	.LBB1_50
# BB#51:                                # %for.cond.8.for.end_crit_edge.i
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	28(%rdx), %r11d
.LBB1_52:                               # %for.end.i
                                        #   in Loop: Header=BB1_49 Depth=1
	movslq	24(%rdx), %rcx
	movq	16(%rsp), %r8           # 8-byte Reload
	addq	%rcx, %r8
	movq	72(%rsp), %rcx          # 8-byte Reload
	movslq	24(%rcx), %rcx
	movq	24(%rsp), %r9           # 8-byte Reload
	addq	%rcx, %r9
	movl	8(%rsp), %ecx           # 4-byte Reload
	incl	%ecx
	cmpl	%r11d, %ecx
	jl	.LBB1_49
.LBB1_53:                               # %if.end.10
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gsicc_rcm_transform_color_buffer, .Lfunc_end1-gsicc_rcm_transform_color_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gsicc_rcm_transform_color,@function
gsicc_rcm_transform_color:              # @gsicc_rcm_transform_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%r8d, %r9d
	jmp	gsicc_rcm_transform_general # TAILCALL
.Lfunc_end2:
	.size	gsicc_rcm_transform_color, .Lfunc_end2-gsicc_rcm_transform_color
	.cfi_endproc

	.align	16, 0x90
	.type	gsicc_rcm_freelink,@function
gsicc_rcm_freelink:                     # @gsicc_rcm_freelink
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rsi
	movq	8(%rsi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.1, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	gsicc_rcm_freelink, .Lfunc_end3-gsicc_rcm_freelink
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	32760                   # 0x7ff8
	.long	32760                   # 0x7ff8
	.long	32760                   # 0x7ff8
	.long	32760                   # 0x7ff8
.LCPI4_1:
	.short	32760                   # 0x7ff8
	.short	32760                   # 0x7ff8
	.short	32760                   # 0x7ff8
	.short	32760                   # 0x7ff8
	.short	32760                   # 0x7ff8
	.short	32760                   # 0x7ff8
	.short	32760                   # 0x7ff8
	.short	32760                   # 0x7ff8
.LCPI4_2:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.align	16, 0x90
	.type	gsicc_rcm_transform_general,@function
gsicc_rcm_transform_general:            # @gsicc_rcm_transform_general
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 192
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rcx, %r12
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	movq	(%rsi), %r10
	movzbl	1(%r10), %r11d
	movzbl	(%r10), %r13d
	cmpl	$2, %r8d
	jne	.LBB4_1
# BB#9:                                 # %if.then
	testb	%r11b, %r11b
	je	.LBB4_17
# BB#10:                                # %for.body.lr.ph
	leal	(%r11,%r15), %r9d
	andq	%r15, %r9
	incq	%r9
	movl	%r11d, %eax
	andl	$15, %eax
	xorl	%esi, %esi
	movq	%r9, %r8
	subq	%rax, %r8
	je	.LBB4_14
# BB#11:                                # %vector.body83.preheader
	leaq	16(%rdx), %rsi
	leaq	144(%rsp), %rcx
	leal	-1(%r11), %eax
	incq	%rax
	movl	%r11d, %ebx
	andl	$15, %ebx
	subq	%rbx, %rax
	movdqa	.LCPI4_1(%rip), %xmm0   # xmm0 = [32760,32760,32760,32760,32760,32760,32760,32760]
	.align	16, 0x90
.LBB4_12:                               # %vector.body83
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	movdqa	%xmm2, %xmm4
	psrlw	$1, %xmm4
	psrlw	$13, %xmm1
	psrlw	$13, %xmm2
	movdqa	%xmm0, %xmm5
	psubw	%xmm3, %xmm5
	movdqa	%xmm0, %xmm3
	psubw	%xmm4, %xmm3
	paddw	%xmm1, %xmm5
	paddw	%xmm2, %xmm3
	movdqu	%xmm5, -16(%rcx)
	movdqu	%xmm3, (%rcx)
	addq	$32, %rsi
	addq	$32, %rcx
	addq	$-16, %rax
	jne	.LBB4_12
# BB#13:
	movq	%r8, %rsi
.LBB4_14:                               # %middle.block84
	cmpq	%rsi, %r9
	je	.LBB4_17
# BB#15:                                # %for.body.preheader
	leaq	(%rdx,%rsi,2), %rax
	leaq	128(%rsp,%rsi,2), %rcx
	movl	%r11d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB4_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movl	%esi, %ebx
	shrl	%ebx
	shrl	$13, %esi
	movl	$32760, %ebp            # imm = 0x7FF8
	subl	%ebx, %ebp
	addl	%esi, %ebp
	movw	%bp, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB4_16
	jmp	.LBB4_17
.LBB4_1:                                # %for.cond.17.preheader
	testb	%r11b, %r11b
	je	.LBB4_17
# BB#2:                                 # %for.body.21.lr.ph
	leal	(%r11,%r15), %r9d
	andq	%r15, %r9
	incq	%r9
	movl	%r11d, %eax
	andl	$7, %eax
	xorl	%esi, %esi
	movq	%r9, %r8
	subq	%rax, %r8
	je	.LBB4_6
# BB#3:                                 # %vector.body.preheader
	leaq	4(%rdx), %rax
	leaq	136(%rsp), %rsi
	leal	-1(%r11), %ecx
	incq	%rcx
	movl	%r11d, %ebx
	andl	$7, %ebx
	subq	%rbx, %rcx
	pxor	%xmm0, %xmm0
	movdqa	.LCPI4_0(%rip), %xmm1   # xmm1 = [32760,32760,32760,32760]
	.align	16, 0x90
.LBB4_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqa	%xmm3, %xmm4
	pslld	$7, %xmm4
	movdqa	%xmm2, %xmm5
	pslld	$7, %xmm5
	movdqa	%xmm3, %xmm6
	psrld	$1, %xmm6
	movdqa	%xmm2, %xmm7
	psrld	$1, %xmm7
	por	%xmm4, %xmm6
	por	%xmm5, %xmm7
	psrld	$5, %xmm3
	psrld	$5, %xmm2
	por	%xmm1, %xmm3
	por	%xmm1, %xmm2
	psubw	%xmm6, %xmm3
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rsi)
	psubw	%xmm7, %xmm2
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, (%rsi)
	addq	$8, %rax
	addq	$16, %rsi
	addq	$-8, %rcx
	jne	.LBB4_4
# BB#5:
	movq	%r8, %rsi
.LBB4_6:                                # %middle.block
	cmpq	%rsi, %r9
	je	.LBB4_17
# BB#7:                                 # %for.body.21.preheader
	addq	%rsi, %rdx
	leaq	128(%rsp,%rsi,2), %rax
	movl	%r11d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB4_8:                                # %for.body.21
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %esi
	movl	%esi, %ebp
	shll	$7, %ebp
	movl	%esi, %ebx
	shrl	%ebx
	orl	%ebp, %ebx
	shrl	$5, %esi
	orl	$32760, %esi            # imm = 0x7FF8
	subl	%ebx, %esi
	movw	%si, (%rax)
	incq	%rdx
	addq	$2, %rax
	decl	%ecx
	jne	.LBB4_8
.LBB4_17:                               # %if.end
	cmpl	$4, %r11d
	je	.LBB4_22
# BB#18:                                # %if.end
	cmpl	$3, %r11d
	jne	.LBB4_19
# BB#21:                                # %sw.bb.46
	movswl	132(%rsp), %r8d
	movswl	130(%rsp), %ecx
	movswl	128(%rsp), %edx
	leaq	(%rsp), %r9
	xorl	%esi, %esi
	callq	*24(%r10)
	jmp	.LBB4_23
.LBB4_22:                               # %sw.bb.52
	movswl	134(%rsp), %r8d
	movswl	132(%rsp), %ecx
	movswl	130(%rsp), %edx
	movswl	128(%rsp), %esi
	leaq	(%rsp), %r9
	callq	*32(%r10)
	jmp	.LBB4_23
.LBB4_19:                               # %if.end
	cmpl	$1, %r11d
	jne	.LBB4_23
# BB#20:                                # %sw.bb
	movswl	128(%rsp), %esi
	leaq	(%rsp), %rdx
	callq	*16(%r10)
.LBB4_23:                               # %sw.epilog
	cmpl	$2, %r14d
	jne	.LBB4_24
# BB#32:                                # %if.then.61
	testb	%r13b, %r13b
	je	.LBB4_40
# BB#33:                                # %for.body.67.lr.ph
	leal	(%r13,%r15), %eax
	andq	%r15, %rax
	incq	%rax
	movl	%r13d, %esi
	andl	$7, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	subq	%rsi, %rcx
	je	.LBB4_37
# BB#34:                                # %vector.body135.preheader
	leaq	8(%rsp), %rdx
	leaq	8(%r12), %rsi
	leal	-1(%r13), %edi
	incq	%rdi
	movl	%r13d, %ebp
	andl	$7, %ebp
	subq	%rbp, %rdi
	.align	16, 0x90
.LBB4_35:                               # %vector.body135
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rdx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rsi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi)
	addq	$16, %rdx
	addq	$16, %rsi
	addq	$-8, %rdi
	jne	.LBB4_35
# BB#36:
	movq	%rcx, %rdx
.LBB4_37:                               # %middle.block136
	cmpq	%rdx, %rax
	je	.LBB4_40
# BB#38:                                # %for.body.67.preheader
	leaq	(%rsp,%rdx,2), %rax
	leaq	(%r12,%rdx,2), %rcx
	subl	%edx, %r13d
	.align	16, 0x90
.LBB4_39:                               # %for.body.67
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r13d
	jne	.LBB4_39
	jmp	.LBB4_40
.LBB4_24:                               # %for.cond.85.preheader
	testb	%r13b, %r13b
	je	.LBB4_40
# BB#25:                                # %for.body.89.lr.ph
	leal	(%r13,%r15), %eax
	andq	%r15, %rax
	incq	%rax
	movl	%r13d, %esi
	andl	$7, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	subq	%rsi, %rcx
	je	.LBB4_29
# BB#26:                                # %vector.body109.preheader
	leaq	8(%rsp), %rdx
	leaq	4(%r12), %rsi
	leal	-1(%r13), %edi
	incq	%rdi
	movl	%r13d, %ebp
	andl	$7, %ebp
	subq	%rbp, %rdi
	movdqa	.LCPI4_2(%rip), %xmm0   # xmm0 = [255,255,255,255]
	.align	16, 0x90
.LBB4_27:                               # %vector.body109
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movq	(%rdx), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm2
	movdqa	%xmm1, %xmm3
	psrld	$12, %xmm3
	movdqa	%xmm2, %xmm4
	psrld	$12, %xmm4
	paddd	%xmm1, %xmm3
	paddd	%xmm2, %xmm4
	psrld	$7, %xmm3
	psrld	$7, %xmm4
	pand	%xmm0, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, -4(%rsi)
	pand	%xmm0, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%rsi)
	addq	$16, %rdx
	addq	$8, %rsi
	addq	$-8, %rdi
	jne	.LBB4_27
# BB#28:
	movq	%rcx, %rdx
.LBB4_29:                               # %middle.block110
	cmpq	%rdx, %rax
	je	.LBB4_40
# BB#30:                                # %for.body.89.preheader
	leaq	(%rsp,%rdx,2), %rax
	addq	%rdx, %r12
	subl	%edx, %r13d
	.align	16, 0x90
.LBB4_31:                               # %for.body.89
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$12, %edx
	addl	%ecx, %edx
	shrl	$7, %edx
	movb	%dl, (%r12)
	addq	$2, %rax
	incq	%r12
	decl	%r13d
	jne	.LBB4_31
.LBB4_40:                               # %if.end.105
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gsicc_rcm_transform_general, .Lfunc_end4-gsicc_rcm_transform_general
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gsicc_rcm_get_link"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gsicc_rcm_freelink"
	.size	.L.str.1, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
