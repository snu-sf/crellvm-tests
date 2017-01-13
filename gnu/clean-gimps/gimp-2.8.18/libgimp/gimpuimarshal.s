	.text
	.file	"gimpuimarshal.bc"
	.globl	_gimpui_marshal_VOID__STRING_BOOLEAN
	.align	16, 0x90
	.type	_gimpui_marshal_VOID__STRING_BOOLEAN,@function
_gimpui_marshal_VOID__STRING_BOOLEAN:   # @_gimpui_marshal_VOID__STRING_BOOLEAN
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#1:                                 # %do.body
	cmpl	$3, -20(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimpui_marshal_VOID__STRING_BOOLEAN(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_12
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB0_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB0_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_11:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %edx
	movq	-80(%rbp), %rcx
	callq	*%rax
.LBB0_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimpui_marshal_VOID__STRING_BOOLEAN, .Lfunc_end0-_gimpui_marshal_VOID__STRING_BOOLEAN
	.cfi_endproc

	.globl	_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN
	.align	16, 0x90
	.type	_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN,@function
_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN: # @_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#1:                                 # %do.body
	cmpl	$5, -20(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_12
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB1_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB1_11:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-32(%rbp), %r8
	movl	104(%r8), %r8d
	movq	-80(%rbp), %r9
	callq	*%rax
.LBB1_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN, .Lfunc_end1-_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN
	.cfi_endproc

	.globl	_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN
	.align	16, 0x90
	.type	_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN,@function
_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN: # @_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#1:                                 # %do.body
	cmpl	$7, -20(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_12
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB2_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB2_8
.LBB2_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB2_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB2_11:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	80(%rcx), %ecx
	movq	-32(%rbp), %r8
	movl	104(%r8), %r8d
	movq	-32(%rbp), %r9
	movq	128(%r9), %r9
	movq	-32(%rbp), %r10
	movl	152(%r10), %r11d
	movq	-80(%rbp), %r10
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	callq	*%rax
.LBB2_12:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN, .Lfunc_end2-_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN
	.cfi_endproc

	.globl	_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN
	.align	16, 0x90
	.type	_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN,@function
_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN: # @_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)
# BB#1:                                 # %do.body
	cmpl	$9, -28(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_12
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -88(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.2
	movq	-40(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB3_8:                                # %if.end.6
	cmpq	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_11:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-40(%rbp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movl	80(%rcx), %edx
	movq	-40(%rbp), %rcx
	movl	104(%rcx), %ecx
	movq	-40(%rbp), %r8
	movl	128(%r8), %r8d
	movq	-40(%rbp), %r9
	movl	152(%r9), %r9d
	movq	-40(%rbp), %r10
	movq	176(%r10), %r10
	movq	-40(%rbp), %r11
	movl	200(%r11), %ebx
	movq	-88(%rbp), %r11
	movq	%r10, (%rsp)
	movl	%ebx, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	*%rax
.LBB3_12:                               # %return
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN, .Lfunc_end3-_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__._gimpui_marshal_VOID__STRING_BOOLEAN,@object # @__func__._gimpui_marshal_VOID__STRING_BOOLEAN
.L__func__._gimpui_marshal_VOID__STRING_BOOLEAN:
	.asciz	"_gimpui_marshal_VOID__STRING_BOOLEAN"
	.size	.L__func__._gimpui_marshal_VOID__STRING_BOOLEAN, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"n_param_values == 3"
	.size	.L.str.1, 20

	.type	.L__func__._gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN,@object # @__func__._gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN
.L__func__._gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN:
	.asciz	"_gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN"
	.size	.L__func__._gimpui_marshal_VOID__STRING_INT_POINTER_BOOLEAN, 49

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"n_param_values == 5"
	.size	.L.str.2, 20

	.type	.L__func__._gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN,@object # @__func__._gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN
.L__func__._gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN:
	.asciz	"_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN"
	.size	.L__func__._gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN, 57

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n_param_values == 7"
	.size	.L.str.3, 20

	.type	.L__func__._gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN,@object # @__func__._gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN
.L__func__._gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN:
	.asciz	"_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN"
	.size	.L__func__._gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN, 68

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n_param_values == 9"
	.size	.L.str.4, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
