	.text
	.file	"timespec-add.bc"
	.globl	timespec_add
	.align	16, 0x90
	.type	timespec_add,@function
timespec_add:                           # @timespec_add
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movl	%ecx, %r10d
	movl	%r10d, -68(%rbp)
	movl	-68(%rbp), %r10d
	subl	$1000000000, %r10d      # imm = 0x3B9ACA00
	movl	%r10d, -72(%rbp)
	movl	-68(%rbp), %r10d
	movl	%r10d, -76(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r8, -96(%rbp)
	cmpl	-72(%rbp), %eax
	jg	.LBB0_8
# BB#1:                                 # %if.then
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jge	.LBB0_3
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_7
.LBB0_3:                                # %if.else
	cmpq	$0, -56(%rbp)
	jge	.LBB0_5
# BB#4:                                 # %if.then.9
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.11
	jmp	.LBB0_32
.LBB0_6:                                # %if.end
	jmp	.LBB0_7
.LBB0_7:                                # %if.end.12
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.13
	imulq	$0, -64(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB0_10
# BB#9:                                 # %cond.true
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false
	imulq	$0, -64(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_11:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB0_21
# BB#12:                                # %cond.true.41
	cmpq	$0, -64(%rbp)
	jge	.LBB0_17
# BB#13:                                # %cond.true.44
	movq	-56(%rbp), %rax
	imulq	$0, -64(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jge	.LBB0_15
# BB#14:                                # %cond.true.51
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_16
.LBB0_15:                               # %cond.false.70
	imulq	$0, -64(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_16:                               # %cond.end.75
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	-64(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB0_29
	jmp	.LBB0_26
.LBB0_17:                               # %cond.false.80
	imulq	$0, -64(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB0_19
# BB#18:                                # %cond.true.87
	imulq	$0, -64(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_19:                               # %cond.false.96
	imulq	$0, -64(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB0_20:                               # %cond.end.101
	movq	-128(%rbp), %rax        # 8-byte Reload
	subq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB0_29
	jmp	.LBB0_26
.LBB0_21:                               # %cond.false.106
	cmpq	$0, -56(%rbp)
	jge	.LBB0_23
# BB#22:                                # %cond.true.109
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_29
	jmp	.LBB0_26
.LBB0_23:                               # %cond.false.113
	cmpq	$0, -64(%rbp)
	jge	.LBB0_25
# BB#24:                                # %cond.true.116
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_29
	jmp	.LBB0_26
.LBB0_25:                               # %cond.false.120
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB0_29
.LBB0_26:                               # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_29
# BB#27:                                # %land.lhs.true.127
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jg	.LBB0_29
# BB#28:                                # %if.then.131
	movq	-64(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_34
.LBB0_29:                               # %if.else.133
	cmpq	$0, -56(%rbp)
	jge	.LBB0_31
# BB#30:                                # %if.then.136
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -76(%rbp)
	jmp	.LBB0_33
.LBB0_31:                               # %if.else.137
	jmp	.LBB0_32
.LBB0_32:                               # %high_overflow
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$999999999, -76(%rbp)   # imm = 0x3B9AC9FF
.LBB0_33:                               # %if.end.138
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.139
	movq	-56(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	timespec_add, .Lfunc_end0-timespec_add
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
