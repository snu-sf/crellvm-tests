	.text
	.file	"select-commands.bc"
	.globl	select_invert_cmd_callback
	.align	16, 0x90
	.type	select_invert_cmd_callback,@function
select_invert_cmd_callback:             # @select_invert_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_channel_invert
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB0_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	select_invert_cmd_callback, .Lfunc_end0-select_invert_cmd_callback
	.cfi_endproc

	.globl	select_all_cmd_callback
	.align	16, 0x90
	.type	select_all_cmd_callback,@function
select_all_cmd_callback:                # @select_all_cmd_callback
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
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_channel_all
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB1_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	select_all_cmd_callback, .Lfunc_end1-select_all_cmd_callback
	.cfi_endproc

	.globl	select_none_cmd_callback
	.align	16, 0x90
	.type	select_none_cmd_callback,@function
select_none_cmd_callback:               # @select_none_cmd_callback
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
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB2_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	select_none_cmd_callback, .Lfunc_end2-select_none_cmd_callback
	.cfi_endproc

	.globl	select_float_cmd_callback
	.align	16, 0x90
	.type	select_float_cmd_callback,@function
select_float_cmd_callback:              # @select_float_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_7
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	jmp	.LBB3_7
.LBB3_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_active_drawable
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_selection_float
	cmpq	$0, %rax
	je	.LBB3_6
# BB#5:                                 # %if.then.12
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB3_7
.LBB3_6:                                # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB3_7:                                # %if.end.14
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	select_float_cmd_callback, .Lfunc_end3-select_float_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4674736138332667904     # double 32767
	.text
	.globl	select_feather_cmd_callback
	.align	16, 0x90
	.type	select_feather_cmd_callback,@function
