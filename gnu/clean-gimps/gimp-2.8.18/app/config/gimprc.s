	.text
	.file	"gimprc.bc"
	.globl	gimp_rc_get_type
	.align	16, 0x90
	.type	gimp_rc_get_type,@function
gimp_rc_get_type:                       # @gimp_rc_get_type
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
	movq	gimp_rc_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_rc_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_plugin_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$136, %edx
	movabsq	$gimp_rc_class_intern_init, %rdi
	movl	$808, %r8d              # imm = 0x328
	movabsq	$gimp_rc_init, %rcx
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
	movabsq	$gimp_rc_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_rc_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_rc_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rc_get_type, .Lfunc_end0-gimp_rc_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_class_intern_init,@function
gimp_rc_class_intern_init:              # @gimp_rc_class_intern_init
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
	movq	%rax, gimp_rc_parent_class
	cmpl	$0, GimpRc_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpRc_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_rc_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rc_class_intern_init, .Lfunc_end1-gimp_rc_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_init,@function
gimp_rc_init:                           # @gimp_rc_init
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
	movl	$0, 796(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 800(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rc_init, .Lfunc_end2-gimp_rc_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_config_iface_init,@function
gimp_rc_config_iface_init:              # @gimp_rc_config_iface_init
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
	movabsq	$gimp_rc_duplicate, %rax
	movabsq	$gimp_rc_deserialize, %rcx
	movabsq	$gimp_rc_serialize, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, 16(%rdi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rc_config_iface_init, .Lfunc_end3-gimp_rc_config_iface_init
	.cfi_endproc

	.globl	gimp_rc_new
	.align	16, 0x90
	.type	gimp_rc_new,@function
gimp_rc_new:                            # @gimp_rc_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	callq	gimp_rc_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %r8
	movq	-16(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_rc_load
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_rc_new, .Lfunc_end4-gimp_rc_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_load,@function
gimp_rc_load:                           # @gimp_rc_load
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_rc_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_rc_load, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_24
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 792(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	784(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB5_14:                               # %if.end.14
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	784(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB5_18
# BB#15:                                # %if.then.20
	movq	-16(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB5_17
# BB#16:                                # %if.then.22
	movabsq	$.L.str.18, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_message
.LBB5_17:                               # %if.end.23
	leaq	-16(%rbp), %rdi
	callq	g_clear_error
.LBB5_18:                               # %if.end.24
	movq	-8(%rbp), %rax
	cmpl	$0, 792(%rax)
	je	.LBB5_20
# BB#19:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	776(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB5_20:                               # %if.end.29
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	776(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB5_24
# BB#21:                                # %if.then.35
	movq	-16(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB5_23
# BB#22:                                # %if.then.38
	movabsq	$.L.str.18, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_message
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movq	776(%rdi), %rdi
	callq	gimp_config_file_backup_on_error
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB5_23:                               # %if.end.42
	leaq	-16(%rbp), %rdi
	callq	g_clear_error
.LBB5_24:                               # %if.end.43
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rc_load, .Lfunc_end5-gimp_rc_load
	.cfi_endproc

	.globl	gimp_rc_set_autosave
	.align	16, 0x90
	.type	gimp_rc_set_autosave,@function
gimp_rc_set_autosave:                   # @gimp_rc_set_autosave
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_rc_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_rc_set_autosave, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	796(%rdx), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB6_14
# BB#13:                                # %if.then.14
	jmp	.LBB6_18
.LBB6_14:                               # %if.end.15
	cmpl	$0, -12(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.17
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_rc_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.19
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_rc_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB6_17:                               # %if.end.21
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 796(%rcx)
.LBB6_18:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rc_set_autosave, .Lfunc_end6-gimp_rc_set_autosave
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_notify,@function
gimp_rc_notify:                         # @gimp_rc_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 796(%rdx)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_4
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 800(%rax)
	jne	.LBB7_4
# BB#3:                                 # %if.then.2
	movabsq	$gimp_rc_idle_save, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rcx
	movl	%eax, 800(%rcx)
.LBB7_4:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rc_notify, .Lfunc_end7-gimp_rc_notify
	.cfi_endproc

	.globl	gimp_rc_query
	.align	16, 0x90
	.type	gimp_rc_query,@function
gimp_rc_query:                          # @gimp_rc_query
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_rc_get_type
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
# BB#5:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.9
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.10
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_rc_query, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_49
.LBB8_11:                               # %if.end.11
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.14
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.15
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_rc_query, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_49
.LBB8_16:                               # %if.end.16
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_object_class_list_properties
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_19
# BB#18:                                # %if.then.22
	movq	$0, -8(%rbp)
	jmp	.LBB8_49
.LBB8_19:                               # %if.end.23
	movl	$0, -60(%rbp)
	movq	$0, -56(%rbp)
.LBB8_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jae	.LBB8_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB8_20 Depth=1
	cmpq	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB8_22:                               # %land.end
                                        #   in Loop: Header=BB8_20 Depth=1
	movb	-137(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_23
	jmp	.LBB8_28
.LBB8_23:                               # %for.body
                                        #   in Loop: Header=BB8_20 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB8_25
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_26
.LBB8_25:                               # %if.then.29
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	$0, -56(%rbp)
.LBB8_26:                               # %if.end.30
                                        #   in Loop: Header=BB8_20 Depth=1
	jmp	.LBB8_27
.LBB8_27:                               # %for.inc
                                        #   in Loop: Header=BB8_20 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB8_20
.LBB8_28:                               # %for.end
	cmpq	$0, -56(%rbp)
	je	.LBB8_33
# BB#29:                                # %if.then.32
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, -104(%rbp)
	movq	%rdi, %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	memset
	movq	-56(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-128(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	callq	gimp_config_serialize_value
	cmpl	$0, %eax
	je	.LBB8_31
# BB#30:                                # %if.then.40
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -72(%rbp)
	jmp	.LBB8_32
.LBB8_31:                               # %if.else.42
	movl	$1, %esi
	movq	-104(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB8_32:                               # %if.end.44
	leaq	-128(%rbp), %rdi
	callq	g_value_unset
	jmp	.LBB8_34
.LBB8_33:                               # %if.else.45
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rc_lookup_unknown_token
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
.LBB8_34:                               # %if.end.50
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	cmpq	$0, -72(%rbp)
	jne	.LBB8_44
# BB#35:                                # %if.then.52
	movl	$0, -60(%rbp)
.LBB8_36:                               # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -72(%rbp)
	movb	%cl, -177(%rbp)         # 1-byte Spill
	jne	.LBB8_38
# BB#37:                                # %land.rhs.55
                                        #   in Loop: Header=BB8_36 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$5, %rcx
	setb	%dl
	movb	%dl, -177(%rbp)         # 1-byte Spill
.LBB8_38:                               # %land.end.58
                                        #   in Loop: Header=BB8_36 Depth=1
	movb	-177(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_39
	jmp	.LBB8_43
.LBB8_39:                               # %for.body.59
                                        #   in Loop: Header=BB8_36 Depth=1
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	gimp_rc_query.path_tokens(,%rcx,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_41
# BB#40:                                # %if.then.65
                                        #   in Loop: Header=BB8_36 Depth=1
	movabsq	$.L.str.13, %rdi
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movq	gimp_rc_query.path_tokens(,%rcx,8), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
.LBB8_41:                               # %if.end.69
                                        #   in Loop: Header=BB8_36 Depth=1
	jmp	.LBB8_42
.LBB8_42:                               # %for.inc.70
                                        #   in Loop: Header=BB8_36 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB8_36
.LBB8_43:                               # %for.end.72
	jmp	.LBB8_44
.LBB8_44:                               # %if.end.73
	cmpq	$0, -72(%rbp)
	je	.LBB8_48
# BB#45:                                # %if.then.75
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB8_47
# BB#46:                                # %if.then.80
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	movq	%rdi, -72(%rbp)
.LBB8_47:                               # %if.end.81
	jmp	.LBB8_48
.LBB8_48:                               # %if.end.82
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_49:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rc_query, .Lfunc_end8-gimp_rc_query
	.cfi_endproc

	.globl	gimp_rc_set_unknown_token
	.align	16, 0x90
	.type	gimp_rc_set_unknown_token,@function
gimp_rc_set_unknown_token:              # @gimp_rc_set_unknown_token
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_rc_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_rc_set_unknown_token, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_14
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_rc_add_unknown_token
	movq	-8(%rbp), %rax
	cmpl	$0, 796(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_rc_notify
.LBB9_14:                               # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rc_set_unknown_token, .Lfunc_end9-gimp_rc_set_unknown_token
	.cfi_endproc

	.globl	gimp_rc_save
	.align	16, 0x90
	.type	gimp_rc_save,@function
gimp_rc_save:                           # @gimp_rc_save
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
	subq	$128, %rsp
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.14, %rdx
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_rc_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_rc_save, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_17
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	callq	gimp_rc_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	784(%rdi), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	gimp_config_deserialize_file
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	784(%rdx), %rsi
	movq	-48(%rbp), %rdx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 792(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	776(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB10_14:                              # %if.end.21
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %r9
	movq	-8(%rbp), %rsi
	movq	776(%rsi), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	gimp_config_serialize_to_file
	cmpl	$0, %eax
	jne	.LBB10_16
# BB#15:                                # %if.then.27
	movabsq	$.L.str.18, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_error_free
.LBB10_16:                              # %if.end.28
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_object_unref
.LBB10_17:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_rc_save, .Lfunc_end10-gimp_rc_save
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	movl	$.L.str.4, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_message, .Lfunc_end11-g_message
	.cfi_endproc

	.globl	gimp_rc_migrate
	.align	16, 0x90
	.type	gimp_rc_migrate,@function
gimp_rc_migrate:                        # @gimp_rc_migrate
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_rc_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_rc_migrate, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_26
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	leaq	-20(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_class_list_properties
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB12_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB12_25
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB12_13 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_param_config_path_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_16
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	$0, -76(%rbp)
	jmp	.LBB12_21
.LBB12_16:                              # %if.else.24
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_19
# BB#17:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_19
# BB#18:                                # %if.then.31
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	$1, -76(%rbp)
	jmp	.LBB12_20
.LBB12_19:                              # %if.else.32
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB12_20:                              # %if.end.34
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.35
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_23
# BB#22:                                # %if.then.38
                                        #   in Loop: Header=BB12_13 Depth=1
	leaq	-104(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	memset
	movq	-56(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-104(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_value_set_default
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_set_property
	leaq	-104(%rbp), %rdi
	callq	g_value_unset
.LBB12_23:                              # %if.end.42
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_24
.LBB12_24:                              # %for.inc
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB12_13
.LBB12_25:                              # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB12_26:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_rc_migrate, .Lfunc_end12-gimp_rc_migrate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_class_init,@function
gimp_rc_class_init:                     # @gimp_rc_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$7, %r8d
	movabsq	$gimp_rc_get_property, %rdx
	movabsq	$gimp_rc_set_property, %r9
	movabsq	$gimp_rc_finalize, %r10
	movabsq	$gimp_rc_dispose, %r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$7, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$7, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$3, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_rc_class_init, .Lfunc_end13-gimp_rc_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_dispose,@function
gimp_rc_dispose:                        # @gimp_rc_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 800(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_rc_idle_save
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_rc_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_rc_dispose, .Lfunc_end14-gimp_rc_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_finalize,@function
gimp_rc_finalize:                       # @gimp_rc_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	784(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 784(%rax)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 776(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	776(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 776(%rax)
.LBB15_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_rc_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_rc_finalize, .Lfunc_end15-gimp_rc_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_set_property,@function
gimp_rc_set_property:                   # @gimp_rc_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	-12(%rbp), %r8d
	addl	$-2, %r8d
	subl	$1, %r8d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB16_2
	jmp	.LBB16_1
.LBB16_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_string
	movq	%rax, -48(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %sw.default
	jmp	.LBB16_3
.LBB16_3:                               # %sw.epilog
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB16_4
	jmp	.LBB16_17
.LBB16_17:                              # %sw.epilog
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB16_5
	jmp	.LBB16_18
.LBB16_18:                              # %sw.epilog
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB16_9
	jmp	.LBB16_13
.LBB16_4:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 792(%rdi)
	jmp	.LBB16_16
.LBB16_5:                               # %sw.bb.5
	movq	-40(%rbp), %rax
	movq	784(%rax), %rdi
	callq	g_free
	cmpq	$0, -48(%rbp)
	je	.LBB16_7
# BB#6:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 784(%rdi)
	jmp	.LBB16_8
.LBB16_7:                               # %if.else
	callq	gimp_sysconf_directory
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	-40(%rbp), %rdx
	movq	%rax, 784(%rdx)
.LBB16_8:                               # %if.end
	jmp	.LBB16_16
.LBB16_9:                               # %sw.bb.11
	movq	-40(%rbp), %rax
	movq	776(%rax), %rdi
	callq	g_free
	cmpq	$0, -48(%rbp)
	je	.LBB16_11
# BB#10:                                # %if.then.13
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 776(%rdi)
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.16
	movabsq	$.L.str.19, %rdi
	callq	gimp_personal_rc_file
	movq	-40(%rbp), %rdi
	movq	%rax, 776(%rdi)
.LBB16_12:                              # %if.end.19
	jmp	.LBB16_16
.LBB16_13:                              # %sw.default.20
	jmp	.LBB16_14
.LBB16_14:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$192, %edx
	movabsq	$.L.str.22, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#15:                                # %do.end
	jmp	.LBB16_16
.LBB16_16:                              # %sw.epilog.25
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_rc_set_property, .Lfunc_end16-gimp_rc_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_get_property,@function
gimp_rc_get_property:                   # @gimp_rc_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB17_1
	jmp	.LBB17_8
.LBB17_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB17_2
	jmp	.LBB17_9
.LBB17_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB17_3
	jmp	.LBB17_4
.LBB17_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	792(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB17_7
.LBB17_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	784(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB17_7
.LBB17_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	776(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB17_7
.LBB17_4:                               # %sw.default
	jmp	.LBB17_5
.LBB17_5:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$217, %edx
	movabsq	$.L.str.22, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB17_7
.LBB17_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_rc_get_property, .Lfunc_end17-gimp_rc_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_idle_save,@function
gimp_rc_idle_save:                      # @gimp_rc_idle_save
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rc_save
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	$0, 800(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_rc_idle_save, .Lfunc_end18-gimp_rc_idle_save
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
	movl	$.L.str.4, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_duplicate,@function
gimp_rc_duplicate:                      # @gimp_rc_duplicate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_rc_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movabsq	$gimp_rc_duplicate_unknown_token, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%r8, %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_rc_foreach_unknown_token
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_rc_duplicate, .Lfunc_end20-gimp_rc_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_duplicate_unknown_token,@function
gimp_rc_duplicate_unknown_token:        # @gimp_rc_duplicate_unknown_token
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_rc_add_unknown_token
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_rc_duplicate_unknown_token, .Lfunc_end21-gimp_rc_duplicate_unknown_token
	.cfi_endproc

	.type	gimp_rc_get_type.g_define_type_id__volatile,@object # @gimp_rc_get_type.g_define_type_id__volatile
	.local	gimp_rc_get_type.g_define_type_id__volatile
	.comm	gimp_rc_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRc"
	.size	.L.str, 7

	.type	gimp_rc_get_type.g_implement_interface_info,@object # @gimp_rc_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_rc_get_type.g_implement_interface_info:
	.quad	gimp_rc_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_rc_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"verbose"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"system-gimprc"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"user-gimprc"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-Config"
	.size	.L.str.4, 12

	.type	.L__func__.gimp_rc_set_autosave,@object # @__func__.gimp_rc_set_autosave
.L__func__.gimp_rc_set_autosave:
	.asciz	"gimp_rc_set_autosave"
	.size	.L__func__.gimp_rc_set_autosave, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_RC (rc)"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify"
	.size	.L.str.6, 7

	.type	.L__func__.gimp_rc_query,@object # @__func__.gimp_rc_query
.L__func__.gimp_rc_query:
	.asciz	"gimp_rc_query"
	.size	.L__func__.gimp_rc_query, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"key != NULL"
	.size	.L.str.7, 12

	.type	gimp_rc_query.path_tokens,@object # @gimp_rc_query.path_tokens
	.section	.rodata,"a",@progbits
	.align	16
gimp_rc_query.path_tokens:
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.size	gimp_rc_query.path_tokens, 40

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gimp_dir"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp_data_dir"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_plug_in_dir"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp_plugin_dir"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp_sysconf_dir"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"${%s}"
	.size	.L.str.13, 6

	.type	.L__func__.gimp_rc_set_unknown_token,@object # @__func__.gimp_rc_set_unknown_token
.L__func__.gimp_rc_set_unknown_token:
	.asciz	"gimp_rc_set_unknown_token"
	.size	.L__func__.gimp_rc_set_unknown_token, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP gimprc\n\nThis is your personal gimprc file.  Any variable defined in this file takes precedence over the value defined in the system-wide gimprc: "
	.size	.L.str.14, 151

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\nMost values can be set within GIMP by changing some options in the Preferences dialog."
	.size	.L.str.15, 88

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"end of gimprc"
	.size	.L.str.16, 14

	.type	.L__func__.gimp_rc_save,@object # @__func__.gimp_rc_save
.L__func__.gimp_rc_save:
	.asciz	"gimp_rc_save"
	.size	.L__func__.gimp_rc_save, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Writing '%s'\n"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s"
	.size	.L.str.18, 3

	.type	.L__func__.gimp_rc_migrate,@object # @__func__.gimp_rc_migrate
.L__func__.gimp_rc_migrate:
	.asciz	"gimp_rc_migrate"
	.size	.L__func__.gimp_rc_migrate, 16

	.type	gimp_rc_parent_class,@object # @gimp_rc_parent_class
	.local	gimp_rc_parent_class
	.comm	gimp_rc_parent_class,8,8
	.type	GimpRc_private_offset,@object # @GimpRc_private_offset
	.local	GimpRc_private_offset
	.comm	GimpRc_private_offset,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimprc"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.20, 54

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimprc.c"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"property"
	.size	.L.str.22, 9

	.type	.L__func__.gimp_rc_load,@object # @__func__.gimp_rc_load
.L__func__.gimp_rc_load:
	.asciz	"gimp_rc_load"
	.size	.L__func__.gimp_rc_load, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.23, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
