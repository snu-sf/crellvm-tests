	.text
	.file	"gimpcolorbalancetool.bc"
	.globl	gimp_color_balance_tool_get_type
	.align	16, 0x90
	.type	gimp_color_balance_tool_get_type,@function
gimp_color_balance_tool_get_type:       # @gimp_color_balance_tool_get_type
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
	movq	gimp_color_balance_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_balance_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_color_balance_tool_class_intern_init, %rdi
	movl	$448, %r8d              # imm = 0x1C0
	movabsq	$gimp_color_balance_tool_init, %rcx
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
	movabsq	$gimp_color_balance_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_balance_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_balance_tool_get_type, .Lfunc_end0-gimp_color_balance_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_class_intern_init,@function
gimp_color_balance_tool_class_intern_init: # @gimp_color_balance_tool_class_intern_init
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
	movq	%rax, gimp_color_balance_tool_parent_class
	cmpl	$0, GimpColorBalanceTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorBalanceTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_balance_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_balance_tool_class_intern_init, .Lfunc_end1-gimp_color_balance_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_init,@function
gimp_color_balance_tool_init:           # @gimp_color_balance_tool_init
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
	movl	$848, %ecx              # imm = 0x350
	movl	%ecx, %edi
	movq	%rax, -16(%rbp)
	callq	g_slice_alloc0
	movq	-8(%rbp), %rsi
	movq	%rax, 400(%rsi)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rdi
	callq	color_balance_init
	movabsq	$color_balance, %rax
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
	.size	gimp_color_balance_tool_init, .Lfunc_end2-gimp_color_balance_tool_init
	.cfi_endproc

	.globl	gimp_color_balance_tool_register
	.align	16, 0x90
	.type	gimp_color_balance_tool_register,@function
gimp_color_balance_tool_register:       # @gimp_color_balance_tool_register
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
	callq	gimp_color_balance_tool_get_type
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
	.size	gimp_color_balance_tool_register, .Lfunc_end3-gimp_color_balance_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_class_init,@function
gimp_color_balance_tool_class_init:     # @gimp_color_balance_tool_class_init
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
	movabsq	$gimp_color_balance_tool_initialize, %rsi
	movabsq	$gimp_color_balance_tool_finalize, %rcx
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
	movabsq	$gimp_color_balance_tool_reset, %rcx
	movabsq	$gimp_color_balance_tool_dialog, %rsi
	movabsq	$gimp_color_balance_tool_map, %rdi
	movabsq	$gimp_color_balance_tool_get_operation, %rdx
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
	.size	gimp_color_balance_tool_class_init, .Lfunc_end4-gimp_color_balance_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_finalize,@function
gimp_color_balance_tool_finalize:       # @gimp_color_balance_tool_finalize
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
	callq	gimp_color_balance_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$848, %eax              # imm = 0x350
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_balance_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_balance_tool_finalize, .Lfunc_end5-gimp_color_balance_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_initialize,@function
gimp_color_balance_tool_initialize:     # @gimp_color_balance_tool_initialize
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
	callq	gimp_color_balance_tool_get_type
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
	movq	gimp_color_balance_tool_parent_class, %rax
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
	.size	gimp_color_balance_tool_initialize, .Lfunc_end6-gimp_color_balance_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_get_operation,@function
gimp_color_balance_tool_get_operation:  # @gimp_color_balance_tool_get_operation
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
	callq	gimp_color_balance_tool_get_type
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
	callq	gimp_color_balance_config_get_type
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
	movabsq	$color_balance_config_notify, %rcx
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
	.size	gimp_color_balance_tool_get_operation, .Lfunc_end7-gimp_color_balance_tool_get_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_map,@function
