	.text
	.file	"gimpfliptool.bc"
	.globl	gimp_flip_tool_get_type
	.align	16, 0x90
	.type	gimp_flip_tool_get_type,@function
gimp_flip_tool_get_type:                # @gimp_flip_tool_get_type
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
	movq	gimp_flip_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_flip_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_transform_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$344, %edx              # imm = 0x158
	movabsq	$gimp_flip_tool_class_intern_init, %rdi
	movl	$792, %r8d              # imm = 0x318
	movabsq	$gimp_flip_tool_init, %rcx
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
	movabsq	$gimp_flip_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_flip_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_flip_tool_get_type, .Lfunc_end0-gimp_flip_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_flip_tool_class_intern_init,@function
gimp_flip_tool_class_intern_init:       # @gimp_flip_tool_class_intern_init
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
	movq	%rax, gimp_flip_tool_parent_class
	cmpl	$0, GimpFlipTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFlipTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_flip_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_flip_tool_class_intern_init, .Lfunc_end1-gimp_flip_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_flip_tool_init,@function
gimp_flip_tool_init:                    # @gimp_flip_tool_init
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
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_snap_to
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$1025, %esi             # imm = 0x401
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor
	movl	$1025, %esi             # imm = 0x401
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_toggle_cursor
	movl	$18, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movl	$19, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_toggle_tool_cursor
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_flip_tool_init, .Lfunc_end2-gimp_flip_tool_init
	.cfi_endproc

	.globl	gimp_flip_tool_register
	.align	16, 0x90
	.type	gimp_flip_tool_register,@function
gimp_flip_tool_register:                # @gimp_flip_tool_register
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
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_flip_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_flip_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_flip_options_gui, %rdx
	movl	$128, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_flip_tool_register, .Lfunc_end3-gimp_flip_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_flip_tool_class_init,@function
gimp_flip_tool_class_init:              # @gimp_flip_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_flip_tool_transform, %rsi
	movabsq	$gimp_flip_tool_get_undo_desc, %rdi
	movabsq	$gimp_flip_tool_cursor_update, %rcx
	movabsq	$gimp_flip_tool_modifier_key, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 256(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 328(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 336(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_flip_tool_class_init, .Lfunc_end4-gimp_flip_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_flip_tool_modifier_key,@function
gimp_flip_tool_modifier_key:            # @gimp_flip_tool_modifier_key
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_flip_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB5_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	400(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_7
.LBB5_7:                                # %if.then
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_4
.LBB5_2:                                # %sw.bb
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB5_5
.LBB5_3:                                # %sw.bb.6
	movabsq	$.L.str.7, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB5_5
.LBB5_4:                                # %sw.default
	jmp	.LBB5_5
.LBB5_5:                                # %sw.epilog
	jmp	.LBB5_6
.LBB5_6:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_flip_tool_modifier_key, .Lfunc_end5-gimp_flip_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_flip_tool_cursor_update,@function
gimp_flip_tool_cursor_update:           # @gimp_flip_tool_cursor_update
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_flip_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_coords_in_active_pickable
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_toggle_cursor_modifier
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	cmpl	$1, 400(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gimp_tool_control_set_toggled
	movq	gimp_flip_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_flip_tool_cursor_update, .Lfunc_end6-gimp_flip_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_flip_tool_get_undo_desc,@function
gimp_flip_tool_get_undo_desc:           # @gimp_flip_tool_get_undo_desc
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_flip_options_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	400(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_5
.LBB7_5:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB7_4
.LBB7_2:                                # %sw.bb.7
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.9, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %sw.default
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB7_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_flip_tool_get_undo_desc, .Lfunc_end7-gimp_flip_tool_get_undo_desc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_flip_tool_transform,@function
gimp_flip_tool_transform:               # @gimp_flip_tool_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_flip_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	400(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_11
.LBB8_11:                               # %entry
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_3
.LBB8_1:                                # %sw.bb
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	280(%rax), %xmm1
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	280(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	jmp	.LBB8_4
.LBB8_2:                                # %sw.bb.9
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	284(%rax), %xmm1
	movq	-8(%rbp), %rax
	movl	292(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	284(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %sw.default
	jmp	.LBB8_4
.LBB8_4:                                # %sw.epilog
	cmpq	$0, -24(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-56(%rbp), %rdi
	movl	400(%rdi), %r10d
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	gimp_drawable_transform_tiles_flip
	movq	%rax, -80(%rbp)
	jmp	.LBB8_10
.LBB8_6:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.22
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	400(%rax), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_item_linked_flip
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.24
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	400(%rax), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_item_flip
.LBB8_9:                                # %if.end
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.26
	movq	-80(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_flip_tool_transform, .Lfunc_end8-gimp_flip_tool_transform
	.cfi_endproc

	.type	gimp_flip_tool_get_type.g_define_type_id__volatile,@object # @gimp_flip_tool_get_type.g_define_type_id__volatile
	.local	gimp_flip_tool_get_type.g_define_type_id__volatile
	.comm	gimp_flip_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFlipTool"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-flip-tool"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Flip"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Flip Tool: Reverse the layer, selection or path horizontally or vertically"
	.size	.L.str.3, 75

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Flip"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>F"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-flip"
	.size	.L.str.6, 15

	.type	gimp_flip_tool_parent_class,@object # @gimp_flip_tool_parent_class
	.local	gimp_flip_tool_parent_class
	.comm	gimp_flip_tool_parent_class,8,8
	.type	GimpFlipTool_private_offset,@object # @GimpFlipTool_private_offset
	.local	GimpFlipTool_private_offset
	.comm	GimpFlipTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"flip-type"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"undo-type\004Flip horizontally"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"undo-type\004Flip vertically"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-desc\004Flip"
	.size	.L.str.10, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
