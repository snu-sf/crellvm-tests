	.text
	.file	"gimp-contexts.bc"
	.globl	gimp_contexts_init
	.align	16, 0x90
	.type	gimp_contexts_init,@function
gimp_contexts_init:                     # @gimp_contexts_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_contexts_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.2, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_context_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_set_default_context
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_context_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_set_user_context
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_contexts_init, .Lfunc_end0-gimp_contexts_init
	.cfi_endproc

	.globl	gimp_contexts_exit
	.align	16, 0x90
	.type	gimp_contexts_exit,@function
gimp_contexts_exit:                     # @gimp_contexts_exit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_contexts_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_set_user_context
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_set_default_context
.LBB1_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_contexts_exit, .Lfunc_end1-gimp_contexts_exit
	.cfi_endproc

	.globl	gimp_contexts_load
	.align	16, 0x90
	.type	gimp_contexts_load,@function
gimp_contexts_load:                     # @gimp_contexts_load
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_contexts_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_16
.LBB2_15:                               # %if.then.14
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_contexts_load, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
.LBB2_17:                               # %if.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.end.17
	movabsq	$.L.str.5, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB2_20
# BB#19:                                # %if.then.20
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.6, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB2_20:                               # %if.end.22
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB2_25
# BB#21:                                # %if.then.28
	movq	-40(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB2_23
# BB#22:                                # %if.then.30
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movl	$1, -44(%rbp)
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.31
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_propagate_error
.LBB2_24:                               # %if.end.32
	jmp	.LBB2_25
.LBB2_25:                               # %if.end.33
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_contexts_load, .Lfunc_end2-gimp_contexts_load
	.cfi_endproc

	.globl	gimp_contexts_save
	.align	16, 0x90
	.type	gimp_contexts_save,@function
gimp_contexts_save:                     # @gimp_contexts_save
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_contexts_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_21
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_16
.LBB3_15:                               # %if.then.14
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_contexts_save, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_21
.LBB3_17:                               # %if.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.17
	movabsq	$.L.str.5, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB3_20
# BB#19:                                # %if.then.20
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB3_20:                               # %if.end.22
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %r9
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_contexts_save, .Lfunc_end3-gimp_contexts_save
	.cfi_endproc

	.globl	gimp_contexts_clear
	.align	16, 0x90
	.type	gimp_contexts_clear,@function
gimp_contexts_clear:                    # @gimp_contexts_clear
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_contexts_clear, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_16
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movabsq	$.L.str.5, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_unlink
	cmpl	$0, %eax
	je	.LBB4_15
# BB#13:                                # %land.lhs.true.14
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB4_15
# BB#14:                                # %if.then.17
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.10, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -36(%rbp)
.LBB4_15:                               # %if.end.25
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_contexts_clear, .Lfunc_end4-gimp_contexts_clear
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_contexts_init,@object # @__func__.gimp_contexts_init
.L__func__.gimp_contexts_init:
	.asciz	"gimp_contexts_init"
	.size	.L__func__.gimp_contexts_init, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Default"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"User"
	.size	.L.str.3, 5

	.type	.L__func__.gimp_contexts_exit,@object # @__func__.gimp_contexts_exit
.L__func__.gimp_contexts_exit:
	.asciz	"gimp_contexts_exit"
	.size	.L__func__.gimp_contexts_exit, 19

	.type	.L__func__.gimp_contexts_load,@object # @__func__.gimp_contexts_load
.L__func__.gimp_contexts_load:
	.asciz	"gimp_contexts_load"
	.size	.L__func__.gimp_contexts_load, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"contextrc"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.6, 14

	.type	.L__func__.gimp_contexts_save,@object # @__func__.gimp_contexts_save
.L__func__.gimp_contexts_save:
	.asciz	"gimp_contexts_save"
	.size	.L__func__.gimp_contexts_save, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Writing '%s'\n"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP user context"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"end of user context"
	.size	.L.str.9, 20

	.type	.L__func__.gimp_contexts_clear,@object # @__func__.gimp_contexts_clear
.L__func__.gimp_contexts_clear:
	.asciz	"gimp_contexts_clear"
	.size	.L__func__.gimp_contexts_clear, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Deleting \"%s\" failed: %s"
	.size	.L.str.10, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
