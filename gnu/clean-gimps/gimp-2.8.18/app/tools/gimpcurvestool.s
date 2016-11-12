	.text
	.file	"gimpcurvestool.bc"
	.globl	gimp_curves_tool_get_type
	.align	16, 0x90
	.type	gimp_curves_tool_get_type,@function
gimp_curves_tool_get_type:              # @gimp_curves_tool_get_type
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
	movq	gimp_curves_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_curves_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_curves_tool_class_intern_init, %rdi
	movl	$496, %r8d              # imm = 0x1F0
	movabsq	$gimp_curves_tool_init, %rcx
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
	movabsq	$gimp_curves_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_curves_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_curves_tool_get_type, .Lfunc_end0-gimp_curves_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_class_intern_init,@function
gimp_curves_tool_class_intern_init:     # @gimp_curves_tool_class_intern_init
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
	movq	%rax, gimp_curves_tool_parent_class
	cmpl	$0, GimpCurvesTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCurvesTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_curves_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_curves_tool_class_intern_init, .Lfunc_end1-gimp_curves_tool_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curves_tool_init,@function
gimp_curves_tool_init:                  # @gimp_curves_tool_init
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
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_lut_new
	movq	-8(%rbp), %rsi
	movq	%rax, 400(%rsi)
	movl	$0, -20(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$5, %rax
	jae	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 408(%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movabsq	$gimp_lut_process, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 328(%rcx)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 336(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_curves_tool_init, .Lfunc_end2-gimp_curves_tool_init
	.cfi_endproc

	.globl	gimp_curves_tool_register
	.align	16, 0x90
	.type	gimp_curves_tool_register,@function
gimp_curves_tool_register:              # @gimp_curves_tool_register
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
	callq	gimp_curves_tool_get_type
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
	.size	gimp_curves_tool_register, .Lfunc_end3-gimp_curves_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_class_init,@function
gimp_curves_tool_class_init:            # @gimp_curves_tool_class_init
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
	movabsq	$gimp_curves_tool_color_picked, %rsi
	movabsq	$gimp_curves_tool_oper_update, %rcx
	movabsq	$gimp_curves_tool_key_press, %rdx
	movabsq	$gimp_curves_tool_button_release, %r8
	movabsq	$gimp_curves_tool_initialize, %r9
	movabsq	$gimp_curves_tool_finalize, %r10
	movabsq	$gimp_curves_tool_constructed, %r11
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 176(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 248(%rax)
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
	movabsq	$gimp_curves_tool_settings_export, %rcx
	movabsq	$gimp_curves_tool_settings_import, %rdx
	movabsq	$gimp_curves_tool_reset, %rsi
	movabsq	$gimp_curves_tool_dialog, %rdi
	movabsq	$gimp_curves_tool_map, %r8
	movabsq	$gimp_curves_tool_get_operation, %r9
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
	.size	gimp_curves_tool_class_init, .Lfunc_end4-gimp_curves_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_constructed,@function
gimp_curves_tool_constructed:           # @gimp_curves_tool_constructed
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_curves_tool_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_options_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_tool_enable
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_curves_tool_constructed, .Lfunc_end5-gimp_curves_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_finalize,@function
gimp_curves_tool_finalize:              # @gimp_curves_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	400(%rax), %rdi
	callq	gimp_lut_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_curves_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_curves_tool_finalize, .Lfunc_end6-gimp_curves_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_initialize,@function
gimp_curves_tool_initialize:            # @gimp_curves_tool_initialize
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
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
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB7_7
.LBB7_4:                                # %if.end.9
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	movq	gimp_curves_tool_parent_class, %rax
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
	jne	.LBB7_6
# BB#5:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.end.17
	movq	-40(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$curves_menu_sensitivity, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-56(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_set_sensitivity
	callq	gimp_histogram_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_drawable_calculate_histogram
	movq	-40(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_histogram_view_set_background
	movq	-64(%rbp), %rdi
	callq	gimp_histogram_unref
	movl	$1, -4(%rbp)
.LBB7_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_curves_tool_initialize, .Lfunc_end7-gimp_curves_tool_initialize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curves_tool_button_release,@function
gimp_curves_tool_button_release:        # @gimp_curves_tool_button_release
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movq	48(%rdx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movsd	408(%rdx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-64(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_get_closest_point
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rdx
	movq	472(%rdx), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_curve_view_set_selected
	movq	-64(%rbp), %rdi
	movl	-76(%rbp), %esi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%esi, -140(%rbp)        # 4-byte Spill
	callq	gimp_curve_map_value
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	jmp	.LBB8_11
.LBB8_2:                                # %if.else
	movl	-24(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-156(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB8_10
# BB#3:                                 # %if.then.14
	movl	$0, -80(%rbp)
.LBB8_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -80(%rbp)
	ja	.LBB8_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rcx, -88(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movsd	408(%rdx,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movsd	%xmm1, -96(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_6
	jp	.LBB8_6
	jmp	.LBB8_7
.LBB8_6:                                # %if.then.26
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-88(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_get_closest_point
	movl	%eax, -100(%rbp)
	movq	-48(%rbp), %rdi
	movq	472(%rdi), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_curve_view_set_selected
	movq	-88(%rbp), %rdi
	movl	-100(%rbp), %esi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%esi, -188(%rbp)        # 4-byte Spill
	callq	gimp_curve_map_value
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_8
.LBB8_8:                                # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB8_4
.LBB8_9:                                # %for.end
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.32
	jmp	.LBB8_11
.LBB8_11:                               # %if.end.33
	movq	gimp_curves_tool_parent_class, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_curves_tool_button_release, .Lfunc_end8-gimp_curves_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_key_press,@function
gimp_curves_tool_key_press:             # @gimp_curves_tool_key_press
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	472(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	gtk_widget_event
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.end
	movq	gimp_curves_tool_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB9_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_curves_tool_key_press, .Lfunc_end9-gimp_curves_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_oper_update,@function
gimp_curves_tool_oper_update:           # @gimp_curves_tool_oper_update
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	gimp_curves_tool_parent_class, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	movl	-20(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	movl	$3, -36(%rbp)
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB10_6
.LBB10_2:                               # %if.else
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-60(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB10_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.12, %rdi
	movl	$3, -36(%rbp)
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.else.8
	movabsq	$.L.str.13, %rdi
	movl	$0, -36(%rbp)
	callq	gettext
	movq	%rax, -48(%rbp)
.LBB10_5:                               # %if.end
	jmp	.LBB10_6
.LBB10_6:                               # %if.end.10
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	%edx, 260(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.14
	movabsq	$.L.str.14, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_push_status
.LBB10_8:                               # %if.end.15
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_curves_tool_oper_update, .Lfunc_end10-gimp_curves_tool_oper_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curves_tool_color_picked,@function
gimp_curves_tool_color_picked:          # @gimp_curves_tool_color_picked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	296(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 416(%rax)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 424(%rax)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 432(%rax)
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 440(%rax)
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 440(%rax)
.LBB11_3:                               # %if.end
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB11_5
# BB#4:                                 # %cond.true
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB11_6:                               # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB11_11
# BB#7:                                 # %cond.true.20
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB11_9
# BB#8:                                 # %cond.true.24
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false.26
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB11_10:                              # %cond.end.28
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %cond.false.30
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB11_12:                              # %cond.end.32
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 408(%rax)
	movq	-40(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	40(%rsi), %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movsd	408(%rdi,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_curve_view_set_xpos
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_curves_tool_color_picked, .Lfunc_end11-gimp_curves_tool_color_picked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_get_operation,@function
gimp_curves_tool_get_operation:         # @gimp_curves_tool_get_operation
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	callq	gegl_node_get_type
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	callq	gimp_curves_config_get_type
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
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_curves_tool_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.18, %rsi
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
.Lfunc_end12:
	.size	gimp_curves_tool_get_operation, .Lfunc_end12-gimp_curves_tool_get_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_map,@function
gimp_curves_tool_map:                   # @gimp_curves_tool_map
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
	subq	$1344, %rsp             # imm = 0x540
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -1320(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_is_rgb
	leaq	-1304(%rbp), %rsi
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_curves_config_to_cruft
	leaq	-1304(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	400(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -1336(%rbp)       # 8-byte Spill
	callq	gimp_drawable_bytes
	movabsq	$curves_lut_func, %rcx
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, %rsi
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_lut_setup
	addq	$1344, %rsp             # imm = 0x540
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_curves_tool_map, .Lfunc_end13-gimp_curves_tool_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_curves_tool_dialog,@function
gimp_curves_tool_dialog:                # @gimp_curves_tool_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$632, %rsp              # imm = 0x278
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_curves_tool_export_setup, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_dialog_get_vbox
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_label_group
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -72(%rbp)
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gtk_size_group_add_widget
	callq	gimp_histogram_channel_get_type
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gimp_enum_store_new_with_range
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new_with_model
	movq	-40(%rbp), %rsi
	movq	%rax, 448(%rsi)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-40(%rbp), %rdi
	movq	448(%rdi), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_enum_combo_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_set_stock_prefix
	movq	-96(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	448(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	448(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$curves_channel_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	448(%rdi), %rdi
	movq	-40(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	448(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.26, %rsi
	movabsq	$curves_channel_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdi
	movq	-40(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-128(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movl	$5, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-348(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-352(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -356(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -360(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gimp_color_bar_new
	movl	$12, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %r10
	movq	%rax, 464(%r10)
	movq	-40(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-120(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	464(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-128(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$5, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-404(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-408(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -412(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_curve_view_new
	movq	-40(%rbp), %rsi
	movq	%rax, 472(%rsi)
	movq	-40(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_curve_view_set_range_x
	movq	-40(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_curve_view_set_range_y
	movl	$264, %ecx              # imm = 0x108
	movq	-40(%rbp), %rax
	movq	472(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.29, %rsi
	movl	$4, %edx
	movabsq	$.L.str.30, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-40(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-120(%rbp), %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	472(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rax
	movq	472(%rax), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_histogram_options_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	472(%rcx), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_histogram_options_connect_view
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	%edx, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r8d
	movl	$5, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -476(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-476(%rbp), %r15d       # 4-byte Reload
	movl	%r8d, -480(%rbp)        # 4-byte Spill
	movl	%r15d, %r8d
	movl	-480(%rbp), %r9d        # 4-byte Reload
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -484(%rbp)       # 4-byte Spill
	movl	%ebx, -488(%rbp)        # 4-byte Spill
	movl	%r11d, -492(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-104(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-120(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	gimp_color_bar_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$6, %edx
	movq	-40(%rbp), %r10
	movq	%rax, 456(%r10)
	movq	-40(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-88(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	456(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	gimp_color_bar_new
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	movl	-572(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_curve_type_get_type
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rax, 480(%rsi)
	movq	-152(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_enum_combo_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_set_stock_prefix
	movq	-152(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$curves_curve_type_callback, %rdi
	movq	-40(%rbp), %r10
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-600(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	gimp_int_combo_box_connect
	movq	-96(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movq	-112(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-40(%rbp), %rdi
	callq	gimp_curves_tool_update_channel
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_curves_tool_dialog, .Lfunc_end14-gimp_curves_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_reset,@function
gimp_curves_tool_reset:                 # @gimp_curves_tool_reset
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -28(%rbp)
	ja	.LBB15_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movl	32(%rcx), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	-28(%rbp), %r8d
	movl	%r8d, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movabsq	$.L.str.35, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	-28(%rbp), %edx
	movl	%edx, %edi
	movq	-16(%rbp), %r9
	movq	392(%r9), %r9
	movq	48(%r9,%rdi,8), %rdi
	movl	-32(%rbp), %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	48(%rdi,%rcx,8), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	jmp	.LBB15_5
.LBB15_4:                               # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%esi, %esi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	48(%rdx,%rcx,8), %rdi
	callq	gimp_curve_reset
.LBB15_5:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_6
.LBB15_6:                               # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_1
.LBB15_7:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_curves_tool_reset, .Lfunc_end15-gimp_curves_tool_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_settings_import,@function
gimp_curves_tool_settings_import:       # @gimp_curves_tool_settings_import
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.37, %rdi
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
	jmp	.LBB16_7
.LBB16_2:                               # %if.end
	movl	$64, %esi
	leaq	-112(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB16_4
# BB#3:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.38, %rdi
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
	jmp	.LBB16_7
.LBB16_4:                               # %if.end.21
	movabsq	$.L.str.39, %rsi
	leaq	-112(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB16_6
# BB#5:                                 # %if.then.25
	movq	-48(%rbp), %rdi
	callq	rewind
	movq	-40(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_curves_config_load_cruft
	movl	%eax, -116(%rbp)
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	-116(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB16_7
.LBB16_6:                               # %if.end.28
	movq	-48(%rbp), %rdi
	callq	fclose
	movq	gimp_curves_tool_parent_class, %rdi
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
.LBB16_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_curves_tool_settings_import, .Lfunc_end16-gimp_curves_tool_settings_import
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_settings_export,@function
gimp_curves_tool_settings_export:       # @gimp_curves_tool_settings_export
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 488(%rax)
	je	.LBB17_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.40, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.41, %rdi
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
	jmp	.LBB17_5
.LBB17_3:                               # %if.end
	movq	-40(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_curves_config_save_cruft
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	-52(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %if.end.14
	movq	gimp_curves_tool_parent_class, %rax
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
.LBB17_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_curves_tool_settings_export, .Lfunc_end17-gimp_curves_tool_settings_export
	.cfi_endproc

	.align	16, 0x90
	.type	curves_menu_sensitivity,@function
curves_menu_sensitivity:                # @curves_menu_sensitivity
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
	ja	.LBB18_5
# BB#7:                                 # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_1:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB18_6
.LBB18_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	movl	%eax, -4(%rbp)
	jmp	.LBB18_6
.LBB18_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -4(%rbp)
	jmp	.LBB18_6
.LBB18_4:                               # %sw.bb.6
	movl	$0, -4(%rbp)
	jmp	.LBB18_6
.LBB18_5:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB18_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	curves_menu_sensitivity, .Lfunc_end18-curves_menu_sensitivity
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_1
	.quad	.LBB18_2
	.quad	.LBB18_2
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_4

	.text
	.align	16, 0x90
	.type	gimp_curves_tool_config_notify,@function
gimp_curves_tool_config_notify:         # @gimp_curves_tool_config_notify
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movq	48(%rdx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 456(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_8
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB19_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_curves_tool_update_channel
	jmp	.LBB19_7
.LBB19_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.20, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB19_6
# BB#5:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movl	32(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB19_6:                               # %if.end.16
	jmp	.LBB19_7
.LBB19_7:                               # %if.end.17
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB19_8:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_curves_tool_config_notify, .Lfunc_end19-gimp_curves_tool_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_update_channel,@function
gimp_curves_tool_update_channel:        # @gimp_curves_tool_update_channel
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
	subq	$960, %rsp              # imm = 0x3C0
	movq	%rdi, -8(%rbp)
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	callq	gimp_curves_tool_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	392(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	40(%rax), %ecx
	movl	%ecx, %esi
	movq	48(%rax,%rsi,8), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	448(%rax), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-16(%rbp), %rdi
	movl	40(%rdi), %ecx
	testl	%ecx, %ecx
	movl	%eax, -820(%rbp)        # 4-byte Spill
	movl	%ecx, -824(%rbp)        # 4-byte Spill
	je	.LBB20_1
	jmp	.LBB20_11
.LBB20_11:                              # %entry
	movl	-824(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$3, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jb	.LBB20_2
	jmp	.LBB20_12
.LBB20_12:                              # %entry
	movl	-824(%rbp), %eax        # 4-byte Reload
	addl	$-4, %eax
	subl	$1, %eax
	movl	%eax, -832(%rbp)        # 4-byte Spill
	ja	.LBB20_3
	jmp	.LBB20_1
.LBB20_1:                               # %sw.bb
	movl	$256, %esi              # imm = 0x100
	leaq	-288(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_curve_get_uchar
	movq	-8(%rbp), %rdx
	movq	456(%rdx), %rdx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	callq	gimp_color_bar_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-288(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	movq	-848(%rbp), %rcx        # 8-byte Reload
	callq	gimp_color_bar_set_buffers
	jmp	.LBB20_3
.LBB20_2:                               # %sw.bb.15
	movl	$256, %esi              # imm = 0x100
	leaq	-288(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_curve_get_uchar
	movl	$256, %esi              # imm = 0x100
	leaq	-544(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_curve_get_uchar
	movl	$256, %esi              # imm = 0x100
	leaq	-800(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_curve_get_uchar
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gimp_color_bar_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-800(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_bar_set_buffers
.LBB20_3:                               # %sw.epilog
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_histogram_view_set_channel
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movsd	408(%rdi,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_curve_view_set_xpos
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gimp_color_bar_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_color_bar_set_channel
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_curve_view_remove_all_backgrounds
	movl	$0, -28(%rbp)
.LBB20_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -28(%rbp)
	ja	.LBB20_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jne	.LBB20_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movq	%rsi, -912(%rbp)        # 8-byte Spill
	callq	curves_get_channel_color
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	-912(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_curve_view_set_curve
	jmp	.LBB20_8
.LBB20_7:                               # %if.else
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	48(%rdi,%rsi,8), %rsi
	movl	-28(%rbp), %edi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	movq	%rsi, -936(%rbp)        # 8-byte Spill
	callq	curves_get_channel_color
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	-936(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_curve_view_add_background
.LBB20_8:                               # %if.end
                                        #   in Loop: Header=BB20_4 Depth=1
	jmp	.LBB20_9
.LBB20_9:                               # %for.inc
                                        #   in Loop: Header=BB20_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_4
.LBB20_10:                              # %for.end
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	32(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -948(%rbp)        # 4-byte Spill
	addq	$960, %rsp              # imm = 0x3C0
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_curves_tool_update_channel, .Lfunc_end20-gimp_curves_tool_update_channel
	.cfi_endproc

	.align	16, 0x90
	.type	curves_get_channel_color,@function
curves_get_channel_color:               # @curves_get_channel_color
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
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	movabsq	$curves_get_channel_color.channel_colors, %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.LBB21_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	curves_get_channel_color, .Lfunc_end21-curves_get_channel_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_tool_export_setup,@function
gimp_curves_tool_export_setup:          # @gimp_curves_tool_export_setup
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	movabsq	$.L.str.33, %rdi
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
	movl	488(%rsi), %esi
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
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB22_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_curves_tool_export_setup, .Lfunc_end22-gimp_curves_tool_export_setup
	.cfi_endproc

	.align	16, 0x90
	.type	curves_channel_callback,@function
curves_channel_callback:                # @curves_channel_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB23_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	je	.LBB23_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB23_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	curves_channel_callback, .Lfunc_end23-curves_channel_callback
	.cfi_endproc

	.align	16, 0x90
	.type	curves_channel_reset_callback,@function
curves_channel_reset_callback:          # @curves_channel_reset_callback
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	40(%rsi), %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	48(%rdi,%rsi,8), %rdi
	movl	%eax, %esi
	callq	gimp_curve_reset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	curves_channel_reset_callback, .Lfunc_end24-curves_channel_reset_callback
	.cfi_endproc

	.align	16, 0x90
	.type	curves_curve_type_callback,@function
curves_curve_type_callback:             # @curves_curve_type_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB25_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movq	48(%rdx,%rax,8), %rax
	movl	32(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	je	.LBB25_3
# BB#2:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movq	48(%rdx,%rax,8), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_curve_set_curve_type
.LBB25_3:                               # %if.end
	jmp	.LBB25_4
.LBB25_4:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	curves_curve_type_callback, .Lfunc_end25-curves_curve_type_callback
	.cfi_endproc

	.type	gimp_curves_tool_get_type.g_define_type_id__volatile,@object # @gimp_curves_tool_get_type.g_define_type_id__volatile
	.local	gimp_curves_tool_get_type.g_define_type_id__volatile
	.comm	gimp_curves_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCurvesTool"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-curves-tool"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Curves"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Curves Tool: Adjust color curves"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Curves..."
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-curves"
	.size	.L.str.5, 17

	.type	gimp_curves_tool_parent_class,@object # @gimp_curves_tool_parent_class
	.local	gimp_curves_tool_parent_class
	.comm	gimp_curves_tool_parent_class,8,8
	.type	GimpCurvesTool_private_offset,@object # @GimpCurvesTool_private_offset
	.local	GimpCurvesTool_private_offset
	.comm	GimpCurvesTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Adjust Color Curves"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"curves"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Import Curves"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Export Curves"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Curves does not operate on indexed layers."
	.size	.L.str.10, 43

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Click to add a control point"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Click to add control points to all channels"
	.size	.L.str.12, 44

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Click to locate on curve (try Shift, Ctrl)"
	.size	.L.str.13, 43

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"operation"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp:curves"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"notify"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"config"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"channel"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"curve"
	.size	.L.str.20, 6

	.type	curves_get_channel_color.channel_colors,@object # @curves_get_channel_color.channel_colors
	.section	.rodata,"a",@progbits
	.align	16
curves_get_channel_color.channel_colors:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.quad	4607182418800017408     # double 1
	.size	curves_get_channel_color.channel_colors, 160

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"file-dialog-setup"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Cha_nnel:"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-channel"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"changed"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"R_eset Channel"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"clicked"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"histogram-scale"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-histogram"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"border-width"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"subdivisions"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Curve _type:"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-curve"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Use _old curves file format"
	.size	.L.str.33, 28

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"toggled"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"curve-type"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"rt"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.37, 36

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Could not read header from '%s': %s"
	.size	.L.str.38, 36

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"# GIMP Curves File\n"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"wt"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.41, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
