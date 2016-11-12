	.text
	.file	"gimplevelstool.bc"
	.globl	gimp_levels_tool_get_type
	.align	16, 0x90
	.type	gimp_levels_tool_get_type,@function
gimp_levels_tool_get_type:              # @gimp_levels_tool_get_type
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
	movq	gimp_levels_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_levels_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_map_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$392, %edx              # imm = 0x188
	movabsq	$gimp_levels_tool_class_intern_init, %rdi
	movl	$528, %r8d              # imm = 0x210
	movabsq	$gimp_levels_tool_init, %rcx
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
	movabsq	$gimp_levels_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_levels_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_levels_tool_get_type, .Lfunc_end0-gimp_levels_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_class_intern_init,@function
gimp_levels_tool_class_intern_init:     # @gimp_levels_tool_class_intern_init
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
	movq	%rax, gimp_levels_tool_parent_class
	cmpl	$0, GimpLevelsTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpLevelsTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_levels_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_levels_tool_class_intern_init, .Lfunc_end1-gimp_levels_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_init,@function
gimp_levels_tool_init:                  # @gimp_levels_tool_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_lut_new
	movq	-8(%rbp), %rsi
	movq	%rax, 400(%rsi)
	callq	gimp_histogram_new
	movabsq	$gimp_lut_process, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 408(%rdi)
	movq	-8(%rbp), %rax
	movq	$0, 512(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 328(%rax)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 336(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_levels_tool_init, .Lfunc_end2-gimp_levels_tool_init
	.cfi_endproc

	.globl	gimp_levels_tool_register
	.align	16, 0x90
	.type	gimp_levels_tool_register,@function
gimp_levels_tool_register:              # @gimp_levels_tool_register
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_histogram_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_color_options_gui, %rdx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.5, %r10
	movq	-32(%rbp), %r11
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r11, 48(%rsp)
	movq	-40(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_levels_tool_register, .Lfunc_end3-gimp_levels_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_class_init,@function
gimp_levels_tool_class_init:            # @gimp_levels_tool_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_levels_tool_color_picked, %rsi
	movabsq	$gimp_levels_tool_initialize, %rcx
	movabsq	$gimp_levels_tool_finalize, %rdx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 176(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 296(%rax)
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.7, %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-40(%rbp), %rax
	movq	%rcx, 312(%rax)
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, 320(%rcx)
	callq	gettext
	movabsq	$gimp_levels_tool_settings_export, %rcx
	movabsq	$gimp_levels_tool_settings_import, %rdx
	movabsq	$gimp_levels_tool_reset, %rsi
	movabsq	$gimp_levels_tool_dialog, %rdi
	movabsq	$gimp_levels_tool_map, %r8
	movabsq	$gimp_levels_tool_get_operation, %r9
	movq	-40(%rbp), %r10
	movq	%rax, 328(%r10)
	movq	-40(%rbp), %rax
	movq	%r9, 344(%rax)
	movq	-40(%rbp), %rax
	movq	%r8, 352(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, 360(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 368(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-40(%rbp), %rax
	movq	%rcx, 384(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_levels_tool_class_init, .Lfunc_end4-gimp_levels_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_finalize,@function
gimp_levels_tool_finalize:              # @gimp_levels_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	400(%rax), %rdi
	callq	gimp_lut_free
	movq	-16(%rbp), %rax
	cmpq	$0, 408(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	408(%rax), %rdi
	callq	gimp_histogram_unref
	movq	-16(%rbp), %rax
	movq	$0, 408(%rax)
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_levels_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_levels_tool_finalize, .Lfunc_end5-gimp_levels_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_initialize,@function
gimp_levels_tool_initialize:            # @gimp_levels_tool_initialize
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_9
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB6_9
.LBB6_4:                                # %if.end.9
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	movq	-40(%rbp), %rax
	cmpq	$0, 512(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.13
	movq	-40(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB6_6:                                # %if.end.17
	movq	gimp_levels_tool_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_8
# BB#7:                                 # %if.then.22
	movl	$0, -4(%rbp)
	jmp	.LBB6_9
.LBB6_8:                                # %if.end.23
	movq	-40(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$levels_menu_sensitivity, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-56(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_set_sensitivity
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	408(%rax), %rsi
	callq	gimp_drawable_calculate_histogram
	movq	-40(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	408(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_histogram_view_set_histogram
	movl	$1, -4(%rbp)
.LBB6_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_levels_tool_initialize, .Lfunc_end6-gimp_levels_tool_initialize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_levels_tool_color_picked,@function
gimp_levels_tool_color_picked:          # @gimp_levels_tool_color_picked
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB7_13
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$1, -16(%rbp)
	jne	.LBB7_13
.LBB7_3:                                # %if.then
	movl	-44(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB7_4
	jmp	.LBB7_15
.LBB7_15:                               # %if.then
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB7_5
	jmp	.LBB7_16
.LBB7_16:                               # %if.then
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB7_6
	jmp	.LBB7_7
.LBB7_4:                                # %sw.bb
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movsd	%xmm0, 88(%rax)
	jmp	.LBB7_8
.LBB7_5:                                # %sw.bb.8
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movsd	%xmm0, 48(%rax)
	jmp	.LBB7_8
.LBB7_6:                                # %sw.bb.11
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movsd	%xmm0, 128(%rax)
	jmp	.LBB7_8
.LBB7_7:                                # %sw.default
	jmp	.LBB7_8
.LBB7_8:                                # %sw.epilog
	movl	$1, -48(%rbp)
.LBB7_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -48(%rbp)
	ja	.LBB7_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	-40(%rbp), %rax
	movq	392(%rax), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	levels_input_adjust_by_color
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB7_9 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_9
.LBB7_12:                               # %for.end
	jmp	.LBB7_14
.LBB7_13:                               # %if.else
	movq	-40(%rbp), %rax
	movq	392(%rax), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rcx
	callq	levels_input_adjust_by_color
.LBB7_14:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_levels_tool_color_picked, .Lfunc_end7-gimp_levels_tool_color_picked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_get_operation,@function
gimp_levels_tool_get_operation:         # @gimp_levels_tool_get_operation
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	callq	gegl_node_get_type
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	callq	gimp_levels_config_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 392(%rcx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_levels_tool_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.15, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gegl_node_set
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_levels_tool_get_operation, .Lfunc_end8-gimp_levels_tool_get_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_map,@function
gimp_levels_tool_map:                   # @gimp_levels_tool_map
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_is_rgb
	leaq	-144(%rbp), %rsi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_levels_config_to_cruft
	leaq	-144(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	400(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_bytes
	movabsq	$levels_lut_func, %rcx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_lut_setup
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_levels_tool_map, .Lfunc_end9-gimp_levels_tool_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643176031446892544     # double 255
.LCPI10_1:
	.quad	4607182418800017408     # double 1
.LCPI10_2:
	.quad	4621819117588971520     # double 10
.LCPI10_3:
	.quad	4602678819172646912     # double 0.5
.LCPI10_4:
	.quad	4638637247447433216     # double 127
.LCPI10_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI10_6:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	gimp_levels_tool_dialog,@function
gimp_levels_tool_dialog:                # @gimp_levels_tool_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$1248, %rsp             # imm = 0x4E0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_levels_tool_export_setup, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_dialog_get_vbox
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_label_group
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -48(%rbp)
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_size_group_add_widget
	callq	gimp_histogram_channel_get_type
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gimp_enum_store_new_with_range
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new_with_model
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.24, %rsi
	movabsq	$levels_channel_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_enum_combo_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_set_stock_prefix
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-112(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 416(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rsi
	movabsq	$levels_channel_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	gimp_histogram_view_new
	movq	-16(%rbp), %rsi
	movq	%rax, 424(%rsi)
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	424(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_histogram_options_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	424(%rsi), %rsi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_histogram_options_connect_view
	movabsq	$.L.str.31, %rsi
	leaq	-164(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-164(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_color_bar_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$6, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 432(%rdi)
	movq	-16(%rbp), %rax
	movq	432(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	432(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	432(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_color_bar_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$6, %edx
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_handle_bar_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$10, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 440(%rdi)
	movq	-16(%rbp), %rax
	movq	440(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	440(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	440(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rax
	movq	432(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	344(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	440(%r10), %r10
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rcx
	movq	432(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	440(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	352(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rcx
	movq	432(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	440(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	368(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-152(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	440(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	344(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-504(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-152(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	440(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	352(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-152(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	440(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	368(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	movl	-572(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_levels_tool_color_picker_new
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-160(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %r10
	movaps	%xmm1, %xmm2
	mulsd	88(%r10,%rax,8), %xmm2
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-600(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -608(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-608(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-600(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	movl	-620(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movabsq	$levels_low_input_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	%rax, 448(%r10)
	movq	-16(%rbp), %rax
	movq	448(%rax), %rax
	movq	-16(%rbp), %r10
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-640(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	440(%rcx), %rcx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	448(%rcx), %rdx
	movq	%rax, %rdi
	callq	gimp_handle_bar_set_adjustment
	leaq	-160(%rbp), %rdi
	movsd	.LCPI10_5, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_6, %xmm3        # xmm3 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI10_3, %xmm6        # xmm6 = mem[0],zero
	movl	$2, %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %r9d
	movl	%r9d, %eax
	movq	-32(%rbp), %rcx
	movsd	48(%rcx,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-664(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-664(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.36, %rdi
	movq	-144(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movabsq	$levels_gamma_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 456(%rdi)
	movq	-16(%rbp), %rax
	movq	456(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-696(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movsd	.LCPI10_4, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_5, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_1, %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm1, -704(%rbp)       # 8-byte Spill
	movsd	-704(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movabsq	$levels_linear_gamma_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, 464(%rdx)
	movq	-16(%rbp), %rax
	movq	464(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-728(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	440(%rcx), %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	-16(%rbp), %rcx
	movq	464(%rcx), %rdx
	movq	%rax, %rdi
	callq	gimp_handle_bar_set_adjustment
	movq	-16(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_levels_tool_color_picker_new
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	movl	-764(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-160(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %r10
	movaps	%xmm1, %xmm2
	mulsd	128(%r10,%rax,8), %xmm2
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-776(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -784(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-784(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-776(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movl	-796(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movabsq	$levels_high_input_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	%rax, 472(%r10)
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	-16(%rbp), %r10
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-816(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	440(%rcx), %rcx
	movq	%rax, -824(%rbp)        # 8-byte Spill
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	-16(%rbp), %rcx
	movq	472(%rcx), %rdx
	movq	%rax, %rdi
	callq	gimp_handle_bar_set_adjustment
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-64(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -868(%rbp)        # 4-byte Spill
	movl	-868(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-164(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-120(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_color_bar_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$12, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 480(%rdi)
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	480(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	movl	-900(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_handle_bar_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$10, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 488(%rdi)
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	488(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	movl	-916(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	488(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	344(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	488(%r10), %r10
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-928(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rcx
	movq	480(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	488(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	352(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	488(%rdi), %rdi
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-936(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rcx
	movq	480(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	488(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	368(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	488(%rdi), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-952(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-160(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %r10
	movaps	%xmm1, %xmm2
	mulsd	168(%r10,%rax,8), %xmm2
	movsd	%xmm0, -984(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-984(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -992(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-992(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-984(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
	movl	-1004(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movabsq	$levels_low_output_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	%rax, 496(%r10)
	movq	-16(%rbp), %rax
	movq	496(%rax), %rax
	movq	-16(%rbp), %r10
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1024(%rbp), %rdx       # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	488(%rcx), %rcx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	496(%rcx), %rdx
	movq	%rax, %rdi
	callq	gimp_handle_bar_set_adjustment
	leaq	-160(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %r9d
	movl	%r9d, %eax
	movq	-32(%rbp), %rcx
	movaps	%xmm1, %xmm2
	mulsd	208(%rcx,%rax,8), %xmm2
	movsd	%xmm0, -1048(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-1048(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -1056(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-1056(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-1048(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movabsq	$levels_high_output_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	%rax, 504(%r10)
	movq	-16(%rbp), %rax
	movq	504(%rax), %rax
	movq	-16(%rbp), %r10
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1080(%rbp), %rdx       # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	488(%rcx), %rcx
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	-16(%rbp), %rcx
	movq	504(%rcx), %rdx
	movq	%rax, %rdi
	callq	gimp_handle_bar_set_adjustment
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
	movl	-1124(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1140(%rbp)       # 4-byte Spill
	movl	-1140(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.40, %rdi
	movq	-136(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rsi
	movabsq	$levels_stretch_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movl	$257, %esi              # imm = 0x101
	movq	-16(%rbp), %rdi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	gimp_levels_tool_color_picker_new
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	$258, %esi              # imm = 0x102
	movq	-16(%rbp), %rdi
	callq	gimp_levels_tool_color_picker_new
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1188(%rbp)       # 4-byte Spill
	movl	-1188(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	$260, %esi              # imm = 0x104
	movq	-16(%rbp), %rdi
	callq	gimp_levels_tool_color_picker_new
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1204(%rbp)       # 4-byte Spill
	movl	-1204(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_levels_tool_dialog_unmap, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	360(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rdi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rdi
	movq	%rax, %rsi
	callq	gimp_stock_button_new
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rsi
	movabsq	$levels_to_curves_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	416(%rcx), %rcx
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movl	40(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	addq	$1248, %rsp             # imm = 0x4E0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_levels_tool_dialog, .Lfunc_end10-gimp_levels_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_reset,@function
gimp_levels_tool_reset:                 # @gimp_levels_tool_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	g_object_freeze_notify
	movq	-8(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
.LBB11_3:                               # %if.end
	movabsq	$.L.str.16, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	312(%rcx), %rdi
	callq	g_object_thaw_notify
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_levels_tool_reset, .Lfunc_end11-gimp_levels_tool_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_settings_import,@function
gimp_levels_tool_settings_import:       # @gimp_levels_tool_settings_import
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rsi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.55, %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	-144(%rbp), %edx        # 4-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB12_7
.LBB12_2:                               # %if.end
	movl	$64, %esi
	leaq	-112(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB12_4
# BB#3:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.56, %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movl	-176(%rbp), %edx        # 4-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB12_7
.LBB12_4:                               # %if.end.21
	movabsq	$.L.str.57, %rsi
	leaq	-112(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.25
	movq	-48(%rbp), %rdi
	callq	rewind
	movq	-40(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_levels_config_load_cruft
	movl	%eax, -116(%rbp)
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	-116(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %if.end.28
	movq	-48(%rbp), %rdi
	callq	fclose
	movq	gimp_levels_tool_parent_class, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	376(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB12_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_levels_tool_settings_import, .Lfunc_end12-gimp_levels_tool_settings_import
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_settings_export,@function
gimp_levels_tool_settings_export:       # @gimp_levels_tool_settings_export
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_levels_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 520(%rax)
	je	.LBB13_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.58, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.59, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_5
.LBB13_3:                               # %if.end
	movq	-40(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_levels_config_save_cruft
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	-52(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.14
	movq	gimp_levels_tool_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	384(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB13_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_levels_tool_settings_export, .Lfunc_end13-gimp_levels_tool_settings_export
	.cfi_endproc

	.align	16, 0x90
	.type	levels_menu_sensitivity,@function
levels_menu_sensitivity:                # @levels_menu_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	ja	.LBB14_5
# BB#7:                                 # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_1:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB14_6
.LBB14_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	movl	%eax, -4(%rbp)
	jmp	.LBB14_6
.LBB14_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -4(%rbp)
	jmp	.LBB14_6
.LBB14_4:                               # %sw.bb.6
	movl	$0, -4(%rbp)
	jmp	.LBB14_6
.LBB14_5:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB14_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	levels_menu_sensitivity, .Lfunc_end14-levels_menu_sensitivity
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_1
	.quad	.LBB14_2
	.quad	.LBB14_2
	.quad	.LBB14_2
	.quad	.LBB14_3
	.quad	.LBB14_4

	.text
	.align	16, 0x90
	.type	levels_input_adjust_by_color,@function
levels_input_adjust_by_color:           # @levels_input_adjust_by_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %edx
	andl	$15, %edx
	movl	%edx, %esi
	subl	$1, %esi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%esi, -32(%rbp)         # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_6
.LBB15_6:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_7
.LBB15_7:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB15_3
	jmp	.LBB15_4
.LBB15_1:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	gimp_levels_config_adjust_by_colors
	jmp	.LBB15_5
.LBB15_2:                               # %sw.bb.1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	gimp_levels_config_adjust_by_colors
	jmp	.LBB15_5
.LBB15_3:                               # %sw.bb.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %r8
	movq	%rcx, %rdx
	callq	gimp_levels_config_adjust_by_colors
	jmp	.LBB15_5
.LBB15_4:                               # %sw.default
	jmp	.LBB15_5
.LBB15_5:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	levels_input_adjust_by_color, .Lfunc_end15-levels_input_adjust_by_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_levels_tool_config_notify,@function
gimp_levels_tool_config_notify:         # @gimp_levels_tool_config_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 448(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_16
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_histogram_view_set_channel
	movq	-24(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_bar_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_color_bar_set_channel
	movq	-24(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB16_15
.LBB16_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB16_7
# BB#5:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.18, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB16_7
# BB#6:                                 # %lor.lhs.false.20
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_8
.LBB16_7:                               # %if.then.24
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	448(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	448(%rax), %rdi
	callq	gtk_adjustment_set_upper
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movq	472(%rax), %rdi
	callq	gtk_adjustment_set_lower
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gtk_adjustment_set_lower
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gtk_adjustment_set_upper
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	448(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %edx
	movl	%edx, %eax
	movq	-32(%rbp), %rcx
	mulsd	88(%rcx,%rax,8), %xmm0
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	456(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %edx
	movl	%edx, %eax
	movq	-32(%rbp), %rcx
	movsd	48(%rcx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	472(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %edx
	movl	%edx, %eax
	movq	-32(%rbp), %rcx
	mulsd	128(%rcx,%rax,8), %xmm0
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	448(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_upper
	movq	-24(%rbp), %rax
	movq	472(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_lower
	movq	-24(%rbp), %rax
	movq	464(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_lower
	movq	-24(%rbp), %rax
	movq	464(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_upper
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-24(%rbp), %rdi
	callq	levels_update_input_bar
	jmp	.LBB16_14
.LBB16_8:                               # %if.else.64
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.20, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_10
# BB#9:                                 # %if.then.68
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	496(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	mulsd	168(%rdx,%rax,8), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB16_13
.LBB16_10:                              # %if.else.74
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.21, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_12
# BB#11:                                # %if.then.78
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	504(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	mulsd	208(%rdx,%rax,8), %xmm0
	callq	gtk_adjustment_set_value
.LBB16_12:                              # %if.end.84
	jmp	.LBB16_13
.LBB16_13:                              # %if.end.85
	jmp	.LBB16_14
.LBB16_14:                              # %if.end.86
	jmp	.LBB16_15
.LBB16_15:                              # %if.end.87
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB16_16:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_levels_tool_config_notify, .Lfunc_end16-gimp_levels_tool_config_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4643176031446892544     # double 255
.LCPI17_1:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	levels_update_input_bar,@function
levels_update_input_bar:                # @levels_update_input_bar
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
	subq	$1120, %rsp             # imm = 0x460
	movq	%rdi, -8(%rbp)
	movq	392(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movl	40(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	je	.LBB17_1
	jmp	.LBB17_12
.LBB17_12:                              # %entry
	movl	-1064(%rbp), %eax       # 4-byte Reload
	decl	%eax
	subl	$3, %eax
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	jb	.LBB17_6
	jmp	.LBB17_13
.LBB17_13:                              # %entry
	movl	-1064(%rbp), %eax       # 4-byte Reload
	addl	$-4, %eax
	subl	$1, %eax
	movl	%eax, -1072(%rbp)       # 4-byte Spill
	ja	.LBB17_11
	jmp	.LBB17_1
.LBB17_1:                               # %sw.bb
	movl	$0, -276(%rbp)
.LBB17_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -276(%rbp)        # imm = 0x100
	jge	.LBB17_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	cvtsi2sdl	-276(%rbp), %xmm0
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	%rax, %rdi
	callq	gimp_operation_levels_map_input
	movsd	.LCPI17_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %cl
	movslq	-276(%rbp), %rax
	movb	%cl, -272(%rbp,%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB17_2
.LBB17_5:                               # %for.end
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gimp_color_bar_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-272(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -1088(%rbp)       # 8-byte Spill
	movq	-1088(%rbp), %rdx       # 8-byte Reload
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	callq	gimp_color_bar_set_buffers
	jmp	.LBB17_11
.LBB17_6:                               # %sw.bb.8
	movl	$0, -1060(%rbp)
.LBB17_7:                               # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -1060(%rbp)       # imm = 0x100
	jge	.LBB17_10
# BB#8:                                 # %for.body.13
                                        #   in Loop: Header=BB17_7 Depth=1
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-1060(%rbp), %xmm0
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$1, %esi
	movsd	%xmm1, -1096(%rbp)      # 8-byte Spill
	callq	gimp_operation_levels_map_input
	movsd	.LCPI17_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %al
	movslq	-1060(%rbp), %rdi
	movb	%al, -544(%rbp,%rdi)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-1060(%rbp), %xmm0
	movsd	-1096(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movl	$2, %esi
	movsd	%xmm1, -1104(%rbp)      # 8-byte Spill
	callq	gimp_operation_levels_map_input
	movsd	-1104(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %al
	movslq	-1060(%rbp), %rdi
	movb	%al, -800(%rbp,%rdi)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-1060(%rbp), %xmm0
	movsd	-1096(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movl	$3, %esi
	callq	gimp_operation_levels_map_input
	movsd	-1104(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %al
	movslq	-1060(%rbp), %rdi
	movb	%al, -1056(%rbp,%rdi)
# BB#9:                                 # %for.inc.35
                                        #   in Loop: Header=BB17_7 Depth=1
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB17_7
.LBB17_10:                              # %for.end.37
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gimp_color_bar_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-1056(%rbp), %rcx
	leaq	-800(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_bar_set_buffers
.LBB17_11:                              # %sw.epilog
	addq	$1120, %rsp             # imm = 0x460
	popq	%rbp
	retq
.Lfunc_end17:
	.size	levels_update_input_bar, .Lfunc_end17-levels_update_input_bar
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_export_setup,@function
gimp_levels_tool_export_setup:          # @gimp_levels_tool_export_setup
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	520(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_extra_widget
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	addq	$520, %rdx              # imm = 0x208
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB18_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_levels_tool_export_setup, .Lfunc_end18-gimp_levels_tool_export_setup
	.cfi_endproc

	.align	16, 0x90
	.type	levels_channel_callback,@function
levels_channel_callback:                # @levels_channel_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB19_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movl	40(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB19_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.16, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB19_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	levels_channel_callback, .Lfunc_end19-levels_channel_callback
	.cfi_endproc

	.align	16, 0x90
	.type	levels_channel_reset_callback,@function
levels_channel_reset_callback:          # @levels_channel_reset_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rdi
	callq	gimp_levels_config_reset_channel
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	levels_channel_reset_callback, .Lfunc_end20-levels_channel_reset_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_color_picker_new,@function
gimp_levels_tool_color_picker_new:      # @gimp_levels_tool_color_picker_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	andl	$15, %esi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB21_1
	jmp	.LBB21_7
.LBB21_7:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB21_2
	jmp	.LBB21_8
.LBB21_8:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB21_3
	jmp	.LBB21_4
.LBB21_1:                               # %sw.bb
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.46, %rax
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	%rax, -56(%rbp)
	jmp	.LBB21_5
.LBB21_2:                               # %sw.bb.1
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.48, %rax
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	%rax, -56(%rbp)
	jmp	.LBB21_5
.LBB21_3:                               # %sw.bb.3
	movabsq	$.L.str.51, %rdi
	movabsq	$.L.str.50, %rax
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	%rax, -56(%rbp)
	jmp	.LBB21_5
.LBB21_4:                               # %sw.default
	movq	$0, -8(%rbp)
	jmp	.LBB21_6
.LBB21_5:                               # %sw.epilog
	callq	gtk_toggle_button_get_type
	movabsq	$.L.str.52, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$4, %esi
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_misc_set_padding
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_help_set_help_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movl	-20(%rbp), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.45, %rsi
	movabsq	$levels_input_picker_toggled, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB21_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_levels_tool_color_picker_new, .Lfunc_end21-gimp_levels_tool_color_picker_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4643176031446892544     # double 255
.LCPI22_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	levels_low_input_changed,@function
levels_low_input_changed:               # @levels_low_input_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	472(%rsi), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	gtk_adjustment_set_lower
	movq	-16(%rbp), %rsi
	movq	464(%rsi), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	gtk_adjustment_set_lower
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movsd	88(%rdi,%rsi,8), %xmm1  # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB22_1
	jp	.LBB22_1
	jmp	.LBB22_2
.LBB22_1:                               # %if.then
	movabsq	$.L.str.18, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	g_object_set
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	levels_linear_gamma_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	levels_low_input_changed, .Lfunc_end22-levels_low_input_changed
	.cfi_endproc

	.align	16, 0x90
	.type	levels_gamma_changed,@function
levels_gamma_changed:                   # @levels_gamma_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movsd	48(%rdi,%rsi,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB23_1
	jp	.LBB23_1
	jmp	.LBB23_2
.LBB23_1:                               # %if.then
	movabsq	$.L.str.17, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	levels_linear_gamma_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	levels_gamma_changed, .Lfunc_end23-levels_gamma_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4602678819172646912     # double 0.5
.LCPI24_1:
	.quad	4611686018427387904     # double 2
.LCPI24_2:
	.quad	4636737291354636288     # double 100
.LCPI24_3:
	.quad	4607182418800017408     # double 1
.LCPI24_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	levels_linear_gamma_changed,@function
levels_linear_gamma_changed:            # @levels_linear_gamma_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	448(%rsi), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	472(%rsi), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI24_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB24_2
# BB#1:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI24_4, %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI24_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI24_3, %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	%xmm3, -64(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	456(%rdi), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
.LBB24_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	levels_linear_gamma_changed, .Lfunc_end24-levels_linear_gamma_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4643176031446892544     # double 255
.LCPI25_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	levels_high_input_changed,@function
levels_high_input_changed:              # @levels_high_input_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI25_1, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	448(%rsi), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	gtk_adjustment_set_upper
	movq	-16(%rbp), %rsi
	movq	464(%rsi), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	gtk_adjustment_set_upper
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movsd	128(%rdi,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB25_1
	jp	.LBB25_1
	jmp	.LBB25_2
.LBB25_1:                               # %if.then
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	g_object_set
.LBB25_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	levels_linear_gamma_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	levels_high_input_changed, .Lfunc_end25-levels_high_input_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4643176031446892544     # double 255
.LCPI26_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	levels_low_output_changed,@function
levels_low_output_changed:              # @levels_low_output_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI26_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI26_1, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movsd	168(%rdi,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB26_1
	jp	.LBB26_1
	jmp	.LBB26_2
.LBB26_1:                               # %if.then
	movabsq	$.L.str.20, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	g_object_set
.LBB26_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	levels_low_output_changed, .Lfunc_end26-levels_low_output_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4643176031446892544     # double 255
.LCPI27_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	levels_high_output_changed,@function
levels_high_output_changed:             # @levels_high_output_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_1, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movsd	208(%rdi,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB27_1
	jp	.LBB27_1
	jmp	.LBB27_2
.LBB27_1:                               # %if.then
	movabsq	$.L.str.21, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	g_object_set
.LBB27_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	levels_high_output_changed, .Lfunc_end27-levels_high_output_changed
	.cfi_endproc

	.align	16, 0x90
	.type	levels_stretch_callback,@function
levels_stretch_callback:                # @levels_stretch_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	296(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	408(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_is_rgb
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_levels_config_stretch
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	levels_stretch_callback, .Lfunc_end28-levels_stretch_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_tool_dialog_unmap,@function
gimp_levels_tool_dialog_unmap:          # @gimp_levels_tool_dialog_unmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 512(%rsi)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB29_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_levels_tool_dialog_unmap, .Lfunc_end29-gimp_levels_tool_dialog_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	levels_to_curves_callback,@function
levels_to_curves_callback:              # @levels_to_curves_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rdi
	callq	gimp_levels_config_to_curves_config
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_map_tool_edit_as
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	levels_to_curves_callback, .Lfunc_end30-levels_to_curves_callback
	.cfi_endproc

	.align	16, 0x90
	.type	levels_input_picker_toggled,@function
levels_input_picker_toggled:            # @levels_input_picker_toggled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB31_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	512(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB31_3
# BB#2:                                 # %if.then.3
	jmp	.LBB31_9
.LBB31_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 512(%rax)
	je	.LBB31_5
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB31_5:                               # %if.end.10
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 512(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_tool_enable
	jmp	.LBB31_9
.LBB31_6:                               # %if.else
	movq	-16(%rbp), %rax
	movq	512(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB31_8
# BB#7:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movq	$0, 512(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_disable
.LBB31_8:                               # %if.end.25
	jmp	.LBB31_9
.LBB31_9:                               # %if.end.26
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	levels_input_picker_toggled, .Lfunc_end31-levels_input_picker_toggled
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4607182418800017408     # double 1
.LCPI32_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	levels_linear_gamma_update,@function
levels_linear_gamma_update:             # @levels_linear_gamma_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	448(%rdi), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	472(%rdi), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI32_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI32_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	392(%rdi), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	392(%rcx), %rcx
	divsd	48(%rcx,%rdi,8), %xmm1
	movaps	%xmm1, %xmm0
	callq	log10
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	464(%rcx), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	levels_linear_gamma_update, .Lfunc_end32-levels_linear_gamma_update
	.cfi_endproc

	.type	gimp_levels_tool_get_type.g_define_type_id__volatile,@object # @gimp_levels_tool_get_type.g_define_type_id__volatile
	.local	gimp_levels_tool_get_type.g_define_type_id__volatile
	.comm	gimp_levels_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpLevelsTool"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-levels-tool"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Levels"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Levels Tool: Adjust color levels"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Levels..."
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-levels"
	.size	.L.str.5, 17

	.type	gimp_levels_tool_parent_class,@object # @gimp_levels_tool_parent_class
	.local	gimp_levels_tool_parent_class
	.comm	gimp_levels_tool_parent_class,8,8
	.type	GimpLevelsTool_private_offset,@object # @GimpLevelsTool_private_offset
	.local	GimpLevelsTool_private_offset
	.comm	GimpLevelsTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Adjust Color Levels"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"levels"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Import Levels"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Export Levels"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Levels does not operate on indexed layers."
	.size	.L.str.10, 43

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"pick-value"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"operation"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp:levels"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"notify"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"config"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"channel"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gamma"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"low-input"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"high-input"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"low-output"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"high-output"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"file-dialog-setup"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Cha_nnel:"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"changed"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-channel"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"R_eset Channel"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"clicked"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"histogram-scale"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-histogram"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Input Levels"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"border-width"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"button-press-event"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"button-release-event"
	.size	.L.str.33, 21

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"motion-notify-event"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"value-changed"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Gamma"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Output Levels"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"All Channels"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Auto"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Adjust levels automatically"
	.size	.L.str.40, 28

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"unmap"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-tool-curves"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Edit these Settings as Curves"
	.size	.L.str.43, 30

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Use _old levels file format"
	.size	.L.str.44, 28

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"toggled"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-color-picker-black"
	.size	.L.str.46, 24

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Pick black point"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-color-picker-gray"
	.size	.L.str.48, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Pick gray point"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-color-picker-white"
	.size	.L.str.50, 24

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Pick white point"
	.size	.L.str.51, 17

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"draw-indicator"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-curves-tool"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"rt"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.55, 36

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Could not read header from '%s': %s"
	.size	.L.str.56, 36

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"# GIMP Levels File\n"
	.size	.L.str.57, 20

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"wt"
	.size	.L.str.58, 3

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.59, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
