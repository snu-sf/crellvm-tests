	.text
	.file	"gimpmarshal.bc"
	.globl	gimp_marshal_BOOLEAN__BOOLEAN
	.align	16, 0x90
	.type	gimp_marshal_BOOLEAN__BOOLEAN,@function
gimp_marshal_BOOLEAN__BOOLEAN:          # @gimp_marshal_BOOLEAN__BOOLEAN
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
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__BOOLEAN, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_17
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpl	$2, -20(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__BOOLEAN, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_17
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB0_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB0_13
.LBB0_12:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB0_13:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	je	.LBB0_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_16
.LBB0_15:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB0_16:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	32(%rcx), %esi
	movq	-80(%rbp), %rdx
	callq	*%rax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_value_set_boolean
.LBB0_17:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_marshal_BOOLEAN__BOOLEAN, .Lfunc_end0-gimp_marshal_BOOLEAN__BOOLEAN
	.cfi_endproc

	.globl	gimp_marshal_BOOLEAN__ENUM_INT
	.align	16, 0x90
	.type	gimp_marshal_BOOLEAN__ENUM_INT,@function
gimp_marshal_BOOLEAN__ENUM_INT:         # @gimp_marshal_BOOLEAN__ENUM_INT
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
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__ENUM_INT, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_17
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpl	$3, -20(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__ENUM_INT, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_17
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB1_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB1_13:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	je	.LBB1_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB1_16:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %esi
	movq	-80(%rbp), %rcx
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-100(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_value_set_boolean
.LBB1_17:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_marshal_BOOLEAN__ENUM_INT, .Lfunc_end1-gimp_marshal_BOOLEAN__ENUM_INT
	.cfi_endproc

	.globl	gimp_marshal_BOOLEAN__OBJECT_POINTER
	.align	16, 0x90
	.type	gimp_marshal_BOOLEAN__OBJECT_POINTER,@function
gimp_marshal_BOOLEAN__OBJECT_POINTER:   # @gimp_marshal_BOOLEAN__OBJECT_POINTER
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
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_17
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpl	$3, -20(%rbp)
	jne	.LBB2_8
# BB#7:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_17
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB2_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB2_13
.LBB2_12:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB2_13:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	je	.LBB2_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_16
.LBB2_15:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB2_16:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	-80(%rbp), %rcx
	callq	*%rax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_value_set_boolean
.LBB2_17:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_marshal_BOOLEAN__OBJECT_POINTER, .Lfunc_end2-gimp_marshal_BOOLEAN__OBJECT_POINTER
	.cfi_endproc

	.globl	gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING
	.align	16, 0x90
	.type	gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING,@function
gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING: # @gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING
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
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_17
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpl	$4, -20(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_17
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB3_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB3_13:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	je	.LBB3_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_16
.LBB3_15:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_16:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-80(%rbp), %r8
	callq	*%rax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_value_set_boolean
.LBB3_17:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, .Lfunc_end3-gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING
	.cfi_endproc

	.globl	gimp_marshal_BOOLEAN__STRING
	.align	16, 0x90
	.type	gimp_marshal_BOOLEAN__STRING,@function
gimp_marshal_BOOLEAN__STRING:           # @gimp_marshal_BOOLEAN__STRING
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
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__STRING, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_17
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpl	$2, -20(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__STRING, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_17
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB4_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB4_13:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	je	.LBB4_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_16
.LBB4_15:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB4_16:                               # %cond.end
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
	callq	g_value_set_boolean
.LBB4_17:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_marshal_BOOLEAN__STRING, .Lfunc_end4-gimp_marshal_BOOLEAN__STRING
	.cfi_endproc

	.globl	gimp_marshal_BOOLEAN__STRING_FLAGS
	.align	16, 0x90
	.type	gimp_marshal_BOOLEAN__STRING_FLAGS,@function
gimp_marshal_BOOLEAN__STRING_FLAGS:     # @gimp_marshal_BOOLEAN__STRING_FLAGS
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
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__STRING_FLAGS, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_17
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpl	$3, -20(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_BOOLEAN__STRING_FLAGS, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_17
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB5_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB5_13:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	je	.LBB5_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB5_16:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
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
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_value_set_boolean
.LBB5_17:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_marshal_BOOLEAN__STRING_FLAGS, .Lfunc_end5-gimp_marshal_BOOLEAN__STRING_FLAGS
	.cfi_endproc

	.globl	gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT
	.align	16, 0x90
	.type	gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT,@function
gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT: # @gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT
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
	cmpl	$6, -20(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_12
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB6_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB6_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB6_11:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	32(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	80(%rcx), %ecx
	movq	-32(%rbp), %r8
	movl	104(%r8), %r8d
	movq	-32(%rbp), %r9
	movl	128(%r9), %r9d
	movq	-80(%rbp), %r10
	movq	%r10, (%rsp)
	callq	*%rax
.LBB6_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT, .Lfunc_end6-gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT
	.cfi_endproc

	.globl	gimp_marshal_VOID__BOXED_ENUM
	.align	16, 0x90
	.type	gimp_marshal_VOID__BOXED_ENUM,@function
gimp_marshal_VOID__BOXED_ENUM:          # @gimp_marshal_VOID__BOXED_ENUM
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
	jne	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__BOXED_ENUM, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_12
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB7_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB7_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB7_11:                               # %cond.end
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
.LBB7_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_marshal_VOID__BOXED_ENUM, .Lfunc_end7-gimp_marshal_VOID__BOXED_ENUM
	.cfi_endproc

	.globl	gimp_marshal_VOID__DOUBLE_DOUBLE
	.align	16, 0x90
	.type	gimp_marshal_VOID__DOUBLE_DOUBLE,@function
gimp_marshal_VOID__DOUBLE_DOUBLE:       # @gimp_marshal_VOID__DOUBLE_DOUBLE
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
	jne	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_12
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB8_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB8_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB8_11:                               # %cond.end
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
.LBB8_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_marshal_VOID__DOUBLE_DOUBLE, .Lfunc_end8-gimp_marshal_VOID__DOUBLE_DOUBLE
	.cfi_endproc

	.globl	gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE
	.align	16, 0x90
	.type	gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE,@function
gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE: # @gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE
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
	jne	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_12
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB9_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB9_8
.LBB9_7:                                # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB9_8:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB9_11:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	56(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	80(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	104(%rcx), %xmm3        # xmm3 = mem[0],zero
	movq	-80(%rbp), %rsi
	callq	*%rax
.LBB9_12:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE, .Lfunc_end9-gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE
	.cfi_endproc

	.globl	gimp_marshal_VOID__ENUM_ENUM_BOXED_INT
	.align	16, 0x90
	.type	gimp_marshal_VOID__ENUM_ENUM_BOXED_INT,@function
gimp_marshal_VOID__ENUM_ENUM_BOXED_INT: # @gimp_marshal_VOID__ENUM_ENUM_BOXED_INT
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
	jne	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__ENUM_ENUM_BOXED_INT, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_12
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB10_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB10_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB10_11
.LBB10_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB10_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rcx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-32(%rbp), %r8
	movl	104(%r8), %r8d
	movq	-80(%rbp), %r9
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-92(%rbp), %edx         # 4-byte Reload
	callq	*%rax
.LBB10_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_marshal_VOID__ENUM_ENUM_BOXED_INT, .Lfunc_end10-gimp_marshal_VOID__ENUM_ENUM_BOXED_INT
	.cfi_endproc

	.globl	gimp_marshal_VOID__ENUM_INT
	.align	16, 0x90
	.type	gimp_marshal_VOID__ENUM_INT,@function
gimp_marshal_VOID__ENUM_INT:            # @gimp_marshal_VOID__ENUM_INT
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
	jne	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__ENUM_INT, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_12
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB11_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB11_8
.LBB11_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB11_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB11_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %esi
	movq	-80(%rbp), %rcx
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-92(%rbp), %edx         # 4-byte Reload
	callq	*%rax
.LBB11_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_marshal_VOID__ENUM_INT, .Lfunc_end11-gimp_marshal_VOID__ENUM_INT
	.cfi_endproc

	.globl	gimp_marshal_VOID__ENUM_INT_BOOLEAN
	.align	16, 0x90
	.type	gimp_marshal_VOID__ENUM_INT_BOOLEAN,@function
gimp_marshal_VOID__ENUM_INT_BOOLEAN:    # @gimp_marshal_VOID__ENUM_INT_BOOLEAN
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
	cmpl	$4, -20(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__ENUM_INT_BOOLEAN, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_12
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB12_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB12_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB12_11
.LBB12_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB12_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	80(%rcx), %ecx
	movq	-80(%rbp), %r8
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-92(%rbp), %edx         # 4-byte Reload
	callq	*%rax
.LBB12_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_marshal_VOID__ENUM_INT_BOOLEAN, .Lfunc_end12-gimp_marshal_VOID__ENUM_INT_BOOLEAN
	.cfi_endproc

	.globl	gimp_marshal_VOID__ENUM_OBJECT
	.align	16, 0x90
	.type	gimp_marshal_VOID__ENUM_OBJECT,@function
gimp_marshal_VOID__ENUM_OBJECT:         # @gimp_marshal_VOID__ENUM_OBJECT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
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
	jne	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__ENUM_OBJECT, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_12
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB13_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB13_8
.LBB13_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB13_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB13_11
.LBB13_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB13_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-80(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	*%rax
.LBB13_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_marshal_VOID__ENUM_OBJECT, .Lfunc_end13-gimp_marshal_VOID__ENUM_OBJECT
	.cfi_endproc

	.globl	gimp_marshal_VOID__ENUM_POINTER
	.align	16, 0x90
	.type	gimp_marshal_VOID__ENUM_POINTER,@function
gimp_marshal_VOID__ENUM_POINTER:        # @gimp_marshal_VOID__ENUM_POINTER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
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
	jne	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__ENUM_POINTER, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_12
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB14_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB14_8
.LBB14_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB14_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB14_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB14_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-80(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	*%rax
.LBB14_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_marshal_VOID__ENUM_POINTER, .Lfunc_end14-gimp_marshal_VOID__ENUM_POINTER
	.cfi_endproc

	.globl	gimp_marshal_VOID__INT_INT
	.align	16, 0x90
	.type	gimp_marshal_VOID__INT_INT,@function
gimp_marshal_VOID__INT_INT:             # @gimp_marshal_VOID__INT_INT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
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
	jne	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__INT_INT, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_12
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB15_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB15_8
.LBB15_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB15_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB15_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB15_11:                              # %cond.end
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
.LBB15_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_marshal_VOID__INT_INT, .Lfunc_end15-gimp_marshal_VOID__INT_INT
	.cfi_endproc

	.globl	gimp_marshal_VOID__INT_INT_INT_INT
	.align	16, 0x90
	.type	gimp_marshal_VOID__INT_INT_INT_INT,@function
gimp_marshal_VOID__INT_INT_INT_INT:     # @gimp_marshal_VOID__INT_INT_INT_INT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
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
	jne	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__INT_INT_INT_INT, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_12
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB16_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB16_8
.LBB16_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB16_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB16_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	32(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	56(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	80(%rcx), %ecx
	movq	-32(%rbp), %r8
	movl	104(%r8), %r8d
	movq	-80(%rbp), %r9
	callq	*%rax
.LBB16_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_marshal_VOID__INT_INT_INT_INT, .Lfunc_end16-gimp_marshal_VOID__INT_INT_INT_INT
	.cfi_endproc

	.globl	gimp_marshal_VOID__OBJECT_BOOLEAN
	.align	16, 0x90
	.type	gimp_marshal_VOID__OBJECT_BOOLEAN,@function
gimp_marshal_VOID__OBJECT_BOOLEAN:      # @gimp_marshal_VOID__OBJECT_BOOLEAN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
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
	jne	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__OBJECT_BOOLEAN, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_12
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB17_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB17_8
.LBB17_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB17_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB17_11:                              # %cond.end
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
.LBB17_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_marshal_VOID__OBJECT_BOOLEAN, .Lfunc_end17-gimp_marshal_VOID__OBJECT_BOOLEAN
	.cfi_endproc

	.globl	gimp_marshal_VOID__OBJECT_INT
	.align	16, 0x90
	.type	gimp_marshal_VOID__OBJECT_INT,@function
gimp_marshal_VOID__OBJECT_INT:          # @gimp_marshal_VOID__OBJECT_INT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
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
	jne	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__OBJECT_INT, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_12
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB18_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB18_8
.LBB18_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB18_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_11
.LBB18_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB18_11:                              # %cond.end
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
.LBB18_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_marshal_VOID__OBJECT_INT, .Lfunc_end18-gimp_marshal_VOID__OBJECT_INT
	.cfi_endproc

	.globl	gimp_marshal_VOID__OBJECT_OBJECT
	.align	16, 0x90
	.type	gimp_marshal_VOID__OBJECT_OBJECT,@function
gimp_marshal_VOID__OBJECT_OBJECT:       # @gimp_marshal_VOID__OBJECT_OBJECT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
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
	jne	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__OBJECT_OBJECT, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_12
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB19_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB19_8
.LBB19_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB19_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB19_11
.LBB19_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB19_11:                              # %cond.end
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
.LBB19_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_marshal_VOID__OBJECT_OBJECT, .Lfunc_end19-gimp_marshal_VOID__OBJECT_OBJECT
	.cfi_endproc

	.globl	gimp_marshal_VOID__OBJECT_POINTER
	.align	16, 0x90
	.type	gimp_marshal_VOID__OBJECT_POINTER,@function
gimp_marshal_VOID__OBJECT_POINTER:      # @gimp_marshal_VOID__OBJECT_POINTER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
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
	jne	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__OBJECT_POINTER, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_12
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB20_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB20_8
.LBB20_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB20_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB20_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_11
.LBB20_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB20_11:                              # %cond.end
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
.LBB20_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_marshal_VOID__OBJECT_POINTER, .Lfunc_end20-gimp_marshal_VOID__OBJECT_POINTER
	.cfi_endproc

	.globl	gimp_marshal_VOID__POINTER_BOXED
	.align	16, 0x90
	.type	gimp_marshal_VOID__POINTER_BOXED,@function
gimp_marshal_VOID__POINTER_BOXED:       # @gimp_marshal_VOID__POINTER_BOXED
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
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
	jne	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__POINTER_BOXED, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_12
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB21_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB21_8
.LBB21_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB21_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB21_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB21_11:                              # %cond.end
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
.LBB21_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_marshal_VOID__POINTER_BOXED, .Lfunc_end21-gimp_marshal_VOID__POINTER_BOXED
	.cfi_endproc

	.globl	gimp_marshal_VOID__POINTER_ENUM
	.align	16, 0x90
	.type	gimp_marshal_VOID__POINTER_ENUM,@function
gimp_marshal_VOID__POINTER_ENUM:        # @gimp_marshal_VOID__POINTER_ENUM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
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
	jne	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__POINTER_ENUM, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_12
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB22_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB22_8
.LBB22_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB22_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB22_11
.LBB22_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB22_11:                              # %cond.end
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
.LBB22_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_marshal_VOID__POINTER_ENUM, .Lfunc_end22-gimp_marshal_VOID__POINTER_ENUM
	.cfi_endproc

	.globl	gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN
	.align	16, 0x90
	.type	gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN,@function
gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN: # @gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
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
	cmpl	$4, -20(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_12
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB23_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB23_8
.LBB23_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB23_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB23_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB23_11
.LBB23_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB23_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movl	80(%rcx), %ecx
	movq	-80(%rbp), %r8
	callq	*%rax
.LBB23_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN, .Lfunc_end23-gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN
	.cfi_endproc

	.globl	gimp_marshal_VOID__POINTER_UINT_FLAGS
	.align	16, 0x90
	.type	gimp_marshal_VOID__POINTER_UINT_FLAGS,@function
gimp_marshal_VOID__POINTER_UINT_FLAGS:  # @gimp_marshal_VOID__POINTER_UINT_FLAGS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
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
	cmpl	$4, -20(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__POINTER_UINT_FLAGS, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_12
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB24_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB24_8
.LBB24_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB24_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB24_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB24_11
.LBB24_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB24_11:                              # %cond.end
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
	movl	%ecx, %r8d
	movq	-80(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	*%rax
.LBB24_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_marshal_VOID__POINTER_UINT_FLAGS, .Lfunc_end24-gimp_marshal_VOID__POINTER_UINT_FLAGS
	.cfi_endproc

	.globl	gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS
	.align	16, 0x90
	.type	gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS,@function
gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS: # @gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
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
	jne	.LBB25_3
# BB#2:                                 # %if.then
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_12
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB25_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB25_8
.LBB25_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB25_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB25_11
.LBB25_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB25_11:                              # %cond.end
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
	movq	104(%r8), %r8
	movl	%r8d, %r9d
	movq	-80(%rbp), %r8
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movl	%r9d, %r8d
	movq	-96(%rbp), %r9          # 8-byte Reload
	callq	*%rax
.LBB25_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS, .Lfunc_end25-gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS
	.cfi_endproc

	.globl	gimp_marshal_VOID__STRING_FLAGS
	.align	16, 0x90
	.type	gimp_marshal_VOID__STRING_FLAGS,@function
gimp_marshal_VOID__STRING_FLAGS:        # @gimp_marshal_VOID__STRING_FLAGS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
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
	jne	.LBB26_3
# BB#2:                                 # %if.then
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__STRING_FLAGS, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_12
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB26_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB26_8
.LBB26_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB26_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB26_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB26_11
.LBB26_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB26_11:                              # %cond.end
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
.LBB26_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_marshal_VOID__STRING_FLAGS, .Lfunc_end26-gimp_marshal_VOID__STRING_FLAGS
	.cfi_endproc

	.globl	gimp_marshal_VOID__STRING_STRING_STRING
	.align	16, 0x90
	.type	gimp_marshal_VOID__STRING_STRING_STRING,@function
gimp_marshal_VOID__STRING_STRING_STRING: # @gimp_marshal_VOID__STRING_STRING_STRING
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
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
	cmpl	$4, -20(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	jmp	.LBB27_4
.LBB27_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_marshal_VOID__STRING_STRING_STRING, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_12
.LBB27_4:                               # %if.end
	jmp	.LBB27_5
.LBB27_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB27_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB27_8
.LBB27_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB27_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB27_11
.LBB27_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB27_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-80(%rbp), %r8
	callq	*%rax
.LBB27_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_marshal_VOID__STRING_STRING_STRING, .Lfunc_end27-gimp_marshal_VOID__STRING_STRING_STRING
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_marshal_BOOLEAN__BOOLEAN,@object # @__func__.gimp_marshal_BOOLEAN__BOOLEAN
.L__func__.gimp_marshal_BOOLEAN__BOOLEAN:
	.asciz	"gimp_marshal_BOOLEAN__BOOLEAN"
	.size	.L__func__.gimp_marshal_BOOLEAN__BOOLEAN, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"return_value != NULL"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"n_param_values == 2"
	.size	.L.str.2, 20

	.type	.L__func__.gimp_marshal_BOOLEAN__ENUM_INT,@object # @__func__.gimp_marshal_BOOLEAN__ENUM_INT
.L__func__.gimp_marshal_BOOLEAN__ENUM_INT:
	.asciz	"gimp_marshal_BOOLEAN__ENUM_INT"
	.size	.L__func__.gimp_marshal_BOOLEAN__ENUM_INT, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n_param_values == 3"
	.size	.L.str.3, 20

	.type	.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER,@object # @__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER
.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER:
	.asciz	"gimp_marshal_BOOLEAN__OBJECT_POINTER"
	.size	.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER, 37

	.type	.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING,@object # @__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING
.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING:
	.asciz	"gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING"
	.size	.L__func__.gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, 44

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n_param_values == 4"
	.size	.L.str.4, 20

	.type	.L__func__.gimp_marshal_BOOLEAN__STRING,@object # @__func__.gimp_marshal_BOOLEAN__STRING
.L__func__.gimp_marshal_BOOLEAN__STRING:
	.asciz	"gimp_marshal_BOOLEAN__STRING"
	.size	.L__func__.gimp_marshal_BOOLEAN__STRING, 29

	.type	.L__func__.gimp_marshal_BOOLEAN__STRING_FLAGS,@object # @__func__.gimp_marshal_BOOLEAN__STRING_FLAGS
.L__func__.gimp_marshal_BOOLEAN__STRING_FLAGS:
	.asciz	"gimp_marshal_BOOLEAN__STRING_FLAGS"
	.size	.L__func__.gimp_marshal_BOOLEAN__STRING_FLAGS, 35

	.type	.L__func__.gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT,@object # @__func__.gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT
.L__func__.gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT:
	.asciz	"gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT"
	.size	.L__func__.gimp_marshal_VOID__BOOLEAN_INT_INT_INT_INT, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"n_param_values == 6"
	.size	.L.str.5, 20

	.type	.L__func__.gimp_marshal_VOID__BOXED_ENUM,@object # @__func__.gimp_marshal_VOID__BOXED_ENUM
.L__func__.gimp_marshal_VOID__BOXED_ENUM:
	.asciz	"gimp_marshal_VOID__BOXED_ENUM"
	.size	.L__func__.gimp_marshal_VOID__BOXED_ENUM, 30

	.type	.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE,@object # @__func__.gimp_marshal_VOID__DOUBLE_DOUBLE
.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE:
	.asciz	"gimp_marshal_VOID__DOUBLE_DOUBLE"
	.size	.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE, 33

	.type	.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE,@object # @__func__.gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE
.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE:
	.asciz	"gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE"
	.size	.L__func__.gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE, 47

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"n_param_values == 5"
	.size	.L.str.6, 20

	.type	.L__func__.gimp_marshal_VOID__ENUM_ENUM_BOXED_INT,@object # @__func__.gimp_marshal_VOID__ENUM_ENUM_BOXED_INT
.L__func__.gimp_marshal_VOID__ENUM_ENUM_BOXED_INT:
	.asciz	"gimp_marshal_VOID__ENUM_ENUM_BOXED_INT"
	.size	.L__func__.gimp_marshal_VOID__ENUM_ENUM_BOXED_INT, 39

	.type	.L__func__.gimp_marshal_VOID__ENUM_INT,@object # @__func__.gimp_marshal_VOID__ENUM_INT
.L__func__.gimp_marshal_VOID__ENUM_INT:
	.asciz	"gimp_marshal_VOID__ENUM_INT"
	.size	.L__func__.gimp_marshal_VOID__ENUM_INT, 28

	.type	.L__func__.gimp_marshal_VOID__ENUM_INT_BOOLEAN,@object # @__func__.gimp_marshal_VOID__ENUM_INT_BOOLEAN
.L__func__.gimp_marshal_VOID__ENUM_INT_BOOLEAN:
	.asciz	"gimp_marshal_VOID__ENUM_INT_BOOLEAN"
	.size	.L__func__.gimp_marshal_VOID__ENUM_INT_BOOLEAN, 36

	.type	.L__func__.gimp_marshal_VOID__ENUM_OBJECT,@object # @__func__.gimp_marshal_VOID__ENUM_OBJECT
.L__func__.gimp_marshal_VOID__ENUM_OBJECT:
	.asciz	"gimp_marshal_VOID__ENUM_OBJECT"
	.size	.L__func__.gimp_marshal_VOID__ENUM_OBJECT, 31

	.type	.L__func__.gimp_marshal_VOID__ENUM_POINTER,@object # @__func__.gimp_marshal_VOID__ENUM_POINTER
.L__func__.gimp_marshal_VOID__ENUM_POINTER:
	.asciz	"gimp_marshal_VOID__ENUM_POINTER"
	.size	.L__func__.gimp_marshal_VOID__ENUM_POINTER, 32

	.type	.L__func__.gimp_marshal_VOID__INT_INT,@object # @__func__.gimp_marshal_VOID__INT_INT
.L__func__.gimp_marshal_VOID__INT_INT:
	.asciz	"gimp_marshal_VOID__INT_INT"
	.size	.L__func__.gimp_marshal_VOID__INT_INT, 27

	.type	.L__func__.gimp_marshal_VOID__INT_INT_INT_INT,@object # @__func__.gimp_marshal_VOID__INT_INT_INT_INT
.L__func__.gimp_marshal_VOID__INT_INT_INT_INT:
	.asciz	"gimp_marshal_VOID__INT_INT_INT_INT"
	.size	.L__func__.gimp_marshal_VOID__INT_INT_INT_INT, 35

	.type	.L__func__.gimp_marshal_VOID__OBJECT_BOOLEAN,@object # @__func__.gimp_marshal_VOID__OBJECT_BOOLEAN
.L__func__.gimp_marshal_VOID__OBJECT_BOOLEAN:
	.asciz	"gimp_marshal_VOID__OBJECT_BOOLEAN"
	.size	.L__func__.gimp_marshal_VOID__OBJECT_BOOLEAN, 34

	.type	.L__func__.gimp_marshal_VOID__OBJECT_INT,@object # @__func__.gimp_marshal_VOID__OBJECT_INT
.L__func__.gimp_marshal_VOID__OBJECT_INT:
	.asciz	"gimp_marshal_VOID__OBJECT_INT"
	.size	.L__func__.gimp_marshal_VOID__OBJECT_INT, 30

	.type	.L__func__.gimp_marshal_VOID__OBJECT_OBJECT,@object # @__func__.gimp_marshal_VOID__OBJECT_OBJECT
.L__func__.gimp_marshal_VOID__OBJECT_OBJECT:
	.asciz	"gimp_marshal_VOID__OBJECT_OBJECT"
	.size	.L__func__.gimp_marshal_VOID__OBJECT_OBJECT, 33

	.type	.L__func__.gimp_marshal_VOID__OBJECT_POINTER,@object # @__func__.gimp_marshal_VOID__OBJECT_POINTER
.L__func__.gimp_marshal_VOID__OBJECT_POINTER:
	.asciz	"gimp_marshal_VOID__OBJECT_POINTER"
	.size	.L__func__.gimp_marshal_VOID__OBJECT_POINTER, 34

	.type	.L__func__.gimp_marshal_VOID__POINTER_BOXED,@object # @__func__.gimp_marshal_VOID__POINTER_BOXED
.L__func__.gimp_marshal_VOID__POINTER_BOXED:
	.asciz	"gimp_marshal_VOID__POINTER_BOXED"
	.size	.L__func__.gimp_marshal_VOID__POINTER_BOXED, 33

	.type	.L__func__.gimp_marshal_VOID__POINTER_ENUM,@object # @__func__.gimp_marshal_VOID__POINTER_ENUM
.L__func__.gimp_marshal_VOID__POINTER_ENUM:
	.asciz	"gimp_marshal_VOID__POINTER_ENUM"
	.size	.L__func__.gimp_marshal_VOID__POINTER_ENUM, 32

	.type	.L__func__.gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN,@object # @__func__.gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN
.L__func__.gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN:
	.asciz	"gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN"
	.size	.L__func__.gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN, 41

	.type	.L__func__.gimp_marshal_VOID__POINTER_UINT_FLAGS,@object # @__func__.gimp_marshal_VOID__POINTER_UINT_FLAGS
.L__func__.gimp_marshal_VOID__POINTER_UINT_FLAGS:
	.asciz	"gimp_marshal_VOID__POINTER_UINT_FLAGS"
	.size	.L__func__.gimp_marshal_VOID__POINTER_UINT_FLAGS, 38

	.type	.L__func__.gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS,@object # @__func__.gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS
.L__func__.gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS:
	.asciz	"gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS"
	.size	.L__func__.gimp_marshal_VOID__STRING_BOOLEAN_UINT_FLAGS, 45

	.type	.L__func__.gimp_marshal_VOID__STRING_FLAGS,@object # @__func__.gimp_marshal_VOID__STRING_FLAGS
.L__func__.gimp_marshal_VOID__STRING_FLAGS:
	.asciz	"gimp_marshal_VOID__STRING_FLAGS"
	.size	.L__func__.gimp_marshal_VOID__STRING_FLAGS, 32

	.type	.L__func__.gimp_marshal_VOID__STRING_STRING_STRING,@object # @__func__.gimp_marshal_VOID__STRING_STRING_STRING
.L__func__.gimp_marshal_VOID__STRING_STRING_STRING:
	.asciz	"gimp_marshal_VOID__STRING_STRING_STRING"
	.size	.L__func__.gimp_marshal_VOID__STRING_STRING_STRING, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