select_feather_cmd_callback:            # @select_feather_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_6
.LBB4_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_resolution
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_get_shell
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	select_feather_radius, %xmm0 # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jbe	.LBB4_4
# BB#3:                                 # %cond.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB4_5:                                # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.1, %rcx
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movl	$3, %r9d
	xorl	%r8d, %r8d
	movabsq	$.L.str.3, %rsi
	movabsq	$select_feather_callback, %rdi
	movq	-64(%rbp), %r10
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-120(%rbp), %r14        # 8-byte Reload
	movl	%r8d, -172(%rbp)        # 4-byte Spill
	movq	%r14, %r8
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-132(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-160(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	gimp_query_size_box
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
.LBB4_6:                                # %return
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	select_feather_cmd_callback, .Lfunc_end4-select_feather_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	select_feather_callback,@function
select_feather_callback:                # @select_feather_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, select_feather_radius
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB5_14
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB5_3
# BB#2:                                 # %cond.true
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB5_4:                                # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jbe	.LBB5_6
# BB#5:                                 # %cond.true.4
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false.5
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB5_7:                                # %cond.end.6
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jbe	.LBB5_9
# BB#8:                                 # %cond.true.9
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false.10
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB5_10:                               # %cond.end.11
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_12
	jp	.LBB5_12
# BB#11:                                # %if.then.14
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB5_13
.LBB5_12:                               # %if.else
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB5_13:                               # %if.end
	jmp	.LBB5_14
.LBB5_14:                               # %if.end.16
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %esi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_channel_feather
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	select_feather_callback, .Lfunc_end5-select_feather_callback
	.cfi_endproc

	.globl	select_sharpen_cmd_callback
	.align	16, 0x90
	.type	select_sharpen_cmd_callback,@function
select_sharpen_cmd_callback:            # @select_sharpen_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_channel_sharpen
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB6_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	select_sharpen_cmd_callback, .Lfunc_end6-select_sharpen_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4674736138332667904     # double 32767
	.text
	.globl	select_shrink_cmd_callback
	.align	16, 0x90
	.type	select_shrink_cmd_callback,@function
select_shrink_cmd_callback:             # @select_shrink_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	-64(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_display_get_shell
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	cvtsi2sdl	select_shrink_pixels, %xmm0
	movq	-64(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jbe	.LBB7_4
# BB#3:                                 # %cond.true
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB7_5:                                # %cond.end
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.5, %rcx
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	xorl	%r9d, %r9d
	movabsq	$.L.str.3, %rsi
	movabsq	$select_shrink_callback, %rdi
	movq	-72(%rbp), %r8
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-148(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	-192(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	callq	gimp_query_size_box
	movabsq	$.L.str.7, %rdi
	movq	%rax, -80(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	-88(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, select_shrink_edge_lock
	setne	%r13b
	xorb	$-1, %r13b
	andb	$1, %r13b
	movzbl	%r13b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
.LBB7_6:                                # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	select_shrink_cmd_callback, .Lfunc_end7-select_shrink_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	select_shrink_callback,@function
select_shrink_callback:                 # @select_shrink_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	addsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, select_shrink_pixels
	movl	%ecx, -56(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, select_shrink_edge_lock
	cmpl	$0, -20(%rbp)
	je	.LBB8_14
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB8_3
# BB#2:                                 # %cond.true
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB8_4
.LBB8_3:                                # %cond.false
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB8_4:                                # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jbe	.LBB8_6
# BB#5:                                 # %cond.true.12
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false.13
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB8_7:                                # %cond.end.14
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jbe	.LBB8_9
# BB#8:                                 # %cond.true.18
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false.19
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB8_10:                               # %cond.end.20
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_12
	jp	.LBB8_12
# BB#11:                                # %if.then.24
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB8_13
.LBB8_12:                               # %if.else
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -52(%rbp)
.LBB8_13:                               # %if.end
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.30
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %r8d
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	select_shrink_edge_lock, %ecx
	movq	%rax, %rdi
	callq	gimp_channel_shrink
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	select_shrink_callback, .Lfunc_end8-select_shrink_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4674736138332667904     # double 32767
	.text
	.globl	select_grow_cmd_callback
	.align	16, 0x90
	.type	select_grow_cmd_callback,@function
select_grow_cmd_callback:               # @select_grow_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Ltmp39:
	.cfi_offset %rbx, -48
.Ltmp40:
	.cfi_offset %r12, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_6
.LBB9_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_get_shell
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	cvtsi2sdl	select_grow_pixels, %xmm0
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jbe	.LBB9_4
# BB#3:                                 # %cond.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB9_5:                                # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.11, %rcx
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	xorl	%r9d, %r9d
	movabsq	$.L.str.3, %rsi
	movabsq	$select_grow_callback, %rdi
	movq	-64(%rbp), %r8
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-132(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	callq	gimp_query_size_box
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
.LBB9_6:                                # %return
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	select_grow_cmd_callback, .Lfunc_end9-select_grow_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	select_grow_callback,@function
select_grow_callback:                   # @select_grow_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	addsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, select_grow_pixels
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB10_14
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB10_3
# BB#2:                                 # %cond.true
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB10_4
.LBB10_3:                               # %cond.false
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB10_4:                               # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jbe	.LBB10_6
# BB#5:                                 # %cond.true.8
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %cond.false.9
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB10_7:                               # %cond.end.10
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jbe	.LBB10_9
# BB#8:                                 # %cond.true.14
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false.15
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB10_10:                              # %cond.end.16
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_12
	jp	.LBB10_12
# BB#11:                                # %if.then.20
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB10_13
.LBB10_12:                              # %if.else
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB10_13:                              # %if.end
	jmp	.LBB10_14
.LBB10_14:                              # %if.end.22
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %ecx
	cvttsd2si	-48(%rbp), %esi
	cvttsd2si	-56(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_channel_grow
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	select_grow_callback, .Lfunc_end10-select_grow_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4674736138332667904     # double 32767
	.text
	.globl	select_border_cmd_callback
	.align	16, 0x90
	.type	select_border_cmd_callback,@function
select_border_cmd_callback:             # @select_border_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp49:
	.cfi_offset %rbx, -48
.Ltmp50:
	.cfi_offset %r12, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_6
.LBB11_2:                               # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_display_get_shell
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	cvtsi2sdl	select_border_radius, %xmm0
	movq	-56(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jbe	.LBB11_4
# BB#3:                                 # %cond.true
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB11_5:                               # %cond.end
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.14, %rcx
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_1, %xmm2        # xmm2 = mem[0],zero
	xorl	%r9d, %r9d
	movabsq	$.L.str.3, %rsi
	movabsq	$select_border_callback, %rdi
	movq	-64(%rbp), %r8
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-140(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movsd	-160(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	-184(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	callq	gimp_query_size_box
	movabsq	$.L.str.16, %rdi
	movq	%rax, -72(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	select_border_feather, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	select_border_edge_lock, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
.LBB11_6:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	select_border_cmd_callback, .Lfunc_end11-select_border_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	select_border_callback,@function
select_border_callback:                 # @select_border_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)
	addsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, select_border_radius
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, select_border_feather
	movq	-56(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, select_border_edge_lock
	cmpl	$0, -20(%rbp)
	je	.LBB12_14
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB12_3
# BB#2:                                 # %cond.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB12_4:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jbe	.LBB12_6
# BB#5:                                 # %cond.true.18
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false.19
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB12_7:                               # %cond.end.20
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jbe	.LBB12_9
# BB#8:                                 # %cond.true.24
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB12_10
.LBB12_9:                               # %cond.false.25
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB12_10:                              # %cond.end.26
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_12
	jp	.LBB12_12
# BB#11:                                # %if.then.30
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB12_13
.LBB12_12:                              # %if.else
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB12_13:                              # %if.end
	jmp	.LBB12_14
.LBB12_14:                              # %if.end.32
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %r9d
	cvttsd2si	-64(%rbp), %esi
	cvttsd2si	-72(%rbp), %edx
	movl	select_border_feather, %ecx
	movl	select_border_edge_lock, %r8d
	movq	%rax, %rdi
	callq	gimp_channel_border
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	select_border_callback, .Lfunc_end12-select_border_callback
	.cfi_endproc

	.globl	select_save_cmd_callback
	.align	16, 0x90
	.type	select_save_cmd_callback,@function
select_save_cmd_callback:               # @select_save_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then.3
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_selection_save
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_flush
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.19, %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB13_5:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	select_save_cmd_callback, .Lfunc_end13-select_save_cmd_callback
	.cfi_endproc

	.globl	select_stroke_cmd_callback
	.align	16, 0x90
	.type	select_stroke_cmd_callback,@function
select_stroke_cmd_callback:             # @select_stroke_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_7
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	jmp	.LBB14_7
.LBB14_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_6
# BB#5:                                 # %if.then.7
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB14_7
.LBB14_6:                               # %if.end.10
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.21, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %r9
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	stroke_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
.LBB14_7:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	select_stroke_cmd_callback, .Lfunc_end14-select_stroke_cmd_callback
	.cfi_endproc

	.globl	select_stroke_last_vals_cmd_callback
	.align	16, 0x90
	.type	select_stroke_last_vals_cmd_callback,@function
select_stroke_last_vals_cmd_callback:   # @select_stroke_last_vals_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_15
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then.3
	jmp	.LBB15_15
.LBB15_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_6
# BB#5:                                 # %if.then.7
	jmp	.LBB15_15
.LBB15_6:                               # %if.end.8
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_8
# BB#7:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB15_15
.LBB15_8:                               # %if.end.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.19
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %if.else
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_stroke_options_new
	movq	%rax, -56(%rbp)
.LBB15_11:                              # %if.end.23
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_item_stroke
	cmpl	$0, %eax
	jne	.LBB15_13
# BB#12:                                # %if.then.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-64(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB15_14
.LBB15_13:                              # %if.else.32
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB15_14:                              # %if.end.33
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB15_15:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	select_stroke_last_vals_cmd_callback, .Lfunc_end15-select_stroke_last_vals_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Feather Selection"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-selection-feather"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Feather selection by"
	.size	.L.str.2, 21

	.type	select_feather_radius,@object # @select_feather_radius
	.data
	.align	8
select_feather_radius:
	.quad	4617315517961601024     # double 5
	.size	select_feather_radius, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"disconnect"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Shrink Selection"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-selection-shrink"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Shrink selection by"
	.size	.L.str.6, 20

	.type	select_shrink_pixels,@object # @select_shrink_pixels
	.data
	.align	4
select_shrink_pixels:
	.long	1                       # 0x1
	.size	select_shrink_pixels, 4

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"_Shrink from image border"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-query-box-vbox"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"edge-lock-toggle"
	.size	.L.str.9, 17

	.type	select_shrink_edge_lock,@object # @select_shrink_edge_lock
	.local	select_shrink_edge_lock
	.comm	select_shrink_edge_lock,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Grow Selection"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-selection-grow"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Grow selection by"
	.size	.L.str.12, 18

	.type	select_grow_pixels,@object # @select_grow_pixels
	.data
	.align	4
select_grow_pixels:
	.long	1                       # 0x1
	.size	select_grow_pixels, 4

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"Border Selection"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-selection-border"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Border selection by"
	.size	.L.str.15, 20

	.type	select_border_radius,@object # @select_border_radius
	.data
	.align	4
select_border_radius:
	.long	5                       # 0x5
	.size	select_border_radius, 4

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"_Feather border"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"border-feather-toggle"
	.size	.L.str.17, 22

	.type	select_border_feather,@object # @select_border_feather
	.local	select_border_feather
	.comm	select_border_feather,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Lock selection to image edges"
	.size	.L.str.18, 31

	.type	select_border_edge_lock,@object # @select_border_edge_lock
	.local	select_border_edge_lock
	.comm	select_border_edge_lock,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-channel-list"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"There is no active layer or channel to stroke to."
	.size	.L.str.20, 50

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Stroke Selection"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-selection-stroke"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"saved-stroke-options"
	.size	.L.str.23, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
