	.text
	.file	"gimpposterizetool.bc"
	.globl	gimp_posterize_tool_get_type
	.align	16, 0x90
	.type	gimp_posterize_tool_get_type,@function
gimp_posterize_tool_get_type:           # @gimp_posterize_tool_get_type
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
	movq	gimp_posterize_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_posterize_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_posterize_tool_class_intern_init, %rdi
	movl	$416, %r8d              # imm = 0x1A0
	movabsq	$gimp_posterize_tool_init, %rcx
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
	movabsq	$gimp_posterize_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_posterize_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_posterize_tool_get_type, .Lfunc_end0-gimp_posterize_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_class_intern_init,@function
gimp_posterize_tool_class_intern_init:  # @gimp_posterize_tool_class_intern_init
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
	movq	%rax, gimp_posterize_tool_parent_class
	cmpl	$0, GimpPosterizeTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPosterizeTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_posterize_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_posterize_tool_class_intern_init, .Lfunc_end1-gimp_posterize_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_init,@function
gimp_posterize_tool_init:               # @gimp_posterize_tool_init
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
	movabsq	$gimp_lut_process, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 400(%rdi)
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
	.size	gimp_posterize_tool_init, .Lfunc_end2-gimp_posterize_tool_init
	.cfi_endproc

	.globl	gimp_posterize_tool_register
	.align	16, 0x90
	.type	gimp_posterize_tool_register,@function
gimp_posterize_tool_register:           # @gimp_posterize_tool_register
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
	callq	gimp_posterize_tool_get_type
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
	.size	gimp_posterize_tool_register, .Lfunc_end3-gimp_posterize_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_class_init,@function
gimp_posterize_tool_class_init:         # @gimp_posterize_tool_class_init
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
	movabsq	$gimp_posterize_tool_initialize, %rsi
	movabsq	$gimp_posterize_tool_finalize, %rcx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	callq	gettext
	movabsq	$gimp_posterize_tool_dialog, %rcx
	movabsq	$gimp_posterize_tool_map, %rsi
	movabsq	$gimp_posterize_tool_get_operation, %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-32(%rbp), %rax
	movq	%rdi, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 352(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 360(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_posterize_tool_class_init, .Lfunc_end4-gimp_posterize_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_finalize,@function
gimp_posterize_tool_finalize:           # @gimp_posterize_tool_finalize
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
	callq	gimp_posterize_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	400(%rax), %rdi
	callq	gimp_lut_free
	movq	-16(%rbp), %rax
	movq	$0, 400(%rax)
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_posterize_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_posterize_tool_finalize, .Lfunc_end5-gimp_posterize_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_initialize,@function
gimp_posterize_tool_initialize:         # @gimp_posterize_tool_initialize
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_posterize_tool_get_type
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
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB6_7
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
	movq	gimp_posterize_tool_parent_class, %rax
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
	cmpl	$0, %eax
	jne	.LBB6_6
# BB#5:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.end.17
	movq	-40(%rbp), %rax
	movq	408(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	392(%rax), %rax
	cvtsi2sdl	40(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
	movl	$1, -4(%rbp)
.LBB6_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_posterize_tool_initialize, .Lfunc_end6-gimp_posterize_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_get_operation,@function
gimp_posterize_tool_get_operation:      # @gimp_posterize_tool_get_operation
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
	callq	gimp_posterize_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	callq	gegl_node_get_type
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	callq	gimp_posterize_config_get_type
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
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_posterize_tool_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.11, %rsi
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
	.size	gimp_posterize_tool_get_operation, .Lfunc_end7-gimp_posterize_tool_get_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_map,@function
gimp_posterize_tool_map:                # @gimp_posterize_tool_map
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_posterize_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	400(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movl	40(%rax), %esi
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	callq	gimp_drawable_bytes
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	posterize_lut_setup
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_posterize_tool_map, .Lfunc_end8-gimp_posterize_tool_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4611686018427387904     # double 2
.LCPI9_1:
	.quad	4643211215818981376     # double 256
.LCPI9_2:
	.quad	4607182418800017408     # double 1
.LCPI9_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_posterize_tool_dialog,@function
gimp_posterize_tool_dialog:             # @gimp_posterize_tool_dialog
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_posterize_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_vbox
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	cvtsi2sdl	40(%rdi), %xmm5
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-112(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-112(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_scale_entry_set_logarithmic
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_posterize_tool_levels_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 408(%rdi)
	movq	-16(%rbp), %rax
	movq	408(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -136(%rbp)        # 8-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_posterize_tool_dialog, .Lfunc_end9-gimp_posterize_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_posterize_tool_config_notify,@function
gimp_posterize_tool_config_notify:      # @gimp_posterize_tool_config_notify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_posterize_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 408(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	408(%rax), %rdi
	movq	-32(%rbp), %rax
	cvtsi2sdl	40(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB10_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_posterize_tool_config_notify, .Lfunc_end10-gimp_posterize_tool_config_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_posterize_tool_levels_changed,@function
gimp_posterize_tool_levels_changed:     # @gimp_posterize_tool_levels_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	40(%rsi), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.14, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_posterize_tool_levels_changed, .Lfunc_end11-gimp_posterize_tool_levels_changed
	.cfi_endproc

	.type	gimp_posterize_tool_get_type.g_define_type_id__volatile,@object # @gimp_posterize_tool_get_type.g_define_type_id__volatile
	.local	gimp_posterize_tool_get_type.g_define_type_id__volatile
	.comm	gimp_posterize_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPosterizeTool"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-posterize-tool"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Posterize"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Posterize Tool: Reduce to a limited set of colors"
	.size	.L.str.3, 50

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Posterize..."
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-posterize"
	.size	.L.str.5, 20

	.type	gimp_posterize_tool_parent_class,@object # @gimp_posterize_tool_parent_class
	.local	gimp_posterize_tool_parent_class
	.comm	gimp_posterize_tool_parent_class,8,8
	.type	GimpPosterizeTool_private_offset,@object # @GimpPosterizeTool_private_offset
	.local	GimpPosterizeTool_private_offset
	.comm	GimpPosterizeTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Posterize (Reduce Number of Colors)"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Posterize does not operate on indexed layers."
	.size	.L.str.7, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"operation"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp:posterize"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"notify"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"config"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Posterize _levels:"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"value-changed"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"levels"
	.size	.L.str.14, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
