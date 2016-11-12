	.text
	.file	"gimpdisplayshell-cursor.bc"
	.globl	gimp_display_shell_set_cursor
	.align	16, 0x90
	.type	gimp_display_shell_set_cursor,@function
gimp_display_shell_set_cursor:          # @gimp_display_shell_set_cursor
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_cursor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_14
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 596(%rax)
	jne	.LBB0_14
# BB#13:                                # %if.then.12
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	gimp_display_shell_real_set_cursor
.LBB0_14:                               # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_set_cursor, .Lfunc_end0-gimp_display_shell_set_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_real_set_cursor,@function
gimp_display_shell_real_set_cursor:     # @gimp_display_shell_real_set_cursor
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_real_set_cursor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_35
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	cmpl	$-1, -12(%rbp)
	jne	.LBB1_16
# BB#13:                                # %if.then.12
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 580(%rcx)
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
.LBB1_15:                               # %if.end.18
	jmp	.LBB1_35
.LBB1_16:                               # %if.end.19
	cmpl	$1024, -12(%rbp)        # imm = 0x400
	je	.LBB1_28
# BB#17:                                # %land.lhs.true.21
	cmpl	$1028, -12(%rbp)        # imm = 0x404
	je	.LBB1_28
# BB#18:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movl	460(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_36
.LBB1_36:                               # %if.then.23
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB1_20
	jmp	.LBB1_37
.LBB1_37:                               # %if.then.23
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB1_24
	jmp	.LBB1_27
.LBB1_19:                               # %sw.bb
	jmp	.LBB1_27
.LBB1_20:                               # %sw.bb.24
	cmpl	$1032, -12(%rbp)        # imm = 0x408
	jb	.LBB1_22
# BB#21:                                # %lor.lhs.false
	cmpl	$1039, -12(%rbp)        # imm = 0x40F
	jbe	.LBB1_23
.LBB1_22:                               # %if.then.27
	movl	$1027, -12(%rbp)        # imm = 0x403
.LBB1_23:                               # %if.end.28
	jmp	.LBB1_27
.LBB1_24:                               # %sw.bb.29
	movl	$1026, -12(%rbp)        # imm = 0x402
	movl	$0, -16(%rbp)
	cmpl	$1, -20(%rbp)
	je	.LBB1_26
# BB#25:                                # %if.then.31
	movl	$0, -20(%rbp)
.LBB1_26:                               # %if.end.32
	jmp	.LBB1_27
