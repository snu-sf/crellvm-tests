	.text
	.file	"gimpdisplayshell-progress.bc"
	.globl	gimp_display_shell_progress_iface_init
	.align	16, 0x90
	.type	gimp_display_shell_progress_iface_init,@function
gimp_display_shell_progress_iface_init: # @gimp_display_shell_progress_iface_init
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
	pushq	%rbx
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$gimp_display_shell_progress_message, %rax
	movabsq	$gimp_display_shell_progress_get_window_id, %rcx
	movabsq	$gimp_display_shell_progress_pulse, %rdx
	movabsq	$gimp_display_shell_progress_get_value, %rsi
	movabsq	$gimp_display_shell_progress_set_value, %r8
	movabsq	$gimp_display_shell_progress_set_text, %r9
	movabsq	$gimp_display_shell_progress_is_active, %r10
	movabsq	$gimp_display_shell_progress_end, %r11
	movabsq	$gimp_display_shell_progress_start, %rbx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r11, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r10, 32(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r9, 40(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r8, 48(%rdi)
	movq	-16(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	movq	-16(%rbp), %rsi
	movq	%rdx, 64(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 72(%rdx)
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_progress_iface_init, .Lfunc_end0-gimp_display_shell_progress_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_start,@function
gimp_display_shell_progress_start:      # @gimp_display_shell_progress_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_progress_start
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_progress_start, .Lfunc_end1-gimp_display_shell_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_end,@function
gimp_display_shell_progress_end:        # @gimp_display_shell_progress_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_progress_end, .Lfunc_end2-gimp_display_shell_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_is_active,@function
gimp_display_shell_progress_is_active:  # @gimp_display_shell_progress_is_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_is_active
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_progress_is_active, .Lfunc_end3-gimp_display_shell_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_set_text,@function
gimp_display_shell_progress_set_text:   # @gimp_display_shell_progress_set_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_progress_set_text
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_progress_set_text, .Lfunc_end4-gimp_display_shell_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_set_value,@function
gimp_display_shell_progress_set_value:  # @gimp_display_shell_progress_set_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_progress_set_value
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_progress_set_value, .Lfunc_end5-gimp_display_shell_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_get_value,@function
gimp_display_shell_progress_get_value:  # @gimp_display_shell_progress_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_get_value
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_progress_get_value, .Lfunc_end6-gimp_display_shell_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_pulse,@function
gimp_display_shell_progress_pulse:      # @gimp_display_shell_progress_pulse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_pulse
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_progress_pulse, .Lfunc_end7-gimp_display_shell_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_get_window_id,@function
gimp_display_shell_progress_get_window_id: # @gimp_display_shell_progress_get_window_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_7
.LBB8_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_5
# BB#4:                                 # %if.then.6
	movl	$1, -44(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.7
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_9
# BB#8:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_get_native_id
	movl	%eax, -4(%rbp)
	jmp	.LBB8_10
.LBB8_9:                                # %if.end.15
	movl	$0, -4(%rbp)
.LBB8_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_progress_get_window_id, .Lfunc_end8-gimp_display_shell_progress_get_window_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_progress_message,@function
gimp_display_shell_progress_message:    # @gimp_display_shell_progress_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	%rax, %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -64(%rbp)
	movl	-28(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	je	.LBB9_5
	jmp	.LBB9_8
.LBB9_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_9
.LBB9_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB9_6
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.3
	movq	-64(%rbp), %rdi
	callq	gimp_statusbar_get_visible
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_6
.LBB9_4:                                # %if.else
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_progress_message
	movl	%eax, -4(%rbp)
	jmp	.LBB9_7
.LBB9_5:                                # %sw.bb.8
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_progress_message
	movl	$1, -4(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB9_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_progress_message, .Lfunc_end9-gimp_display_shell_progress_message
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
