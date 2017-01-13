	.text
	.file	"gimpdisplayshell-selection.bc"
	.globl	gimp_display_shell_selection_init
	.align	16, 0x90
	.type	gimp_display_shell_selection_init,@function
gimp_display_shell_selection_init:      # @gimp_display_shell_selection_init
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L__func__.gimp_display_shell_selection_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_selection_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	movl	$64, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_show_selection
	movabsq	$.L.str.3, %rsi
	movabsq	$selection_window_state_event, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movl	%eax, 48(%rdx)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %r10
	movq	%rdx, 312(%r10)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.4, %rsi
	movabsq	$selection_visibility_notify_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_18:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_selection_init, .Lfunc_end0-gimp_display_shell_selection_init
	.cfi_endproc

	.align	16, 0x90
	.type	selection_window_state_event,@function
selection_window_state_event:           # @selection_window_state_event
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	selection_set_shell_visible
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	selection_window_state_event, .Lfunc_end1-selection_window_state_event
	.cfi_endproc

	.align	16, 0x90
	.type	selection_visibility_notify_event,@function
selection_visibility_notify_event:      # @selection_visibility_notify_event
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	cmpl	$2, 20(%rdx)
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	selection_set_shell_visible
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	selection_visibility_notify_event, .Lfunc_end2-selection_visibility_notify_event
	.cfi_endproc

	.globl	gimp_display_shell_selection_free
	.align	16, 0x90
	.type	gimp_display_shell_selection_free,@function
