	.text
	.file	"dialogs.bc"
	.globl	dialogs_init
	.align	16, 0x90
	.type	dialogs_init,@function
dialogs_init:                           # @dialogs_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.dialogs_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_29
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.dialogs_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_29
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movq	-48(%rbp), %rdi
	callq	gimp_get_user_context
	movabsq	$.L.str.3, %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_dialog_factory_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_dialog_factory_set_singleton
	movl	$0, -68(%rbp)
.LBB0_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rax
	cmpq	$84, %rax
	jae	.LBB0_28
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	gimp_dialog_factory_get_singleton
	movabsq	$entries, %rcx
	movslq	-68(%rbp), %rdx
	imulq	$88, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	(%rsi), %rsi
	movslq	-68(%rbp), %rdx
	imulq	$88, %rdx, %rdx
	addq	%rdx, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$entries, %rcx
	movslq	-68(%rbp), %rdx
	imulq	$88, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$entries, %rcx
	movslq	-68(%rbp), %rdx
	imulq	$88, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	24(%rsi), %r8
	movslq	-68(%rbp), %rdx
	imulq	$88, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	32(%rsi), %r9
	movslq	-68(%rbp), %rdx
	imulq	$88, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	40(%rsi), %rdx
	movslq	-68(%rbp), %rsi
	imulq	$88, %rsi, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	48(%rdi), %rsi
	movslq	-68(%rbp), %rdi
	imulq	$88, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	56(%r10), %r11d
	movslq	-68(%rbp), %rdi
	imulq	$88, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	60(%r10), %ebx
	movslq	-68(%rbp), %rdi
	imulq	$88, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	64(%r10), %r14d
	movslq	-68(%rbp), %rdi
	imulq	$88, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	68(%r10), %r15d
	movslq	-68(%rbp), %rdi
	imulq	$88, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	72(%r10), %r12d
	movslq	-68(%rbp), %rdi
	imulq	$88, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	76(%r10), %r13d
	movslq	-68(%rbp), %rdi
	imulq	$88, %rdi, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	80(%r10), %edi
	movslq	-68(%rbp), %r10
	imulq	$88, %r10, %r10
	addq	%r10, %rcx
	movl	84(%rcx), %r10d
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -148(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%r12d, 48(%rsp)
	movl	%r13d, 56(%rsp)
	movl	-148(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 64(%rsp)
	movl	%r10d, 72(%rsp)
	callq	gimp_dialog_factory_register_entry
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_25
.LBB0_28:                               # %for.end
	callq	gimp_session_info_get_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movq	%rax, global_recent_docks
.LBB0_29:                               # %return
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dialogs_init, .Lfunc_end0-dialogs_init
	.cfi_endproc

	.globl	dialogs_exit
	.align	16, 0x90
	.type	dialogs_exit,@function
dialogs_exit:                           # @dialogs_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
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
	movabsq	$.L__func__.dialogs_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_16
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	callq	gimp_dialog_factory_get_singleton
	cmpq	$0, %rax
	je	.LBB1_14
# BB#13:                                # %if.then.13
	callq	gimp_dialog_factory_get_singleton
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_run_dispose
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_dialog_factory_set_singleton
.LBB1_14:                               # %if.end.17
	cmpq	$0, global_recent_docks
	je	.LBB1_16
# BB#15:                                # %if.then.19
	movq	global_recent_docks, %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, global_recent_docks
.LBB1_16:                               # %if.end.20
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dialogs_exit, .Lfunc_end1-dialogs_exit
	.cfi_endproc

	.globl	dialogs_load_recent_docks
	.align	16, 0x90
	.type	dialogs_load_recent_docks,@function
dialogs_load_recent_docks:              # @dialogs_load_recent_docks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.dialogs_load_recent_docks, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_19
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	callq	dialogs_get_dockrc_filename
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB2_14:                               # %if.end.15
	movq	global_recent_docks, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB2_18
# BB#15:                                # %if.then.20
	movq	-24(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB2_17
# BB#16:                                # %if.then.22
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB2_17:                               # %if.end.23
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
.LBB2_18:                               # %if.end.24
	movabsq	$dialogs_ensure_factory_entry_on_recent_dock, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	global_recent_docks, %rdi
	movq	%rax, %rsi
	callq	gimp_container_foreach
	movq	global_recent_docks, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_reverse
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB2_19:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dialogs_load_recent_docks, .Lfunc_end2-dialogs_load_recent_docks
	.cfi_endproc

	.align	16, 0x90
	.type	dialogs_get_dockrc_filename,@function
dialogs_get_dockrc_filename:            # @dialogs_get_dockrc_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.186, %rdi
	callq	g_getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.187, %rax
	movq	%rax, -8(%rbp)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_personal_rc_file
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dialogs_get_dockrc_filename, .Lfunc_end3-dialogs_get_dockrc_filename
	.cfi_endproc

	.align	16, 0x90
	.type	dialogs_ensure_factory_entry_on_recent_dock,@function
dialogs_ensure_factory_entry_on_recent_dock: # @dialogs_ensure_factory_entry_on_recent_dock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_session_info_get_factory_entry
	cmpq	$0, %rax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	$0, -16(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.50, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_entry
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_session_info_set_factory_entry
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialogs_ensure_factory_entry_on_recent_dock, .Lfunc_end4-dialogs_ensure_factory_entry_on_recent_dock
	.cfi_endproc

	.globl	dialogs_save_recent_docks
	.align	16, 0x90
	.type	dialogs_save_recent_docks,@function
dialogs_save_recent_docks:              # @dialogs_save_recent_docks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.dialogs_save_recent_docks, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_17
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	callq	dialogs_get_dockrc_filename
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB5_14:                               # %if.end.15
	movq	global_recent_docks, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-24(%rbp), %r9
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	cmpl	$0, %eax
	jne	.LBB5_16
# BB#15:                                # %if.then.20
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
.LBB5_16:                               # %if.end.21
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB5_17:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dialogs_save_recent_docks, .Lfunc_end5-dialogs_save_recent_docks
	.cfi_endproc

	.globl	dialogs_get_toolbox
	.align	16, 0x90
	.type	dialogs_get_toolbox,@function
dialogs_get_toolbox:                    # @dialogs_get_toolbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
# BB#1:                                 # %do.body
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
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
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.9
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.dialogs_get_toolbox, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_30
.LBB6_11:                               # %if.end.11
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	gimp_dialog_factory_get_open_dialogs
	movq	%rax, -16(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB6_29
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$0, -60(%rbp)
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.24
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.31
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$1, -60(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.32
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_20:                               # %if.end.34
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.35
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_24
# BB#22:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_dock_window_has_toolbox
	cmpl	$0, %eax
	je	.LBB6_24
# BB#23:                                # %if.then.42
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_30
.LBB6_24:                               # %if.end.44
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_25
.LBB6_25:                               # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB6_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB6_28
.LBB6_28:                               # %cond.end
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB6_13
.LBB6_29:                               # %for.end
	movq	$0, -8(%rbp)
.LBB6_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialogs_get_toolbox, .Lfunc_end6-dialogs_get_toolbox
	.cfi_endproc

	.align	16, 0x90
	.type	dialogs_restore_dialog,@function
dialogs_restore_dialog:                 # @dialogs_restore_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_context
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_session_info_get_factory_entry
	movl	$16, %edi
	movabsq	$.L__func__.dialogs_restore_dialog, %rsi
	movl	$437, %edx              # imm = 0x1B5
	movabsq	$.L.str.184, %rcx
	movq	(%rax), %r8
	movq	-24(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_factory_entry
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_factory_entry
	movl	56(%rax), %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	cmpl	$0, 724(%rax)
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gimp_dialog_factory_dialog_new
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.185, %rsi
	movl	$2, %r8d
	movl	$3, %r9d
	cmpl	$0, 724(%rax)
	cmovnel	%r9d, %r8d
	movslq	%r8d, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	g_object_set_data
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialogs_restore_dialog, .Lfunc_end7-dialogs_restore_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	dialogs_restore_window,@function
dialogs_restore_window:                 # @dialogs_restore_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_context
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_get_empty_display
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dialogs_restore_window, .Lfunc_end8-dialogs_restore_window
	.cfi_endproc

	.type	global_recent_docks,@object # @global_recent_docks
	.bss
	.globl	global_recent_docks
	.align	8
global_recent_docks:
	.quad	0
	.size	global_recent_docks, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.dialogs_init,@object # @__func__.dialogs_init
.L__func__.dialogs_init:
	.asciz	"dialogs_init"
	.size	.L__func__.dialogs_init, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"toplevel"
	.size	.L.str.3, 9

	.type	entries,@object         # @entries
	.section	.rodata,"a",@progbits
	.align	16
entries:
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.12
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.20
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.21
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.23
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.24
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.25
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.26
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.27
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.28
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.29
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.30
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.31
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.32
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.33
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_image_new_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.34
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_file_open_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.35
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_file_open_location_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.36
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_file_save_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.37
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_file_export_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.38
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_preferences_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.39
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_input_devices_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.40
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_keyboard_shortcuts_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.41
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_module_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.42
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_palette_import_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.43
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_tips_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.44
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_about_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.45
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_error_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.46
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_close_all_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.47
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_quit_get
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.48
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_dock_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.49
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_toolbox_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.50
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_dock_window_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_toolbox_dock_window_new
	.quad	dialogs_restore_dialog
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.52
	.quad	.L.str.54
	.quad	dialogs_tool_options_new
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.55
	.quad	.L.str.58
	.quad	dialogs_device_status_new
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	dialogs_error_console_new
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	dialogs_cursor_view_new
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	0
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	dialogs_image_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.73
	.quad	.L.str.70
	.quad	0
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	dialogs_image_grid_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	0
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	dialogs_brush_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.78
	.quad	.L.str.75
	.quad	0
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	dialogs_brush_grid_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	0
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	dialogs_pattern_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.83
	.quad	.L.str.80
	.quad	0
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	dialogs_pattern_grid_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	0
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	dialogs_gradient_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.88
	.quad	.L.str.85
	.quad	0
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	dialogs_gradient_grid_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	0
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	dialogs_palette_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.93
	.quad	.L.str.90
	.quad	0
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	dialogs_palette_grid_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	0
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	dialogs_font_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.98
	.quad	.L.str.95
	.quad	0
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	dialogs_font_grid_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	0
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	dialogs_buffer_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.103
	.quad	.L.str.100
	.quad	0
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	dialogs_buffer_grid_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	dialogs_document_list_view_new
	.quad	0
	.long	48                      # 0x30
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.109
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	dialogs_document_grid_view_new
	.quad	0
	.long	48                      # 0x30
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	dialogs_template_list_view_new
	.quad	0
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.115
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	dialogs_template_grid_view_new
	.quad	0
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	0
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	dialogs_dynamics_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	0
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	dialogs_tool_preset_list_view_new
	.quad	0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	0
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	dialogs_layer_list_view_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	0
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	dialogs_channel_list_view_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	0
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	dialogs_vectors_list_view_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	0
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	dialogs_colormap_editor_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	0
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	dialogs_histogram_editor_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	dialogs_selection_editor_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.149
	.quad	.L.str.152
	.quad	dialogs_undo_editor_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	dialogs_sample_point_editor_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	dialogs_navigation_editor_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	dialogs_color_editor_new
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	0
	.quad	.L.str.76
	.quad	.L.str.169
	.quad	dialogs_brush_editor_get
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	0
	.quad	.L.str.118
	.quad	.L.str.172
	.quad	dialogs_dynamics_editor_get
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	0
	.quad	.L.str.86
	.quad	.L.str.175
	.quad	dialogs_gradient_editor_get
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	0
	.quad	.L.str.91
	.quad	.L.str.178
	.quad	dialogs_palette_editor_get
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	0
	.quad	.L.str.122
	.quad	.L.str.181
	.quad	dialogs_tool_preset_editor_get
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.182
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_window
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.183
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	dialogs_restore_window
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	entries, 7392

	.type	.L__func__.dialogs_exit,@object # @__func__.dialogs_exit
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.dialogs_exit:
	.asciz	"dialogs_exit"
	.size	.L__func__.dialogs_exit, 13

	.type	.L__func__.dialogs_load_recent_docks,@object # @__func__.dialogs_load_recent_docks
.L__func__.dialogs_load_recent_docks:
	.asciz	"dialogs_load_recent_docks"
	.size	.L__func__.dialogs_load_recent_docks, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.4, 14

	.type	.L__func__.dialogs_save_recent_docks,@object # @__func__.dialogs_save_recent_docks
.L__func__.dialogs_save_recent_docks:
	.asciz	"dialogs_save_recent_docks"
	.size	.L__func__.dialogs_save_recent_docks, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Writing '%s'\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"recently closed docks"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"end of recently closed docks"
	.size	.L.str.7, 29

	.type	.L__func__.dialogs_get_toolbox,@object # @__func__.dialogs_get_toolbox
.L__func__.dialogs_get_toolbox:
	.asciz	"dialogs_get_toolbox"
	.size	.L__func__.dialogs_get_toolbox, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_DIALOG_FACTORY (gimp_dialog_factory_get_singleton ())"
	.size	.L.str.8, 62

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-brightness-contrast-tool-dialog"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-color-balance-tool-dialog"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-color-picker-tool-dialog"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-colorize-tool-dialog"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-crop-tool-dialog"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-curves-tool-dialog"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-desaturate-tool-dialog"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-gegl-tool-dialog"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-hue-saturation-tool-dialog"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-levels-tool-dialog"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-measure-tool-dialog"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-posterize-tool-dialog"
	.size	.L.str.20, 27

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-rotate-tool-dialog"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-scale-tool-dialog"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-shear-tool-dialog"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-text-tool-dialog"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-threshold-tool-dialog"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-perspective-tool-dialog"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-toolbox-color-dialog"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-gradient-editor-color-dialog"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-palette-editor-color-dialog"
	.size	.L.str.29, 33

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-colormap-editor-color-dialog"
	.size	.L.str.30, 34

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-controller-editor-dialog"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-controller-action-dialog"
	.size	.L.str.32, 30

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-image-new-dialog"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-file-open-dialog"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-file-open-location-dialog"
	.size	.L.str.35, 31

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-file-save-dialog"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-file-export-dialog"
	.size	.L.str.37, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-preferences-dialog"
	.size	.L.str.38, 24

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-input-devices-dialog"
	.size	.L.str.39, 26

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-keyboard-shortcuts-dialog"
	.size	.L.str.40, 31

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-module-dialog"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-palette-import-dialog"
	.size	.L.str.42, 27

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-tips-dialog"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-about-dialog"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-error-dialog"
	.size	.L.str.45, 18

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-close-all-dialog"
	.size	.L.str.46, 22

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-quit-dialog"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-dock"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-toolbox"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-dock-window"
	.size	.L.str.50, 17

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.51, 20

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-tool-options"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Tool Options"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-tool-options-dialog"
	.size	.L.str.54, 25

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-device-status"
	.size	.L.str.55, 19

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Devices"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Device Status"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-device-status-dialog"
	.size	.L.str.58, 26

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-error-console"
	.size	.L.str.59, 19

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Errors"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Error Console"
	.size	.L.str.61, 14

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-warning"
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-errors-dialog"
	.size	.L.str.63, 19

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-cursor-view"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Pointer"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Pointer Information"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-cursor"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-pointer-info-dialog"
	.size	.L.str.68, 25

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-image-list"
	.size	.L.str.69, 16

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Images"
	.size	.L.str.70, 7

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-images"
	.size	.L.str.71, 12

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-image-dialog"
	.size	.L.str.72, 18

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-image-grid"
	.size	.L.str.73, 16

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-brush-list"
	.size	.L.str.74, 16

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Brushes"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.76, 21

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-brush-dialog"
	.size	.L.str.77, 18

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-brush-grid"
	.size	.L.str.78, 16

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-pattern-list"
	.size	.L.str.79, 18

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Patterns"
	.size	.L.str.80, 9

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.81, 22

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-pattern-dialog"
	.size	.L.str.82, 20

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-pattern-grid"
	.size	.L.str.83, 18

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gimp-gradient-list"
	.size	.L.str.84, 19

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Gradients"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-tool-blend"
	.size	.L.str.86, 16

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gimp-gradient-dialog"
	.size	.L.str.87, 21

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gimp-gradient-grid"
	.size	.L.str.88, 19

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-palette-list"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Palettes"
	.size	.L.str.90, 9

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gtk-select-color"
	.size	.L.str.91, 17

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-palette-dialog"
	.size	.L.str.92, 20

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-palette-grid"
	.size	.L.str.93, 18

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gimp-font-list"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Fonts"
	.size	.L.str.95, 6

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gtk-select-font"
	.size	.L.str.96, 16

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-font-dialog"
	.size	.L.str.97, 17

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gimp-font-grid"
	.size	.L.str.98, 15

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-buffer-list"
	.size	.L.str.99, 17

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Buffers"
	.size	.L.str.100, 8

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gtk-paste"
	.size	.L.str.101, 10

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-buffer-dialog"
	.size	.L.str.102, 19

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-buffer-grid"
	.size	.L.str.103, 17

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-document-list"
	.size	.L.str.104, 19

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"History"
	.size	.L.str.105, 8

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Document History"
	.size	.L.str.106, 17

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"document-open-recent"
	.size	.L.str.107, 21

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-document-dialog"
	.size	.L.str.108, 21

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gimp-document-grid"
	.size	.L.str.109, 19

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gimp-template-list"
	.size	.L.str.110, 19

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Templates"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Image Templates"
	.size	.L.str.112, 16

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gimp-template"
	.size	.L.str.113, 14

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"gimp-template-dialog"
	.size	.L.str.114, 21

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"gimp-template-grid"
	.size	.L.str.115, 19

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-dynamics-list"
	.size	.L.str.116, 19

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Paint Dynamics"
	.size	.L.str.117, 15

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"gimp-dynamics"
	.size	.L.str.118, 14

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-dynamics-dialog"
	.size	.L.str.119, 21

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-tool-preset-list"
	.size	.L.str.120, 22

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Tool Presets"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"gimp-tool-preset"
	.size	.L.str.122, 17

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gimp-tool-preset-dialog"
	.size	.L.str.123, 24

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"gimp-layer-list"
	.size	.L.str.124, 16

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Layers"
	.size	.L.str.125, 7

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"gimp-layers"
	.size	.L.str.126, 12

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"gimp-layer-dialog"
	.size	.L.str.127, 18

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gimp-channel-list"
	.size	.L.str.128, 18

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Channels"
	.size	.L.str.129, 9

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"gimp-channels"
	.size	.L.str.130, 14

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gimp-channel-dialog"
	.size	.L.str.131, 20

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gimp-vectors-list"
	.size	.L.str.132, 18

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Paths"
	.size	.L.str.133, 6

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"gimp-paths"
	.size	.L.str.134, 11

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"gimp-path-dialog"
	.size	.L.str.135, 17

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-indexed-palette"
	.size	.L.str.136, 21

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Colormap"
	.size	.L.str.137, 9

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"gimp-colormap"
	.size	.L.str.138, 14

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"gimp-indexed-palette-dialog"
	.size	.L.str.139, 28

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gimp-histogram-editor"
	.size	.L.str.140, 22

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Histogram"
	.size	.L.str.141, 10

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"gimp-histogram"
	.size	.L.str.142, 15

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"gimp-histogram-dialog"
	.size	.L.str.143, 22

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-selection-editor"
	.size	.L.str.144, 22

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Selection"
	.size	.L.str.145, 10

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Selection Editor"
	.size	.L.str.146, 17

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"gimp-selection"
	.size	.L.str.147, 15

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"gimp-selection-dialog"
	.size	.L.str.148, 22

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"gimp-undo-history"
	.size	.L.str.149, 18

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Undo"
	.size	.L.str.150, 5

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Undo History"
	.size	.L.str.151, 13

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"gimp-undo-dialog"
	.size	.L.str.152, 17

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"gimp-sample-point-editor"
	.size	.L.str.153, 25

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Sample Points"
	.size	.L.str.154, 14

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"gimp-sample-point"
	.size	.L.str.155, 18

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-sample-point-dialog"
	.size	.L.str.156, 25

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"gimp-navigation-view"
	.size	.L.str.157, 21

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"Navigation"
	.size	.L.str.158, 11

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Display Navigation"
	.size	.L.str.159, 19

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"gimp-navigation"
	.size	.L.str.160, 16

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"gimp-navigation-dialog"
	.size	.L.str.161, 23

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"gimp-color-editor"
	.size	.L.str.162, 18

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"FG/BG"
	.size	.L.str.163, 6

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"FG/BG Color"
	.size	.L.str.164, 12

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"gimp-default-colors"
	.size	.L.str.165, 20

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"gimp-color-dialog"
	.size	.L.str.166, 18

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"gimp-brush-editor"
	.size	.L.str.167, 18

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Brush Editor"
	.size	.L.str.168, 13

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"gimp-brush-editor-dialog"
	.size	.L.str.169, 25

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"gimp-dynamics-editor"
	.size	.L.str.170, 21

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Paint Dynamics Editor"
	.size	.L.str.171, 22

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"gimp-dynamics-editor-dialog"
	.size	.L.str.172, 28

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"gimp-gradient-editor"
	.size	.L.str.173, 21

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"Gradient Editor"
	.size	.L.str.174, 16

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"gimp-gradient-editor-dialog"
	.size	.L.str.175, 28

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"gimp-palette-editor"
	.size	.L.str.176, 20

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Palette Editor"
	.size	.L.str.177, 15

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"gimp-palette-editor-dialog"
	.size	.L.str.178, 27

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"gimp-tool-preset-editor"
	.size	.L.str.179, 24

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Tool Preset Editor"
	.size	.L.str.180, 19

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"gimp-tool-preset-editor-dialog"
	.size	.L.str.181, 31

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"gimp-empty-image-window"
	.size	.L.str.182, 24

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"gimp-single-image-window"
	.size	.L.str.183, 25

	.type	.L__func__.dialogs_restore_dialog,@object # @__func__.dialogs_restore_dialog
.L__func__.dialogs_restore_dialog:
	.asciz	"dialogs_restore_dialog"
	.size	.L__func__.dialogs_restore_dialog, 23

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"restoring toplevel \"%s\" (info %p)"
	.size	.L.str.184, 34

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"gimp-dialog-visibility"
	.size	.L.str.185, 23

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"GIMP_TESTING_DOCKRC_NAME"
	.size	.L.str.186, 25

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"dockrc"
	.size	.L.str.187, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
