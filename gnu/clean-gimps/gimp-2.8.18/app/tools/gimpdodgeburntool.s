	.text
	.file	"gimpdodgeburntool.bc"
	.globl	gimp_dodge_burn_tool_get_type
	.align	16, 0x90
	.type	gimp_dodge_burn_tool_get_type,@function
gimp_dodge_burn_tool_get_type:          # @gimp_dodge_burn_tool_get_type
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
	movq	gimp_dodge_burn_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dodge_burn_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_dodge_burn_tool_class_intern_init, %rdi
	movl	$368, %r8d              # imm = 0x170
	movabsq	$gimp_dodge_burn_tool_init, %rcx
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
	movabsq	$gimp_dodge_burn_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dodge_burn_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dodge_burn_tool_get_type, .Lfunc_end0-gimp_dodge_burn_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_tool_class_intern_init,@function
gimp_dodge_burn_tool_class_intern_init: # @gimp_dodge_burn_tool_class_intern_init
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
	movq	%rax, gimp_dodge_burn_tool_parent_class
	cmpl	$0, GimpDodgeBurnTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDodgeBurnTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dodge_burn_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dodge_burn_tool_class_intern_init, .Lfunc_end1-gimp_dodge_burn_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_tool_init,@function
gimp_dodge_burn_tool_init:              # @gimp_dodge_burn_tool_init
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
	movl	$33, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movl	$34, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_toggle_tool_cursor
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dodge_burn_tool_status_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dodge_burn_tool_init, .Lfunc_end2-gimp_dodge_burn_tool_init
	.cfi_endproc

	.globl	gimp_dodge_burn_tool_register
	.align	16, 0x90
	.type	gimp_dodge_burn_tool_register,@function