.LBB1_27:                               # %sw.epilog
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.33
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	716(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	720(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	572(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB1_34
# BB#29:                                # %lor.lhs.false.46
	movq	-8(%rbp), %rax
	movl	576(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB1_34
# BB#30:                                # %lor.lhs.false.49
	movq	-8(%rbp), %rax
	movl	580(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB1_34
# BB#31:                                # %lor.lhs.false.52
	movq	-8(%rbp), %rax
	movl	584(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jne	.LBB1_34
# BB#32:                                # %lor.lhs.false.55
	movq	-8(%rbp), %rax
	movl	588(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB1_34
# BB#33:                                # %lor.lhs.false.57
	cmpl	$0, -24(%rbp)
	je	.LBB1_35
.LBB1_34:                               # %if.then.59
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 572(%rcx)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 576(%rcx)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 580(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 584(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 588(%rcx)
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	gimp_cursor_set
.LBB1_35:                               # %if.end.66
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_real_set_cursor, .Lfunc_end1-gimp_display_shell_real_set_cursor
	.cfi_endproc

	.globl	gimp_display_shell_unset_cursor
	.align	16, 0x90
	.type	gimp_display_shell_unset_cursor,@function
gimp_display_shell_unset_cursor:        # @gimp_display_shell_unset_cursor
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_unset_cursor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_14
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 596(%rax)
	jne	.LBB2_14
# BB#13:                                # %if.then.12
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_display_shell_real_set_cursor
.LBB2_14:                               # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_unset_cursor, .Lfunc_end2-gimp_display_shell_unset_cursor
	.cfi_endproc

	.globl	gimp_display_shell_set_override_cursor
	.align	16, 0x90
	.type	gimp_display_shell_set_override_cursor,@function
gimp_display_shell_set_override_cursor: # @gimp_display_shell_set_override_cursor
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_override_cursor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 596(%rax)
	je	.LBB3_15
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$0, 596(%rax)
	je	.LBB3_16
# BB#14:                                # %land.lhs.true.14
	movq	-8(%rbp), %rax
	movl	592(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB3_16
.LBB3_15:                               # %if.then.16
	xorl	%eax, %eax
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 592(%rdx)
	movq	-8(%rbp), %rdx
	movl	$1, 596(%rdx)
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movl	572(%rdx), %esi
	movq	-8(%rbp), %rdx
	movl	576(%rdx), %edx
	movl	-12(%rbp), %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	gimp_cursor_set
.LBB3_16:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_set_override_cursor, .Lfunc_end3-gimp_display_shell_set_override_cursor
	.cfi_endproc

	.globl	gimp_display_shell_unset_override_cursor
	.align	16, 0x90
	.type	gimp_display_shell_unset_override_cursor,@function
gimp_display_shell_unset_override_cursor: # @gimp_display_shell_unset_override_cursor
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
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_unset_override_cursor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 596(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.12
	movl	$1, %r8d
	movq	-8(%rbp), %rax
	movl	$0, 596(%rax)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	580(%rax), %esi
	movq	-8(%rbp), %rax
	movl	584(%rax), %edx
	movq	-8(%rbp), %rax
	movl	588(%rax), %ecx
	callq	gimp_display_shell_real_set_cursor
.LBB4_14:                               # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_unset_override_cursor, .Lfunc_end4-gimp_display_shell_unset_override_cursor
	.cfi_endproc

	.globl	gimp_display_shell_update_software_cursor
	.align	16, 0x90
	.type	gimp_display_shell_update_software_cursor,@function
gimp_display_shell_update_software_cursor: # @gimp_display_shell_update_software_cursor
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_update_software_cursor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 600(%rax)
	je	.LBB5_17
# BB#13:                                # %land.lhs.true.13
	movq	-8(%rbp), %rax
	cmpl	$0, 304(%rax)
	je	.LBB5_17
# BB#14:                                # %land.lhs.true.15
	cmpl	$0, -16(%rbp)
	jl	.LBB5_17
# BB#15:                                # %land.lhs.true.17
	cmpl	$0, -20(%rbp)
	jl	.LBB5_17
# BB#16:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_canvas_item_begin_change
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	callq	gimp_canvas_cursor_set
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_canvas_item_set_visible
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_canvas_item_end_change
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.24
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_canvas_item_set_visible
.LBB5_18:                               # %if.end.26
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_statusbar_update_cursor
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB5_25
# BB#19:                                # %if.then.31
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB5_24
# BB#20:                                # %if.then.37
	movl	$-1, -100(%rbp)
	movl	$-1, -104(%rbp)
	cmpl	$0, -16(%rbp)
	jl	.LBB5_23
# BB#21:                                # %land.lhs.true.42
	cmpl	$0, -20(%rbp)
	jl	.LBB5_23
# BB#22:                                # %if.then.45
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	gimp_display_shell_untransform_xy
.LBB5_23:                               # %if.end.46
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	184(%rdi), %edx
	cvtsi2sdl	-100(%rbp), %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	movq	%rax, %rdi
	callq	gimp_cursor_view_update_cursor
.LBB5_24:                               # %if.end.51
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.52
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_update_software_cursor, .Lfunc_end5-gimp_display_shell_update_software_cursor
	.cfi_endproc

	.globl	gimp_display_shell_clear_software_cursor
	.align	16, 0x90
	.type	gimp_display_shell_clear_software_cursor,@function
gimp_display_shell_clear_software_cursor: # @gimp_display_shell_clear_software_cursor
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_clear_software_cursor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_16
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_canvas_item_set_visible
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_statusbar_clear_cursor
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_16
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.21
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_cursor_view_clear_cursor
.LBB6_15:                               # %if.end.24
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.25
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_clear_software_cursor, .Lfunc_end6-gimp_display_shell_clear_software_cursor
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_set_cursor,@object # @__func__.gimp_display_shell_set_cursor
.L__func__.gimp_display_shell_set_cursor:
	.asciz	"gimp_display_shell_set_cursor"
	.size	.L__func__.gimp_display_shell_set_cursor, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_unset_cursor,@object # @__func__.gimp_display_shell_unset_cursor
.L__func__.gimp_display_shell_unset_cursor:
	.asciz	"gimp_display_shell_unset_cursor"
	.size	.L__func__.gimp_display_shell_unset_cursor, 32

	.type	.L__func__.gimp_display_shell_set_override_cursor,@object # @__func__.gimp_display_shell_set_override_cursor
.L__func__.gimp_display_shell_set_override_cursor:
	.asciz	"gimp_display_shell_set_override_cursor"
	.size	.L__func__.gimp_display_shell_set_override_cursor, 39

	.type	.L__func__.gimp_display_shell_unset_override_cursor,@object # @__func__.gimp_display_shell_unset_override_cursor
.L__func__.gimp_display_shell_unset_override_cursor:
	.asciz	"gimp_display_shell_unset_override_cursor"
	.size	.L__func__.gimp_display_shell_unset_override_cursor, 41

	.type	.L__func__.gimp_display_shell_update_software_cursor,@object # @__func__.gimp_display_shell_update_software_cursor
.L__func__.gimp_display_shell_update_software_cursor:
	.asciz	"gimp_display_shell_update_software_cursor"
	.size	.L__func__.gimp_display_shell_update_software_cursor, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-cursor-view"
	.size	.L.str.2, 17

	.type	.L__func__.gimp_display_shell_clear_software_cursor,@object # @__func__.gimp_display_shell_clear_software_cursor
.L__func__.gimp_display_shell_clear_software_cursor:
	.asciz	"gimp_display_shell_clear_software_cursor"
	.size	.L__func__.gimp_display_shell_clear_software_cursor, 41

	.type	.L__func__.gimp_display_shell_real_set_cursor,@object # @__func__.gimp_display_shell_real_set_cursor
.L__func__.gimp_display_shell_real_set_cursor:
	.asciz	"gimp_display_shell_real_set_cursor"
	.size	.L__func__.gimp_display_shell_real_set_cursor, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
