	.text
	.file	"gimpprocedure.bc"
	.globl	gimp_procedure_get_type
	.align	16, 0x90
	.type	gimp_procedure_get_type,@function
gimp_procedure_get_type:                # @gimp_procedure_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_procedure_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_procedure_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$176, %edx
	movabsq	$gimp_procedure_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_procedure_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_procedure_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_procedure_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_procedure_get_type, .Lfunc_end0-gimp_procedure_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_class_intern_init,@function
gimp_procedure_class_intern_init:       # @gimp_procedure_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_procedure_parent_class
	cmpl	$0, GimpProcedure_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpProcedure_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_procedure_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_procedure_class_intern_init, .Lfunc_end1-gimp_procedure_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_init,@function
gimp_procedure_init:                    # @gimp_procedure_init
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
	movq	-8(%rbp), %rdi
	movl	$0, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_procedure_init, .Lfunc_end2-gimp_procedure_init
	.cfi_endproc

	.globl	gimp_procedure_new
	.align	16, 0x90
	.type	gimp_procedure_new,@function
gimp_procedure_new:                     # @gimp_procedure_new
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_procedure_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_procedure_new, .Lfunc_end3-gimp_procedure_new
	.cfi_endproc

	.globl	gimp_procedure_set_strings
	.align	16, 0x90
	.type	gimp_procedure_set_strings,@function
gimp_procedure_set_strings:             # @gimp_procedure_set_strings
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_set_strings, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_free_strings
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
.LBB4_13:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_procedure_set_strings, .Lfunc_end4-gimp_procedure_set_strings
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_free_strings,@function
gimp_procedure_free_strings:            # @gimp_procedure_free_strings
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 36(%rdi)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_free
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_procedure_free_strings, .Lfunc_end5-gimp_procedure_free_strings
	.cfi_endproc

	.globl	gimp_procedure_set_static_strings
	.align	16, 0x90
	.type	gimp_procedure_set_static_strings,@function
gimp_procedure_set_static_strings:      # @gimp_procedure_set_static_strings
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_set_static_strings, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_free_strings
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-8(%rbp), %rax
	movl	$1, 36(%rax)
.LBB6_13:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_procedure_set_static_strings, .Lfunc_end6-gimp_procedure_set_static_strings
	.cfi_endproc

	.globl	gimp_procedure_take_strings
	.align	16, 0x90
	.type	gimp_procedure_take_strings,@function
gimp_procedure_take_strings:            # @gimp_procedure_take_strings
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_take_strings, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_free_strings
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
.LBB7_13:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_procedure_take_strings, .Lfunc_end7-gimp_procedure_take_strings
	.cfi_endproc

	.globl	gimp_procedure_execute
	.align	16, 0x90
	.type	gimp_procedure_execute,@function
gimp_procedure_execute:                 # @gimp_procedure_execute
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_96
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_96
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	jmp	.LBB8_25
.LBB8_25:                               # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB8_27
# BB#26:                                # %if.then.48
	movl	$0, -140(%rbp)
	jmp	.LBB8_32
.LBB8_27:                               # %if.else.49
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_30
# BB#28:                                # %land.lhs.true.52
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB8_30
# BB#29:                                # %if.then.56
	movl	$1, -140(%rbp)
	jmp	.LBB8_31
.LBB8_30:                               # %if.else.57
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB8_31:                               # %if.end.59
	jmp	.LBB8_32
.LBB8_32:                               # %if.end.60
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB8_34
# BB#33:                                # %if.then.63
	jmp	.LBB8_35
.LBB8_34:                               # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_96
.LBB8_35:                               # %if.end.65
	jmp	.LBB8_36
.LBB8_36:                               # %do.end.66
	jmp	.LBB8_37
.LBB8_37:                               # %do.body.67
	cmpq	$0, -40(%rbp)
	je	.LBB8_46
# BB#38:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB8_40
# BB#39:                                # %if.then.77
	movl	$0, -164(%rbp)
	jmp	.LBB8_45
.LBB8_40:                               # %if.else.78
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_43
# BB#41:                                # %land.lhs.true.81
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB8_43
# BB#42:                                # %if.then.85
	movl	$1, -164(%rbp)
	jmp	.LBB8_44
.LBB8_43:                               # %if.else.86
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB8_44:                               # %if.end.88
	jmp	.LBB8_45
.LBB8_45:                               # %if.end.89
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB8_47
.LBB8_46:                               # %if.then.92
	jmp	.LBB8_48
.LBB8_47:                               # %if.else.93
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_96
.LBB8_48:                               # %if.end.94
	jmp	.LBB8_49
