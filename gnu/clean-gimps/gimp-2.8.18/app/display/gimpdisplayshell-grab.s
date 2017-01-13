	.text
	.file	"gimpdisplayshell-grab.bc"
	.globl	gimp_display_shell_pointer_grab
	.align	16, 0x90
	.type	gimp_display_shell_pointer_grab,@function
gimp_display_shell_pointer_grab:        # @gimp_display_shell_pointer_grab
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_pointer_grab, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_22
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	cmpl	$0, 704(%rax)
	jne	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_pointer_grab, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_22
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	cmpq	$0, -24(%rbp)
	je	.LBB0_21
# BB#18:                                # %if.then.18
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	callq	gdk_event_get_time
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	-76(%rbp), %edx         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	%eax, %r9d
	callq	gdk_pointer_grab
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.24
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_display_shell_pointer_grab, %rsi
	movl	-60(%rbp), %edx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB0_22
.LBB0_20:                               # %if.end.25
	movq	-24(%rbp), %rdi
	callq	gdk_event_get_time
	movq	-16(%rbp), %rdi
	movl	%eax, 708(%rdi)
.LBB0_21:                               # %if.end.27
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_grab_add
	movq	-16(%rbp), %rax
	movl	$1, 704(%rax)
	movl	$1, -4(%rbp)
.LBB0_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_pointer_grab, .Lfunc_end0-gimp_display_shell_pointer_grab
	.cfi_endproc

	.globl	gimp_display_shell_pointer_ungrab
	.align	16, 0x90
	.type	gimp_display_shell_pointer_ungrab,@function
gimp_display_shell_pointer_ungrab:      # @gimp_display_shell_pointer_ungrab
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_pointer_ungrab, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_20
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$1, 704(%rax)
	jne	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_pointer_ungrab, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_20
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_grab_remove
	cmpq	$0, -16(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_display
	movq	-8(%rbp), %rdi
	movl	708(%rdi), %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
	movq	-8(%rbp), %rax
	movl	$0, 708(%rax)
.LBB1_19:                               # %if.end.22
	movq	-8(%rbp), %rax
	movl	$0, 704(%rax)
.LBB1_20:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_pointer_ungrab, .Lfunc_end1-gimp_display_shell_pointer_ungrab
	.cfi_endproc

	.globl	gimp_display_shell_keyboard_grab
	.align	16, 0x90
	.type	gimp_display_shell_keyboard_grab,@function
gimp_display_shell_keyboard_grab:       # @gimp_display_shell_keyboard_grab
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_keyboard_grab, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_25
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_keyboard_grab, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_25
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	movq	-16(%rbp), %rax
	cmpl	$0, 712(%rax)
	jne	.LBB2_20
# BB#19:                                # %if.then.19
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_keyboard_grab, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_25
.LBB2_21:                               # %if.end.21
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gdk_event_get_time
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	callq	gdk_keyboard_grab
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB2_24
# BB#23:                                # %if.then.27
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_display_shell_keyboard_grab, %rsi
	movl	-28(%rbp), %edx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB2_25
.LBB2_24:                               # %if.end.28
	movq	-16(%rbp), %rax
	movl	$1, 712(%rax)
	movq	-24(%rbp), %rdi
	callq	gdk_event_get_time
	movq	-16(%rbp), %rdi
	movl	%eax, 716(%rdi)
	movl	$1, -4(%rbp)
.LBB2_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_keyboard_grab, .Lfunc_end2-gimp_display_shell_keyboard_grab
	.cfi_endproc

	.globl	gimp_display_shell_keyboard_ungrab
	.align	16, 0x90
	.type	gimp_display_shell_keyboard_ungrab,@function
gimp_display_shell_keyboard_ungrab:     # @gimp_display_shell_keyboard_ungrab
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
	movq	%rsi, -16(%rbp)
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
	movabsq	$.L__func__.gimp_display_shell_keyboard_ungrab, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_keyboard_ungrab, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	movq	-8(%rbp), %rax
	cmpl	$1, 712(%rax)
	jne	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_keyboard_ungrab, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_display
	movq	-8(%rbp), %rdi
	movl	716(%rdi), %esi
	movq	%rax, %rdi
	callq	gdk_display_keyboard_ungrab
	movq	-8(%rbp), %rax
	movl	$0, 712(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 716(%rax)
.LBB3_23:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_keyboard_ungrab, .Lfunc_end3-gimp_display_shell_keyboard_ungrab
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_pointer_grab,@object # @__func__.gimp_display_shell_pointer_grab
.L__func__.gimp_display_shell_pointer_grab:
	.asciz	"gimp_display_shell_pointer_grab"
	.size	.L__func__.gimp_display_shell_pointer_grab, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"shell->pointer_grabbed == FALSE"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: gdk_pointer_grab failed with status %d\n"
	.size	.L.str.3, 44

	.type	.L__func__.gimp_display_shell_pointer_ungrab,@object # @__func__.gimp_display_shell_pointer_ungrab
.L__func__.gimp_display_shell_pointer_ungrab:
	.asciz	"gimp_display_shell_pointer_ungrab"
	.size	.L__func__.gimp_display_shell_pointer_ungrab, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"shell->pointer_grabbed == TRUE"
	.size	.L.str.4, 31

	.type	.L__func__.gimp_display_shell_keyboard_grab,@object # @__func__.gimp_display_shell_keyboard_grab
.L__func__.gimp_display_shell_keyboard_grab:
	.asciz	"gimp_display_shell_keyboard_grab"
	.size	.L__func__.gimp_display_shell_keyboard_grab, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"event != NULL"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"shell->keyboard_grabbed == FALSE"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: gdk_keyboard_grab failed with status %d\n"
	.size	.L.str.7, 45

	.type	.L__func__.gimp_display_shell_keyboard_ungrab,@object # @__func__.gimp_display_shell_keyboard_ungrab
.L__func__.gimp_display_shell_keyboard_ungrab:
	.asciz	"gimp_display_shell_keyboard_ungrab"
	.size	.L__func__.gimp_display_shell_keyboard_ungrab, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"shell->keyboard_grabbed == TRUE"
	.size	.L.str.8, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
