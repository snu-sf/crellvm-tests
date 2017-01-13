	.text
	.file	"jcprepct.bc"
	.globl	jinit_c_prep_controller
	.align	16, 0x90
	.type	jinit_c_prep_controller,@function
jinit_c_prep_controller:                # @jinit_c_prep_controller
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	testl	%esi, %esi
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%r15), %rax
	movl	$3, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB0_2:                                # %if.end
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$104, %edx
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 512(%r15)
	movq	$start_pass_prep, (%r14)
	movq	544(%r15), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_3
# BB#7:                                 # %if.then.4
	movq	(%r15), %rax
	movl	$49, 40(%rax)
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*(%rax)                 # TAILCALL
.LBB0_3:                                # %if.else
	movq	$pre_process_data, 8(%r14)
	cmpl	$0, 92(%r15)
	jle	.LBB0_6
# BB#4:                                 # %for.body.lr.ph
	movq	104(%r15), %r12
	addq	$28, %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %r8
	movl	(%r12), %eax
	movslq	360(%r15), %rcx
	imulq	%rax, %rcx
	movslq	352(%r15), %rax
	imulq	%rcx, %rax
	movslq	-20(%r12), %rcx
	cqto
	idivq	%rcx
	movl	356(%r15), %ecx
	movl	$1, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	*16(%r8)
	movq	%rax, 16(%r14,%rbx,8)
	incq	%rbx
	movslq	92(%r15), %rax
	addq	$96, %r12
	cmpq	%rax, %rbx
	jl	.LBB0_5
.LBB0_6:                                # %if.end.17
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	jinit_c_prep_controller, .Lfunc_end0-jinit_c_prep_controller
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_prep,@function
start_pass_prep:                        # @start_pass_prep
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -24
.Ltmp13:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	512(%rbx), %r14
	testl	%esi, %esi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$3, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB1_2:                                # %if.end
	movl	52(%rbx), %eax
	movl	%eax, 96(%r14)
	movl	$0, 100(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	start_pass_prep, .Lfunc_end1-start_pass_prep
	.cfi_endproc

	.align	16, 0x90
	.type	pre_process_data,@function
pre_process_data:                       # @pre_process_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 128
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	%ecx, %ebp
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movq	%rdx, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movl	(%r14), %eax
	cmpl	%ebp, %eax
	jae	.LBB2_28
# BB#1:                                 # %land.rhs.lr.ph
	movq	512(%r12), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leaq	16(%rsi), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB2_2:                                # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_8 Depth 3
	movl	128(%rsp), %ecx
	cmpl	%ecx, (%r15)
	jae	.LBB2_28
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	356(%r12), %ebx
	movq	%rsi, %rbp
	movl	100(%rbp), %ecx
	subl	%ecx, %ebx
	cmpl	%edx, %ebx
	cmovael	%edx, %ebx
	movq	536(%r12), %r9
	movl	%eax, %eax
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax,8), %rsi
	movq	%r12, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%ebx, %r8d
	callq	*8(%r9)
	addl	%ebx, (%r14)
	movl	100(%rbp), %r13d
	addl	%ebx, %r13d
	movl	%r13d, 100(%rbp)
	movl	96(%rbp), %eax
	subl	%ebx, %eax
	movq	%rbp, %rbx
	movl	%eax, 96(%rbx)
	movl	356(%r12), %r15d
	jne	.LBB2_14
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%r15d, %r13d
	jge	.LBB2_14
# BB#5:                                 # %for.cond.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	92(%r12), %eax
	testl	%eax, %eax
	movl	$0, %ebp
	jg	.LBB2_6
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_11:                               # %expand_bottom_edge.exit.for.body_crit_edge
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	100(%rbx), %r13d
	movl	356(%r12), %r15d
.LBB2_6:                                # %for.body
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_8 Depth 3
	cmpl	%r15d, %r13d
	jge	.LBB2_10
