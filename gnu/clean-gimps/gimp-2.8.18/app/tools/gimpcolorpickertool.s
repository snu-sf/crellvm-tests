	.text
	.file	"gimpcolorpickertool.bc"
	.globl	gimp_color_picker_tool_get_type
	.align	16, 0x90
	.type	gimp_color_picker_tool_get_type,@function
gimp_color_picker_tool_get_type:        # @gimp_color_picker_tool_get_type
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
	movq	gimp_color_picker_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_picker_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_color_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$304, %edx              # imm = 0x130
	movabsq	$gimp_color_picker_tool_class_intern_init, %rdi
	movl	$328, %r8d              # imm = 0x148
	movabsq	$gimp_color_picker_tool_init, %rcx
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
	movabsq	$gimp_color_picker_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_picker_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_picker_tool_get_type, .Lfunc_end0-gimp_color_picker_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_class_intern_init,@function
gimp_color_picker_tool_class_intern_init: # @gimp_color_picker_tool_class_intern_init
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
	movq	%rax, gimp_color_picker_tool_parent_class
	cmpl	$0, GimpColorPickerTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorPickerTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_picker_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_picker_tool_class_intern_init, .Lfunc_end1-gimp_color_picker_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_init,@function
gimp_color_picker_tool_init:            # @gimp_color_picker_tool_init
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
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_motion_mode
	movq	-24(%rbp), %rax
	movl	$1, 260(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_picker_tool_init, .Lfunc_end2-gimp_color_picker_tool_init
	.cfi_endproc

	.globl	gimp_color_picker_tool_register
	.align	16, 0x90
	.type	gimp_color_picker_tool_register,@function
gimp_color_picker_tool_register:        # @gimp_color_picker_tool_register
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
	callq	gimp_color_picker_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_picker_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_color_picker_options_gui, %rdx
	movl	$192, %ecx
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
	.size	gimp_color_picker_tool_register, .Lfunc_end3-gimp_color_picker_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_class_init,@function
gimp_color_picker_tool_class_init:      # @gimp_color_picker_tool_class_init
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
	callq	gimp_color_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_color_picker_tool_picked, %rsi
	movabsq	$gimp_color_picker_tool_oper_update, %rdi
	movabsq	$gimp_color_picker_tool_modifier_key, %rcx
	movabsq	$gimp_color_picker_tool_control, %rdx
	movabsq	$gimp_color_picker_tool_constructed, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 184(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 232(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 296(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_picker_tool_class_init, .Lfunc_end4-gimp_color_picker_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_constructed,@function
gimp_color_picker_tool_constructed:     # @gimp_color_picker_tool_constructed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_color_picker_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_picker_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_tool_enable
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_picker_tool_constructed, .Lfunc_end5-gimp_color_picker_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_control,@function
gimp_color_picker_tool_control:         # @gimp_color_picker_tool_control
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_picker_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jb	.LBB6_1
	jmp	.LBB6_6
.LBB6_6:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_5
.LBB6_1:                                # %sw.bb
	jmp	.LBB6_5
.LBB6_2:                                # %sw.bb.2
	movq	-32(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 320(%rax)
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %sw.epilog
	movq	gimp_color_picker_tool_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_picker_tool_control, .Lfunc_end6-gimp_color_picker_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_modifier_key,@function
gimp_color_picker_tool_modifier_key:    # @gimp_color_picker_tool_modifier_key
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
	callq	gimp_color_picker_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rdi
	cmpl	$0, 388(%rdi)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB7_9
.LBB7_2:                                # %if.else
	movl	-12(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB7_8
# BB#3:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movl	384(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%edx, -68(%rbp)         # 4-byte Spill
	je	.LBB7_4
	jmp	.LBB7_10
.LBB7_10:                               # %if.then.7
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB7_5
	jmp	.LBB7_6
.LBB7_4:                                # %sw.bb
	movabsq	$.L.str.8, %rsi
	movl	$2, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB7_7
.LBB7_5:                                # %sw.bb.8
	movabsq	$.L.str.8, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB7_7
.LBB7_6:                                # %sw.default
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	jmp	.LBB7_8
.LBB7_8:                                # %if.end
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.9
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_picker_tool_modifier_key, .Lfunc_end7-gimp_color_picker_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_oper_update,@function
gimp_color_picker_tool_oper_update:     # @gimp_color_picker_tool_oper_update
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_picker_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_picker_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rsi
	movl	384(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 260(%rax)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	cmpl	$0, -24(%rbp)
	je	.LBB8_11
# BB#1:                                 # %if.then
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 296(%rax)
	jne	.LBB8_3
# BB#2:                                 # %if.then.12
	movl	$1, -68(%rbp)
.LBB8_3:                                # %if.end
	movq	-48(%rbp), %rax
	movl	384(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	ja	.LBB8_8
# BB#12:                                # %if.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_4:                                # %sw.bb
	movabsq	$.L.str.9, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-68(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -64(%rbp)
	jmp	.LBB8_8
.LBB8_5:                                # %sw.bb.16
	movabsq	$.L.str.10, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-68(%rbp), %ecx
	orl	-52(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -64(%rbp)
	jmp	.LBB8_8
.LBB8_6:                                # %sw.bb.21
	movabsq	$.L.str.11, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-68(%rbp), %ecx
	orl	-52(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -64(%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %sw.bb.27
	movabsq	$.L.str.12, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-68(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -64(%rbp)
.LBB8_8:                                # %sw.epilog
	cmpq	$0, -64(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.32
	movabsq	$.L.str.13, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_push_status
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB8_10:                               # %if.end.33
	jmp	.LBB8_11
.LBB8_11:                               # %if.end.34
	movq	gimp_color_picker_tool_parent_class, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_picker_tool_oper_update, .Lfunc_end8-gimp_color_picker_tool_oper_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_6
	.quad	.LBB8_7

	.text
	.align	16, 0x90
	.type	gimp_color_picker_tool_picked,@function
gimp_color_picker_tool_picked:          # @gimp_color_picker_tool_picked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_picker_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_picker_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 388(%rax)
	je	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 296(%rax)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_color_picker_tool_info_create
.LBB9_3:                                # %if.end
	movq	-40(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then.10
	movq	-40(%rbp), %rdi
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	gimp_color_picker_tool_info_update
.LBB9_5:                                # %if.end.11
	movq	gimp_color_picker_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	296(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_picker_tool_picked, .Lfunc_end9-gimp_color_picker_tool_picked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_info_create,@function
gimp_color_picker_tool_info_create:     # @gimp_color_picker_tool_info_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str.14, %rdi
	movabsq	$.L__func__.gimp_color_picker_tool_info_create, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_6
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_display_get_shell
	movabsq	$.L.str.16, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rcx
	movl	$4294967289, %r8d       # imm = 0xFFFFFFF9
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_dialog_new
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_focus_on_map
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_options
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_viewable_dialog_set_viewable
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_color_picker_tool_info_response, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	296(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	296(%rcx), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -24(%rbp)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_color_frame_new
	movq	-8(%rbp), %rsi
	movq	%rax, 312(%rsi)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_color_frame_set_mode
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_color_frame_new
	movq	-8(%rbp), %rsi
	movq	%rax, 320(%rsi)
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_frame_set_mode
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	320(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-256(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_drawable_has_alpha
	leaq	-72(%rbp), %rdi
	movl	$768, %edx              # imm = 0x300
	xorl	%ecx, %ecx
	movl	$2, %r8d
	cmpl	$0, %eax
	cmovnel	%r8d, %ecx
	movl	%ecx, %esi
	callq	gimp_color_area_new
	movl	$48, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	%rax, 304(%rdi)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gtk_drag_dest_unset
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	304(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gtk_widget_show
.LBB10_6:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_picker_tool_info_create, .Lfunc_end10-gimp_color_picker_tool_info_create
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_info_update,@function
gimp_color_picker_tool_info_update:     # @gimp_color_picker_tool_info_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_get_shell
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tool_dialog_set_shell
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_options
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_viewable_dialog_set_viewable
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_color_frame_set_color
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_color_frame_set_color
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_window_show
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gtk_widget_show
.LBB11_3:                               # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_picker_tool_info_update, .Lfunc_end11-gimp_color_picker_tool_info_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_picker_tool_info_response,@function
gimp_color_picker_tool_info_response:   # @gimp_color_picker_tool_info_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gimp_tool_control
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_picker_tool_info_response, .Lfunc_end12-gimp_color_picker_tool_info_response
	.cfi_endproc

	.type	gimp_color_picker_tool_get_type.g_define_type_id__volatile,@object # @gimp_color_picker_tool_get_type.g_define_type_id__volatile
	.local	gimp_color_picker_tool_get_type.g_define_type_id__volatile
	.comm	gimp_color_picker_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorPickerTool"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-color-picker-tool"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Color Picker"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Color Picker Tool: Set colors from image pixels"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"C_olor Picker"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"O"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-color-picker"
	.size	.L.str.6, 23

	.type	gimp_color_picker_tool_parent_class,@object # @gimp_color_picker_tool_parent_class
	.local	gimp_color_picker_tool_parent_class
	.comm	gimp_color_picker_tool_parent_class,8,8
	.type	GimpColorPickerTool_private_offset,@object # @GimpColorPickerTool_private_offset
	.local	GimpColorPickerTool_private_offset
	.comm	GimpColorPickerTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"use-info-window"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pick-mode"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Click in any image to view its color"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Click in any image to pick the foreground color"
	.size	.L.str.10, 48

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Click in any image to pick the background color"
	.size	.L.str.11, 48

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Click in any image to add the color to the palette"
	.size	.L.str.12, 51

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Gimp-Tools"
	.size	.L.str.14, 11

	.type	.L__func__.gimp_color_picker_tool_info_create,@object # @__func__.gimp_color_picker_tool_info_create
.L__func__.gimp_color_picker_tool_info_create:
	.asciz	"gimp_color_picker_tool_info_create"
	.size	.L__func__.gimp_color_picker_tool_info_create, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tool->drawable != NULL"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Color Picker Information"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-close"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"response"
	.size	.L.str.18, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
