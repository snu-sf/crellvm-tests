	.text
	.file	"gimpsourcetool.bc"
	.globl	gimp_source_tool_get_type
	.align	16, 0x90
	.type	gimp_source_tool_get_type,@function
gimp_source_tool_get_type:              # @gimp_source_tool_get_type
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
	movq	gimp_source_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_source_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_brush_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$304, %edx              # imm = 0x130
	movabsq	$gimp_source_tool_class_intern_init, %rdi
	movl	$424, %r8d              # imm = 0x1A8
	movabsq	$gimp_source_tool_init, %rcx
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
	movabsq	$gimp_source_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_source_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_source_tool_get_type, .Lfunc_end0-gimp_source_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_class_intern_init,@function
gimp_source_tool_class_intern_init:     # @gimp_source_tool_class_intern_init
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
	movq	%rax, gimp_source_tool_parent_class
	cmpl	$0, GimpSourceTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSourceTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_source_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_source_tool_class_intern_init, .Lfunc_end1-gimp_source_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_init,@function
gimp_source_tool_init:                  # @gimp_source_tool_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 376(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_source_tool_init, .Lfunc_end2-gimp_source_tool_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_class_init,@function
gimp_source_tool_class_init:            # @gimp_source_tool_class_init
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_source_tool_draw, %rsi
	movabsq	$gimp_source_tool_cursor_update, %rdi
	movabsq	$gimp_source_tool_oper_update, %rcx
	movabsq	$gimp_source_tool_modifier_key, %rdx
	movabsq	$gimp_source_tool_motion, %r8
	movabsq	$gimp_source_tool_button_press, %r9
	movabsq	$gimp_source_tool_control, %r10
	movabsq	$gimp_source_tool_has_image, %r11
	movabsq	$gimp_source_tool_has_display, %rbx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 184(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_source_tool_class_init, .Lfunc_end3-gimp_source_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_has_display,@function
gimp_source_tool_has_display:           # @gimp_source_tool_has_display
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	360(%rsi), %rax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB4_2
# BB#1:                                 # %lor.rhs
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB4_2:                                # %lor.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_source_tool_has_display, .Lfunc_end4-gimp_source_tool_has_display
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_has_image,@function
gimp_source_tool_has_image:             # @gimp_source_tool_has_image
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_8
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB5_8
# BB#2:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true.7
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB5_5
# BB#4:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_5:                                # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB5_7
# BB#6:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_7:                                # %if.end.15
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.16
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_source_tool_has_image, .Lfunc_end5-gimp_source_tool_has_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_control,@function
gimp_source_tool_control:               # @gimp_source_tool_control
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
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
	jmp	.LBB6_4
.LBB6_4:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_3
.LBB6_1:                                # %sw.bb
	jmp	.LBB6_3
.LBB6_2:                                # %sw.bb.2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_source_tool_set_src_display
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	328(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB6_3:                                # %sw.epilog
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_source_tool_control, .Lfunc_end6-gimp_source_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_button_press,@function
gimp_source_tool_button_press:          # @gimp_source_tool_button_press
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	-24(%rbp), %ecx
	movl	-68(%rbp), %edx
	orl	$1, %edx
	andl	%edx, %ecx
	cmpl	-68(%rbp), %ecx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	$1, 6480(%rax)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_source_tool_set_src_display
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-64(%rbp), %rax
	movl	$0, 6480(%rax)
.LBB7_3:                                # %if.end
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	movq	-64(%rbp), %rax
	cvttsd2si	6496(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 368(%rax)
	movq	-64(%rbp), %rax
	cvttsd2si	6504(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 372(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_source_tool_button_press, .Lfunc_end7-gimp_source_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_motion,@function
gimp_source_tool_motion:                # @gimp_source_tool_motion
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-56(%rbp), %rax
	cvttsd2si	6496(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 368(%rax)
	movq	-56(%rbp), %rax
	cvttsd2si	6504(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 372(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_source_tool_motion, .Lfunc_end8-gimp_source_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_modifier_key,@function
gimp_source_tool_modifier_key:          # @gimp_source_tool_modifier_key
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB9_6
# BB#1:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_6
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	cmpl	$0, -16(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then.13
	movq	-40(%rbp), %rax
	movq	408(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-40(%rbp), %rax
	movl	$0, 376(%rax)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	movq	-40(%rbp), %rax
	movq	400(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-40(%rbp), %rax
	movl	$1, 376(%rax)
.LBB9_5:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB9_6:                                # %if.end.18
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_source_tool_modifier_key, .Lfunc_end9-gimp_source_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_oper_update,@function
gimp_source_tool_oper_update:           # @gimp_source_tool_oper_update
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
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
	callq	gimp_source_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB10_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB10_3
# BB#2:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movq	416(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 320(%rcx)
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	movq	$0, 320(%rax)
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end.12
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-48(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB10_19
# BB#6:                                 # %if.then.17
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 6488(%rax)
	jne	.LBB10_11
# BB#7:                                 # %if.then.22
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -68(%rbp)
	movl	-20(%rbp), %eax
	andl	-68(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB10_9
# BB#8:                                 # %if.then.25
	movabsq	$.L.str.2, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	408(%rax), %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
	jmp	.LBB10_10
.LBB10_9:                               # %if.else.26
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %eax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movabsq	$.L.str.3, %rdx
	movq	-40(%rbp), %rsi
	movq	408(%rsi), %r8
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
.LBB10_10:                              # %if.end.29
	jmp	.LBB10_18
.LBB10_11:                              # %if.else.30
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-64(%rbp), %rax
	cvttsd2si	6496(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 368(%rax)
	movq	-64(%rbp), %rax
	cvttsd2si	6504(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 372(%rax)
	movq	-64(%rbp), %rax
	cmpl	$0, 6544(%rax)
	jne	.LBB10_17
# BB#12:                                # %if.then.37
	movq	-48(%rbp), %rax
	movl	472(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%edx, -160(%rbp)        # 4-byte Spill
	je	.LBB10_13
	jmp	.LBB10_20
.LBB10_20:                              # %if.then.37
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB10_14
	jmp	.LBB10_15
.LBB10_13:                              # %sw.bb
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	addsd	6528(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 368(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	addsd	6536(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 372(%rax)
	jmp	.LBB10_16
.LBB10_14:                              # %sw.bb.43
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 368(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 372(%rax)
	jmp	.LBB10_16
.LBB10_15:                              # %sw.default
	jmp	.LBB10_16
.LBB10_16:                              # %sw.epilog
	jmp	.LBB10_17
.LBB10_17:                              # %if.end.50
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB10_18:                              # %if.end.53
	jmp	.LBB10_19
.LBB10_19:                              # %if.end.54
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_source_tool_oper_update, .Lfunc_end10-gimp_source_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_cursor_update,@function
gimp_source_tool_cursor_update:         # @gimp_source_tool_cursor_update
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
	subq	$96, %rsp
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
	callq	gimp_source_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$1025, -44(%rbp)        # imm = 0x401
	movl	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB11_7
# BB#1:                                 # %if.then
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	movl	-52(%rbp), %ecx
	orl	$1, %ecx
	andl	%ecx, %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB11_3
# BB#2:                                 # %if.then.6
	movl	$1027, -44(%rbp)        # imm = 0x403
	jmp	.LBB11_6
.LBB11_3:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 6488(%rax)
	jne	.LBB11_5
# BB#4:                                 # %if.then.12
	movl	$1, -48(%rbp)
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end.13
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.14
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_source_tool_cursor_update, .Lfunc_end11-gimp_source_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_draw,@function
gimp_source_tool_draw:                  # @gimp_source_tool_draw
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_source_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	gimp_source_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB12_18
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 6488(%rax)
	je	.LBB12_18
# BB#2:                                 # %land.lhs.true.14
	movq	-16(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB12_18
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	6488(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	cmpq	$0, 392(%rax)
	je	.LBB12_5
# BB#4:                                 # %if.then.22
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	392(%rax), %rsi
	callq	gimp_display_shell_remove_tool_item
	movq	-16(%rbp), %rax
	movq	$0, 392(%rax)
.LBB12_5:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 376(%rax)
	je	.LBB12_9
# BB#6:                                 # %if.then.26
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_brush_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	360(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movl	368(%rdi), %ecx
	addl	-44(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-16(%rbp), %rdi
	movl	372(%rdi), %ecx
	addl	-48(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	%rax, %rdi
	callq	gimp_brush_tool_create_outline
	movq	-16(%rbp), %rsi
	movq	%rax, 392(%rsi)
	movq	-16(%rbp), %rax
	cmpq	$0, 392(%rax)
	je	.LBB12_8
# BB#7:                                 # %if.then.36
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	392(%rax), %rsi
	callq	gimp_display_shell_add_tool_item
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB12_8:                               # %if.end.39
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.40
	movq	-16(%rbp), %rax
	cmpq	$0, 392(%rax)
	je	.LBB12_13
# BB#10:                                # %if.then.43
	movq	-16(%rbp), %rax
	cmpq	$0, 384(%rax)
	je	.LBB12_12
# BB#11:                                # %if.then.45
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rsi
	callq	gimp_display_shell_remove_tool_item
	movq	-16(%rbp), %rax
	movq	$0, 384(%rax)
.LBB12_12:                              # %if.end.48
	jmp	.LBB12_17
.LBB12_13:                              # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 384(%rax)
	jne	.LBB12_15
# BB#14:                                # %if.then.51
	movl	$4, %esi
	xorl	%edx, %edx
	movl	$15, %eax
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	368(%rcx), %r8d
	addl	-44(%rbp), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movq	-16(%rbp), %rcx
	movl	372(%rcx), %r8d
	addl	-48(%rbp), %r8d
	cvtsi2sdl	%r8d, %xmm1
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_canvas_handle_new
	movq	-16(%rbp), %rdi
	movq	%rax, 384(%rdi)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rsi
	callq	gimp_display_shell_add_tool_item
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.62
	movq	-16(%rbp), %rax
	movq	384(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	368(%rax), %ecx
	addl	-44(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-16(%rbp), %rax
	movl	372(%rax), %ecx
	addl	-48(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	gimp_canvas_handle_set_position
.LBB12_16:                              # %if.end.70
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.71
	jmp	.LBB12_18
.LBB12_18:                              # %if.end.72
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_source_tool_draw, .Lfunc_end12-gimp_source_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_tool_set_src_display,@function
gimp_source_tool_set_src_display:       # @gimp_source_tool_set_src_display
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	360(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	je	.LBB13_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB13_7
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 384(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rsi
	callq	gimp_display_shell_remove_tool_item
	movq	-8(%rbp), %rax
	movq	$0, 384(%rax)
.LBB13_4:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 392(%rax)
	je	.LBB13_6
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rsi
	callq	gimp_display_shell_remove_tool_item
	movq	-8(%rbp), %rax
	movq	$0, 392(%rax)
.LBB13_6:                               # %if.end.12
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 360(%rcx)
.LBB13_8:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_source_tool_set_src_display, .Lfunc_end13-gimp_source_tool_set_src_display
	.cfi_endproc

	.type	gimp_source_tool_get_type.g_define_type_id__volatile,@object # @gimp_source_tool_get_type.g_define_type_id__volatile
	.local	gimp_source_tool_get_type.g_define_type_id__volatile
	.comm	gimp_source_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSourceTool"
	.size	.L.str, 15

	.type	gimp_source_tool_parent_class,@object # @gimp_source_tool_parent_class
	.local	gimp_source_tool_parent_class
	.comm	gimp_source_tool_parent_class,8,8
	.type	GimpSourceTool_private_offset,@object # @GimpSourceTool_private_offset
	.local	GimpSourceTool_private_offset
	.comm	GimpSourceTool_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"src-drawable"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s-%s"
	.size	.L.str.3, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
