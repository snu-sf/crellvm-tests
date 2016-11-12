	.text
	.file	"region-cache.bc"
	.globl	new_region_cache
	.align	16, 0x90
	.type	new_region_cache,@function
new_region_cache:                       # @new_region_cache
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
	movl	$64, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$40, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	addq	24(%rdi), %rax
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$1, 56(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	new_region_cache, .Lfunc_end0-new_region_cache
	.cfi_endproc

	.globl	free_region_cache
	.align	16, 0x90
	.type	free_region_cache,@function
free_region_cache:                      # @free_region_cache
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	xfree
	movq	-8(%rbp), %rdi
	callq	xfree
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	free_region_cache, .Lfunc_end1-free_region_cache
	.cfi_endproc

	.globl	invalidate_region_cache
	.align	16, 0x90
	.type	invalidate_region_cache,@function
invalidate_region_cache:                # @invalidate_region_cache
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	addq	$1, %rcx
	movq	-8(%rbp), %rdx
	movq	720(%rdx), %rdx
	movq	16(%rdx), %rdx
	subq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	$500, %rcx              # imm = 0x1F4
	jg	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subq	40(%rdx), %rcx
	subq	%rcx, %rax
	cmpq	$500, %rax              # imm = 0x1F4
	jle	.LBB2_3
.LBB2_2:                                # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	revalidate_region_cache
.LBB2_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jge	.LBB2_5
# BB#4:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB2_5:                                # %if.end.12
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jge	.LBB2_7
# BB#6:                                 # %if.then.15
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB2_7:                                # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	invalidate_region_cache, .Lfunc_end2-invalidate_region_cache
	.cfi_endproc

	.align	16, 0x90
	.type	revalidate_region_cache,@function
revalidate_region_cache:                # @revalidate_region_cache
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	-16(%rbp), %rdi
	addq	32(%rdi), %rsi
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	-16(%rbp), %rax
	subq	40(%rax), %rdi
	cmpq	%rdi, %rsi
	jle	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_28
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subq	40(%rdx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	-16(%rbp), %rdx
	addq	32(%rdx), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	find_cache_boundary
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	addq	$1, %rax
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	move_cache_gap
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	32(%rdx), %rax
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	-16(%rbp), %rsi
	subq	40(%rsi), %rdx
	movq	%rax, %rsi
	callq	set_cache_region
	jmp	.LBB3_27
.LBB3_4:                                # %if.else
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	32(%rdx), %rax
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	-16(%rbp), %rsi
	subq	40(%rsi), %rdx
	movq	%rax, %rsi
	callq	set_cache_region
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	32(%rdx), %rax
	movq	%rax, %rsi
	callq	find_cache_boundary
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	move_cache_gap
	movq	-16(%rbp), %rax
	movq	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	24(%rdx), %rax
	jge	.LBB3_26
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB3_7
# BB#6:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB3_8:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jge	.LBB3_10
# BB#9:                                 # %cond.true.51
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false.57
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB3_11:                               # %cond.end.65
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_26
# BB#12:                                # %if.then.68
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB3_14
# BB#13:                                # %cond.true.71
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %cond.false.74
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
.LBB3_15:                               # %cond.end.80
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jle	.LBB3_21
# BB#16:                                # %land.lhs.true.84
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	subq	$2, %rcx
	movq	-16(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jge	.LBB3_18
# BB#17:                                # %cond.true.88
	movq	-24(%rbp), %rax
	subq	$2, %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_19
.LBB3_18:                               # %cond.false.93
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	$2, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
.LBB3_19:                               # %cond.end.100
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-72(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB3_21
# BB#20:                                # %if.then.103
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	delete_cache_boundaries
	jmp	.LBB3_25
.LBB3_21:                               # %if.else.106
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB3_23
# BB#22:                                # %cond.true.110
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB3_24
.LBB3_23:                               # %cond.false.115
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movl	%eax, 8(%rcx)
.LBB3_24:                               # %cond.end.122
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	delete_cache_boundaries
.LBB3_25:                               # %if.end.125
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.126
	jmp	.LBB3_27
.LBB3_27:                               # %if.end.127
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	48(%rcx), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB3_28:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	revalidate_region_cache, .Lfunc_end3-revalidate_region_cache
	.cfi_endproc

	.globl	know_region_cache
	.align	16, 0x90
	.type	know_region_cache,@function
know_region_cache:                      # @know_region_cache
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	revalidate_region_cache
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_cache_region
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	know_region_cache, .Lfunc_end4-know_region_cache
	.cfi_endproc

	.align	16, 0x90
	.type	set_cache_region,@function
set_cache_region:                       # @set_cache_region
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	-24(%rbp), %rdx
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_43
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_cache_boundary
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	find_cache_boundary
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rsi
	cmpq	8(%rsi), %rax
	jge	.LBB5_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
.LBB5_5:                                # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	callq	delete_cache_boundaries
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	jge	.LBB5_7
# BB#6:                                 # %cond.true.14
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false.18
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB5_8:                                # %cond.end.25
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	-16(%rbp), %rax
	jne	.LBB5_20
# BB#9:                                 # %if.then.28
	cmpq	$0, -40(%rbp)
	jle	.LBB5_15
# BB#10:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB5_12
# BB#11:                                # %cond.true.33
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false.38
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
.LBB5_13:                               # %cond.end.45
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	-28(%rbp), %eax
	jne	.LBB5_15
# BB#14:                                # %if.then.48
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	delete_cache_boundaries
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_19
.LBB5_15:                               # %if.else
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB5_17
# BB#16:                                # %cond.true.52
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false.56
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movl	%eax, 8(%rcx)
.LBB5_18:                               # %cond.end.62
.LBB5_19:                               # %if.end.64
	jmp	.LBB5_26
.LBB5_20:                               # %if.else.65
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB5_22
# BB#21:                                # %cond.true.68
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB5_23
.LBB5_22:                               # %cond.false.72
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	addq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB5_23:                               # %cond.end.78
	movl	-72(%rbp), %eax         # 4-byte Reload
	cmpl	-28(%rbp), %eax
	je	.LBB5_25
# BB#24:                                # %if.then.81
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	%rax, %rsi
	callq	insert_cache_boundary
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB5_25:                               # %if.end.83
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.84
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB5_28
# BB#27:                                # %if.then.88
	jmp	.LBB5_43
.LBB5_28:                               # %if.else.89
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB5_33
# BB#29:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jge	.LBB5_31
# BB#30:                                # %cond.true.93
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_32
.LBB5_31:                               # %cond.false.99
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB5_32:                               # %cond.end.107
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB5_36
.LBB5_33:                               # %if.then.110
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB5_35
# BB#34:                                # %if.then.112
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-52(%rbp), %ecx
	callq	insert_cache_boundary
.LBB5_35:                               # %if.end.113
	jmp	.LBB5_42
.LBB5_36:                               # %if.else.114
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jge	.LBB5_38
# BB#37:                                # %cond.true.117
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB5_39
.LBB5_38:                               # %cond.false.121
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	addq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
.LBB5_39:                               # %cond.end.127
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB5_41
# BB#40:                                # %if.then.130
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	delete_cache_boundaries
.LBB5_41:                               # %if.end.132
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.133
	jmp	.LBB5_43
.LBB5_43:                               # %if.end.134
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	set_cache_region, .Lfunc_end5-set_cache_region
	.cfi_endproc

	.globl	region_cache_forward
	.align	16, 0x90
	.type	region_cache_forward,@function
region_cache_forward:                   # @region_cache_forward
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	revalidate_region_cache
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	find_cache_boundary
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB6_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
.LBB6_3:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	16(%rdx), %rcx
	jl	.LBB6_7
# BB#4:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB6_6:                                # %if.end
	movl	$0, -44(%rbp)
	jmp	.LBB6_25
.LBB6_7:                                # %if.else
	cmpq	$0, -32(%rbp)
	je	.LBB6_24
# BB#8:                                 # %if.then.9
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB6_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB6_17
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB6_12
# BB#11:                                # %cond.true.14
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false.18
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
.LBB6_13:                               # %cond.end.24
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	-44(%rbp), %eax
	je	.LBB6_15
# BB#14:                                # %if.then.27
	jmp	.LBB6_17
.LBB6_15:                               # %if.end.28
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_16
.LBB6_16:                               # %for.inc
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB6_9
.LBB6_17:                               # %for.end
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB6_22
# BB#18:                                # %if.then.31
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB6_20
# BB#19:                                # %cond.true.34
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB6_21
.LBB6_20:                               # %cond.false.39
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB6_21:                               # %cond.end.46
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.48
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB6_23:                               # %if.end.51
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.52
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.53
	movl	-44(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	region_cache_forward, .Lfunc_end6-region_cache_forward
	.cfi_endproc

	.align	16, 0x90
	.type	find_cache_boundary,@function
find_cache_boundary:                    # @find_cache_boundary
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB7_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	sarq	$1, %rax
	movq	-32(%rbp), %rcx
	sarq	$1, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	andq	-32(%rbp), %rcx
	andq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB7_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB7_5:                                # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB7_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB7_8:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_9:                                # %while.end
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	find_cache_boundary, .Lfunc_end7-find_cache_boundary
	.cfi_endproc

	.globl	region_cache_backward
	.align	16, 0x90
	.type	region_cache_backward,@function
region_cache_backward:                  # @region_cache_backward
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	revalidate_region_cache
	cmpq	$1, -32(%rbp)
	jg	.LBB8_4
# BB#1:                                 # %if.then
	cmpq	$0, -40(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then.1
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
.LBB8_3:                                # %if.end
	movl	$0, -4(%rbp)
	jmp	.LBB8_25
.LBB8_4:                                # %if.end.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	find_cache_boundary
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	8(%rsi), %rax
	jge	.LBB8_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
.LBB8_7:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_24
# BB#8:                                 # %if.then.8
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB8_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	jl	.LBB8_17
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB8_12
# BB#11:                                # %cond.true.13
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false.17
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB8_13:                               # %cond.end.23
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	cmpl	-52(%rbp), %eax
	je	.LBB8_15
# BB#14:                                # %if.then.26
	jmp	.LBB8_17
.LBB8_15:                               # %if.end.27
                                        #   in Loop: Header=BB8_9 Depth=1
	jmp	.LBB8_16
.LBB8_16:                               # %for.inc
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_9
.LBB8_17:                               # %for.end
	cmpq	$0, -64(%rbp)
	jl	.LBB8_22
# BB#18:                                # %if.then.29
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB8_20
# BB#19:                                # %cond.true.33
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	movq	-24(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB8_21
.LBB8_20:                               # %cond.false.39
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB8_21:                               # %cond.end.47
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB8_23
.LBB8_22:                               # %if.else
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
.LBB8_23:                               # %if.end.49
	jmp	.LBB8_24
.LBB8_24:                               # %if.end.50
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	region_cache_backward, .Lfunc_end8-region_cache_backward
	.cfi_endproc

	.align	16, 0x90
	.type	move_cache_gap,@function
move_cache_gap:                         # @move_cache_gap
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -56(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB9_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	addq	(%rcx), %rax
	subq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %esi
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	%esi, 8(%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_3:                                # %while.end
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB9_9
# BB#4:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	$-1, %rcx
	movl	$16, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rdi
	subq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	xpalloc
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	24(%rcx), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB9_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB9_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-64(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %esi
	movq	-64(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	%esi, 8(%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB9_5
.LBB9_8:                                # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB9_9:                                # %if.end
	jmp	.LBB9_10
.LBB9_10:                               # %while.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB9_12
# BB#11:                                # %while.body.44
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movq	(%rax), %rax
	addq	-48(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	8(%rax), %esi
	movq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	addq	(%rcx), %rax
	movl	%esi, 8(%rax)
	jmp	.LBB9_10
.LBB9_12:                               # %while.end.62
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	move_cache_gap, .Lfunc_end9-move_cache_gap
	.cfi_endproc

	.align	16, 0x90
	.type	delete_cache_boundaries,@function
delete_cache_boundaries:                # @delete_cache_boundaries
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	subq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_9
.LBB10_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB10_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	move_cache_gap
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	16(%rsi), %rdx
	movq	%rdx, 16(%rsi)
	jmp	.LBB10_8
.LBB10_4:                               # %if.else.3
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jg	.LBB10_6
# BB#5:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	move_cache_gap
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	subq	%rdx, %rdi
	movq	%rdi, 8(%rsi)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	16(%rsi), %rdx
	movq	%rdx, 16(%rsi)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.11
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.15
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.16
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 24(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	delete_cache_boundaries, .Lfunc_end10-delete_cache_boundaries
	.cfi_endproc

	.align	16, 0x90
	.type	insert_cache_boundary,@function
insert_cache_boundary:                  # @insert_cache_boundary
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%r8, %rdx
	callq	move_cache_gap
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	48(%rsi), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	shlq	$4, %rsi
	addq	(%rdi), %rsi
	movq	%rdx, (%rsi)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	shlq	$4, %rdx
	addq	(%rsi), %rdx
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rdx)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rsi
	addq	$-1, %rsi
	movq	%rsi, 16(%rdx)
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	insert_cache_boundary, .Lfunc_end11-insert_cache_boundary
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
