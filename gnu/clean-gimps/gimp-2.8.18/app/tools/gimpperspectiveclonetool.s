	.text
	.file	"gimpperspectiveclonetool.bc"
	.globl	gimp_perspective_clone_tool_get_type
	.align	16, 0x90
	.type	gimp_perspective_clone_tool_get_type,@function
gimp_perspective_clone_tool_get_type:   # @gimp_perspective_clone_tool_get_type
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
	movq	gimp_perspective_clone_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_perspective_clone_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_perspective_clone_tool_class_intern_init, %rdi
	movl	$712, %r8d              # imm = 0x2C8
	movabsq	$gimp_perspective_clone_tool_init, %rcx
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
	movabsq	$gimp_perspective_clone_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_perspective_clone_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_perspective_clone_tool_get_type, .Lfunc_end0-gimp_perspective_clone_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_class_intern_init,@function
gimp_perspective_clone_tool_class_intern_init: # @gimp_perspective_clone_tool_class_intern_init
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
	movq	%rax, gimp_perspective_clone_tool_parent_class
	cmpl	$0, GimpPerspectiveCloneTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPerspectiveCloneTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_perspective_clone_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_perspective_clone_tool_class_intern_init, .Lfunc_end1-gimp_perspective_clone_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_init,@function
gimp_perspective_clone_tool_init:       # @gimp_perspective_clone_tool_init
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
	movabsq	$.L.str.12, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_object_2
	movq	-8(%rbp), %rax
	addq	$408, %rax              # imm = 0x198
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_perspective_clone_tool_init, .Lfunc_end2-gimp_perspective_clone_tool_init
	.cfi_endproc

	.globl	gimp_perspective_clone_tool_register
	.align	16, 0x90
	.type	gimp_perspective_clone_tool_register,@function
gimp_perspective_clone_tool_register:   # @gimp_perspective_clone_tool_register
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
	callq	gimp_perspective_clone_tool_get_type
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_perspective_clone_options_gui, %rdx
	movl	$24512, %ecx            # imm = 0x5FC0
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
	.size	gimp_perspective_clone_tool_register, .Lfunc_end3-gimp_perspective_clone_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_options_gui,@function
