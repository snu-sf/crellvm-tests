	.text
	.file	"vm-limit.bc"
	.globl	memory_warnings
	.align	16, 0x90
	.type	memory_warnings,@function
memory_warnings:                        # @memory_warnings
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movabsq	$data_start, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movabsq	$check_memory_limits, %rcx
	movq	%rax, data_space_start
	movq	-16(%rbp), %rax
	movq	%rax, warn_function
	movq	%rcx, __after_morecore_hook
	movq	$0, lim_data
	popq	%rbp
	retq
.Lfunc_end0:
	.size	memory_warnings, .Lfunc_end0-memory_warnings
	.cfi_endproc

	.align	16, 0x90
	.type	check_memory_limits,@function
check_memory_limits:                    # @check_memory_limits
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
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	cmpq	$0, lim_data
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	get_lim_data
.LBB1_2:                                # %if.end
	movl	$20, %eax
	movl	%eax, %ecx
	movq	lim_data, %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	movq	__morecore, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB1_5:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	*%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	data_space_start, %rdi
	subq	%rdi, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, warn_function
	jne	.LBB1_7
# BB#6:                                 # %if.then.2
	jmp	.LBB1_27
.LBB1_7:                                # %if.end.3
	movq	-32(%rbp), %rax
	imulq	$19, -24(%rbp), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB1_9
# BB#8:                                 # %cond.true.5
	movl	$3, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB1_13
.LBB1_9:                                # %cond.false.6
	movq	-32(%rbp), %rax
	imulq	$17, -24(%rbp), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB1_11
# BB#10:                                # %cond.true.9
	movl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.10
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	imulq	$15, -24(%rbp), %rsi
	cmpq	%rsi, %rdx
	cmoval	%ecx, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB1_12:                               # %cond.end.14
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB1_13:                               # %cond.end.16
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	warnlevel, %eax
	ja	.LBB1_15
# BB#14:                                # %lor.lhs.false
	cmpl	$3, -36(%rbp)
	jne	.LBB1_16
.LBB1_15:                               # %if.then.20
	movl	-36(%rbp), %eax
	movl	%eax, warnlevel
	movq	warn_function, %rcx
	movl	warnlevel, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	check_memory_limits.warn_diagnostic(,%rdx,8), %rdi
	callq	*%rcx
	jmp	.LBB1_27
.LBB1_16:                               # %if.else
	movq	-32(%rbp), %rax
	imulq	$14, -24(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB1_18
# BB#17:                                # %if.then.23
	movl	$0, warnlevel
	jmp	.LBB1_26
.LBB1_18:                               # %if.else.24
	cmpl	$1, warnlevel
	jbe	.LBB1_21
# BB#19:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jae	.LBB1_21
# BB#20:                                # %if.then.28
	movl	$1, warnlevel
	jmp	.LBB1_25
.LBB1_21:                               # %if.else.29
	cmpl	$2, warnlevel
	jbe	.LBB1_24
# BB#22:                                # %land.lhs.true.31
	movq	-32(%rbp), %rax
	imulq	$18, -24(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB1_24
# BB#23:                                # %if.then.34
	movl	$2, warnlevel
.LBB1_24:                               # %if.end.35
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.36
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.37
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.38
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	check_memory_limits, .Lfunc_end1-check_memory_limits
	.cfi_endproc

	.align	16, 0x90
	.type	get_lim_data,@function
get_lim_data:                           # @get_lim_data
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
	subq	$32, %rsp
	movl	$9, %edi
	leaq	-16(%rbp), %rsi
	callq	getrlimit
	cmpl	$0, %eax
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpq	$-1, -16(%rbp)
	ja	.LBB2_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_3:                                # %cond.false
	movq	$-1, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_4:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, lim_data
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_lim_data, .Lfunc_end2-get_lim_data
	.cfi_endproc

	.type	data_space_start,@object # @data_space_start
	.local	data_space_start
	.comm	data_space_start,8,8
	.type	warn_function,@object   # @warn_function
	.local	warn_function
	.comm	warn_function,8,8
	.type	lim_data,@object        # @lim_data
	.local	lim_data
	.comm	lim_data,8,8
	.type	warnlevel,@object       # @warnlevel
	.local	warnlevel
	.comm	warnlevel,4,4
	.type	check_memory_limits.warn_diagnostic,@object # @check_memory_limits.warn_diagnostic
	.section	.rodata,"a",@progbits
	.align	16
check_memory_limits.warn_diagnostic:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.size	check_memory_limits.warn_diagnostic, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Warning: past 75% of memory limit"
	.size	.L.str, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Warning: past 85% of memory limit"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Warning: past 95% of memory limit"
	.size	.L.str.2, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