gimp_color_balance_tool_map:            # @gimp_color_balance_tool_map
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
	callq	gimp_color_balance_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	400(%rax), %rsi
	callq	gimp_color_balance_config_to_cruft
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_balance_tool_map, .Lfunc_end8-gimp_color_balance_tool_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_color_balance_tool_dialog,@function
gimp_color_balance_tool_dialog:         # @gimp_color_balance_tool_dialog
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_vbox
	movq	%rax, -32(%rbp)
	callq	gimp_transfer_mode_get_type
	movabsq	$.L.str.20, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movabsq	$color_balance_range_callback, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$408, %rcx              # imm = 0x198
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	gimp_enum_radio_frame_new
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rsi
	mulsd	48(%rsi,%rax,8), %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdx
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	create_levels_scale
	movabsq	$.L.str.24, %rsi
	movabsq	$color_balance_cr_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 416(%rdi)
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %r9d
	movl	%r9d, %ecx
	movq	-24(%rbp), %rdx
	mulsd	72(%rdx,%rcx,8), %xmm0
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %ecx
	movq	-56(%rbp), %rdx
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	create_levels_scale
	movabsq	$.L.str.24, %rsi
	movabsq	$color_balance_mg_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 424(%rdi)
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %r9d
	movl	%r9d, %ecx
	movq	-24(%rbp), %rdx
	mulsd	96(%rdx,%rcx,8), %xmm0
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %ecx
	movq	-56(%rbp), %rdx
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	create_levels_scale
	movabsq	$.L.str.24, %rsi
	movabsq	$color_balance_yb_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 432(%rdi)
	movq	-16(%rbp), %rax
	movq	432(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rsi
	movabsq	$color_balance_range_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-16(%rbp), %rcx
	movq	%rax, 440(%rcx)
	movq	-16(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	440(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-16(%rbp), %rax
	movq	440(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$color_balance_preserve_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -336(%rbp)        # 8-byte Spill
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_balance_tool_dialog, .Lfunc_end9-gimp_color_balance_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_tool_reset,@function
gimp_color_balance_tool_reset:          # @gimp_color_balance_tool_reset
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_tool_get_type
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
	.size	gimp_color_balance_tool_reset, .Lfunc_end10-gimp_color_balance_tool_reset
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	color_balance_config_notify,@function
color_balance_config_notify:            # @color_balance_config_notify
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 416(%rax)
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
	movq	416(%rax), %rdi
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
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	424(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	mulsd	72(%rdx,%rax,8), %xmm0
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
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	432(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	mulsd	96(%rdx,%rax,8), %xmm0
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
	movq	-24(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	120(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB11_12:                              # %if.end.38
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.39
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.40
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.41
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.42
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB11_17:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	color_balance_config_notify, .Lfunc_end11-color_balance_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	color_balance_range_callback,@function
color_balance_range_callback:           # @color_balance_range_callback
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
	je	.LBB12_2
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
.LBB12_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	color_balance_range_callback, .Lfunc_end12-color_balance_range_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_0:
	.long	1056964608              # float 0.5
.LCPI13_5:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_1:
	.quad	-4586634745500139520    # double -100
.LCPI13_2:
	.quad	4636737291354636288     # double 100
.LCPI13_3:
	.quad	4607182418800017408     # double 1
.LCPI13_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	create_levels_scale,@function
create_levels_scale:                    # @create_levels_scale
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
	subq	$192, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI13_5, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$6, %r8d
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %r9d
	movl	-36(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_4, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	leaq	-72(%rbp), %rax
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rsi
	callq	gtk_scale_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	movl	$100, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	-36(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$6, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %r10d
	movl	-36(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$6, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movl	-36(%rbp), %r10d
	movl	-36(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -160(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	create_levels_scale, .Lfunc_end13-create_levels_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	color_balance_cr_changed,@function
color_balance_cr_changed:               # @color_balance_cr_changed
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
	movl	40(%rsi), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	392(%rdi), %rdi
	movsd	48(%rdi,%rsi,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB14_1
	jp	.LBB14_1
	jmp	.LBB14_2
.LBB14_1:                               # %if.then
	movabsq	$.L.str.16, %rsi
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
	.size	color_balance_cr_changed, .Lfunc_end14-color_balance_cr_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	color_balance_mg_changed,@function
color_balance_mg_changed:               # @color_balance_mg_changed
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
	movsd	72(%rdi,%rsi,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB15_1
	jp	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:                               # %if.then
	movabsq	$.L.str.17, %rsi
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
	.size	color_balance_mg_changed, .Lfunc_end15-color_balance_mg_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	color_balance_yb_changed,@function
color_balance_yb_changed:               # @color_balance_yb_changed
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
	movsd	96(%rdi,%rsi,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB16_1
	jp	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:                               # %if.then
	movabsq	$.L.str.18, %rsi
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
	.size	color_balance_yb_changed, .Lfunc_end16-color_balance_yb_changed
	.cfi_endproc

	.align	16, 0x90
	.type	color_balance_range_reset_callback,@function
color_balance_range_reset_callback:     # @color_balance_range_reset_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rdi
	callq	gimp_color_balance_config_reset_range
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	color_balance_range_reset_callback, .Lfunc_end17-color_balance_range_reset_callback
	.cfi_endproc

	.align	16, 0x90
	.type	color_balance_preserve_toggled,@function
color_balance_preserve_toggled:         # @color_balance_preserve_toggled
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
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	392(%rsi), %rsi
	movl	120(%rsi), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	392(%rdx), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB18_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	color_balance_preserve_toggled, .Lfunc_end18-color_balance_preserve_toggled
	.cfi_endproc

	.type	gimp_color_balance_tool_get_type.g_define_type_id__volatile,@object # @gimp_color_balance_tool_get_type.g_define_type_id__volatile
	.local	gimp_color_balance_tool_get_type.g_define_type_id__volatile
	.comm	gimp_color_balance_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorBalanceTool"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-color-balance-tool"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Color Balance"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Color Balance Tool: Adjust color distribution"
	.size	.L.str.3, 46

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Color _Balance..."
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-color-balance"
	.size	.L.str.5, 24

	.type	gimp_color_balance_tool_parent_class,@object # @gimp_color_balance_tool_parent_class
	.local	gimp_color_balance_tool_parent_class
	.comm	gimp_color_balance_tool_parent_class,8,8
	.type	GimpColorBalanceTool_private_offset,@object # @GimpColorBalanceTool_private_offset
	.local	GimpColorBalanceTool_private_offset
	.comm	GimpColorBalanceTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Adjust Color Balance"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color-balance"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Import Color Balance Settings"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Export Color Balance Settings"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Color Balance operates only on RGB color layers."
	.size	.L.str.10, 49

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"operation"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp:color-balance"
	.size	.L.str.12, 19

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
	.asciz	"cyan-red"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"magenta-green"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"yellow-blue"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"preserve-luminosity"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Select Range to Adjust"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Adjust Color Levels"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Cyan"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Red"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"value-changed"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Magenta"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Green"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Yellow"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Blue"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"R_eset Range"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"clicked"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Preserve _luminosity"
	.size	.L.str.31, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"toggled"
	.size	.L.str.32, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
