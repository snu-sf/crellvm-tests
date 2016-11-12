	.text
	.file	"gimpwidgetsmarshal.bc"
	.globl	_gimp_widgets_marshal_VOID__INT_INT
	.align	16, 0x90
	.type	_gimp_widgets_marshal_VOID__INT_INT,@function
_gimp_widgets_marshal_VOID__INT_INT:    # @_gimp_widgets_marshal_VOID__INT_INT
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
	leaq	.L__func__._gimp_widgets_marshal_VOID__INT_INT(%rip), %rsi
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
	movl	32(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %edx
	movq	-80(%rbp), %rcx
	callq	*%rax
.LBB0_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimp_widgets_marshal_VOID__INT_INT, .Lfunc_end0-_gimp_widgets_marshal_VOID__INT_INT
	.cfi_endproc

	.globl	_gimp_widgets_marshal_VOID__OBJECT_INT
	.align	16, 0x90
	.type	_gimp_widgets_marshal_VOID__OBJECT_INT,@function
_gimp_widgets_marshal_VOID__OBJECT_INT: # @_gimp_widgets_marshal_VOID__OBJECT_INT
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
	cmpl	$3, -20(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_widgets_marshal_VOID__OBJECT_INT(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
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
	movq	-80(%rbp), %rcx
	callq	*%rax
.LBB1_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_gimp_widgets_marshal_VOID__OBJECT_INT, .Lfunc_end1-_gimp_widgets_marshal_VOID__OBJECT_INT
	.cfi_endproc

	.globl	_gimp_widgets_marshal_VOID__POINTER_POINTER
	.align	16, 0x90
	.type	_gimp_widgets_marshal_VOID__POINTER_POINTER,@function
_gimp_widgets_marshal_VOID__POINTER_POINTER: # @_gimp_widgets_marshal_VOID__POINTER_POINTER
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
	jne	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_widgets_marshal_VOID__POINTER_POINTER(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
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
	movq	56(%rcx), %rdx
	movq	-80(%rbp), %rcx
	callq	*%rax
.LBB2_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_gimp_widgets_marshal_VOID__POINTER_POINTER, .Lfunc_end2-_gimp_widgets_marshal_VOID__POINTER_POINTER
	.cfi_endproc

	.globl	_gimp_widgets_marshal_VOID__STRING_FLAGS
	.align	16, 0x90
	.type	_gimp_widgets_marshal_VOID__STRING_FLAGS,@function
_gimp_widgets_marshal_VOID__STRING_FLAGS: # @_gimp_widgets_marshal_VOID__STRING_FLAGS
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
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_widgets_marshal_VOID__STRING_FLAGS(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_12
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB3_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB3_11:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rcx
	movl	%ecx, %edx
	movq	-80(%rbp), %rcx
	callq	*%rax
.LBB3_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gimp_widgets_marshal_VOID__STRING_FLAGS, .Lfunc_end3-_gimp_widgets_marshal_VOID__STRING_FLAGS
	.cfi_endproc

	.globl	_gimp_widgets_marshal_VOID__STRING_INT
	.align	16, 0x90
	.type	_gimp_widgets_marshal_VOID__STRING_INT,@function
_gimp_widgets_marshal_VOID__STRING_INT: # @_gimp_widgets_marshal_VOID__STRING_INT
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
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_widgets_marshal_VOID__STRING_INT(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_12
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB4_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB4_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB4_11:                               # %cond.end
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
.LBB4_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_widgets_marshal_VOID__STRING_INT, .Lfunc_end4-_gimp_widgets_marshal_VOID__STRING_INT
	.cfi_endproc

	.globl	_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE
	.align	16, 0x90
	.type	_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE,@function
_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE: # @_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#1:                                 # %do.body
	cmpl	$3, -20(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_widgets_marshal_VOID__DOUBLE_DOUBLE(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_12
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB5_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB5_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_11
.LBB5_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB5_11:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	56(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-80(%rbp), %rsi
	callq	*%rax
.LBB5_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE, .Lfunc_end5-_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE
	.cfi_endproc

	.globl	_gimp_widgets_marshal_BOOLEAN__POINTER
	.align	16, 0x90
	.type	_gimp_widgets_marshal_BOOLEAN__POINTER,@function
_gimp_widgets_marshal_BOOLEAN__POINTER: # @_gimp_widgets_marshal_BOOLEAN__POINTER
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
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_widgets_marshal_BOOLEAN__POINTER(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_17
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpl	$2, -20(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_widgets_marshal_BOOLEAN__POINTER(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_17
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB6_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB6_13:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	je	.LBB6_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB6_16:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-80(%rbp), %rdx
	callq	*%rax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_value_set_boolean@PLT
.LBB6_17:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_gimp_widgets_marshal_BOOLEAN__POINTER, .Lfunc_end6-_gimp_widgets_marshal_BOOLEAN__POINTER
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpWidgets"
	.size	.L.str, 15

	.type	.L__func__._gimp_widgets_marshal_VOID__INT_INT,@object # @__func__._gimp_widgets_marshal_VOID__INT_INT
.L__func__._gimp_widgets_marshal_VOID__INT_INT:
	.asciz	"_gimp_widgets_marshal_VOID__INT_INT"
	.size	.L__func__._gimp_widgets_marshal_VOID__INT_INT, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"n_param_values == 3"
	.size	.L.str.1, 20

	.type	.L__func__._gimp_widgets_marshal_VOID__OBJECT_INT,@object # @__func__._gimp_widgets_marshal_VOID__OBJECT_INT
.L__func__._gimp_widgets_marshal_VOID__OBJECT_INT:
	.asciz	"_gimp_widgets_marshal_VOID__OBJECT_INT"
	.size	.L__func__._gimp_widgets_marshal_VOID__OBJECT_INT, 39

	.type	.L__func__._gimp_widgets_marshal_VOID__POINTER_POINTER,@object # @__func__._gimp_widgets_marshal_VOID__POINTER_POINTER
.L__func__._gimp_widgets_marshal_VOID__POINTER_POINTER:
	.asciz	"_gimp_widgets_marshal_VOID__POINTER_POINTER"
	.size	.L__func__._gimp_widgets_marshal_VOID__POINTER_POINTER, 44

	.type	.L__func__._gimp_widgets_marshal_VOID__STRING_FLAGS,@object # @__func__._gimp_widgets_marshal_VOID__STRING_FLAGS
.L__func__._gimp_widgets_marshal_VOID__STRING_FLAGS:
	.asciz	"_gimp_widgets_marshal_VOID__STRING_FLAGS"
	.size	.L__func__._gimp_widgets_marshal_VOID__STRING_FLAGS, 41

	.type	.L__func__._gimp_widgets_marshal_VOID__STRING_INT,@object # @__func__._gimp_widgets_marshal_VOID__STRING_INT
.L__func__._gimp_widgets_marshal_VOID__STRING_INT:
	.asciz	"_gimp_widgets_marshal_VOID__STRING_INT"
	.size	.L__func__._gimp_widgets_marshal_VOID__STRING_INT, 39

	.type	.L__func__._gimp_widgets_marshal_VOID__DOUBLE_DOUBLE,@object # @__func__._gimp_widgets_marshal_VOID__DOUBLE_DOUBLE
.L__func__._gimp_widgets_marshal_VOID__DOUBLE_DOUBLE:
	.asciz	"_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE"
	.size	.L__func__._gimp_widgets_marshal_VOID__DOUBLE_DOUBLE, 42

	.type	.L__func__._gimp_widgets_marshal_BOOLEAN__POINTER,@object # @__func__._gimp_widgets_marshal_BOOLEAN__POINTER
.L__func__._gimp_widgets_marshal_BOOLEAN__POINTER:
	.asciz	"_gimp_widgets_marshal_BOOLEAN__POINTER"
	.size	.L__func__._gimp_widgets_marshal_BOOLEAN__POINTER, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"return_value != NULL"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n_param_values == 2"
	.size	.L.str.3, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
