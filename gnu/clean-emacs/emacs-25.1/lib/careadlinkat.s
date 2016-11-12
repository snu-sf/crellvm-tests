	.text
	.file	"careadlinkat.bc"
	.globl	careadlinkat
	.align	16, 0x90
	.type	careadlinkat,@function
careadlinkat:                           # @careadlinkat
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
	subq	$1152, %rsp             # imm = 0x480
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -80(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$stdlib_allocator, %rax
	movq	%rax, -48(%rbp)
.LBB0_2:                                # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.2
	leaq	-1104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$1024, -40(%rbp)        # imm = 0x400
.LBB0_4:                                # %if.end.3
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	*%rax
	movq	%rax, -1112(%rbp)
	cmpq	$0, -1112(%rbp)
	jge	.LBB0_11
# BB#6:                                 # %if.then.4
                                        #   in Loop: Header=BB0_5 Depth=1
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -1124(%rbp)
	cmpl	$34, -1124(%rbp)
	je	.LBB0_10
# BB#7:                                 # %if.then.7
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_9
# BB#8:                                 # %if.then.9
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movl	-1124(%rbp), %ecx
	movl	%ecx, -1148(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	-1148(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, (%rax)
.LBB0_9:                                # %if.end.11
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_10:                               # %if.end.12
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.13
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-1112(%rbp), %rax
	movq	%rax, -1120(%rbp)
	movq	-1120(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB0_24
# BB#12:                                # %if.then.15
	leaq	-1104(%rbp), %rax
	movq	-1120(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -1120(%rbp)
	movq	-64(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	jne	.LBB0_16
# BB#13:                                # %if.then.18
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-1120(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1136(%rbp)
	movq	-1120(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -1136(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.21
	jmp	.LBB0_36
.LBB0_15:                               # %if.end.22
	movq	-1136(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-1120(%rbp), %rdx
	callq	memcpy
	movq	-1136(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB0_23
.LBB0_16:                               # %if.else
	movq	-1120(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB0_22
# BB#17:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_22
# BB#18:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_22
# BB#19:                                # %if.then.27
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdi
	movq	-1120(%rbp), %rsi
	callq	*%rax
	movq	%rax, -1144(%rbp)
	cmpq	$0, -1144(%rbp)
	je	.LBB0_21
# BB#20:                                # %if.then.32
	movq	-1144(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB0_21:                               # %if.end.33
	jmp	.LBB0_22
.LBB0_22:                               # %if.end.34
	jmp	.LBB0_23
.LBB0_23:                               # %if.end.35
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_39
.LBB0_24:                               # %if.end.36
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_26
# BB#25:                                # %if.then.38
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
.LBB0_26:                               # %if.end.40
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	shrq	$1, %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_28
# BB#27:                                # %if.then.42
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_34
.LBB0_28:                               # %if.else.43
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jae	.LBB0_30
# BB#29:                                # %if.then.45
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_33
.LBB0_30:                               # %if.else.46
	cmpq	$-1, -80(%rbp)
	jae	.LBB0_32
# BB#31:                                # %if.then.48
	callq	__errno_location
	movl	$36, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_32:                               # %if.else.50
	jmp	.LBB0_36
.LBB0_33:                               # %if.end.51
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.52
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdi
	callq	*%rax
	movq	%rax, -64(%rbp)
# BB#35:                                # %do.cond
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB0_5
.LBB0_36:                               # %do.end
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_38
# BB#37:                                # %if.then.57
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdi
	callq	*%rax
.LBB0_38:                               # %if.end.59
	callq	__errno_location
	movl	$12, (%rax)
	movq	$0, -8(%rbp)
.LBB0_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$1152, %rsp             # imm = 0x480
	popq	%rbp
	retq
.Lfunc_end0:
	.size	careadlinkat, .Lfunc_end0-careadlinkat
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