.LBB8_49:                               # %do.end.95
	jmp	.LBB8_50
.LBB8_50:                               # %do.body.96
	cmpq	$0, -48(%rbp)
	je	.LBB8_52
# BB#51:                                # %if.then.98
	jmp	.LBB8_53
.LBB8_52:                               # %if.else.99
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_96
.LBB8_53:                               # %if.end.100
	jmp	.LBB8_54
.LBB8_54:                               # %do.end.101
	jmp	.LBB8_55
.LBB8_55:                               # %do.body.102
	cmpq	$0, -56(%rbp)
	je	.LBB8_57
# BB#56:                                # %lor.lhs.false.104
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_58
.LBB8_57:                               # %if.then.106
	jmp	.LBB8_59
.LBB8_58:                               # %if.else.107
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_96
.LBB8_59:                               # %if.end.108
	jmp	.LBB8_60
.LBB8_60:                               # %do.end.109
	xorl	%r8d, %r8d
	leaq	-72(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edx
	movq	-48(%rbp), %rcx
	callq	gimp_procedure_validate_args
	cmpl	$0, %eax
	jne	.LBB8_62
# BB#61:                                # %if.then.113
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_96
.LBB8_62:                               # %if.end.115
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB8_64
# BB#63:                                # %if.then.124
	movl	$0, -188(%rbp)
	jmp	.LBB8_69
.LBB8_64:                               # %if.else.125
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_67
# BB#65:                                # %land.lhs.true.128
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB8_67
# BB#66:                                # %if.then.132
	movl	$1, -188(%rbp)
	jmp	.LBB8_68
.LBB8_67:                               # %if.else.133
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB8_68:                               # %if.end.135
	jmp	.LBB8_69
.LBB8_69:                               # %if.end.136
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB8_71
# BB#70:                                # %if.then.139
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -32(%rbp)
	jmp	.LBB8_72
.LBB8_71:                               # %if.else.141
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_context_new
	movq	%rax, -32(%rbp)
.LBB8_72:                               # %if.end.143
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpq	$0, -64(%rbp)
	je	.LBB8_90
# BB#73:                                # %if.then.147
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	ja	.LBB8_88
	jmp	.LBB8_74
.LBB8_74:                               # %sw.bb
	cmpq	$0, -56(%rbp)
	je	.LBB8_87
# BB#75:                                # %land.lhs.true.150
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_87
# BB#76:                                # %land.lhs.true.152
	movq	-64(%rbp), %rax
	cmpl	$1, (%rax)
	jbe	.LBB8_87
# BB#77:                                # %land.lhs.true.154
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, -200(%rbp)
	movq	$64, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB8_79
# BB#78:                                # %if.then.163
	movl	$0, -212(%rbp)
	jmp	.LBB8_83
.LBB8_79:                               # %if.else.164
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB8_81
# BB#80:                                # %if.then.167
	movl	$1, -212(%rbp)
	jmp	.LBB8_82
.LBB8_81:                               # %if.else.168
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -212(%rbp)
.LBB8_82:                               # %if.end.170
	jmp	.LBB8_83
.LBB8_83:                               # %if.end.171
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB8_87
# BB#84:                                # %if.then.174
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdi
	callq	g_value_get_string
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB8_86
# BB#85:                                # %if.then.181
	movq	-56(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	xorl	%edx, %edx
	movq	-232(%rbp), %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_set_error_literal
.LBB8_86:                               # %if.end.183
	jmp	.LBB8_87
.LBB8_87:                               # %if.end.184
	jmp	.LBB8_89
.LBB8_88:                               # %sw.default
	jmp	.LBB8_89
.LBB8_89:                               # %sw.epilog
	jmp	.LBB8_95
.LBB8_90:                               # %if.else.185
	movabsq	$.L.str.9, %rdi
	movabsq	$.L__func__.gimp_procedure_execute, %rsi
	movb	$0, %al
	callq	g_warning
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movl	$4, %esi
	movl	-252(%rbp), %edi        # 4-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_error_new
	xorl	%esi, %esi
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_93
# BB#91:                                # %land.lhs.true.192
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_93
# BB#92:                                # %if.then.194
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_propagate_error
	jmp	.LBB8_94
.LBB8_93:                               # %if.else.195
	movq	-72(%rbp), %rdi
	callq	g_error_free
.LBB8_94:                               # %if.end.196
	jmp	.LBB8_95
.LBB8_95:                               # %if.end.197
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_96:                               # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_procedure_execute, .Lfunc_end8-gimp_procedure_execute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_validate_args,@function
gimp_procedure_validate_args:           # @gimp_procedure_validate_args
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
	subq	$592, %rsp              # imm = 0x250
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	cmpl	-28(%rbp), %edx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jae	.LBB9_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB9_4:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	-180(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB9_53
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$76, %eax
	movl	%eax, %esi
	movslq	-60(%rbp), %rcx
	movq	-40(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movslq	-60(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -88(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB9_10
# BB#6:                                 # %if.then
	cmpl	$0, -44(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.6
	movq	-56(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.16, %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_name
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movq	-96(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	callq	g_type_name
	movq	-88(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_type_name
	movl	$4, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	-228(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	-240(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB9_9
.LBB9_8:                                # %if.else
	movq	-56(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.17, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_name
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movq	-96(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	callq	g_type_name
	movq	-88(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_type_name
	movl	$3, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	-252(%rbp), %esi        # 4-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	-280(%rbp), %r9         # 8-byte Reload
	movl	-284(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	-296(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	g_set_error
.LBB9_9:                                # %if.end
	movl	$0, -4(%rbp)
	jmp	.LBB9_54
.LBB9_10:                               # %if.else.20
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$16384, %ecx            # imm = 0x4000
	cmpl	$0, %ecx
	jne	.LBB9_50
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-120(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	memset
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	callq	g_value_init
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-88(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_value_type_transformable
	cmpl	$0, %eax
	je	.LBB9_13
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	g_value_transform
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.28
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-120(%rbp), %rdi
	movabsq	$.L.str.18, %rsi
	callq	g_value_set_static_string
.LBB9_14:                               # %if.end.29
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_param_value_validate
	cmpl	$0, %eax
	je	.LBB9_49
# BB#15:                                # %if.then.32
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_param_drawable_id_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB9_17
# BB#16:                                # %if.then.35
	movl	$0, -140(%rbp)
	jmp	.LBB9_22
.LBB9_17:                               # %if.else.36
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_20
# BB#18:                                # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_20
# BB#19:                                # %if.then.41
	movl	$1, -140(%rbp)
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.42
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB9_21:                               # %if.end.44
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.45
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB9_28
# BB#23:                                # %land.lhs.true.47
	movq	-72(%rbp), %rdi
	callq	g_value_get_int
	cmpl	$-1, %eax
	jne	.LBB9_28
# BB#24:                                # %if.then.50
	cmpl	$0, -44(%rbp)
	je	.LBB9_26
# BB#25:                                # %if.then.52
	movq	-56(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.19, %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_name
	movl	$4, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	-340(%rbp), %esi        # 4-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB9_27
.LBB9_26:                               # %if.else.57
	movq	-56(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.20, %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_name
	movl	$3, %edx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movl	-372(%rbp), %esi        # 4-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
.LBB9_27:                               # %if.end.62
	jmp	.LBB9_48
.LBB9_28:                               # %if.else.63
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB9_30
# BB#29:                                # %if.then.72
	movl	$0, -164(%rbp)
	jmp	.LBB9_35
.LBB9_30:                               # %if.else.73
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_33
# BB#31:                                # %land.lhs.true.76
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB9_33
# BB#32:                                # %if.then.80
	movl	$1, -164(%rbp)
	jmp	.LBB9_34
.LBB9_33:                               # %if.else.81
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB9_34:                               # %if.end.83
	jmp	.LBB9_35
.LBB9_35:                               # %if.end.84
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB9_41
# BB#36:                                # %land.lhs.true.87
	movq	-72(%rbp), %rdi
	callq	g_value_get_int
	cmpl	$-1, %eax
	jne	.LBB9_41
# BB#37:                                # %if.then.90
	cmpl	$0, -44(%rbp)
	je	.LBB9_39
# BB#38:                                # %if.then.92
	movq	-56(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.21, %rdi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_name
	movl	$4, %edx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	-404(%rbp), %esi        # 4-byte Reload
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB9_40
.LBB9_39:                               # %if.else.97
	movq	-56(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.22, %rdi
	movl	%eax, -436(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_name
	movl	$3, %edx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movl	-436(%rbp), %esi        # 4-byte Reload
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
.LBB9_40:                               # %if.end.102
	jmp	.LBB9_47
.LBB9_41:                               # %if.else.103
	leaq	-120(%rbp), %rdi
	callq	g_value_get_string
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB9_43
# BB#42:                                # %if.then.107
	movabsq	$.L.str.23, %rax
	movq	%rax, -176(%rbp)
.LBB9_43:                               # %if.end.108
	cmpl	$0, -44(%rbp)
	je	.LBB9_45
# BB#44:                                # %if.then.110
	movq	-56(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.24, %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-176(%rbp), %r9
	movq	-80(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%r9, -496(%rbp)         # 8-byte Spill
	callq	g_param_spec_get_name
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movq	-96(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	callq	g_type_name
	movl	$4, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	-468(%rbp), %esi        # 4-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	-488(%rbp), %r8         # 8-byte Reload
	movq	-496(%rbp), %r9         # 8-byte Reload
	movq	-504(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-508(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB9_46
.LBB9_45:                               # %if.else.117
	movq	-56(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.25, %rdi
	movl	%eax, -524(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-176(%rbp), %r9
	movq	-80(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%r9, -552(%rbp)         # 8-byte Spill
	callq	g_param_spec_get_name
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movq	-96(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	callq	g_type_name
	movl	$3, %edx
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movl	-524(%rbp), %esi        # 4-byte Reload
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	-544(%rbp), %r8         # 8-byte Reload
	movq	-552(%rbp), %r9         # 8-byte Reload
	movq	-560(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-564(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	g_set_error
.LBB9_46:                               # %if.end.124
	jmp	.LBB9_47
.LBB9_47:                               # %if.end.125
	jmp	.LBB9_48
.LBB9_48:                               # %if.end.126
	leaq	-120(%rbp), %rdi
	callq	g_value_unset
	movl	$0, -4(%rbp)
	jmp	.LBB9_54
.LBB9_49:                               # %if.end.127
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-120(%rbp), %rdi
	callq	g_value_unset
.LBB9_50:                               # %if.end.128
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_51
.LBB9_51:                               # %if.end.129
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_52
.LBB9_52:                               # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB9_1
.LBB9_53:                               # %for.end
	movl	$1, -4(%rbp)
.LBB9_54:                               # %return
	movl	-4(%rbp), %eax
	addq	$592, %rsp              # imm = 0x250
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_procedure_validate_args, .Lfunc_end9-gimp_procedure_validate_args
	.cfi_endproc

	.globl	gimp_procedure_get_return_values
	.align	16, 0x90
	.type	gimp_procedure_get_return_values,@function
gimp_procedure_get_return_values:       # @gimp_procedure_get_return_values
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %r8d
	leaq	-64(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	je	.LBB10_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB10_9
.LBB10_4:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_7
# BB#5:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_7
# BB#6:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB10_8:                               # %if.end
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_11
.LBB10_10:                              # %if.then.9
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_get_return_values, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_35
.LBB10_12:                              # %if.end.11
	jmp	.LBB10_13
.LBB10_13:                              # %do.end
	cmpl	$0, -20(%rbp)
	je	.LBB10_19
# BB#14:                                # %if.then.13
	movq	-16(%rbp), %rax
	movl	112(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, %edi
	callq	g_value_array_new
	movq	%rax, -40(%rbp)
	callq	gimp_pdb_status_type_get_type
	leaq	-64(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_value_init
	leaq	-64(%rbp), %rdi
	movl	$3, %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_value_set_enum
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	g_value_array_append
	leaq	-64(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_unset
	movl	$0, -68(%rbp)
.LBB10_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jge	.LBB10_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB10_15 Depth=1
	movl	$76, %eax
	movl	%eax, %esi
	movslq	-68(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rdi
	movq	24(%rax), %rsi
	callq	g_value_init
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_value_array_append
	leaq	-64(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_value_unset
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB10_15 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_15
.LBB10_18:                              # %for.end
	jmp	.LBB10_34
.LBB10_19:                              # %if.else.23
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB10_21
# BB#20:                                # %land.rhs
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -129(%rbp)         # 1-byte Spill
.LBB10_21:                              # %land.end
	movb	-129(%rbp), %al         # 1-byte Reload
	movl	$1, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, %edi
	callq	g_value_array_new
	movq	%rax, -40(%rbp)
	callq	gimp_pdb_status_type_get_type
	leaq	-64(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_value_init
	cmpq	$0, -32(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	je	.LBB10_29
# BB#22:                                # %land.lhs.true.30
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	callq	gimp_pdb_error_quark
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB10_29
# BB#23:                                # %if.then.33
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	je	.LBB10_24
	jmp	.LBB10_36
.LBB10_36:                              # %if.then.33
	movl	-152(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB10_25
	jmp	.LBB10_37
.LBB10_37:                              # %if.then.33
	movl	-152(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$3, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	ja	.LBB10_26
	jmp	.LBB10_24
.LBB10_24:                              # %sw.bb
	leaq	-64(%rbp), %rdi
	movl	$1, %esi
	callq	g_value_set_enum
	jmp	.LBB10_28
.LBB10_25:                              # %sw.bb.34
	leaq	-64(%rbp), %rdi
	movl	$4, %esi
	callq	g_value_set_enum
	jmp	.LBB10_28
.LBB10_26:                              # %sw.default
	jmp	.LBB10_27
.LBB10_27:                              # %do.body.35
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$496, %edx              # imm = 0x1F0
	movabsq	$.L__func__.gimp_procedure_get_return_values, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB10_28:                              # %sw.epilog
	jmp	.LBB10_30
.LBB10_29:                              # %if.else.37
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	callq	g_value_set_enum
.LBB10_30:                              # %if.end.38
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	g_value_array_append
	leaq	-64(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_value_unset
	cmpq	$0, -32(%rbp)
	je	.LBB10_33
# BB#31:                                # %land.lhs.true.41
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB10_33
# BB#32:                                # %if.then.44
	leaq	-64(%rbp), %rdi
	movl	$64, %eax
	movl	%eax, %esi
	callq	g_value_init
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_value_set_string
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	g_value_array_append
	leaq	-64(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_value_unset
.LBB10_33:                              # %if.end.48
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.49
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_procedure_get_return_values, .Lfunc_end10-gimp_procedure_get_return_values
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB11_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB11_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.globl	gimp_procedure_execute_async
	.align	16, 0x90
	.type	gimp_procedure_execute_async,@function
gimp_procedure_execute_async:           # @gimp_procedure_execute_async
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
	subq	$208, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute_async, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_85
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB12_19:                              # %if.end.31
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.35
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute_async, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_85
.LBB12_23:                              # %if.end.37
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB12_27
# BB#26:                                # %if.then.48
	movl	$0, -124(%rbp)
	jmp	.LBB12_32
.LBB12_27:                              # %if.else.49
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_30
# BB#28:                                # %land.lhs.true.52
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB12_30
# BB#29:                                # %if.then.56
	movl	$1, -124(%rbp)
	jmp	.LBB12_31
.LBB12_30:                              # %if.else.57
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB12_31:                              # %if.end.59
	jmp	.LBB12_32
.LBB12_32:                              # %if.end.60
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB12_34
# BB#33:                                # %if.then.63
	jmp	.LBB12_35
.LBB12_34:                              # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute_async, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_85
.LBB12_35:                              # %if.end.65
	jmp	.LBB12_36
.LBB12_36:                              # %do.end.66
	jmp	.LBB12_37
.LBB12_37:                              # %do.body.67
	cmpq	$0, -32(%rbp)
	je	.LBB12_46
# BB#38:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB12_40
# BB#39:                                # %if.then.77
	movl	$0, -148(%rbp)
	jmp	.LBB12_45
.LBB12_40:                              # %if.else.78
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_43
# BB#41:                                # %land.lhs.true.81
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB12_43
# BB#42:                                # %if.then.85
	movl	$1, -148(%rbp)
	jmp	.LBB12_44
.LBB12_43:                              # %if.else.86
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB12_44:                              # %if.end.88
	jmp	.LBB12_45
.LBB12_45:                              # %if.end.89
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB12_47
.LBB12_46:                              # %if.then.92
	jmp	.LBB12_48
.LBB12_47:                              # %if.else.93
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute_async, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_85
.LBB12_48:                              # %if.end.94
	jmp	.LBB12_49
.LBB12_49:                              # %do.end.95
	jmp	.LBB12_50
.LBB12_50:                              # %do.body.96
	cmpq	$0, -40(%rbp)
	je	.LBB12_52
# BB#51:                                # %if.then.98
	jmp	.LBB12_53
.LBB12_52:                              # %if.else.99
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute_async, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_85
.LBB12_53:                              # %if.end.100
	jmp	.LBB12_54
.LBB12_54:                              # %do.end.101
	jmp	.LBB12_55
.LBB12_55:                              # %do.body.102
	cmpq	$0, -48(%rbp)
	je	.LBB12_64
# BB#56:                                # %lor.lhs.false.104
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB12_58
# BB#57:                                # %if.then.113
	movl	$0, -172(%rbp)
	jmp	.LBB12_63
.LBB12_58:                              # %if.else.114
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_61
# BB#59:                                # %land.lhs.true.117
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB12_61
# BB#60:                                # %if.then.121
	movl	$1, -172(%rbp)
	jmp	.LBB12_62
.LBB12_61:                              # %if.else.122
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB12_62:                              # %if.end.124
	jmp	.LBB12_63
.LBB12_63:                              # %if.end.125
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB12_65
.LBB12_64:                              # %if.then.128
	jmp	.LBB12_66
.LBB12_65:                              # %if.else.129
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute_async, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_85
.LBB12_66:                              # %if.end.130
	jmp	.LBB12_67
.LBB12_67:                              # %do.end.131
	jmp	.LBB12_68
.LBB12_68:                              # %do.body.132
	cmpq	$0, -56(%rbp)
	je	.LBB12_70
# BB#69:                                # %lor.lhs.false.134
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_71
.LBB12_70:                              # %if.then.136
	jmp	.LBB12_72
.LBB12_71:                              # %if.else.137
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_execute_async, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_85
.LBB12_72:                              # %if.end.138
	jmp	.LBB12_73
.LBB12_73:                              # %do.end.139
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	96(%rax), %edx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r9
	callq	gimp_procedure_validate_args
	cmpl	$0, %eax
	je	.LBB12_85
# BB#74:                                # %if.then.143
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB12_76
# BB#75:                                # %if.then.152
	movl	$0, -196(%rbp)
	jmp	.LBB12_81
.LBB12_76:                              # %if.else.153
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_79
# BB#77:                                # %land.lhs.true.156
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB12_79
# BB#78:                                # %if.then.160
	movl	$1, -196(%rbp)
	jmp	.LBB12_80
.LBB12_79:                              # %if.else.161
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB12_80:                              # %if.end.163
	jmp	.LBB12_81
.LBB12_81:                              # %if.end.164
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB12_83
# BB#82:                                # %if.then.167
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -24(%rbp)
	jmp	.LBB12_84
.LBB12_83:                              # %if.else.169
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_context_new
	movq	%rax, -24(%rbp)
.LBB12_84:                              # %if.end.171
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB12_85:                              # %if.end.173
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_procedure_execute_async, .Lfunc_end12-gimp_procedure_execute_async
	.cfi_endproc

	.globl	gimp_procedure_get_arguments
	.align	16, 0x90
	.type	gimp_procedure_get_arguments,@function
gimp_procedure_get_arguments:           # @gimp_procedure_get_arguments
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
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	memset
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_get_arguments, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_17
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	callq	g_value_array_new
	movq	%rax, -24(%rbp)
	movl	$0, -52(%rbp)
.LBB13_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB13_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$76, %eax
	movl	%eax, %esi
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	104(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdi
	movq	24(%rax), %rsi
	callq	g_value_init
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_value_array_append
	leaq	-48(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_value_unset
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_13
.LBB13_16:                              # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_procedure_get_arguments, .Lfunc_end13-gimp_procedure_get_arguments
	.cfi_endproc

	.globl	gimp_procedure_add_argument
	.align	16, 0x90
	.type	gimp_procedure_add_argument,@function
gimp_procedure_add_argument:            # @gimp_procedure_add_argument
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_add_argument, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_18
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movl	$76, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB14_15
# BB#14:                                # %if.then.14
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_add_argument, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_18
.LBB14_16:                              # %if.end.16
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.17
	movl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	-8(%rbp), %rsi
	movl	96(%rsi), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	96(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	104(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rdi
	callq	g_param_spec_ref_sink
	movq	-8(%rbp), %rcx
	movl	96(%rcx), %r8d
	addl	$1, %r8d
	movl	%r8d, 96(%rcx)
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB14_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_procedure_add_argument, .Lfunc_end14-gimp_procedure_add_argument
	.cfi_endproc

	.globl	gimp_procedure_add_return_value
	.align	16, 0x90
	.type	gimp_procedure_add_return_value,@function
gimp_procedure_add_return_value:        # @gimp_procedure_add_return_value
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_add_return_value, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_18
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movl	$76, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB15_15
# BB#14:                                # %if.then.14
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_add_return_value, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_18
.LBB15_16:                              # %if.end.16
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.17
	movl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	-8(%rbp), %rsi
	movl	112(%rsi), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	112(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rdi
	callq	g_param_spec_ref_sink
	movq	-8(%rbp), %rcx
	movl	112(%rcx), %r8d
	addl	$1, %r8d
	movl	%r8d, 112(%rcx)
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_procedure_add_return_value, .Lfunc_end15-gimp_procedure_add_return_value
	.cfi_endproc

	.globl	gimp_procedure_create_override
	.align	16, 0x90
	.type	gimp_procedure_create_override,@function
gimp_procedure_create_override:         # @gimp_procedure_create_override
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movl	$0, -36(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_procedure_add_argument
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	movl	$0, -36(%rbp)
.LBB16_5:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jge	.LBB16_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_procedure_add_return_value
# BB#7:                                 # %for.inc.9
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB16_5
.LBB16_8:                               # %for.end.11
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_procedure_create_override, .Lfunc_end16-gimp_procedure_create_override
	.cfi_endproc

	.globl	gimp_procedure_name_compare
	.align	16, 0x90
	.type	gimp_procedure_name_compare,@function
gimp_procedure_name_compare:            # @gimp_procedure_name_compare
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_procedure_name_compare, .Lfunc_end17-gimp_procedure_name_compare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_class_init,@function
gimp_procedure_class_init:              # @gimp_procedure_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_procedure_real_execute_async, %rsi
	movabsq	$gimp_procedure_real_execute, %rdi
	movabsq	$gimp_procedure_get_memsize, %rcx
	movabsq	$gimp_procedure_finalize, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 152(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 160(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 168(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_procedure_class_init, .Lfunc_end18-gimp_procedure_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_finalize,@function
gimp_procedure_finalize:                # @gimp_procedure_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_free_strings
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB19_6
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB19_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB19_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB19_2 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_param_spec_unref
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_2
.LBB19_5:                               # %for.end
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB19_6:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB19_12
# BB#7:                                 # %if.then.6
	movl	$0, -20(%rbp)
.LBB19_8:                               # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jge	.LBB19_11
# BB#9:                                 # %for.body.9
                                        #   in Loop: Header=BB19_8 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_param_spec_unref
# BB#10:                                # %for.inc.13
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_8
.LBB19_11:                              # %for.end.15
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB19_12:                              # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_procedure_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_procedure_finalize, .Lfunc_end19-gimp_procedure_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_get_memsize,@function
gimp_procedure_get_memsize:             # @gimp_procedure_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rax
	movslq	96(%rax), %rax
	shlq	$3, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB20_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB20_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB20_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_g_param_spec_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB20_3
.LBB20_6:                               # %for.end
	movq	-24(%rbp), %rax
	movslq	112(%rax), %rax
	shlq	$3, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB20_7:                               # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jge	.LBB20_10
# BB#8:                                 # %for.body.27
                                        #   in Loop: Header=BB20_7 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_g_param_spec_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#9:                                 # %for.inc.32
                                        #   in Loop: Header=BB20_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB20_7
.LBB20_10:                              # %for.end.34
	movq	-32(%rbp), %rax
	movq	gimp_procedure_parent_class, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_procedure_get_memsize, .Lfunc_end20-gimp_procedure_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_real_execute,@function
gimp_procedure_real_execute:            # @gimp_procedure_real_execute
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	96(%rax), %ecx
	jb	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_real_execute, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_6
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB21_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_procedure_real_execute, .Lfunc_end21-gimp_procedure_real_execute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_procedure_real_execute_async,@function
gimp_procedure_real_execute_async:      # @gimp_procedure_real_execute_async
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	96(%rax), %ecx
	jb	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_procedure_real_execute_async, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_7
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	leaq	-64(%rbp), %r9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	*%rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -64(%rbp)
	je	.LBB22_7
# BB#6:                                 # %if.then.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-64(%rbp), %rdi
	callq	g_error_free
.LBB22_7:                               # %if.end.3
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_procedure_real_execute_async, .Lfunc_end22-gimp_procedure_real_execute_async
	.cfi_endproc

	.type	gimp_procedure_get_type.g_define_type_id__volatile,@object # @gimp_procedure_get_type.g_define_type_id__volatile
	.local	gimp_procedure_get_type.g_define_type_id__volatile
	.comm	gimp_procedure_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProcedure"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-PDB"
	.size	.L.str.1, 9

	.type	.L__func__.gimp_procedure_new,@object # @__func__.gimp_procedure_new
.L__func__.gimp_procedure_new:
	.asciz	"gimp_procedure_new"
	.size	.L__func__.gimp_procedure_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"marshal_func != NULL"
	.size	.L.str.2, 21

	.type	.L__func__.gimp_procedure_set_strings,@object # @__func__.gimp_procedure_set_strings
.L__func__.gimp_procedure_set_strings:
	.asciz	"gimp_procedure_set_strings"
	.size	.L__func__.gimp_procedure_set_strings, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_PROCEDURE (procedure)"
	.size	.L.str.3, 30

	.type	.L__func__.gimp_procedure_set_static_strings,@object # @__func__.gimp_procedure_set_static_strings
.L__func__.gimp_procedure_set_static_strings:
	.asciz	"gimp_procedure_set_static_strings"
	.size	.L__func__.gimp_procedure_set_static_strings, 34

	.type	.L__func__.gimp_procedure_take_strings,@object # @__func__.gimp_procedure_take_strings
.L__func__.gimp_procedure_take_strings:
	.asciz	"gimp_procedure_take_strings"
	.size	.L__func__.gimp_procedure_take_strings, 28

	.type	.L__func__.gimp_procedure_execute,@object # @__func__.gimp_procedure_execute
.L__func__.gimp_procedure_execute:
	.asciz	"gimp_procedure_execute"
	.size	.L__func__.gimp_procedure_execute, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.6, 48

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"args != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s: no return values, shouldn't happen"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Procedure '%s' returned no return values"
	.size	.L.str.10, 41

	.type	.L__func__.gimp_procedure_execute_async,@object # @__func__.gimp_procedure_execute_async
.L__func__.gimp_procedure_execute_async:
	.asciz	"gimp_procedure_execute_async"
	.size	.L__func__.gimp_procedure_execute_async, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"display == NULL || GIMP_IS_OBJECT (display)"
	.size	.L.str.11, 44

	.type	.L__func__.gimp_procedure_get_arguments,@object # @__func__.gimp_procedure_get_arguments
.L__func__.gimp_procedure_get_arguments:
	.asciz	"gimp_procedure_get_arguments"
	.size	.L__func__.gimp_procedure_get_arguments, 29

	.type	.L__func__.gimp_procedure_get_return_values,@object # @__func__.gimp_procedure_get_return_values
.L__func__.gimp_procedure_get_return_values:
	.asciz	"gimp_procedure_get_return_values"
	.size	.L__func__.gimp_procedure_get_return_values, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"success == FALSE || GIMP_IS_PROCEDURE (procedure)"
	.size	.L.str.12, 50

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimpprocedure.c"
	.size	.L.str.13, 16

	.type	.L__func__.gimp_procedure_add_argument,@object # @__func__.gimp_procedure_add_argument
.L__func__.gimp_procedure_add_argument:
	.asciz	"gimp_procedure_add_argument"
	.size	.L__func__.gimp_procedure_add_argument, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"G_IS_PARAM_SPEC (pspec)"
	.size	.L.str.14, 24

	.type	.L__func__.gimp_procedure_add_return_value,@object # @__func__.gimp_procedure_add_return_value
.L__func__.gimp_procedure_add_return_value:
	.asciz	"gimp_procedure_add_return_value"
	.size	.L__func__.gimp_procedure_add_return_value, 32

	.type	gimp_procedure_parent_class,@object # @gimp_procedure_parent_class
	.local	gimp_procedure_parent_class
	.comm	gimp_procedure_parent_class,8,8
	.type	GimpProcedure_private_offset,@object # @GimpProcedure_private_offset
	.local	GimpProcedure_private_offset
	.comm	GimpProcedure_private_offset,4,4
	.type	.L__func__.gimp_procedure_real_execute,@object # @__func__.gimp_procedure_real_execute
.L__func__.gimp_procedure_real_execute:
	.asciz	"gimp_procedure_real_execute"
	.size	.L__func__.gimp_procedure_real_execute, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"args->n_values >= procedure->num_args"
	.size	.L.str.15, 38

	.type	.L__func__.gimp_procedure_real_execute_async,@object # @__func__.gimp_procedure_real_execute_async
.L__func__.gimp_procedure_real_execute_async:
	.asciz	"gimp_procedure_real_execute_async"
	.size	.L__func__.gimp_procedure_real_execute_async, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Procedure '%s' returned a wrong value type for return value '%s' (#%d). Expected %s, got %s."
	.size	.L.str.16, 93

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Procedure '%s' has been called with a wrong value type for argument '%s' (#%d). Expected %s, got %s."
	.size	.L.str.17, 101

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<not transformable to string>"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Procedure '%s' returned an invalid ID for argument '%s'. Most likely a plug-in is trying to work on a layer that doesn't exist any longer."
	.size	.L.str.19, 139

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Procedure '%s' has been called with an invalid ID for argument '%s'. Most likely a plug-in is trying to work on a layer that doesn't exist any longer."
	.size	.L.str.20, 151

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Procedure '%s' returned an invalid ID for argument '%s'. Most likely a plug-in is trying to work on an image that doesn't exist any longer."
	.size	.L.str.21, 140

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Procedure '%s' has been called with an invalid ID for argument '%s'. Most likely a plug-in is trying to work on an image that doesn't exist any longer."
	.size	.L.str.22, 152

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"(null)"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Procedure '%s' returned '%s' as return value '%s' (#%d, type %s). This value is out of range."
	.size	.L.str.24, 94

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Procedure '%s' has been called with value '%s' for argument '%s' (#%d, type %s). This value is out of range."
	.size	.L.str.25, 109


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
