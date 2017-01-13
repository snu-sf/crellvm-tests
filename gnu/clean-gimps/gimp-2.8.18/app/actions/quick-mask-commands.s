	.text
	.file	"quick-mask-commands.bc"
	.globl	quick_mask_toggle_cmd_callback
	.align	16, 0x90
	.type	quick_mask_toggle_cmd_callback,@function
quick_mask_toggle_cmd_callback:         # @quick_mask_toggle_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_image_get_quick_mask_state
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB0_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_image_set_quick_mask_state
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB0_4:                                # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	quick_mask_toggle_cmd_callback, .Lfunc_end0-quick_mask_toggle_cmd_callback
	.cfi_endproc

	.globl	quick_mask_invert_cmd_callback
	.align	16, 0x90
	.type	quick_mask_invert_cmd_callback,@function
quick_mask_invert_cmd_callback:         # @quick_mask_invert_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_4
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_get_quick_mask_inverted
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	callq	gimp_image_quick_mask_invert
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB1_4:                                # %if.end.6
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	quick_mask_invert_cmd_callback, .Lfunc_end1-quick_mask_invert_cmd_callback
	.cfi_endproc

	.globl	quick_mask_configure_cmd_callback
	.align	16, 0x90
	.type	quick_mask_configure_cmd_callback,@function
quick_mask_configure_cmd_callback:      # @quick_mask_configure_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
.Ltmp9:
	.cfi_offset %rbx, -48
.Ltmp10:
	.cfi_offset %r12, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_5
.LBB2_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_5
.LBB2_4:                                # %if.end.4
	leaq	-104(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_quick_mask_color
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	action_data_get_context
	movabsq	$.L.str, %rdi
	movq	-72(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	-104(%rbp), %r8
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdi
	xorl	%edx, %edx
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-120(%rbp), %r10        # 8-byte Reload
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movq	-184(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movq	%rax, 48(%rsp)
	movl	$0, 56(%rsp)
	callq	channel_options_dialog_new
	movabsq	$.L.str.6, %rsi
	movabsq	$quick_mask_configure_response, %rcx
	xorl	%r12d, %r12d
	movl	%r12d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB2_5:                                # %return
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	quick_mask_configure_cmd_callback, .Lfunc_end2-quick_mask_configure_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	quick_mask_configure_response,@function
quick_mask_configure_response:          # @quick_mask_configure_response
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB3_4
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_image_get_quick_mask_color
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	leaq	-56(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	gimp_rgba_distance
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_3
# BB#2:                                 # %if.then.4
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_image_set_quick_mask_color
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_image_flush
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.7
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	quick_mask_configure_response, .Lfunc_end3-quick_mask_configure_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Quick Mask Attributes"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-quick-mask-edit"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-quick-mask-on"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Edit Quick Mask Attributes"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Edit Quick Mask Color"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Mask opacity:"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