gimp_perspective_clone_options_gui:     # @gimp_perspective_clone_options_gui
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
	subq	$224, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -16(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_paint_options_gui
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_radio_box_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rsi
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_radio_frame_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_enum_radio_frame_add
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movq	%rsi, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	gimp_prop_pattern_box_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_enum_radio_frame_add
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_perspective_clone_options_gui, .Lfunc_end4-gimp_perspective_clone_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_class_init,@function
gimp_perspective_clone_tool_class_init: # @gimp_perspective_clone_tool_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_perspective_clone_tool_draw, %rsi
	movabsq	$gimp_perspective_clone_tool_oper_update, %rdi
	movabsq	$gimp_perspective_clone_tool_cursor_update, %rcx
	movabsq	$gimp_perspective_clone_tool_motion, %rdx
	movabsq	$gimp_perspective_clone_tool_button_release, %r8
	movabsq	$gimp_perspective_clone_tool_button_press, %r9
	movabsq	$gimp_perspective_clone_tool_control, %r10
	movabsq	$gimp_perspective_clone_tool_has_image, %r11
	movabsq	$gimp_perspective_clone_tool_has_display, %rbx
	movabsq	$gimp_perspective_clone_tool_initialize, %r14
	movabsq	$gimp_perspective_clone_tool_constructed, %r15
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%r15, 72(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 176(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 160(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 168(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 184(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 200(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 256(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_perspective_clone_tool_class_init, .Lfunc_end5-gimp_perspective_clone_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_constructed,@function
gimp_perspective_clone_tool_constructed: # @gimp_perspective_clone_tool_constructed
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_perspective_clone_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_perspective_clone_tool_mode_notify, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_mode_notify
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_perspective_clone_tool_constructed, .Lfunc_end6-gimp_perspective_clone_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_initialize,@function
gimp_perspective_clone_tool_initialize: # @gimp_perspective_clone_tool_initialize
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_9
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB7_8
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	-16(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_perspective_clone_tool_bounds
	movq	-40(%rbp), %rdi
	callq	gimp_perspective_clone_tool_prepare
	movq	-40(%rbp), %rdi
	callq	gimp_perspective_clone_tool_recalc_matrix
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	movq	-40(%rbp), %rax
	movl	$0, 704(%rax)
	movl	$0, -52(%rbp)
.LBB7_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -52(%rbp)
	jge	.LBB7_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB7_4 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	480(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 544(%rcx,%rax,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_4
.LBB7_7:                                # %for.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.15
	movl	$1, -4(%rbp)
.LBB7_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_perspective_clone_tool_initialize, .Lfunc_end7-gimp_perspective_clone_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_has_display,@function
gimp_perspective_clone_tool_has_display: # @gimp_perspective_clone_tool_has_display
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	360(%rsi), %rax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB8_2
# BB#1:                                 # %lor.rhs
	movq	gimp_perspective_clone_tool_parent_class, %rax
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
.LBB8_2:                                # %lor.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_perspective_clone_tool_has_display, .Lfunc_end8-gimp_perspective_clone_tool_has_display
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_has_image,@function
gimp_perspective_clone_tool_has_image:  # @gimp_perspective_clone_tool_has_image
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_perspective_clone_tool_parent_class, %rax
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
	jne	.LBB9_8
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB9_8
# BB#2:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true.7
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB9_5
# BB#4:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB9_5:                                # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB9_7
# BB#6:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB9_7:                                # %if.end.15
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.16
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_perspective_clone_tool_has_image, .Lfunc_end9-gimp_perspective_clone_tool_has_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_control,@function
gimp_perspective_clone_tool_control:    # @gimp_perspective_clone_tool_control
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_5
.LBB10_5:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_6
.LBB10_6:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_4
.LBB10_1:                               # %sw.bb
	jmp	.LBB10_4
.LBB10_2:                               # %sw.bb.2
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_perspective_clone_tool_bounds
	movq	-32(%rbp), %rdi
	callq	gimp_perspective_clone_tool_recalc_matrix
	jmp	.LBB10_4
.LBB10_3:                               # %sw.bb.3
	movq	-32(%rbp), %rdi
	callq	gimp_perspective_clone_tool_halt
.LBB10_4:                               # %sw.epilog
	movq	gimp_perspective_clone_tool_parent_class, %rax
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
.Lfunc_end10:
	.size	gimp_perspective_clone_tool_control, .Lfunc_end10-gimp_perspective_clone_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_button_press,@function
gimp_perspective_clone_tool_button_press: # @gimp_perspective_clone_tool_button_press
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movl	496(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_9
.LBB11_9:                               # %entry
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB11_4
	jmp	.LBB11_8
.LBB11_1:                               # %sw.bb
	movq	-56(%rbp), %rax
	cmpl	$0, 704(%rax)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %r8
	callq	gimp_perspective_clone_tool_oper_update
.LBB11_3:                               # %if.end
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 392(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 400(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	jmp	.LBB11_8
.LBB11_4:                               # %sw.bb.13
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	-24(%rbp), %edx
	movl	-84(%rbp), %r8d
	orl	$1, %r8d
	andl	%r8d, %edx
	cmpl	-84(%rbp), %edx
	jne	.LBB11_6
# BB#5:                                 # %if.then.18
	movq	-72(%rbp), %rax
	movl	$1, 6480(%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 360(%rcx)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else
	movq	-72(%rbp), %rax
	movl	$0, 6480(%rax)
.LBB11_7:                               # %if.end.20
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_perspective_clone_get_source_point
	cvttsd2si	-96(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 368(%rax)
	cvttsd2si	-104(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 372(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB11_8:                               # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_perspective_clone_tool_button_press, .Lfunc_end11-gimp_perspective_clone_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_button_release,@function
gimp_perspective_clone_tool_button_release: # @gimp_perspective_clone_tool_button_release
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	496(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_4
.LBB12_4:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_3
.LBB12_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	jmp	.LBB12_3
.LBB12_2:                               # %sw.bb.5
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
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
.LBB12_3:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_perspective_clone_tool_button_release, .Lfunc_end12-gimp_perspective_clone_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_motion,@function
gimp_perspective_clone_tool_motion:     # @gimp_perspective_clone_tool_motion
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, 496(%rax)
	jne	.LBB13_10
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	cmpl	$0, 704(%rax)
	jne	.LBB13_3
# BB#2:                                 # %if.then.12
	jmp	.LBB13_13
.LBB13_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 376(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 384(%rax)
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	392(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	704(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	ja	.LBB13_8
# BB#14:                                # %if.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_4:                               # %sw.bb
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	480(%rax), %xmm0
	movsd	%xmm0, 480(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	488(%rax), %xmm0
	movsd	%xmm0, 488(%rax)
	jmp	.LBB13_9
.LBB13_5:                               # %sw.bb.22
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	496(%rax), %xmm0
	movsd	%xmm0, 496(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	504(%rax), %xmm0
	movsd	%xmm0, 504(%rax)
	jmp	.LBB13_9
.LBB13_6:                               # %sw.bb.29
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	512(%rax), %xmm0
	movsd	%xmm0, 512(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	520(%rax), %xmm0
	movsd	%xmm0, 520(%rax)
	jmp	.LBB13_9
.LBB13_7:                               # %sw.bb.36
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	528(%rax), %xmm0
	movsd	%xmm0, 528(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	536(%rax), %xmm0
	movsd	%xmm0, 536(%rax)
	jmp	.LBB13_9
.LBB13_8:                               # %sw.default
	jmp	.LBB13_9
.LBB13_9:                               # %sw.epilog
	movq	-40(%rbp), %rdi
	callq	gimp_perspective_clone_tool_recalc_matrix
	movq	-40(%rbp), %rdi
	movsd	376(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 392(%rdi)
	movq	-40(%rbp), %rdi
	movsd	384(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 400(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB13_13
.LBB13_10:                              # %if.else
	movq	-64(%rbp), %rax
	cmpl	$1, 496(%rax)
	jne	.LBB13_12
# BB#11:                                # %if.then.51
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_perspective_clone_get_source_point
	cvttsd2si	-88(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 368(%rax)
	cvttsd2si	-96(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 372(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB13_12:                              # %if.end.61
	jmp	.LBB13_13
.LBB13_13:                              # %if.end.62
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_perspective_clone_tool_motion, .Lfunc_end13-gimp_perspective_clone_tool_motion
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_4
	.quad	.LBB13_5
	.quad	.LBB13_6
	.quad	.LBB13_7

	.text
	.align	16, 0x90
	.type	gimp_perspective_clone_tool_cursor_update,@function
gimp_perspective_clone_tool_cursor_update: # @gimp_perspective_clone_tool_cursor_update
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$1025, -68(%rbp)        # imm = 0x401
	movl	$0, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_coords_in_active_pickable
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$1025, -68(%rbp)        # imm = 0x401
.LBB14_2:                               # %if.end
	movq	-48(%rbp), %rax
	cmpl	$0, 496(%rax)
	jne	.LBB14_10
# BB#3:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_cursor
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rdi
	movl	704(%rdi), %eax
	addl	$-2, %eax
	movl	%eax, %edi
	subl	$3, %eax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%eax, -116(%rbp)        # 4-byte Spill
	ja	.LBB14_8
# BB#22:                                # %if.then.9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_4:                               # %sw.bb
	movl	$1032, -68(%rbp)        # imm = 0x408
	jmp	.LBB14_9
.LBB14_5:                               # %sw.bb.11
	movl	$1033, -68(%rbp)        # imm = 0x409
	jmp	.LBB14_9
.LBB14_6:                               # %sw.bb.12
	movl	$1034, -68(%rbp)        # imm = 0x40A
	jmp	.LBB14_9
.LBB14_7:                               # %sw.bb.13
	movl	$1035, -68(%rbp)        # imm = 0x40B
	jmp	.LBB14_9
.LBB14_8:                               # %sw.default
	movl	$1027, -68(%rbp)        # imm = 0x403
.LBB14_9:                               # %sw.epilog
	jmp	.LBB14_18
.LBB14_10:                              # %if.else
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_clone_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 488(%rax)
	jne	.LBB14_17
# BB#11:                                # %if.then.17
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -76(%rbp)
	movl	-20(%rbp), %eax
	movl	-76(%rbp), %ecx
	orl	$1, %ecx
	andl	%ecx, %eax
	cmpl	-76(%rbp), %eax
	jne	.LBB14_13
# BB#12:                                # %if.then.20
	movl	$1027, -68(%rbp)        # imm = 0x403
	jmp	.LBB14_16
.LBB14_13:                              # %if.else.21
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 6488(%rax)
	jne	.LBB14_15
# BB#14:                                # %if.then.27
	movl	$1, -72(%rbp)
.LBB14_15:                              # %if.end.28
	jmp	.LBB14_16
.LBB14_16:                              # %if.end.29
	jmp	.LBB14_17
.LBB14_17:                              # %if.end.30
	jmp	.LBB14_18
.LBB14_18:                              # %if.end.31
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_tool_control_set_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-72(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	-48(%rbp), %rax
	cmpl	$0, 496(%rax)
	jne	.LBB14_20
# BB#19:                                # %if.then.36
	movq	gimp_perspective_clone_tool_parent_class, %rdi
	callq	g_type_class_peek_parent
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	jmp	.LBB14_21
.LBB14_20:                              # %if.else.40
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
.LBB14_21:                              # %if.end.43
	movq	-64(%rbp), %rax
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_perspective_clone_tool_cursor_update, .Lfunc_end14-gimp_perspective_clone_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_4
	.quad	.LBB14_5
	.quad	.LBB14_6
	.quad	.LBB14_7

	.text
	.align	16, 0x90
	.type	gimp_perspective_clone_tool_oper_update,@function
gimp_perspective_clone_tool_oper_update: # @gimp_perspective_clone_tool_oper_update
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 496(%rax)
	jne	.LBB15_10
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, 704(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rax
	je	.LBB15_3
# BB#2:                                 # %if.then.11
	jmp	.LBB15_21
.LBB15_3:                               # %if.end
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	624(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	632(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, 704(%rax)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	640(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	648(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_5
# BB#4:                                 # %if.then.18
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$3, 704(%rax)
.LBB15_5:                               # %if.end.20
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	656(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	664(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_7
# BB#6:                                 # %if.then.25
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$4, 704(%rax)
.LBB15_7:                               # %if.end.27
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	672(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	680(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_9
# BB#8:                                 # %if.then.32
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$5, 704(%rax)
.LBB15_9:                               # %if.end.34
	jmp	.LBB15_21
.LBB15_10:                              # %if.else
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_clone_options_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 488(%rax)
	jne	.LBB15_20
# BB#11:                                # %land.lhs.true
	cmpl	$0, -24(%rbp)
	je	.LBB15_20
# BB#12:                                # %if.then.40
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, 6488(%rax)
	jne	.LBB15_14
# BB#13:                                # %if.then.49
	movabsq	$.L.str.11, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_replace_status
	jmp	.LBB15_19
.LBB15_14:                              # %if.else.51
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-96(%rbp), %rax
	cvttsd2si	6496(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 368(%rax)
	movq	-96(%rbp), %rax
	cvttsd2si	6504(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 372(%rax)
	movq	-96(%rbp), %rax
	cmpl	$0, 6544(%rax)
	jne	.LBB15_18
# BB#15:                                # %if.then.58
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, 472(%rax)
	jne	.LBB15_17
# BB#16:                                # %if.then.63
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_perspective_clone_get_source_point
	cvttsd2si	-104(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 368(%rax)
	cvttsd2si	-112(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 372(%rax)
.LBB15_17:                              # %if.end.70
	jmp	.LBB15_18
.LBB15_18:                              # %if.end.71
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB15_19:                              # %if.end.74
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.75
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.76
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_perspective_clone_tool_oper_update, .Lfunc_end15-gimp_perspective_clone_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_draw,@function
gimp_perspective_clone_tool_draw:       # @gimp_perspective_clone_tool_draw
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	624(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	632(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	640(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	648(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_line
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	640(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	648(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	672(%rsi), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	680(%rsi), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_line
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	656(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	664(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	672(%rsi), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	680(%rsi), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_line
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	656(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	664(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	624(%rsi), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	632(%rsi), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_line
	movq	-8(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
	movq	-48(%rbp), %rax
	cmpl	$0, 496(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$25, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movsd	624(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	movsd	632(%rdx), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	%eax, %r8d
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movl	$25, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movsd	640(%r9), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %r9
	movsd	648(%r9), %xmm1         # xmm1 = mem[0],zero
	movl	%ecx, %esi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-160(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movl	$25, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movsd	656(%r9), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %r9
	movsd	664(%r9), %xmm1         # xmm1 = mem[0],zero
	movl	%ecx, %esi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-176(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movl	$25, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movsd	672(%r9), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %r9
	movsd	680(%r9), %xmm1         # xmm1 = mem[0],zero
	movl	%ecx, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-192(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB16_2:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_clone_options_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 488(%rax)
	jne	.LBB16_6
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 6488(%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true.43
	movq	-24(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB16_6
# BB#5:                                 # %if.then.45
	movl	$4, %esi
	movl	$15, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rcx
	movq	360(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 200(%rdx)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	cvtsi2sdl	368(%rcx), %xmm0
	movq	-24(%rbp), %rcx
	cvtsi2sdl	372(%rcx), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdi, 200(%r9)
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB16_6:                               # %if.end.51
	movq	gimp_perspective_clone_tool_parent_class, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_perspective_clone_tool_draw, .Lfunc_end16-gimp_perspective_clone_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_mode_notify,@function
gimp_perspective_clone_tool_mode_notify: # @gimp_perspective_clone_tool_mode_notify
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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	cmpl	$1, 496(%rax)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$28, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$408, %rax              # imm = 0x198
	movq	%rax, %rsi
	callq	gimp_perspective_clone_set_transform
	jmp	.LBB17_6
.LBB17_2:                               # %if.else
	movl	$2, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$17, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB17_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB17_5
# BB#4:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB17_5:                               # %if.end
	jmp	.LBB17_6
.LBB17_6:                               # %if.end.19
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_perspective_clone_tool_mode_notify, .Lfunc_end17-gimp_perspective_clone_tool_mode_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_bounds,@function
gimp_perspective_clone_tool_bounds:     # @gimp_perspective_clone_tool_bounds
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
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 608(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 612(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, 616(%rsi)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movq	-8(%rbp), %rsi
	movl	%eax, 620(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_perspective_clone_tool_bounds, .Lfunc_end18-gimp_perspective_clone_tool_bounds
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_prepare,@function
gimp_perspective_clone_tool_prepare:    # @gimp_perspective_clone_tool_prepare
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	608(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 480(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	612(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 488(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	616(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 496(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	612(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 504(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	608(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 512(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	620(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 520(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	616(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 528(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	620(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 536(%rdi)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_perspective_clone_tool_prepare, .Lfunc_end19-gimp_perspective_clone_tool_prepare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_recalc_matrix,@function
gimp_perspective_clone_tool_recalc_matrix: # @gimp_perspective_clone_tool_recalc_matrix
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$408, %rdi              # imm = 0x198
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rdi
	addq	$408, %rdi              # imm = 0x198
	movq	-8(%rbp), %rax
	movl	608(%rax), %esi
	movq	-8(%rbp), %rax
	movl	612(%rax), %edx
	movq	-8(%rbp), %rax
	movl	616(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	608(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	620(%rax), %r8d
	movq	-8(%rbp), %rax
	subl	612(%rax), %r8d
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	496(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	504(%rax), %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	512(%rax), %xmm4        # xmm4 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	520(%rax), %xmm5        # xmm5 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	528(%rax), %xmm6        # xmm6 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	536(%rax), %xmm7        # xmm7 = mem[0],zero
	callq	gimp_transform_matrix_perspective
	movq	-8(%rbp), %rdi
	callq	gimp_perspective_clone_tool_transform_bounding_box
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_perspective_clone_tool_recalc_matrix, .Lfunc_end20-gimp_perspective_clone_tool_recalc_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_transform_bounding_box,@function
gimp_perspective_clone_tool_transform_bounding_box: # @gimp_perspective_clone_tool_transform_bounding_box
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_perspective_clone_tool_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_perspective_clone_tool_transform_bounding_box, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rax
	addq	$408, %rax              # imm = 0x198
	movq	-8(%rbp), %rcx
	cvtsi2sdl	608(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	612(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$624, %rcx              # imm = 0x270
	movq	-8(%rbp), %rdx
	addq	$632, %rdx              # imm = 0x278
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	addq	$408, %rax              # imm = 0x198
	movq	-8(%rbp), %rcx
	cvtsi2sdl	616(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	612(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$640, %rcx              # imm = 0x280
	movq	-8(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	addq	$408, %rax              # imm = 0x198
	movq	-8(%rbp), %rcx
	cvtsi2sdl	608(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	620(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$656, %rcx              # imm = 0x290
	movq	-8(%rbp), %rdx
	addq	$664, %rdx              # imm = 0x298
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	addq	$408, %rax              # imm = 0x198
	movq	-8(%rbp), %rcx
	cvtsi2sdl	616(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	620(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$672, %rcx              # imm = 0x2A0
	movq	-8(%rbp), %rdx
	addq	$680, %rdx              # imm = 0x2A8
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
.LBB21_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_perspective_clone_tool_transform_bounding_box, .Lfunc_end21-gimp_perspective_clone_tool_transform_bounding_box
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_tool_halt,@function
gimp_perspective_clone_tool_halt:       # @gimp_perspective_clone_tool_halt
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	328(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_perspective_clone_tool_halt, .Lfunc_end22-gimp_perspective_clone_tool_halt
	.cfi_endproc

	.type	gimp_perspective_clone_tool_get_type.g_define_type_id__volatile,@object # @gimp_perspective_clone_tool_get_type.g_define_type_id__volatile
	.local	gimp_perspective_clone_tool_get_type.g_define_type_id__volatile
	.comm	gimp_perspective_clone_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPerspectiveCloneTool"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-perspective-clone-tool"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Perspective Clone"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Perspective Clone Tool: Clone from an image source after applying a perspective transformation"
	.size	.L.str.3, 95

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Perspective Clone"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-perspective-clone"
	.size	.L.str.5, 28

	.type	gimp_perspective_clone_tool_parent_class,@object # @gimp_perspective_clone_tool_parent_class
	.local	gimp_perspective_clone_tool_parent_class
	.comm	gimp_perspective_clone_tool_parent_class,8,8
	.type	GimpPerspectiveCloneTool_private_offset,@object # @GimpPerspectiveCloneTool_private_offset
	.local	GimpPerspectiveCloneTool_private_offset
	.comm	GimpPerspectiveCloneTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify::clone-mode"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"hard"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Tools"
	.size	.L.str.8, 11

	.type	.L__func__.gimp_perspective_clone_tool_transform_bounding_box,@object # @__func__.gimp_perspective_clone_tool_transform_bounding_box
.L__func__.gimp_perspective_clone_tool_transform_bounding_box:
	.asciz	"gimp_perspective_clone_tool_transform_bounding_box"
	.size	.L__func__.gimp_perspective_clone_tool_transform_bounding_box, 51

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_PERSPECTIVE_CLONE_TOOL (clone_tool)"
	.size	.L.str.9, 44

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"src-drawable"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Ctrl-Click to set a clone source"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"context/context-pattern-select-set"
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"clone-mode"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"clone-type"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Source"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"sample-merged"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Sample merged"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"pattern-view-type"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"pattern-view-size"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Alignment:"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"align-mode"
	.size	.L.str.21, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
