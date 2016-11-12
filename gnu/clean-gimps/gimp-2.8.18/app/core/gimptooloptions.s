	.text
	.file	"gimptooloptions.bc"
	.globl	gimp_tool_options_get_type
	.align	16, 0x90
	.type	gimp_tool_options_get_type,@function
gimp_tool_options_get_type:             # @gimp_tool_options_get_type
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
	movq	gimp_tool_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_options_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_context_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_tool_options_class_intern_init, %rdi
	movl	$352, %r8d              # imm = 0x160
	movabsq	$gimp_tool_options_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_tool_options_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_tool_options_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_options_get_type, .Lfunc_end0-gimp_tool_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_class_intern_init,@function
gimp_tool_options_class_intern_init:    # @gimp_tool_options_class_intern_init
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
	movq	%rax, gimp_tool_options_parent_class
	cmpl	$0, GimpToolOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_options_class_intern_init, .Lfunc_end1-gimp_tool_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_init,@function
gimp_tool_options_init:                 # @gimp_tool_options_init
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
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_tool_options_tool_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 344(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_options_init, .Lfunc_end2-gimp_tool_options_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_config_iface_init,@function
gimp_tool_options_config_iface_init:    # @gimp_tool_options_config_iface_init
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
	movabsq	$gimp_tool_options_config_reset, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_options_config_iface_init, .Lfunc_end3-gimp_tool_options_config_iface_init
	.cfi_endproc

	.globl	gimp_tool_options_reset
	.align	16, 0x90
	.type	gimp_tool_options_reset,@function
gimp_tool_options_reset:                # @gimp_tool_options_reset
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tool_options_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_reset, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_options_reset, .Lfunc_end4-gimp_tool_options_reset
	.cfi_endproc

	.globl	gimp_tool_options_serialize
	.align	16, 0x90
	.type	gimp_tool_options_serialize,@function
gimp_tool_options_serialize:            # @gimp_tool_options_serialize
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tool_options_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.4
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.5
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.7
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.9
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_serialize, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_21
.LBB5_11:                               # %if.end.11
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_16
.LBB5_15:                               # %if.then.15
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_serialize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_21
.LBB5_17:                               # %if.end.17
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.18
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	callq	gimp_tool_info_build_options_filename
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB5_20
# BB#19:                                # %if.then.22
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB5_20:                               # %if.end.24
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.6, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %r9
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_options_serialize, .Lfunc_end5-gimp_tool_options_serialize
	.cfi_endproc

	.globl	gimp_tool_options_deserialize
	.align	16, 0x90
	.type	gimp_tool_options_deserialize,@function
gimp_tool_options_deserialize:          # @gimp_tool_options_deserialize
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.9
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_deserialize, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_21
.LBB6_11:                               # %if.end.11
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_16
.LBB6_15:                               # %if.then.15
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_deserialize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_21
.LBB6_17:                               # %if.end.17
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.18
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	callq	gimp_tool_info_build_options_filename
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB6_20
# BB#19:                                # %if.then.22
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB6_20:                               # %if.end.24
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_options_deserialize, .Lfunc_end6-gimp_tool_options_deserialize
	.cfi_endproc

	.globl	gimp_tool_options_delete
	.align	16, 0x90
	.type	gimp_tool_options_delete,@function
gimp_tool_options_delete:               # @gimp_tool_options_delete
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_delete, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_22
.LBB7_11:                               # %if.end.11
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_16
.LBB7_15:                               # %if.then.15
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_delete, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_22
.LBB7_17:                               # %if.end.17
	jmp	.LBB7_18
.LBB7_18:                               # %do.end.18
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	callq	gimp_tool_info_build_options_filename
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_unlink
	cmpl	$0, %eax
	je	.LBB7_21
# BB#19:                                # %land.lhs.true.22
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB7_21
# BB#20:                                # %if.then.25
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
.LBB7_21:                               # %if.end.31
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_options_delete, .Lfunc_end7-gimp_tool_options_delete
	.cfi_endproc

	.globl	gimp_tool_options_create_folder
	.align	16, 0x90
	.type	gimp_tool_options_create_folder,@function
gimp_tool_options_create_folder:        # @gimp_tool_options_create_folder
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
	subq	$16, %rsp
	callq	gimp_directory
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movl	$493, %esi              # imm = 0x1ED
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	mkdir
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_options_create_folder, .Lfunc_end8-gimp_tool_options_create_folder
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_class_init,@function
gimp_tool_options_class_init:           # @gimp_tool_options_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movl	$1, %esi
	movabsq	$.L.str.10, %rdx
	movabsq	$gimp_tool_options_real_reset, %rdi
	movabsq	$gimp_tool_options_get_property, %rcx
	movabsq	$gimp_tool_options_set_property, %r8
	movabsq	$gimp_tool_options_dispose, %r9
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 424(%rax)
	movq	-16(%rbp), %rdi
	callq	g_object_class_override_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_options_class_init, .Lfunc_end9-gimp_tool_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_dispose,@function
gimp_tool_options_dispose:              # @gimp_tool_options_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 344(%rax)
.LBB10_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_options_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_options_dispose, .Lfunc_end10-gimp_tool_options_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_set_property,@function
gimp_tool_options_set_property:         # @gimp_tool_options_set_property
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_25
.LBB11_25:                              # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB11_10
	jmp	.LBB11_21
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_tool
	movq	%rax, -56(%rbp)
# BB#2:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB11_4
# BB#3:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_5
.LBB11_4:                               # %if.then
	jmp	.LBB11_6
.LBB11_5:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_set_property, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_24
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %do.end
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_tool_options_check_tool_info
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_9
# BB#8:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_tool
.LBB11_9:                               # %if.end.11
	jmp	.LBB11_24
.LBB11_10:                              # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -64(%rbp)
# BB#11:                                # %do.body.15
	movq	-40(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB11_13
# BB#12:                                # %lor.lhs.false.18
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_14
.LBB11_13:                              # %if.then.21
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.22
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_options_set_property, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_24
.LBB11_15:                              # %if.end.23
	jmp	.LBB11_16
.LBB11_16:                              # %do.end.24
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_tool_options_check_tool_info
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 344(%rax)
	jne	.LBB11_20
# BB#17:                                # %if.then.28
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, 344(%rdi)
	movq	-64(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB11_19
# BB#18:                                # %if.then.32
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movl	56(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_context_define_properties
.LBB11_19:                              # %if.end.36
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movl	56(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_context_set_serialize_properties
.LBB11_20:                              # %if.end.40
	jmp	.LBB11_24
.LBB11_21:                              # %sw.default
	jmp	.LBB11_22
.LBB11_22:                              # %do.body.41
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %r8d
	movq	-80(%rbp), %rax
	movq	8(%rax), %r9
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movq	%r9, -160(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$222, %edx
	movabsq	$.L.str.16, %rcx
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#23:                                # %do.end.46
	jmp	.LBB11_24
.LBB11_24:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_options_set_property, .Lfunc_end11-gimp_tool_options_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_get_property,@function
gimp_tool_options_get_property:         # @gimp_tool_options_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_7
.LBB12_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_3
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_tool
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_6
.LBB12_2:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_6
.LBB12_3:                               # %sw.default
	jmp	.LBB12_4
.LBB12_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$246, %edx
	movabsq	$.L.str.16, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB12_6
.LBB12_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_options_get_property, .Lfunc_end12-gimp_tool_options_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_real_reset,@function
gimp_tool_options_real_reset:           # @gimp_tool_options_real_reset
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_options_real_reset, .Lfunc_end13-gimp_tool_options_real_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_check_tool_info,@function
gimp_tool_options_check_tool_info:      # @gimp_tool_options_check_tool_info
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_19
.LBB14_3:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -40(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_17
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB14_12
# BB#6:                                 # %if.then.8
	cmpl	$0, -28(%rbp)
	je	.LBB14_11
# BB#7:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	cmpq	$0, -24(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB14_9
# BB#8:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %cond.false
	movabsq	$.L.str.18, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB14_10
.LBB14_10:                              # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.17, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_printerr
.LBB14_11:                              # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_19
.LBB14_12:                              # %if.end.17
                                        #   in Loop: Header=BB14_4 Depth=1
	jmp	.LBB14_13
.LBB14_13:                              # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_15
# BB#14:                                # %cond.true.19
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_16
.LBB14_15:                              # %cond.false.20
                                        #   in Loop: Header=BB14_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_16
.LBB14_16:                              # %cond.end.21
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB14_4
.LBB14_17:                              # %for.end
	jmp	.LBB14_18
.LBB14_18:                              # %do.body
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.15, %rcx
	movl	$167, %r8d
	movabsq	$.L__func__.gimp_tool_options_check_tool_info, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -8(%rbp)
.LBB14_19:                              # %if.end.23
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tool_options_check_tool_info, .Lfunc_end14-gimp_tool_options_check_tool_info
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_tool_notify,@function
gimp_tool_options_tool_notify:          # @gimp_tool_options_tool_notify
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_tool
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_tool_options_check_tool_info
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB16_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB16_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.21, %rdi
	movabsq	$.L__func__.gimp_tool_options_tool_notify, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_warning
.LBB16_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tool_options_tool_notify, .Lfunc_end16-gimp_tool_options_tool_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_options_config_reset,@function
gimp_tool_options_config_reset:         # @gimp_tool_options_config_reset
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset_properties
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tool_options_config_reset, .Lfunc_end17-gimp_tool_options_config_reset
	.cfi_endproc

	.type	gimp_tool_options_get_type.g_define_type_id__volatile,@object # @gimp_tool_options_get_type.g_define_type_id__volatile
	.local	gimp_tool_options_get_type.g_define_type_id__volatile
	.comm	gimp_tool_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolOptions"
	.size	.L.str, 16

	.type	gimp_tool_options_get_type.g_implement_interface_info,@object # @gimp_tool_options_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_tool_options_get_type.g_implement_interface_info:
	.quad	gimp_tool_options_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_tool_options_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_tool_options_reset,@object # @__func__.gimp_tool_options_reset
.L__func__.gimp_tool_options_reset:
	.asciz	"gimp_tool_options_reset"
	.size	.L__func__.gimp_tool_options_reset, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TOOL_OPTIONS (tool_options)"
	.size	.L.str.2, 36

	.type	.L__func__.gimp_tool_options_serialize,@object # @__func__.gimp_tool_options_serialize
.L__func__.gimp_tool_options_serialize:
	.asciz	"gimp_tool_options_serialize"
	.size	.L__func__.gimp_tool_options_serialize, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Writing '%s'\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP %s options"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"end of %s options"
	.size	.L.str.6, 18

	.type	.L__func__.gimp_tool_options_deserialize,@object # @__func__.gimp_tool_options_deserialize
.L__func__.gimp_tool_options_deserialize:
	.asciz	"gimp_tool_options_deserialize"
	.size	.L__func__.gimp_tool_options_deserialize, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.7, 14

	.type	.L__func__.gimp_tool_options_delete,@object # @__func__.gimp_tool_options_delete
.L__func__.gimp_tool_options_delete:
	.asciz	"gimp_tool_options_delete"
	.size	.L__func__.gimp_tool_options_delete, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Deleting \"%s\" failed: %s"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tool-options"
	.size	.L.str.9, 13

	.type	gimp_tool_options_parent_class,@object # @gimp_tool_options_parent_class
	.local	gimp_tool_options_parent_class
	.comm	gimp_tool_options_parent_class,8,8
	.type	GimpToolOptions_private_offset,@object # @GimpToolOptions_private_offset
	.local	GimpToolOptions_private_offset
	.comm	GimpToolOptions_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tool"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tool-info"
	.size	.L.str.11, 10

	.type	.L__func__.gimp_tool_options_set_property,@object # @__func__.gimp_tool_options_set_property
.L__func__.gimp_tool_options_set_property:
	.asciz	"gimp_tool_options_set_property"
	.size	.L__func__.gimp_tool_options_set_property, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"context_tool == NULL || context_tool == tool_info"
	.size	.L.str.12, 50

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"options->tool_info == NULL || options->tool_info == tool_info"
	.size	.L.str.13, 62

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimptooloptions.c"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"property"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: correcting bogus deserialized tool type '%s' with right type '%s'\n"
	.size	.L.str.17, 71

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"NULL"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.19, 45

	.type	.L__func__.gimp_tool_options_check_tool_info,@object # @__func__.gimp_tool_options_check_tool_info
.L__func__.gimp_tool_options_check_tool_info:
	.asciz	"gimp_tool_options_check_tool_info"
	.size	.L__func__.gimp_tool_options_check_tool_info, 34

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"notify::tool"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: 'tool' property on %s was set to bogus value '%s', it MUST be '%s'."
	.size	.L.str.21, 72

	.type	.L__func__.gimp_tool_options_tool_notify,@object # @__func__.gimp_tool_options_tool_notify
.L__func__.gimp_tool_options_tool_notify:
	.asciz	"gimp_tool_options_tool_notify"
	.size	.L__func__.gimp_tool_options_tool_notify, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
