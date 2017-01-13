	.text
	.file	"gimpaligntool.bc"
	.globl	gimp_align_tool_get_type
	.align	16, 0x90
	.type	gimp_align_tool_get_type,@function
gimp_align_tool_get_type:               # @gimp_align_tool_get_type
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
	movq	gimp_align_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_align_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_draw_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %ecx              # imm = 0x120
	movabsq	$gimp_align_tool_class_intern_init, %rdi
	movabsq	$gimp_align_tool_init, %rdx
	xorl	%esi, %esi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_align_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_align_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_align_tool_get_type, .Lfunc_end0-gimp_align_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_class_intern_init,@function
gimp_align_tool_class_intern_init:      # @gimp_align_tool_class_intern_init
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
	movq	%rax, gimp_align_tool_parent_class
	cmpl	$0, GimpAlignTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpAlignTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_align_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_align_tool_class_intern_init, .Lfunc_end1-gimp_align_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_init,@function
gimp_align_tool_init:                   # @gimp_align_tool_init
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
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$11, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movq	-8(%rbp), %rax
	movl	$0, 248(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_align_tool_init, .Lfunc_end2-gimp_align_tool_init
	.cfi_endproc

	.globl	gimp_align_tool_register
	.align	16, 0x90
	.type	gimp_align_tool_register,@function
gimp_align_tool_register:               # @gimp_align_tool_register
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
	callq	gimp_align_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_align_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_align_options_gui, %rdx
	xorl	%ecx, %ecx
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
	.size	gimp_align_tool_register, .Lfunc_end3-gimp_align_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_class_init,@function
gimp_align_tool_class_init:             # @gimp_align_tool_class_init
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp19:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_align_tool_draw, %rsi
	movabsq	$gimp_align_tool_cursor_update, %rdi
	movabsq	$gimp_align_tool_oper_update, %rcx
	movabsq	$gimp_align_tool_key_press, %rdx
	movabsq	$gimp_align_tool_motion, %r8
	movabsq	$gimp_align_tool_button_release, %r9
	movabsq	$gimp_align_tool_button_press, %r10
	movabsq	$gimp_align_tool_control, %r11
	movabsq	$gimp_align_tool_constructed, %rbx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 72(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 184(%rax)
	movq	-32(%rbp), %rax
	movq	%r10, 192(%rax)
	movq	-32(%rbp), %rax
	movq	%r9, 200(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 248(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_align_tool_class_init, .Lfunc_end4-gimp_align_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_constructed,@function
gimp_align_tool_constructed:            # @gimp_align_tool_constructed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_align_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_align_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_align_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_align_tool_align, %rdi
	movl	$2, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_align_tool_constructed, .Lfunc_end5-gimp_align_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_control,@function
gimp_align_tool_control:                # @gimp_align_tool_control
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_align_tool_get_type
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
	movq	-32(%rbp), %rdi
	callq	gimp_align_tool_clear_selected
.LBB6_3:                                # %sw.epilog
	movq	gimp_align_tool_parent_class, %rax
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
	.size	gimp_align_tool_control, .Lfunc_end6-gimp_align_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_button_press,@function
gimp_align_tool_button_press:           # @gimp_align_tool_button_press
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_tool_control
.LBB7_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 264(%rax)
	movq	-48(%rbp), %rax
	movl	%edx, 272(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 268(%rax)
	movq	-48(%rbp), %rax
	movl	%edx, 276(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#3:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB7_4:                                # %if.end.13
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_align_tool_button_press, .Lfunc_end7-gimp_align_tool_button_press
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_align_tool_button_release,@function
gimp_align_tool_button_release:         # @gimp_align_tool_button_release
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_align_options_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -80(%rbp)
	callq	gimp_get_extend_selection_mask
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	cmpl	$1, -28(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	264(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 272(%rax)
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 276(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB8_57
.LBB8_2:                                # %if.end
	movl	-24(%rbp), %eax
	andl	-84(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.14
	movq	-48(%rbp), %rdi
	callq	gimp_align_tool_clear_selected
	movq	-48(%rbp), %rdi
	movl	$0, 280(%rdi)
.LBB8_4:                                # %if.end.15
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	264(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	268(%rax), %xmm2
	subsd	%xmm2, %xmm1
	callq	hypot
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_21
# BB#5:                                 # %if.then.23
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	leaq	-96(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-116(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	callq	gimp_draw_tool_on_vectors
	cmpl	$0, %eax
	je	.LBB8_7
# BB#6:                                 # %if.then.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB8_14
.LBB8_7:                                # %if.else
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_get_show_guides
	cmpl	$0, %eax
	je	.LBB8_10
# BB#8:                                 # %land.lhs.true
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-116(%rbp), %xmm2
	movq	-64(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvtsi2sdl	-116(%rbp), %xmm3
	movq	-64(%rbp), %rax
	divsd	208(%rax), %xmm3
	callq	gimp_image_find_guide
	movq	%rax, -104(%rbp)
	cmpq	$0, %rax
	je	.LBB8_10
# BB#9:                                 # %if.then.40
	movl	$80, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB8_13
.LBB8_10:                               # %if.else.42
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %edx
	callq	gimp_image_pick_layer_by_bounds
	movq	%rax, -112(%rbp)
	cmpq	$0, %rax
	je	.LBB8_12
# BB#11:                                # %if.then.49
	movl	$80, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
.LBB8_12:                               # %if.end.51
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.52
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.53
	cmpq	$0, -72(%rbp)
	je	.LBB8_20
# BB#15:                                # %if.then.55
	movq	-48(%rbp), %rax
	movq	256(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB8_19
# BB#16:                                # %if.then.58
	movq	-48(%rbp), %rax
	movq	256(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_align_tool_object_removed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	%rax, 256(%rdx)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	-24(%rbp), %r9d
	andl	-84(%rbp), %r9d
	cmpl	$0, %r9d
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB8_18
# BB#17:                                # %if.then.65
	movq	-48(%rbp), %rax
	movl	$1, 280(%rax)
.LBB8_18:                               # %if.end.67
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.68
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.69
	jmp	.LBB8_50
.LBB8_21:                               # %if.else.70
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	264(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_23
# BB#22:                                # %cond.true
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false
	movq	-48(%rbp), %rax
	cvtsi2sdl	264(%rax), %xmm0
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB8_24:                               # %cond.end
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -120(%rbp)
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	cvtsi2sdl	264(%rcx), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_26
# BB#25:                                # %cond.true.85
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB8_27
.LBB8_26:                               # %cond.false.87
	movq	-48(%rbp), %rax
	cvtsi2sdl	264(%rax), %xmm0
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB8_27:                               # %cond.end.90
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -124(%rbp)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	cvtsi2sdl	268(%rcx), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_29
# BB#28:                                # %cond.true.98
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB8_30
.LBB8_29:                               # %cond.false.100
	movq	-48(%rbp), %rax
	cvtsi2sdl	268(%rax), %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB8_30:                               # %cond.end.103
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -128(%rbp)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	cvtsi2sdl	268(%rcx), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_32
# BB#31:                                # %cond.true.111
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB8_33
.LBB8_32:                               # %cond.false.113
	movq	-48(%rbp), %rax
	cvtsi2sdl	268(%rax), %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB8_33:                               # %cond.end.116
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -132(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB8_34:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB8_49
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	jne	.LBB8_37
# BB#36:                                # %if.then.128
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_45
.LBB8_37:                               # %if.end.129
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-164(%rbp), %ecx
	movq	-160(%rbp), %rax
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-316(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -172(%rbp)
	movl	-168(%rbp), %eax
	movq	-160(%rbp), %rdx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-332(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -176(%rbp)
	movl	-164(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jl	.LBB8_41
# BB#38:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_34 Depth=1
	movl	-168(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB8_41
# BB#39:                                # %lor.lhs.false.143
                                        #   in Loop: Header=BB8_34 Depth=1
	movl	-172(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jg	.LBB8_41
# BB#40:                                # %lor.lhs.false.146
                                        #   in Loop: Header=BB8_34 Depth=1
	movl	-176(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jle	.LBB8_42
.LBB8_41:                               # %if.then.149
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_45
.LBB8_42:                               # %if.end.150
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-48(%rbp), %rax
	movq	256(%rax), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB8_44
# BB#43:                                # %if.then.154
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_45
.LBB8_44:                               # %if.end.155
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-48(%rbp), %rax
	movq	256(%rax), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_align_tool_object_removed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	%rax, 256(%rdx)
	movq	-160(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB8_45:                               # %for.inc
                                        #   in Loop: Header=BB8_34 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB8_47
# BB#46:                                # %cond.true.161
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB8_48
.LBB8_47:                               # %cond.false.162
                                        #   in Loop: Header=BB8_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB8_48
.LBB8_48:                               # %cond.end.163
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	jmp	.LBB8_34
.LBB8_49:                               # %for.end
	movq	-144(%rbp), %rdi
	callq	g_list_free
.LBB8_50:                               # %if.end.165
	movl	$0, -88(%rbp)
.LBB8_51:                               # %for.cond.166
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -88(%rbp)
	jge	.LBB8_56
# BB#52:                                # %for.body.169
                                        #   in Loop: Header=BB8_51 Depth=1
	movslq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, 376(%rcx,%rax,8)
	je	.LBB8_54
# BB#53:                                # %if.then.171
                                        #   in Loop: Header=BB8_51 Depth=1
	movslq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	376(%rcx,%rax,8), %rdi
	movq	-48(%rbp), %rax
	cmpq	$0, 256(%rax)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	callq	gtk_widget_set_sensitive
.LBB8_54:                               # %if.end.178
                                        #   in Loop: Header=BB8_51 Depth=1
	jmp	.LBB8_55
.LBB8_55:                               # %for.inc.179
                                        #   in Loop: Header=BB8_51 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB8_51
.LBB8_56:                               # %for.end.180
	movq	-48(%rbp), %rax
	movl	264(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 272(%rax)
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 276(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB8_57:                               # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_align_tool_button_release, .Lfunc_end8-gimp_align_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_motion,@function
gimp_align_tool_motion:                 # @gimp_align_tool_motion
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 272(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 276(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_align_tool_motion, .Lfunc_end9-gimp_align_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_key_press,@function
gimp_align_tool_key_press:              # @gimp_align_tool_key_press
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	cmpq	56(%rsi), %rdx
	jne	.LBB10_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	subl	$65307, %ecx            # imm = 0xFF1B
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jne	.LBB10_3
	jmp	.LBB10_2
.LBB10_2:                               # %sw.bb
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_control
	movl	$1, -4(%rbp)
	jmp	.LBB10_6
.LBB10_3:                               # %sw.default
	jmp	.LBB10_4
.LBB10_4:                               # %sw.epilog
	jmp	.LBB10_5
.LBB10_5:                               # %if.end
	movl	$0, -4(%rbp)
.LBB10_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_align_tool_key_press, .Lfunc_end10-gimp_align_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_oper_update,@function
gimp_align_tool_oper_update:            # @gimp_align_tool_oper_update
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	callq	gimp_get_extend_selection_mask
	xorl	%ecx, %ecx
	movb	%cl, %r9b
	movl	-84(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	movb	%r9b, -85(%rbp)         # 1-byte Spill
	je	.LBB11_2
# BB#1:                                 # %land.rhs
	movq	-40(%rbp), %rax
	cmpq	$0, 256(%rax)
	setne	%cl
	movb	%cl, -85(%rbp)          # 1-byte Spill
.LBB11_2:                               # %land.end
	movb	-85(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -64(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movq	%rax, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	callq	gimp_draw_tool_on_vectors
	cmpl	$0, %eax
	je	.LBB11_7
# BB#3:                                 # %if.then
	cmpl	$0, -64(%rbp)
	je	.LBB11_5
# BB#4:                                 # %if.then.12
	movq	-40(%rbp), %rax
	movl	$6, 248(%rax)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else
	movq	-40(%rbp), %rax
	movl	$5, 248(%rax)
.LBB11_6:                               # %if.end
	jmp	.LBB11_21
.LBB11_7:                               # %if.else.14
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_get_show_guides
	cmpl	$0, %eax
	je	.LBB11_13
# BB#8:                                 # %land.lhs.true
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm2
	movq	-48(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvtsi2sdl	-60(%rbp), %xmm3
	movq	-48(%rbp), %rax
	divsd	208(%rax), %xmm3
	callq	gimp_image_find_guide
	cmpq	$0, %rax
	je	.LBB11_13
# BB#9:                                 # %if.then.21
	cmpl	$0, -64(%rbp)
	je	.LBB11_11
# BB#10:                                # %if.then.23
	movq	-40(%rbp), %rax
	movl	$4, 248(%rax)
	jmp	.LBB11_12
.LBB11_11:                              # %if.else.25
	movq	-40(%rbp), %rax
	movl	$3, 248(%rax)
.LBB11_12:                              # %if.end.27
	jmp	.LBB11_20
.LBB11_13:                              # %if.else.28
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %edx
	callq	gimp_image_pick_layer_by_bounds
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB11_18
# BB#14:                                # %if.then.35
	cmpl	$0, -64(%rbp)
	je	.LBB11_16
# BB#15:                                # %if.then.37
	movq	-40(%rbp), %rax
	movl	$2, 248(%rax)
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.39
	movq	-40(%rbp), %rax
	movl	$1, 248(%rax)
.LBB11_17:                              # %if.end.41
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.42
	movq	-40(%rbp), %rax
	movl	$0, 248(%rax)
.LBB11_19:                              # %if.end.44
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.45
	jmp	.LBB11_21
.LBB11_21:                              # %if.end.46
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_align_tool_status_update
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_align_tool_oper_update, .Lfunc_end11-gimp_align_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_cursor_update,@function
gimp_align_tool_cursor_update:          # @gimp_align_tool_cursor_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	callq	gimp_get_extend_selection_mask
	movl	-60(%rbp), %edx         # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$2, -48(%rbp)
.LBB12_2:                               # %if.end
	movq	-40(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$7, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB12_8
# BB#9:                                 # %if.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_3:                               # %sw.bb
	movl	$1, -44(%rbp)
	jmp	.LBB12_8
.LBB12_4:                               # %sw.bb.3
	movl	$36, -44(%rbp)
	jmp	.LBB12_8
.LBB12_5:                               # %sw.bb.4
	movl	$11, -44(%rbp)
	jmp	.LBB12_8
.LBB12_6:                               # %sw.bb.5
	movl	$6, -44(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %sw.bb.6
	jmp	.LBB12_8
.LBB12_8:                               # %sw.epilog
	movl	$1025, %esi             # imm = 0x401
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_tool_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_align_tool_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
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
.Lfunc_end12:
	.size	gimp_align_tool_cursor_update, .Lfunc_end12-gimp_align_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_3
	.quad	.LBB12_4
	.quad	.LBB12_4
	.quad	.LBB12_5
	.quad	.LBB12_5
	.quad	.LBB12_6
	.quad	.LBB12_6
	.quad	.LBB12_7

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_align_tool_draw,@function
gimp_align_tool_draw:                   # @gimp_align_tool_draw
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	264(%rax), %ecx
	jge	.LBB13_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB13_3:                               # %cond.end
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movl	276(%rcx), %eax
	movq	-16(%rbp), %rcx
	cmpl	268(%rcx), %eax
	jge	.LBB13_5
# BB#4:                                 # %cond.true.5
	movq	-16(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false.7
	movq	-16(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
.LBB13_6:                               # %cond.end.9
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-16(%rbp), %rcx
	cmpl	264(%rcx), %eax
	jle	.LBB13_8
# BB#7:                                 # %cond.true.14
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false.16
	movq	-16(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB13_9:                               # %cond.end.18
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	276(%rcx), %eax
	movq	-16(%rbp), %rcx
	cmpl	268(%rcx), %eax
	jle	.LBB13_11
# BB#10:                                # %cond.true.23
	movq	-16(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB13_12
.LBB13_11:                              # %cond.false.25
	movq	-16(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
.LBB13_12:                              # %cond.end.27
	movl	-208(%rbp), %eax        # 4-byte Reload
	xorl	%esi, %esi
	subl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	cvtsi2sdl	-40(%rbp), %xmm3
	callq	gimp_draw_tool_add_rectangle
	movq	-16(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB13_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB13_52
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_16
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$0, -60(%rbp)
	jmp	.LBB13_21
.LBB13_16:                              # %if.else
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_19
# BB#18:                                # %if.then.40
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$1, -60(%rbp)
	jmp	.LBB13_20
.LBB13_19:                              # %if.else.41
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_20:                              # %if.end
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.43
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_33
# BB#22:                                # %if.then.45
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB13_24
# BB#23:                                # %if.then.56
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB13_29
.LBB13_24:                              # %if.else.57
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_27
# BB#25:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB13_27
# BB#26:                                # %if.then.65
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.66
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB13_28:                              # %if.end.68
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_29
.LBB13_29:                              # %if.end.69
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB13_31
# BB#30:                                # %if.then.72
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-128(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_vectors_bounds
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-104(%rbp), %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -28(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-112(%rbp), %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -32(%rbp)
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -36(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-112(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -40(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB13_32
.LBB13_31:                              # %if.else.89
                                        #   in Loop: Header=BB13_13 Depth=1
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -40(%rbp)
.LBB13_32:                              # %if.end.92
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$1, %esi
	movl	$7, %eax
	movl	$2, %r8d
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movl	$1, %esi
	movl	$7, %ecx
	movl	$3, %r8d
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	addl	-36(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	movl	%ecx, %edx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movl	$1, %esi
	movl	$7, %ecx
	movl	$5, %r8d
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	movl	-32(%rbp), %edx
	addl	-40(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	movl	%ecx, %edx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movl	$1, %esi
	movl	$7, %ecx
	movl	$6, %r8d
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	addl	-36(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movl	-32(%rbp), %edx
	addl	-40(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	movl	%ecx, %edx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB13_47
.LBB13_33:                              # %if.else.109
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB13_35
# BB#34:                                # %if.then.119
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$0, -148(%rbp)
	jmp	.LBB13_40
.LBB13_35:                              # %if.else.120
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_38
# BB#36:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB13_38
# BB#37:                                # %if.then.128
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	$1, -148(%rbp)
	jmp	.LBB13_39
.LBB13_38:                              # %if.else.129
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB13_39:                              # %if.end.131
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_40
.LBB13_40:                              # %if.end.132
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB13_46
# BB#41:                                # %if.then.135
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	je	.LBB13_43
	jmp	.LBB13_53
.LBB13_53:                              # %if.then.135
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	-276(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jne	.LBB13_44
	jmp	.LBB13_42
.LBB13_42:                              # %sw.bb
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-160(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -172(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_image_get_height
	movl	$1, %esi
	movl	$7, %ecx
	movl	$4, %r8d
	movl	%eax, -184(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-172(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	movl	%ecx, %edx
	callq	gimp_draw_tool_add_handle
	movl	$1, %ecx
	xorps	%xmm1, %xmm1
	movl	$7, %edx
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-172(%rbp), %xmm0
	movl	%ecx, %esi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-288(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB13_45
.LBB13_43:                              # %sw.bb.158
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-160(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -176(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_image_get_width
	movl	$1, %esi
	movl	$7, %ecx
	movl	$8, %r8d
	movl	%eax, -180(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	movl	%ecx, %edx
	callq	gimp_draw_tool_add_handle
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movl	$7, %ecx
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-176(%rbp), %xmm1
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB13_45
.LBB13_44:                              # %sw.default
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_45
.LBB13_45:                              # %sw.epilog
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_46
.LBB13_46:                              # %if.end.166
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_47
.LBB13_47:                              # %if.end.167
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_48
.LBB13_48:                              # %for.inc
                                        #   in Loop: Header=BB13_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB13_50
# BB#49:                                # %cond.true.169
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB13_51
.LBB13_50:                              # %cond.false.170
                                        #   in Loop: Header=BB13_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB13_51
.LBB13_51:                              # %cond.end.171
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB13_13
.LBB13_52:                              # %for.end
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_align_tool_draw, .Lfunc_end13-gimp_align_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_align,@function
gimp_align_tool_align:                  # @gimp_align_tool_align
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_align_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 256(%rax)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_24
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	subl	$6, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jb	.LBB14_3
	jmp	.LBB14_25
.LBB14_25:                              # %if.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	addl	$-6, %eax
	subl	$6, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jb	.LBB14_4
	jmp	.LBB14_5
.LBB14_3:                               # %sw.bb
	movl	$0, -52(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %sw.bb.8
	movq	-24(%rbp), %rax
	cvttsd2si	360(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB14_5:                               # %sw.epilog
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB14_21
# BB#26:                                # %sw.epilog
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_6:                               # %sw.bb.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	jmp	.LBB14_21
.LBB14_7:                               # %sw.bb.12
	movq	-48(%rbp), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	jne	.LBB14_9
# BB#8:                                 # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	jmp	.LBB14_16
.LBB14_9:                               # %if.else
	movq	-8(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB14_14
# BB#10:                                # %if.then.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB14_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB14_13
.LBB14_13:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB14_15
.LBB14_14:                              # %if.else.21
	movq	$0, -40(%rbp)
.LBB14_15:                              # %if.end.22
	jmp	.LBB14_16
.LBB14_16:                              # %if.end.23
	jmp	.LBB14_21
.LBB14_17:                              # %sw.bb.24
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	jmp	.LBB14_21
.LBB14_18:                              # %sw.bb.27
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	jmp	.LBB14_21
.LBB14_19:                              # %sw.bb.30
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	jmp	.LBB14_21
.LBB14_20:                              # %sw.bb.33
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_print
.LBB14_21:                              # %sw.epilog.34
	cmpq	$0, -40(%rbp)
	jne	.LBB14_23
# BB#22:                                # %if.then.36
	jmp	.LBB14_24
.LBB14_23:                              # %if.end.37
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %r8d
	movl	-52(%rbp), %r9d
	callq	gimp_image_arrange_objects
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB14_24:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_align_tool_align, .Lfunc_end14-gimp_align_tool_align
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_7
	.quad	.LBB14_6
	.quad	.LBB14_17
	.quad	.LBB14_18
	.quad	.LBB14_19
	.quad	.LBB14_20

	.text
	.align	16, 0x90
	.type	gimp_align_tool_clear_selected,@function
gimp_align_tool_clear_selected:         # @gimp_align_tool_clear_selected
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB15_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_align_tool_object_removed
	jmp	.LBB15_1
.LBB15_3:                               # %while.end
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_align_tool_clear_selected, .Lfunc_end15-gimp_align_tool_clear_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_object_removed,@function
gimp_align_tool_object_removed:         # @gimp_align_tool_object_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_align_tool_object_removed, %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-16(%rbp), %rsi
	movq	%rax, 256(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_align_tool_object_removed, .Lfunc_end16-gimp_align_tool_object_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_tool_status_update,@function
gimp_align_tool_status_update:          # @gimp_align_tool_status_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_align_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	callq	gimp_get_extend_selection_mask
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tool_pop_status
	cmpl	$0, -24(%rbp)
	je	.LBB17_15
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 256(%rax)
	jne	.LBB17_3
# BB#2:                                 # %if.then.4
	movl	-36(%rbp), %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB17_3:                               # %if.end
	movq	-32(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$7, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB17_12
# BB#16:                                # %if.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_4:                               # %sw.bb
	movabsq	$.L.str.10, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-36(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB17_12
.LBB17_5:                               # %sw.bb.7
	movabsq	$.L.str.11, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-36(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB17_12
.LBB17_6:                               # %sw.bb.12
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
	jmp	.LBB17_12
.LBB17_7:                               # %sw.bb.15
	movabsq	$.L.str.13, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-36(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB17_12
.LBB17_8:                               # %sw.bb.20
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
	jmp	.LBB17_12
.LBB17_9:                               # %sw.bb.23
	movabsq	$.L.str.15, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-36(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB17_12
.LBB17_10:                              # %sw.bb.28
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
	jmp	.LBB17_12
.LBB17_11:                              # %sw.bb.31
	jmp	.LBB17_12
.LBB17_12:                              # %sw.epilog
	cmpq	$0, -48(%rbp)
	je	.LBB17_14
# BB#13:                                # %if.then.33
	movabsq	$.L.str.17, %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_push_status
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB17_14:                              # %if.end.34
	jmp	.LBB17_15
.LBB17_15:                              # %if.end.35
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_align_tool_status_update, .Lfunc_end17-gimp_align_tool_status_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_4
	.quad	.LBB17_5
	.quad	.LBB17_6
	.quad	.LBB17_7
	.quad	.LBB17_8
	.quad	.LBB17_9
	.quad	.LBB17_10
	.quad	.LBB17_11

	.type	gimp_align_tool_get_type.g_define_type_id__volatile,@object # @gimp_align_tool_get_type.g_define_type_id__volatile
	.local	gimp_align_tool_get_type.g_define_type_id__volatile
	.comm	gimp_align_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpAlignTool"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-align-tool"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Align"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Alignment Tool: Align or arrange layers and other objects"
	.size	.L.str.3, 58

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Align"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Q"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-align"
	.size	.L.str.6, 16

	.type	gimp_align_tool_parent_class,@object # @gimp_align_tool_parent_class
	.local	gimp_align_tool_parent_class
	.comm	gimp_align_tool_parent_class,8,8
	.type	GimpAlignTool_private_offset,@object # @GimpAlignTool_private_offset
	.local	GimpAlignTool_private_offset
	.comm	GimpAlignTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"align-button-clicked"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"reference = active path not yet handled.\n"
	.size	.L.str.8, 42

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"removed"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Click on a layer, path or guide, or Click-Drag to pick several layers"
	.size	.L.str.10, 70

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Click to pick this layer as first item"
	.size	.L.str.11, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Click to add this layer to the list"
	.size	.L.str.12, 36

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Click to pick this guide as first item"
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Click to add this guide to the list"
	.size	.L.str.14, 36

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Click to pick this path as first item"
	.size	.L.str.15, 38

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Click to add this path to the list"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s"
	.size	.L.str.17, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