# BB#7:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_6 Depth=2
	movq	16(%rbx,%rbp,8), %rbx
	movl	48(%r12), %r14d
	leal	-1(%r13), %r12d
	.align	16, 0x90
.LBB2_8:                                # %for.body.i
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	movl	%r14d, %r9d
	callq	jcopy_sample_rows
	incl	%r13d
	cmpl	%r13d, %r15d
	jne	.LBB2_8
# BB#9:                                 # %expand_bottom_edge.exit.loopexit
                                        #   in Loop: Header=BB2_6 Depth=2
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	92(%r12), %eax
	movq	56(%rsp), %rbx          # 8-byte Reload
.LBB2_10:                               # %expand_bottom_edge.exit
                                        #   in Loop: Header=BB2_6 Depth=2
	incq	%rbp
	movslq	%eax, %rcx
	cmpq	%rcx, %rbp
	jl	.LBB2_11
# BB#12:                                # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	356(%r12), %r15d
.LBB2_13:                               # %if.end.thread
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r15d, 100(%rbx)
	movq	40(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_14:                               # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%r15d, %r13d
	movq	40(%rsp), %r15          # 8-byte Reload
	jne	.LBB2_16
.LBB2_15:                               # %if.then.23
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	544(%r12), %rax
	movl	(%r15), %r8d
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	*8(%rax)
	movl	$0, 100(%rbx)
	incl	(%r15)
.LBB2_16:                               # %if.end.29
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 96(%rbx)
	movq	32(%rsp), %r14          # 8-byte Reload
	jne	.LBB2_18
# BB#17:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	(%r15), %esi
	cmpl	128(%rsp), %esi
	jb	.LBB2_19
.LBB2_18:                               # %while.cond.backedge
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%rbx, %rsi
	movl	(%r14), %eax
	movl	20(%rsp), %ebp          # 4-byte Reload
	cmpl	%ebp, %eax
	jb	.LBB2_2
	jmp	.LBB2_28
.LBB2_19:                               # %if.then.34
	movl	92(%r12), %r8d
	testl	%r8d, %r8d
	jle	.LBB2_27
# BB#20:                                # %for.body.38.lr.ph
	movq	104(%r12), %rdi
	xorl	%ecx, %ecx
	jmp	.LBB2_21
	.align	16, 0x90
.LBB2_26:                               # %expand_bottom_edge.exit70.for.body.38_crit_edge
                                        #   in Loop: Header=BB2_21 Depth=1
	addq	$96, %rdi
	movl	(%r15), %esi
.LBB2_21:                               # %for.body.38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
	movl	36(%rdi), %r14d
	movl	40(%rdi), %eax
	imull	12(%rdi), %eax
	cltd
	idivl	364(%r12)
	movl	%eax, %ebp
	movl	%esi, %ebx
	imull	%ebp, %ebx
	imull	128(%rsp), %eax
	cmpl	%eax, %ebx
	jge	.LBB2_25
# BB#22:                                # %for.body.lr.ph.i.65
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax,%rcx,8), %r12
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	imull	28(%rdi), %r14d
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %r13d
	movl	128(%rsp), %eax
	subl	%esi, %eax
	imull	%eax, %ebp
	.align	16, 0x90
.LBB2_23:                               # %for.body.i.69
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %r8d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	movl	%r14d, %r9d
	callq	jcopy_sample_rows
	incl	%ebx
	decl	%ebp
	jne	.LBB2_23
# BB#24:                                # %expand_bottom_edge.exit70.loopexit
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	92(%r12), %r8d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
.LBB2_25:                               # %expand_bottom_edge.exit70
                                        #   in Loop: Header=BB2_21 Depth=1
	incq	%rcx
	movslq	%r8d, %rax
	cmpq	%rax, %rcx
	jl	.LBB2_26
.LBB2_27:                               # %for.end.46
	movl	128(%rsp), %eax
	movl	%eax, (%r15)
.LBB2_28:                               # %while.end
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pre_process_data, .Lfunc_end2-pre_process_data
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
