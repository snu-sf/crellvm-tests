	.text
	.file	"gimptool-progress.bc"
	.globl	gimp_tool_progress_iface_init
	.align	16, 0x90
	.type	gimp_tool_progress_iface_init,@function
gimp_tool_progress_iface_init:          # @gimp_tool_progress_iface_init
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
	movabsq	$gimp_tool_progress_message, %rax
	movabsq	$gimp_tool_progress_pulse, %rcx
	movabsq	$gimp_tool_progress_get_value, %rdx
	movabsq	$gimp_tool_progress_set_value, %rsi
	movabsq	$gimp_tool_progress_set_text, %r8
	movabsq	$gimp_tool_progress_is_active, %r9
	movabsq	$gimp_tool_progress_end, %r10
	movabsq	$gimp_tool_progress_start, %r11
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r11, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r10, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_progress_iface_init, .Lfunc_end0-gimp_tool_progress_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_start,@function
gimp_tool_progress_start:               # @gimp_tool_progress_start
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.5
	movl	$1, -84(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.6
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.8
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.10
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tool_progress_start, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_18
.LBB1_11:                               # %if.end.12
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.13
	movq	-40(%rbp), %rax
	cmpq	$0, 184(%rax)
	jne	.LBB1_15
# BB#14:                                # %if.then.16
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tool_progress_start, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_18
.LBB1_16:                               # %if.end.18
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.19
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	xorl	%esi, %esi
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %r10d
	movl	-60(%rbp), %eax
	cltd
	idivl	%r9d
	addl	%eax, %r10d
	cvtsi2sdl	%r10d, %xmm0
	movl	-56(%rbp), %eax
	movl	-64(%rbp), %r10d
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%r9d
	movl	-100(%rbp), %r9d        # 4-byte Reload
	addl	%eax, %r9d
	cvtsi2sdl	%r9d, %xmm1
	callq	gimp_canvas_progress_new
	movq	-40(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gimp_display_shell_add_tool_item
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	callq	gimp_progress_start
	movq	-48(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_widget_flush_expose
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_progress_start, .Lfunc_end1-gimp_tool_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_end,@function
gimp_tool_progress_end:                 # @gimp_tool_progress_end
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gimp_display_shell_remove_tool_item
	movq	-16(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 192(%rax)
.LBB2_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_progress_end, .Lfunc_end2-gimp_tool_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_is_active,@function
gimp_tool_progress_is_active:           # @gimp_tool_progress_is_active
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_progress_is_active, .Lfunc_end3-gimp_tool_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_set_text,@function
gimp_tool_progress_set_text:            # @gimp_tool_progress_set_text
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_progress_set_text
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_widget_flush_expose
.LBB4_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_progress_set_text, .Lfunc_end4-gimp_tool_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_set_value,@function
gimp_tool_progress_set_value:           # @gimp_tool_progress_set_value
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_progress_set_value
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_widget_flush_expose
.LBB5_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_progress_set_value, .Lfunc_end5-gimp_tool_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_get_value,@function
gimp_tool_progress_get_value:           # @gimp_tool_progress_get_value
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_get_value
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB6_3:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_progress_get_value, .Lfunc_end6-gimp_tool_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_pulse,@function
gimp_tool_progress_pulse:               # @gimp_tool_progress_pulse
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_progress_pulse, .Lfunc_end7-gimp_tool_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_progress_message,@function
gimp_tool_progress_message:             # @gimp_tool_progress_message
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_progress_message, .Lfunc_end8-gimp_tool_progress_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Tools"
	.size	.L.str, 11

	.type	.L__func__.gimp_tool_progress_start,@object # @__func__.gimp_tool_progress_start
.L__func__.gimp_tool_progress_start:
	.asciz	"gimp_tool_progress_start"
	.size	.L__func__.gimp_tool_progress_start, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY (tool->display)"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tool->progress == NULL"
	.size	.L.str.2, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