gimp_display_shell_selection_free:      # @gimp_display_shell_selection_free
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_selection_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB3_16
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	selection_stop
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$selection_window_state_event, %rax
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$selection_visibility_notify_event, %rdi
	movq	-8(%rbp), %r9
	movq	-40(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-40(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	selection_free_segs
# BB#14:                                # %do.body.18
	movl	$64, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#15:                                # %do.end.19
	movq	-8(%rbp), %rax
	movq	$0, 312(%rax)
.LBB3_16:                               # %if.end.21
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_selection_free, .Lfunc_end3-gimp_display_shell_selection_free
	.cfi_endproc

	.align	16, 0x90
	.type	selection_stop,@function
selection_stop:                         # @selection_stop
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 52(%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	52(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 52(%rcx)
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	selection_stop, .Lfunc_end4-selection_stop
	.cfi_endproc

	.align	16, 0x90
	.type	selection_free_segs,@function
selection_free_segs:                    # @selection_free_segs
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
	cmpq	$0, 8(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
.LBB5_4:                                # %if.end.7
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	cairo_pattern_destroy
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.LBB5_6:                                # %if.end.12
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	selection_free_segs, .Lfunc_end5-selection_free_segs
	.cfi_endproc

	.globl	gimp_display_shell_selection_undraw
	.align	16, 0x90
	.type	gimp_display_shell_selection_undraw,@function
gimp_display_shell_selection_undraw:    # @gimp_display_shell_selection_undraw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_selection_undraw, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_16
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB6_15
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB6_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	selection_undraw
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.17
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	selection_stop
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	selection_free_segs
.LBB6_16:                               # %if.end.20
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_selection_undraw, .Lfunc_end6-gimp_display_shell_selection_undraw
	.cfi_endproc

	.align	16, 0x90
	.type	selection_undraw,@function
selection_undraw:                       # @selection_undraw
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
	movq	-8(%rbp), %rdi
	callq	selection_stop
	leaq	-12(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gimp_display_shell_mask_bounds
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	-24(%rbp), %r8d
	subl	-16(%rbp), %r8d
	callq	gimp_display_shell_expose_area
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	selection_start
.LBB7_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	selection_undraw, .Lfunc_end7-selection_undraw
	.cfi_endproc

	.globl	gimp_display_shell_selection_restart
	.align	16, 0x90
	.type	gimp_display_shell_selection_restart,@function
gimp_display_shell_selection_restart:   # @gimp_display_shell_selection_restart
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_selection_restart, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB8_15
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB8_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	selection_start
.LBB8_15:                               # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_selection_restart, .Lfunc_end8-gimp_display_shell_selection_restart
	.cfi_endproc

	.align	16, 0x90
	.type	selection_start,@function
selection_start:                        # @selection_start
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	selection_stop
	movq	-8(%rbp), %rdi
	cmpl	$0, 40(%rdi)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$selection_start_timeout, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rcx
	movl	%eax, 52(%rcx)
.LBB9_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	selection_start, .Lfunc_end9-selection_start
	.cfi_endproc

	.globl	gimp_display_shell_selection_pause
	.align	16, 0x90
	.type	gimp_display_shell_selection_pause,@function
gimp_display_shell_selection_pause:     # @gimp_display_shell_selection_pause
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_selection_pause, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_17
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB10_17
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB10_17
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB10_16
# BB#15:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	selection_stop
.LBB10_16:                              # %if.end.20
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB10_17:                              # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_selection_pause, .Lfunc_end10-gimp_display_shell_selection_pause
	.cfi_endproc

	.globl	gimp_display_shell_selection_resume
	.align	16, 0x90
	.type	gimp_display_shell_selection_resume,@function
gimp_display_shell_selection_resume:    # @gimp_display_shell_selection_resume
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_selection_resume, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_17
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB11_17
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB11_17
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movl	40(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB11_16
# BB#15:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	selection_start
.LBB11_16:                              # %if.end.22
	jmp	.LBB11_17
.LBB11_17:                              # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_selection_resume, .Lfunc_end11-gimp_display_shell_selection_resume
	.cfi_endproc

	.globl	gimp_display_shell_selection_set_show
	.align	16, 0x90
	.type	gimp_display_shell_selection_set_show,@function
gimp_display_shell_selection_set_show:  # @gimp_display_shell_selection_set_show
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_selection_set_show, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_17
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB12_17
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB12_17
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movq	-48(%rbp), %rax
	cmpl	48(%rax), %ecx
	je	.LBB12_16
# BB#15:                                # %if.then.20
	movq	-48(%rbp), %rdi
	callq	selection_undraw
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, 48(%rdi)
	movq	-48(%rbp), %rdi
	callq	selection_start
.LBB12_16:                              # %if.end.22
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.23
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_selection_set_show, .Lfunc_end12-gimp_display_shell_selection_set_show
	.cfi_endproc

	.align	16, 0x90
	.type	selection_start_timeout,@function
selection_start_timeout:                # @selection_start_timeout
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	selection_free_segs
	movq	-16(%rbp), %rdi
	movl	$0, 52(%rdi)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	128(%rdi), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB13_10
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	selection_generate_segs
	movq	-16(%rbp), %rdi
	movl	$0, 36(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$0, 48(%rdi)
	je	.LBB13_9
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	selection_draw
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_5
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	callq	gimp_display_shell_draw_selection_out
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
.LBB13_5:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB13_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB13_8
# BB#7:                                 # %if.then.16
	movl	$200, %edi
	movabsq	$selection_timeout, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-24(%rbp), %rdx
	movl	436(%rdx), %esi
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_timeout_add_full
	movq	-16(%rbp), %rcx
	movl	%eax, 52(%rcx)
.LBB13_8:                               # %if.end.19
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.20
	movl	$0, -4(%rbp)
.LBB13_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	selection_start_timeout, .Lfunc_end13-selection_start_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	selection_generate_segs,@function
selection_generate_segs:                # @selection_generate_segs
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	128(%rdi), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	movq	-8(%rbp), %rcx
	addq	$32, %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_channel_boundary
	movq	-8(%rbp), %rcx
	cmpl	$0, 16(%rcx)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$16, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rdi
	callq	g_malloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	callq	selection_transform_segs
	movq	-8(%rbp), %rdi
	callq	selection_render_mask
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB14_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB14_5
# BB#4:                                 # %if.then.12
	movl	$16, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	32(%rcx), %rdi
	callq	g_malloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	callq	selection_transform_segs
	jmp	.LBB14_6
.LBB14_5:                               # %if.else.19
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.LBB14_6:                               # %if.end.21
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	selection_generate_segs, .Lfunc_end14-selection_generate_segs
	.cfi_endproc

	.align	16, 0x90
	.type	selection_draw,@function
selection_draw:                         # @selection_draw
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	andl	$7, %ecx
	callq	gimp_display_shell_draw_selection_in
	movq	-16(%rbp), %rdi
	callq	cairo_destroy
.LBB15_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	selection_draw, .Lfunc_end15-selection_draw
	.cfi_endproc

	.align	16, 0x90
	.type	selection_timeout,@function
selection_timeout:                      # @selection_timeout
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 36(%rdi)
	movq	-8(%rbp), %rdi
	callq	selection_draw
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	selection_timeout, .Lfunc_end16-selection_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	selection_transform_segs,@function
selection_transform_segs:               # @selection_transform_segs
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
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	296(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	300(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_segments
	movl	$0, -40(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB17_33
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jle	.LBB17_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB17_8
.LBB17_4:                               # %cond.false
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpl	$-1, (%rax)
	jge	.LBB17_6
# BB#5:                                 # %cond.true.9
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB17_7
.LBB17_6:                               # %cond.false.10
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB17_7:                               # %cond.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB17_8:                               # %cond.end.14
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movl	4(%rcx), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB17_10
# BB#9:                                 # %cond.true.22
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB17_14
.LBB17_10:                              # %cond.false.23
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpl	$-1, 4(%rax)
	jge	.LBB17_12
# BB#11:                                # %cond.true.28
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB17_13
.LBB17_12:                              # %cond.false.29
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB17_13:                              # %cond.end.33
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB17_14:                              # %cond.end.35
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB17_16
# BB#15:                                # %cond.true.43
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB17_20
.LBB17_16:                              # %cond.false.44
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpl	$-1, 8(%rax)
	jge	.LBB17_18
# BB#17:                                # %cond.true.49
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB17_19
.LBB17_18:                              # %cond.false.50
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB17_19:                              # %cond.end.54
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB17_20:                              # %cond.end.56
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movl	12(%rcx), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB17_22
# BB#21:                                # %cond.true.64
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB17_26
.LBB17_22:                              # %cond.false.65
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpl	$-1, 12(%rax)
	jge	.LBB17_24
# BB#23:                                # %cond.true.70
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB17_25
.LBB17_24:                              # %cond.false.71
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB17_25:                              # %cond.end.75
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB17_26:                              # %cond.end.77
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	-24(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movslq	-40(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-16(%rbp), %rcx
	movb	16(%rcx), %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	jne	.LBB17_31
# BB#27:                                # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB17_29
# BB#28:                                # %if.then.91
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, (%rax)
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB17_30
.LBB17_29:                              # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 4(%rax)
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 12(%rax)
.LBB17_30:                              # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_31
.LBB17_31:                              # %if.end.107
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_32
.LBB17_32:                              # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB17_1
.LBB17_33:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	selection_transform_segs, .Lfunc_end17-selection_transform_segs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	selection_render_mask,@function
selection_render_mask:                  # @selection_render_mask
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	328(%rdi), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gdk_window_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gdk_window_get_height
	movl	$8192, %esi             # imm = 0x2000
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gdk_window_create_similar_surface
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_create
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_cap
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	callq	gimp_cairo_add_segments
	movq	-32(%rbp), %rdi
	callq	cairo_stroke
	movq	-24(%rbp), %rdi
	callq	cairo_pattern_create_for_surface
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
	movq	-24(%rbp), %rdi
	callq	cairo_surface_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	selection_render_mask, .Lfunc_end18-selection_render_mask
	.cfi_endproc

	.align	16, 0x90
	.type	selection_set_shell_visible,@function
selection_set_shell_visible:            # @selection_set_shell_visible
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %esi
	cmpl	-12(%rbp), %esi
	je	.LBB19_5
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
	cmpl	$0, -12(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	selection_start
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	selection_stop
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	selection_set_shell_visible, .Lfunc_end19-selection_set_shell_visible
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_selection_init,@object # @__func__.gimp_display_shell_selection_init
.L__func__.gimp_display_shell_selection_init:
	.asciz	"gimp_display_shell_selection_init"
	.size	.L__func__.gimp_display_shell_selection_init, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"shell->selection == NULL"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"window-state-event"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"visibility-notify-event"
	.size	.L.str.4, 24

	.type	.L__func__.gimp_display_shell_selection_free,@object # @__func__.gimp_display_shell_selection_free
.L__func__.gimp_display_shell_selection_free:
	.asciz	"gimp_display_shell_selection_free"
	.size	.L__func__.gimp_display_shell_selection_free, 34

	.type	.L__func__.gimp_display_shell_selection_undraw,@object # @__func__.gimp_display_shell_selection_undraw
.L__func__.gimp_display_shell_selection_undraw:
	.asciz	"gimp_display_shell_selection_undraw"
	.size	.L__func__.gimp_display_shell_selection_undraw, 36

	.type	.L__func__.gimp_display_shell_selection_restart,@object # @__func__.gimp_display_shell_selection_restart
.L__func__.gimp_display_shell_selection_restart:
	.asciz	"gimp_display_shell_selection_restart"
	.size	.L__func__.gimp_display_shell_selection_restart, 37

	.type	.L__func__.gimp_display_shell_selection_pause,@object # @__func__.gimp_display_shell_selection_pause
.L__func__.gimp_display_shell_selection_pause:
	.asciz	"gimp_display_shell_selection_pause"
	.size	.L__func__.gimp_display_shell_selection_pause, 35

	.type	.L__func__.gimp_display_shell_selection_resume,@object # @__func__.gimp_display_shell_selection_resume
.L__func__.gimp_display_shell_selection_resume:
	.asciz	"gimp_display_shell_selection_resume"
	.size	.L__func__.gimp_display_shell_selection_resume, 36

	.type	.L__func__.gimp_display_shell_selection_set_show,@object # @__func__.gimp_display_shell_selection_set_show
.L__func__.gimp_display_shell_selection_set_show:
	.asciz	"gimp_display_shell_selection_set_show"
	.size	.L__func__.gimp_display_shell_selection_set_show, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