gimp_dodge_burn_tool_register:          # @gimp_dodge_burn_tool_register
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_tool_get_type
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_dodge_burn_options_gui, %rdx
	movl	$20416, %ecx            # imm = 0x4FC0
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movabsq	$.L.str.7, %rbx
	movq	-56(%rbp), %r14
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	%r13, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dodge_burn_tool_register, .Lfunc_end3-gimp_dodge_burn_tool_register
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_dodge_burn_options_gui,@function
gimp_dodge_burn_options_gui:            # @gimp_dodge_burn_options_gui
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
	subq	$144, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_paint_options_gui
	movq	%rax, -24(%rbp)
	callq	gimp_get_toggle_behavior_mask
	movabsq	$.L.str.15, %rdi
	movl	%eax, -52(%rbp)
	callq	gettext
	movl	-52(%rbp), %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.8, %rsi
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gimp_prop_enum_radio_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rsi
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_radio_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rsi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_spin_scale_new
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
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dodge_burn_options_gui, .Lfunc_end4-gimp_dodge_burn_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_tool_class_init,@function
gimp_dodge_burn_tool_class_init:        # @gimp_dodge_burn_tool_class_init
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
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_dodge_burn_tool_oper_update, %rsi
	movabsq	$gimp_dodge_burn_tool_cursor_update, %rdi
	movabsq	$gimp_dodge_burn_tool_modifier_key, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 232(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 248(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dodge_burn_tool_class_init, .Lfunc_end5-gimp_dodge_burn_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_tool_modifier_key,@function
gimp_dodge_burn_tool_modifier_key:      # @gimp_dodge_burn_tool_modifier_key
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB6_3
# BB#2:                                 # %land.lhs.true.8
	movl	-16(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	360(%rcx), %eax
	jne	.LBB6_7
.LBB6_3:                                # %lor.lhs.false
	cmpl	$1, -12(%rbp)
	jne	.LBB6_12
# BB#4:                                 # %land.lhs.true.11
	cmpl	$0, -16(%rbp)
	jne	.LBB6_12
# BB#5:                                 # %land.lhs.true.13
	movq	-40(%rbp), %rax
	cmpl	$0, 360(%rax)
	je	.LBB6_12
# BB#6:                                 # %land.lhs.true.16
	movl	-20(%rbp), %eax
	andl	-52(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB6_12
.LBB6_7:                                # %if.then
	movl	-16(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 360(%rcx)
	movq	-48(%rbp), %rcx
	movl	472(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_8
	jmp	.LBB6_13
.LBB6_13:                               # %if.then
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB6_9
	jmp	.LBB6_10
.LBB6_8:                                # %sw.bb
	movabsq	$.L.str.8, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB6_11
.LBB6_9:                                # %sw.bb.20
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB6_11
.LBB6_10:                               # %sw.default
	jmp	.LBB6_11
.LBB6_11:                               # %sw.epilog
	jmp	.LBB6_12
.LBB6_12:                               # %if.end
	movq	gimp_dodge_burn_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dodge_burn_tool_modifier_key, .Lfunc_end6-gimp_dodge_burn_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_tool_cursor_update,@function
gimp_dodge_burn_tool_cursor_update:     # @gimp_dodge_burn_tool_cursor_update
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	cmpl	$1, 472(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gimp_tool_control_set_toggled
	movq	gimp_dodge_burn_tool_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dodge_burn_tool_cursor_update, .Lfunc_end7-gimp_dodge_burn_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_tool_oper_update,@function
gimp_dodge_burn_tool_oper_update:       # @gimp_dodge_burn_tool_oper_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	472(%rax), %esi
	callq	gimp_dodge_burn_tool_status_update
	movq	gimp_dodge_burn_tool_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dodge_burn_tool_oper_update, .Lfunc_end8-gimp_dodge_burn_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_tool_status_update,@function
gimp_dodge_burn_tool_status_update:     # @gimp_dodge_burn_tool_status_update
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_5
.LBB9_5:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_3
.LBB9_1:                                # %sw.bb
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 304(%rcx)
	callq	gettext
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 312(%rcx)
	callq	gettext
	movq	-24(%rbp), %rcx
	movq	%rax, 320(%rcx)
	jmp	.LBB9_4
.LBB9_2:                                # %sw.bb.5
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movabsq	$.L.str.13, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 304(%rcx)
	callq	gettext
	movabsq	$.L.str.14, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 312(%rcx)
	callq	gettext
	movq	-24(%rbp), %rcx
	movq	%rax, 320(%rcx)
	jmp	.LBB9_4
.LBB9_3:                                # %sw.default
	jmp	.LBB9_4
.LBB9_4:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dodge_burn_tool_status_update, .Lfunc_end9-gimp_dodge_burn_tool_status_update
	.cfi_endproc

	.type	gimp_dodge_burn_tool_get_type.g_define_type_id__volatile,@object # @gimp_dodge_burn_tool_get_type.g_define_type_id__volatile
	.local	gimp_dodge_burn_tool_get_type.g_define_type_id__volatile
	.comm	gimp_dodge_burn_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDodgeBurnTool"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-dodge-burn-tool"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Dodge / Burn"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Dodge / Burn Tool: Selectively lighten or darken using a brush"
	.size	.L.str.3, 63

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Dod_ge / Burn"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>D"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-dodge-burn"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-tool-dodge"
	.size	.L.str.7, 16

	.type	gimp_dodge_burn_tool_parent_class,@object # @gimp_dodge_burn_tool_parent_class
	.local	gimp_dodge_burn_tool_parent_class
	.comm	gimp_dodge_burn_tool_parent_class,8,8
	.type	GimpDodgeBurnTool_private_offset,@object # @GimpDodgeBurnTool_private_offset
	.local	GimpDodgeBurnTool_private_offset
	.comm	GimpDodgeBurnTool_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"type"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Click to dodge"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Click to dodge the line"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s to burn"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Click to burn"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Click to burn the line"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s to dodge"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Type  (%s)"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"mode"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Range"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"exposure"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Exposure"
	.size	.L.str.19, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
