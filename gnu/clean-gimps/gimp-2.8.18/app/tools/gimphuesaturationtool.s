	.text
	.file	"gimphuesaturationtool.bc"
	.globl	gimp_hue_saturation_tool_get_type
	.align	16, 0x90
	.type	gimp_hue_saturation_tool_get_type,@function
gimp_hue_saturation_tool_get_type:      # @gimp_hue_saturation_tool_get_type
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
	movq	gimp_hue_saturation_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_hue_saturation_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_hue_saturation_tool_class_intern_init, %rdi
	movl	$496, %r8d              # imm = 0x1F0
	movabsq	$gimp_hue_saturation_tool_init, %rcx
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
	movabsq	$gimp_hue_saturation_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_hue_saturation_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_hue_saturation_tool_get_type, .Lfunc_end0-gimp_hue_saturation_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_class_intern_init,@function
gimp_hue_saturation_tool_class_intern_init: # @gimp_hue_saturation_tool_class_intern_init
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
	movq	%rax, gimp_hue_saturation_tool_parent_class
	cmpl	$0, GimpHueSaturationTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpHueSaturationTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_hue_saturation_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_hue_saturation_tool_class_intern_init, .Lfunc_end1-gimp_hue_saturation_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_init,@function
gimp_hue_saturation_tool_init:          # @gimp_hue_saturation_tool_init
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
	movl	$18608, %ecx            # imm = 0x48B0
	movl	%ecx, %edi
	movq	%rax, -16(%rbp)
	callq	g_slice_alloc0
	movq	-8(%rbp), %rsi
	movq	%rax, 400(%rsi)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rdi
	callq	hue_saturation_init
	movabsq	$hue_saturation, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 328(%rsi)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 336(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_hue_saturation_tool_init, .Lfunc_end2-gimp_hue_saturation_tool_init
	.cfi_endproc

	.globl	gimp_hue_saturation_tool_register
	.align	16, 0x90
	.type	gimp_hue_saturation_tool_register,@function
gimp_hue_saturation_tool_register:      # @gimp_hue_saturation_tool_register
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_hue_saturation_tool_get_type
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_map_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	movq	-40(%rbp), %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, 48(%rsp)
	movq	-48(%rbp), %r15         # 8-byte Reload
	callq	*%r15
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_hue_saturation_tool_register, .Lfunc_end3-gimp_hue_saturation_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_class_init,@function
gimp_hue_saturation_tool_class_init:    # @gimp_hue_saturation_tool_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_hue_saturation_tool_initialize, %rsi
	movabsq	$gimp_hue_saturation_tool_finalize, %rcx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.7, %rcx
	movq	-32(%rbp), %rsi
	movq	%rax, 304(%rsi)
	movq	-32(%rbp), %rax
	movq	%rcx, 312(%rax)
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, 320(%rcx)
	callq	gettext
	movabsq	$gimp_hue_saturation_tool_reset, %rcx
	movabsq	$gimp_hue_saturation_tool_dialog, %rsi
	movabsq	$gimp_hue_saturation_tool_map, %rdi
	movabsq	$gimp_hue_saturation_tool_get_operation, %rdx
	movq	-32(%rbp), %r8
	movq	%rax, 328(%r8)
	movq	-32(%rbp), %rax
	movq	%rdx, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 352(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 360(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 368(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_hue_saturation_tool_class_init, .Lfunc_end4-gimp_hue_saturation_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_finalize,@function
gimp_hue_saturation_tool_finalize:      # @gimp_hue_saturation_tool_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_hue_saturation_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$18608, %eax            # imm = 0x48B0
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_hue_saturation_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_hue_saturation_tool_finalize, .Lfunc_end5-gimp_hue_saturation_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_initialize,@function
gimp_hue_saturation_tool_initialize:    # @gimp_hue_saturation_tool_initialize
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_hue_saturation_tool_get_type
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
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB6_4
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
	jmp	.LBB6_5
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
	movq	gimp_hue_saturation_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB6_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_hue_saturation_tool_initialize, .Lfunc_end6-gimp_hue_saturation_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_get_operation,@function
gimp_hue_saturation_tool_get_operation: # @gimp_hue_saturation_tool_get_operation
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_hue_saturation_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	callq	gegl_node_get_type
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	callq	gimp_hue_saturation_config_get_type
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
	movabsq	$.L.str.13, %rsi
	movabsq	$hue_saturation_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.14, %rsi
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
.Lfunc_end7:
	.size	gimp_hue_saturation_tool_get_operation, .Lfunc_end7-gimp_hue_saturation_tool_get_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_map,@function
gimp_hue_saturation_tool_map:           # @gimp_hue_saturation_tool_map
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_hue_saturation_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	400(%rax), %rsi
	callq	gimp_hue_saturation_config_to_cruft
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_hue_saturation_tool_map, .Lfunc_end8-gimp_hue_saturation_tool_map
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_1:
	.quad	-4586634745500139520    # double -100
.LCPI9_2:
	.quad	4636737291354636288     # double 100
.LCPI9_3:
	.quad	4607182418800017408     # double 1
.LCPI9_4:
	.quad	4621819117588971520     # double 10
.LCPI9_5:
	.quad	-4582834833314545664    # double -180
.LCPI9_6:
	.quad	4640537203540230144     # double 180
.LCPI9_7:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	gimp_hue_saturation_tool_dialog,@function
gimp_hue_saturation_tool_dialog:        # @gimp_hue_saturation_tool_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$848, %rsp              # imm = 0x350
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_hue_saturation_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -128(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_vbox
	movabsq	$.L.str.34, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movss	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -196(%rbp)       # 4-byte Spill
	movss	-196(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -200(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-200(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-200(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$7, %edi
	movl	$5, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$0, -132(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-132(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB9_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$gimp_hue_saturation_tool_dialog.hue_range_table, %rax
	movq	-128(%rbp), %rdi
	movslq	-132(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movslq	-132(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$gimp_hue_saturation_tool_dialog.hue_range_table, %rax
	movq	-80(%rbp), %rdi
	movslq	-132(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	cmpl	$0, -132(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_mode
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 408(%rdi)
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %ecx
	xorl	%edx, %edx
	movabsq	$gimp_hue_saturation_tool_dialog.hue_range_table, %rsi
	movq	-80(%rbp), %rdi
	movslq	-132(%rbp), %r8
	shlq	$5, %r8
	movq	%rsi, %r9
	addq	%r8, %r9
	movl	16(%r9), %r10d
	movslq	-132(%rbp), %r8
	shlq	$5, %r8
	movq	%rsi, %r9
	addq	%r8, %r9
	movl	16(%r9), %r11d
	addl	$1, %r11d
	movslq	-132(%rbp), %r8
	shlq	$5, %r8
	movq	%rsi, %r9
	addq	%r8, %r9
	movl	20(%r9), %r8d
	movslq	-132(%rbp), %r9
	shlq	$5, %r9
	addq	%r9, %rsi
	movl	20(%rsi), %ebx
	addl	$1, %ebx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	cmpl	$0, -132(%rbp)
	jle	.LBB9_6
# BB#5:                                 # %if.then.55
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-168(%rbp), %rcx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	gtk_frame_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %r8d
	xorl	%r9d, %r9d
	movabsq	$gimp_hue_saturation_tool_dialog.hue_range_table, %rcx
	movq	-88(%rbp), %rsi
	movslq	-132(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	movl	24(%rdi), %edx
	movslq	-132(%rbp), %rdi
	shlq	$5, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	24(%r10), %r11d
	addl	$1, %r11d
	movslq	-132(%rbp), %rdi
	shlq	$5, %rdi
	movq	%rcx, %r10
	addq	%rdi, %r10
	movl	28(%r10), %ebx
	movslq	-132(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rcx
	movl	28(%rcx), %r14d
	addl	$1, %r14d
	movq	%rax, %rdi
	movl	%r11d, %ecx
	movl	%r8d, -332(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -336(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-168(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_color_area_new
	movl	$40, %esi
	movl	$20, %edx
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdi
	movq	-32(%rbp), %r10
	movq	%rax, 416(%r10,%rdi,8)
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdi
	movq	416(%rdi,%rax,8), %rdi
	callq	gtk_widget_set_size_request
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	-32(%rbp), %rdi
	movq	416(%rdi,%rsi,8), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movq	416(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
.LBB9_6:                                # %if.end.90
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.36, %rsi
	movabsq	$hue_saturation_range_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$1, %edi
	movq	%rax, -112(%rbp)
	callq	gtk_size_group_new
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, -120(%rbp)
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_7, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-40(%rbp), %rdi
	movaps	%xmm1, %xmm2
	mulsd	216(%rdi), %xmm2
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-432(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -440(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-440(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-432(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-432(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, 464(%rcx)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.40, %rsi
	movabsq	$hue_saturation_overlap_changed, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movl	-524(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI9_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_7, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm2, %xmm2
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %r10d
	movl	%r10d, %edi
	movq	-40(%rbp), %r11
	movaps	%xmm0, %xmm5
	mulsd	48(%r11,%rdi,8), %xmm5
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -556(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-568(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, -576(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-576(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, 472(%rcx)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.40, %rsi
	movabsq	$hue_saturation_hue_changed, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-608(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$200, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm2, %xmm2
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %r10d
	movl	%r10d, %edi
	movq	-40(%rbp), %r11
	movaps	%xmm0, %xmm5
	mulsd	160(%r11,%rdi,8), %xmm5
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-648(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, -656(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-656(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-656(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, 480(%rcx)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.40, %rsi
	movabsq	$hue_saturation_lightness_changed, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-688(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$200, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm2, %xmm2
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %ebx
	movl	%ebx, %edi
	movq	-40(%rbp), %r11
	movaps	%xmm0, %xmm5
	mulsd	104(%r11,%rdi,8), %xmm5
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-728(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, -736(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-736(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-736(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -740(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, 488(%rcx)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.40, %rsi
	movabsq	$hue_saturation_saturation_changed, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	488(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-776(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	movl	-804(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	movabsq	$hue_saturation_range_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	408(%rcx), %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movl	40(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-32(%rbp), %rdi
	callq	hue_saturation_update_color_areas
	addq	$848, %rsp              # imm = 0x350
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_hue_saturation_tool_dialog, .Lfunc_end9-gimp_hue_saturation_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hue_saturation_tool_reset,@function
gimp_hue_saturation_tool_reset:         # @gimp_hue_saturation_tool_reset
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
	callq	gimp_hue_saturation_tool_get_type
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
	je	.LBB10_2
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
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
.LBB10_3:                               # %if.end
	movabsq	$.L.str.15, %rsi
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
.Lfunc_end10:
	.size	gimp_hue_saturation_tool_reset, .Lfunc_end10-gimp_hue_saturation_tool_reset
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4640537203540230144     # double 180
.LCPI11_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	hue_saturation_config_notify,@function
hue_saturation_config_notify:           # @hue_saturation_config_notify
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_hue_saturation_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 472(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_17
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	jmp	.LBB11_16
.LBB11_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_6
# BB#5:                                 # %if.then.10
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	472(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	mulsd	48(%rdx,%rax,8), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB11_15
.LBB11_6:                               # %if.else.13
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_8
# BB#7:                                 # %if.then.17
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	480(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	mulsd	160(%rdx,%rax,8), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB11_14
.LBB11_8:                               # %if.else.22
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.18, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_10
# BB#9:                                 # %if.then.26
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	488(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	mulsd	104(%rdx,%rax,8), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB11_13
.LBB11_10:                              # %if.else.31
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_12
# BB#11:                                # %if.then.35
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	464(%rax), %rdi
	movq	-32(%rbp), %rax
	mulsd	216(%rax), %xmm0
	callq	gtk_adjustment_set_value
.LBB11_12:                              # %if.end.37
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.38
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.39
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.40
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.41
	movq	-24(%rbp), %rdi
	callq	hue_saturation_update_color_areas
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB11_17:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	hue_saturation_config_notify, .Lfunc_end11-hue_saturation_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	hue_saturation_update_color_areas,@function
hue_saturation_update_color_areas:      # @hue_saturation_update_color_areas
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -12(%rbp)
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-48(%rbp), %rax
	movabsq	$hue_saturation_update_color_areas.default_colors, %rcx
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movq	16(%rcx), %rdx
	movq	%rdx, -32(%rbp)
	movq	24(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	392(%rcx), %rdi
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-52(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_operation_hue_saturation_map
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	416(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	hue_saturation_update_color_areas, .Lfunc_end12-hue_saturation_update_color_areas
	.cfi_endproc

	.align	16, 0x90
	.type	hue_saturation_range_callback,@function
hue_saturation_range_callback:          # @hue_saturation_range_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	leaq	-20(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_radio_button_update
	movabsq	$.L.str.15, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	hue_saturation_range_callback, .Lfunc_end13-hue_saturation_range_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	hue_saturation_overlap_changed,@function
hue_saturation_overlap_changed:         # @hue_saturation_overlap_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movsd	216(%rsi), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB14_1
	jp	.LBB14_1
	jmp	.LBB14_2
.LBB14_1:                               # %if.then
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	392(%rcx), %rcx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB14_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	hue_saturation_overlap_changed, .Lfunc_end14-hue_saturation_overlap_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4640537203540230144     # double 180
	.text
	.align	16, 0x90
	.type	hue_saturation_hue_changed,@function
hue_saturation_hue_changed:             # @hue_saturation_hue_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movsd	48(%rdi,%rsi,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB15_1
	jp	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:                               # %if.then
	movabsq	$.L.str.16, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	392(%rcx), %rcx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB15_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	hue_saturation_hue_changed, .Lfunc_end15-hue_saturation_hue_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	hue_saturation_lightness_changed,@function
hue_saturation_lightness_changed:       # @hue_saturation_lightness_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movsd	160(%rdi,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB16_1
	jp	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:                               # %if.then
	movabsq	$.L.str.17, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	392(%rcx), %rcx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	hue_saturation_lightness_changed, .Lfunc_end16-hue_saturation_lightness_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	hue_saturation_saturation_changed,@function
hue_saturation_saturation_changed:      # @hue_saturation_saturation_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movsd	104(%rdi,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB17_1
	jp	.LBB17_1
	jmp	.LBB17_2
.LBB17_1:                               # %if.then
	movabsq	$.L.str.18, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	392(%rcx), %rcx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB17_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	hue_saturation_saturation_changed, .Lfunc_end17-hue_saturation_saturation_changed
	.cfi_endproc

	.align	16, 0x90
	.type	hue_saturation_range_reset_callback,@function
hue_saturation_range_reset_callback:    # @hue_saturation_range_reset_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rdi
	callq	gimp_hue_saturation_config_reset_range
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	hue_saturation_range_reset_callback, .Lfunc_end18-hue_saturation_range_reset_callback
	.cfi_endproc

	.type	gimp_hue_saturation_tool_get_type.g_define_type_id__volatile,@object # @gimp_hue_saturation_tool_get_type.g_define_type_id__volatile
	.local	gimp_hue_saturation_tool_get_type.g_define_type_id__volatile
	.comm	gimp_hue_saturation_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpHueSaturationTool"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-hue-saturation-tool"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Hue-Saturation"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Hue-Saturation Tool: Adjust hue, saturation, and lightness"
	.size	.L.str.3, 59

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Hue-_Saturation..."
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-hue-saturation"
	.size	.L.str.5, 25

	.type	gimp_hue_saturation_tool_parent_class,@object # @gimp_hue_saturation_tool_parent_class
	.local	gimp_hue_saturation_tool_parent_class
	.comm	gimp_hue_saturation_tool_parent_class,8,8
	.type	GimpHueSaturationTool_private_offset,@object # @GimpHueSaturationTool_private_offset
	.local	GimpHueSaturationTool_private_offset
	.comm	GimpHueSaturationTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Adjust Hue / Lightness / Saturation"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"hue-saturation"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Import Hue-Saturation Settings"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Export Hue-Saturation Settings"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Hue-Saturation operates only on RGB color layers."
	.size	.L.str.10, 50

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"operation"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp:hue-saturation"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"notify"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"config"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"range"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hue"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"lightness"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"saturation"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"overlap"
	.size	.L.str.19, 8

	.type	hue_saturation_update_color_areas.default_colors,@object # @hue_saturation_update_color_areas.default_colors
	.data
	.align	16
hue_saturation_update_color_areas.default_colors:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.size	hue_saturation_update_color_areas.default_colors, 192

	.type	gimp_hue_saturation_tool_dialog.hue_range_table,@object # @gimp_hue_saturation_tool_dialog.hue_range_table
	.section	.rodata,"a",@progbits
	.align	16
gimp_hue_saturation_tool_dialog.hue_range_table:
	.quad	.L.str.20
	.quad	.L.str.21
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.22
	.quad	.L.str.23
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.24
	.quad	.L.str.25
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	.L.str.26
	.quad	.L.str.27
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	6                       # 0x6
	.quad	.L.str.30
	.quad	.L.str.31
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.quad	.L.str.32
	.quad	.L.str.33
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	2                       # 0x2
	.size	gimp_hue_saturation_tool_dialog.hue_range_table, 224

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"M_aster"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Adjust all colors"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_R"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Red"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Y"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Yellow"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_G"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Green"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_C"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Cyan"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_B"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Blue"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_M"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Magenta"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Select Primary Color to Adjust"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-item-data"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"toggled"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Overlap:"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"label"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"spinbutton"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"value-changed"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Adjust Selected Color"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Hue:"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Lightness:"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Saturation:"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"R_eset Color"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"clicked"
	.size	.L.str.46, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
