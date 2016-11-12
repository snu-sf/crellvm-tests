	.text
	.file	"gimpmovetool.bc"
	.globl	gimp_move_tool_get_type
	.align	16, 0x90
	.type	gimp_move_tool_get_type,@function
gimp_move_tool_get_type:                # @gimp_move_tool_get_type
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
	movq	gimp_move_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_move_tool_get_type.g_define_type_id__volatile, %rax
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
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_move_tool_class_intern_init, %rdi
	movl	$296, %r8d              # imm = 0x128
	movabsq	$gimp_move_tool_init, %rcx
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
	movabsq	$gimp_move_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_move_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_move_tool_get_type, .Lfunc_end0-gimp_move_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_class_intern_init,@function
gimp_move_tool_class_intern_init:       # @gimp_move_tool_class_intern_init
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
	movq	%rax, gimp_move_tool_parent_class
	cmpl	$0, GimpMoveTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMoveTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_move_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_move_tool_class_intern_init, .Lfunc_end1-gimp_move_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_init,@function
gimp_move_tool_init:                    # @gimp_move_tool_init
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
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_motion_mode
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_snap_to
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_handle_empty_image
	movl	$11, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movq	-8(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-8(%rbp), %rax
	movl	$-2147483648, 268(%rax) # imm = 0xFFFFFFFF80000000
	movq	-8(%rbp), %rax
	movl	$2, 272(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 276(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_move_tool_init, .Lfunc_end2-gimp_move_tool_init
	.cfi_endproc

	.globl	gimp_move_tool_register
	.align	16, 0x90
	.type	gimp_move_tool_register,@function
gimp_move_tool_register:                # @gimp_move_tool_register
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
	callq	gimp_move_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_move_options_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.2, %rsi
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_move_options_gui, %rdx
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
	.size	gimp_move_tool_register, .Lfunc_end3-gimp_move_tool_register
	.cfi_endproc

	.globl	gimp_move_tool_start_hguide
	.align	16, 0x90
	.type	gimp_move_tool_start_hguide,@function
gimp_move_tool_start_hguide:            # @gimp_move_tool_start_hguide
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_move_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_move_tool_start_hguide, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_move_tool_start_hguide, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_move_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_move_tool_start_guide
.LBB4_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_move_tool_start_hguide, .Lfunc_end4-gimp_move_tool_start_hguide
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_start_guide,@function
gimp_move_tool_start_guide:             # @gimp_move_tool_start_guide
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_selection_pause
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_scroll_lock
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
.LBB5_2:                                # %if.end
	movl	$1025, %edx             # imm = 0x401
	movl	$36, %ecx
	movl	$5, %r8d
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 264(%rax)
	movq	-8(%rbp), %rax
	movl	$-2147483648, 268(%rax) # imm = 0xFFFFFFFF80000000
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	%esi, 272(%rax)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tool_set_cursor
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_move_tool_start_guide, .Lfunc_end5-gimp_move_tool_start_guide
	.cfi_endproc

	.globl	gimp_move_tool_start_vguide
	.align	16, 0x90
	.type	gimp_move_tool_start_vguide,@function
gimp_move_tool_start_vguide:            # @gimp_move_tool_start_vguide
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_move_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_move_tool_start_vguide, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_move_tool_start_vguide, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_move_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_move_tool_start_guide
.LBB6_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_move_tool_start_vguide, .Lfunc_end6-gimp_move_tool_start_vguide
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_class_init,@function
gimp_move_tool_class_init:              # @gimp_move_tool_class_init
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
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_move_tool_draw, %rsi
	movabsq	$gimp_move_tool_cursor_update, %rdi
	movabsq	$gimp_move_tool_oper_update, %rcx
	movabsq	$gimp_move_tool_modifier_key, %rdx
	movabsq	$gimp_move_tool_key_press, %r8
	movabsq	$gimp_move_tool_motion, %r9
	movabsq	$gimp_move_tool_button_release, %r10
	movabsq	$gimp_move_tool_button_press, %r11
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 192(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 200(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 208(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 216(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 248(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_move_tool_class_init, .Lfunc_end7-gimp_move_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_button_press,@function
gimp_move_tool_button_press:            # @gimp_move_tool_button_press
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_move_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_move_options_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-48(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-56(%rbp), %rax
	cmpl	$0, 356(%rax)
	jne	.LBB8_23
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	cmpl	$2, 352(%rax)
	jne	.LBB8_6
# BB#2:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$7, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	callq	gimp_draw_tool_on_vectors
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.15
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	-48(%rbp), %rdi
	movq	%rax, 288(%rdi)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	jmp	.LBB8_60
.LBB8_5:                                # %if.end
	jmp	.LBB8_22
.LBB8_6:                                # %if.else.19
	movq	-56(%rbp), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB8_21
# BB#7:                                 # %if.then.22
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_get_show_guides
	cmpl	$0, %eax
	je	.LBB8_12
# BB#8:                                 # %land.lhs.true
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-100(%rbp), %xmm2
	movq	-64(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvtsi2sdl	-100(%rbp), %xmm3
	movq	-64(%rbp), %rax
	divsd	208(%rax), %xmm3
	callq	gimp_image_find_guide
	movq	%rax, -88(%rbp)
	cmpq	$0, %rax
	je	.LBB8_12
# BB#9:                                 # %if.then.31
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-48(%rbp), %rax
	movl	$1, 264(%rax)
	movq	-88(%rbp), %rdi
	callq	gimp_guide_get_position
	movq	-48(%rbp), %rcx
	movl	%eax, 268(%rcx)
	movq	-88(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	$1, %esi
	movq	-48(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	gimp_tool_control_set_scroll_lock
	movl	$1, %esi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	gimp_tool_control_set_precision
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	gimp_tool_control_activate
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_selection_pause
	movq	-8(%rbp), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB8_11
# BB#10:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB8_11:                               # %if.end.45
	movabsq	$.L.str.10, %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %rsi
	cmpl	$0, 272(%rsi)
	cmovel	%edx, %ecx
	movq	-48(%rbp), %rsi
	cvtsi2sdl	268(%rsi), %xmm0
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_push_status_length
	jmp	.LBB8_60
.LBB8_12:                               # %if.else.52
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %edx
	callq	gimp_image_pick_layer
	movq	%rax, -96(%rbp)
	cmpq	$0, %rax
	je	.LBB8_18
# BB#13:                                # %if.then.59
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB8_16
# BB#14:                                # %land.lhs.true.62
	movq	-96(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	jne	.LBB8_16
# BB#15:                                # %if.then.65
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	-48(%rbp), %rdi
	movq	%rax, 248(%rdi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	jmp	.LBB8_60
.LBB8_16:                               # %if.else.69
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	-48(%rbp), %rdi
	movq	%rax, 280(%rdi)
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -288(%rbp)        # 8-byte Spill
# BB#17:                                # %if.end.73
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.74
	jmp	.LBB8_60
.LBB8_19:                               # %if.end.75
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.76
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.77
	jmp	.LBB8_22
.LBB8_22:                               # %if.end.78
	jmp	.LBB8_23
.LBB8_23:                               # %if.end.79
	movq	-56(%rbp), %rax
	movl	352(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	je	.LBB8_30
	jmp	.LBB8_61
.LBB8_61:                               # %if.end.79
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB8_27
	jmp	.LBB8_62
.LBB8_62:                               # %if.end.79
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jne	.LBB8_60
	jmp	.LBB8_24
.LBB8_24:                               # %sw.bb
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	cmpq	$0, %rax
	je	.LBB8_26
# BB#25:                                # %if.then.83
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	gimp_edit_selection_tool_start
.LBB8_26:                               # %if.end.85
	jmp	.LBB8_60
.LBB8_27:                               # %sw.bb.86
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB8_29
# BB#28:                                # %if.then.90
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movl	$3, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	gimp_edit_selection_tool_start
.LBB8_29:                               # %if.end.92
	jmp	.LBB8_60
.LBB8_30:                               # %sw.bb.93
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB8_32
# BB#31:                                # %if.then.97
	movl	$0, -132(%rbp)
	jmp	.LBB8_37
.LBB8_32:                               # %if.else.98
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_35
# BB#33:                                # %land.lhs.true.100
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB8_35
# BB#34:                                # %if.then.104
	movl	$1, -132(%rbp)
	jmp	.LBB8_36
.LBB8_35:                               # %if.else.105
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB8_36:                               # %if.end.107
	jmp	.LBB8_37
.LBB8_37:                               # %if.end.108
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB8_39
# BB#38:                                # %if.then.110
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movl	$2, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	gimp_edit_selection_tool_start
	jmp	.LBB8_59
.LBB8_39:                               # %if.else.112
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB8_41
# BB#40:                                # %if.then.121
	movl	$0, -156(%rbp)
	jmp	.LBB8_46
.LBB8_41:                               # %if.else.122
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_44
# BB#42:                                # %land.lhs.true.125
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB8_44
# BB#43:                                # %if.then.130
	movl	$1, -156(%rbp)
	jmp	.LBB8_45
.LBB8_44:                               # %if.else.131
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB8_45:                               # %if.end.133
	jmp	.LBB8_46
.LBB8_46:                               # %if.end.134
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB8_48
# BB#47:                                # %if.then.137
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	-304(%rbp), %r8d        # 4-byte Reload
	callq	gimp_edit_selection_tool_start
	jmp	.LBB8_58
.LBB8_48:                               # %if.else.139
	movq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB8_50
# BB#49:                                # %if.then.148
	movl	$0, -180(%rbp)
	jmp	.LBB8_55
.LBB8_50:                               # %if.else.149
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_53
# BB#51:                                # %land.lhs.true.152
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB8_53
# BB#52:                                # %if.then.157
	movl	$1, -180(%rbp)
	jmp	.LBB8_54
.LBB8_53:                               # %if.else.158
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB8_54:                               # %if.end.160
	jmp	.LBB8_55
.LBB8_55:                               # %if.end.161
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB8_57
# BB#56:                                # %if.then.164
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movl	$6, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	gimp_edit_selection_tool_start
.LBB8_57:                               # %if.end.166
	jmp	.LBB8_58
.LBB8_58:                               # %if.end.167
	jmp	.LBB8_59
.LBB8_59:                               # %if.end.168
	jmp	.LBB8_60
.LBB8_60:                               # %sw.epilog
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_move_tool_button_press, .Lfunc_end8-gimp_move_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_button_release,@function
gimp_move_tool_button_release:          # @gimp_move_tool_button_release
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_move_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-48(%rbp), %rax
	cmpl	$0, 264(%rax)
	je	.LBB9_29
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tool_pop_status
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	gimp_tool_control_set_scroll_lock
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	gimp_tool_control_set_precision
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	cmpl	$1, -28(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then.11
	movq	-48(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-48(%rbp), %rax
	movl	$-2147483648, 268(%rax) # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rax
	movl	$2, 272(%rax)
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_selection_resume
	jmp	.LBB9_43
.LBB9_3:                                # %if.end
	movq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-92(%rbp), %r8
	callq	gimp_display_shell_untransform_viewport
	movq	-48(%rbp), %rcx
	movl	272(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB9_4
	jmp	.LBB9_44
.LBB9_44:                               # %if.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB9_8
	jmp	.LBB9_12
.LBB9_4:                                # %sw.bb
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	cmpl	-84(%rbp), %ecx
	jl	.LBB9_6
# BB#5:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movl	-84(%rbp), %edx
	addl	-92(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB9_7
.LBB9_6:                                # %if.then.18
	movl	$1, -76(%rbp)
.LBB9_7:                                # %if.end.19
	jmp	.LBB9_13
.LBB9_8:                                # %sw.bb.20
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	cmpl	-80(%rbp), %ecx
	jl	.LBB9_10
# BB#9:                                 # %lor.lhs.false.23
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movl	-80(%rbp), %edx
	addl	-88(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB9_11
.LBB9_10:                               # %if.then.27
	movl	$1, -76(%rbp)
.LBB9_11:                               # %if.end.28
	jmp	.LBB9_13
.LBB9_12:                               # %sw.default
	jmp	.LBB9_13
.LBB9_13:                               # %sw.epilog
	cmpl	$0, -76(%rbp)
	je	.LBB9_17
# BB#14:                                # %if.then.30
	movq	-48(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB9_16
# BB#15:                                # %if.then.32
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	256(%rax), %rsi
	callq	gimp_image_remove_guide
	movq	-48(%rbp), %rax
	movq	$0, 256(%rax)
.LBB9_16:                               # %if.end.35
	jmp	.LBB9_26
.LBB9_17:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB9_19
# BB#18:                                # %if.then.38
	movl	$1, %ecx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	256(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	268(%rax), %edx
	callq	gimp_image_move_guide
	jmp	.LBB9_25
.LBB9_19:                               # %if.else.41
	movq	-48(%rbp), %rax
	movl	272(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB9_20
	jmp	.LBB9_45
.LBB9_45:                               # %if.else.41
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB9_21
	jmp	.LBB9_22
.LBB9_20:                               # %sw.bb.43
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	268(%rax), %esi
	callq	gimp_image_add_hguide
	movq	-48(%rbp), %rdi
	movq	%rax, 256(%rdi)
	jmp	.LBB9_24
.LBB9_21:                               # %sw.bb.47
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	268(%rax), %esi
	callq	gimp_image_add_vguide
	movq	-48(%rbp), %rdi
	movq	%rax, 256(%rdi)
	jmp	.LBB9_24
.LBB9_22:                               # %sw.default.51
	jmp	.LBB9_23
.LBB9_23:                               # %do.body
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$426, %edx              # imm = 0x1AA
	movabsq	$.L__func__.gimp_move_tool_button_release, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB9_24:                               # %sw.epilog.52
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.53
	jmp	.LBB9_26
.LBB9_26:                               # %if.end.54
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_selection_resume
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
	movq	-48(%rbp), %rdi
	movl	$0, 264(%rdi)
	movq	-48(%rbp), %rdi
	movl	$-2147483648, 268(%rdi) # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rdi
	movl	$2, 272(%rdi)
	movq	-48(%rbp), %rdi
	cmpq	$0, 256(%rdi)
	je	.LBB9_28
# BB#27:                                # %if.then.60
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB9_28:                               # %if.end.63
	jmp	.LBB9_43
.LBB9_29:                               # %if.else.64
	movl	$0, -96(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 568(%rax)
	je	.LBB9_31
# BB#30:                                # %lor.lhs.false.66
	cmpl	$1, -28(%rbp)
	jne	.LBB9_36
.LBB9_31:                               # %if.then.68
	movq	-48(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB9_33
# BB#32:                                # %if.then.70
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	280(%rax), %rsi
	callq	gimp_image_set_active_layer
	movq	-48(%rbp), %rsi
	movq	$0, 280(%rsi)
	movl	$1, -96(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB9_33:                               # %if.end.74
	movq	-48(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB9_35
# BB#34:                                # %if.then.76
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	288(%rax), %rsi
	callq	gimp_image_set_active_vectors
	movq	-48(%rbp), %rsi
	movq	$0, 288(%rsi)
	movl	$1, -96(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB9_35:                               # %if.end.80
	jmp	.LBB9_36
.LBB9_36:                               # %if.end.81
	cmpl	$1, -28(%rbp)
	je	.LBB9_40
# BB#37:                                # %if.then.83
	movq	-48(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB9_39
# BB#38:                                # %if.then.85
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	floating_sel_anchor
	movl	$1, -96(%rbp)
.LBB9_39:                               # %if.end.87
	jmp	.LBB9_40
.LBB9_40:                               # %if.end.88
	cmpl	$0, -96(%rbp)
	je	.LBB9_42
# BB#41:                                # %if.then.90
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
.LBB9_42:                               # %if.end.91
	jmp	.LBB9_43
.LBB9_43:                               # %if.end.92
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_move_tool_button_release, .Lfunc_end9-gimp_move_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_motion,@function
gimp_move_tool_motion:                  # @gimp_move_tool_motion
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_move_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 264(%rax)
	je	.LBB10_30
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	cmpl	$0, -52(%rbp)
	jl	.LBB10_5
# BB#2:                                 # %lor.lhs.false
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jge	.LBB10_5
# BB#3:                                 # %lor.lhs.false.6
	cmpl	$0, -56(%rbp)
	jl	.LBB10_5
# BB#4:                                 # %lor.lhs.false.8
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	300(%rcx), %eax
	jl	.LBB10_6
.LBB10_5:                               # %if.then.10
	movq	-40(%rbp), %rax
	movl	$-2147483648, 268(%rax) # imm = 0xFFFFFFFF80000000
	movl	$1, -60(%rbp)
	jmp	.LBB10_20
.LBB10_6:                               # %if.else
	movq	-40(%rbp), %rax
	cmpl	$0, 272(%rax)
	jne	.LBB10_8
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 268(%rax)
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.18
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 268(%rax)
.LBB10_9:                               # %if.end
	movq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-76(%rbp), %r8
	callq	gimp_display_shell_untransform_viewport
	movq	-40(%rbp), %rcx
	movl	272(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB10_10
	jmp	.LBB10_31
.LBB10_31:                              # %if.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB10_14
	jmp	.LBB10_18
.LBB10_10:                              # %sw.bb
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jl	.LBB10_12
# BB#11:                                # %lor.lhs.false.27
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movl	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB10_13
.LBB10_12:                              # %if.then.31
	movl	$1, -60(%rbp)
.LBB10_13:                              # %if.end.32
	jmp	.LBB10_19
.LBB10_14:                              # %sw.bb.33
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	cmpl	-64(%rbp), %ecx
	jl	.LBB10_16
# BB#15:                                # %lor.lhs.false.37
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movl	-64(%rbp), %edx
	addl	-72(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB10_17
.LBB10_16:                              # %if.then.42
	movl	$1, -60(%rbp)
.LBB10_17:                              # %if.end.43
	jmp	.LBB10_19
.LBB10_18:                              # %sw.default
	jmp	.LBB10_19
.LBB10_19:                              # %sw.epilog
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.44
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	cmpl	$0, -60(%rbp)
	je	.LBB10_25
# BB#21:                                # %if.then.48
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	cmpq	$0, 256(%rax)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	je	.LBB10_23
# BB#22:                                # %cond.true
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB10_24
.LBB10_23:                              # %cond.false
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB10_24:                              # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_push_status
	jmp	.LBB10_29
.LBB10_25:                              # %if.else.52
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	cmpq	$0, 256(%rax)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	je	.LBB10_27
# BB#26:                                # %cond.true.55
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB10_28
.LBB10_27:                              # %cond.false.57
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB10_28:                              # %cond.end.59
	movq	-160(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-40(%rbp), %rsi
	cmpl	$0, 272(%rsi)
	cmovel	%edx, %ecx
	movq	-40(%rbp), %rsi
	cvtsi2sdl	268(%rsi), %xmm0
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_push_status_length
.LBB10_29:                              # %if.end.67
	jmp	.LBB10_30
.LBB10_30:                              # %if.end.68
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_move_tool_motion, .Lfunc_end10-gimp_move_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_key_press,@function
gimp_move_tool_key_press:               # @gimp_move_tool_key_press
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_move_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	352(%rax), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_edit_selection_tool_translate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_move_tool_key_press, .Lfunc_end11-gimp_move_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_modifier_key,@function
gimp_move_tool_modifier_key:            # @gimp_move_tool_modifier_key
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_move_tool_get_type
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
	callq	gimp_move_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rdi
	cmpl	$0, 356(%rdi)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB12_20
.LBB12_2:                               # %if.else
	cmpl	$8, -12(%rbp)
	je	.LBB12_4
# BB#3:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB12_19
.LBB12_4:                               # %if.then.10
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB12_8
# BB#5:                                 # %if.then.12
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	orl	$8, %eax
	movl	-92(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	movl	-88(%rbp), %eax         # 4-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB12_7
# BB#6:                                 # %if.then.15
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 276(%rax)
.LBB12_7:                               # %if.end
	jmp	.LBB12_11
.LBB12_8:                               # %if.else.17
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	orl	$8, %eax
	movl	-96(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_10
# BB#9:                                 # %if.then.22
	movq	-40(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB12_10:                              # %if.end.24
	jmp	.LBB12_11
.LBB12_11:                              # %if.end.25
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB12_13
# BB#12:                                # %if.then.28
	movl	$1, -52(%rbp)
	jmp	.LBB12_16
.LBB12_13:                              # %if.else.29
	movl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-100(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB12_15
# BB#14:                                # %if.then.33
	movl	$2, -52(%rbp)
.LBB12_15:                              # %if.end.34
	jmp	.LBB12_16
.LBB12_16:                              # %if.end.35
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	352(%rcx), %eax
	je	.LBB12_18
# BB#17:                                # %if.then.38
	movabsq	$.L.str.16, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB12_18:                              # %if.end.39
	jmp	.LBB12_19
.LBB12_19:                              # %if.end.40
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.41
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_move_tool_modifier_key, .Lfunc_end12-gimp_move_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_oper_update,@function
gimp_move_tool_oper_update:             # @gimp_move_tool_oper_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_move_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_move_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB13_5
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 356(%rax)
	jne	.LBB13_5
# BB#2:                                 # %land.lhs.true.9
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_get_show_guides
	cmpl	$0, %eax
	je	.LBB13_5
# BB#3:                                 # %land.lhs.true.12
	cmpl	$0, -24(%rbp)
	je	.LBB13_5
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm2
	movq	-56(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvtsi2sdl	-76(%rbp), %xmm3
	movq	-56(%rbp), %rax
	divsd	208(%rax), %xmm3
	callq	gimp_image_find_guide
	movq	%rax, -72(%rbp)
.LBB13_5:                               # %if.end
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB13_12
# BB#6:                                 # %if.then.21
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-88(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB13_9
# BB#7:                                 # %land.lhs.true.26
	movq	-88(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB13_9
# BB#8:                                 # %if.then.30
	movq	-88(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB13_9:                               # %if.end.31
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-88(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB13_11
# BB#10:                                # %if.then.35
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_draw_tool_start
.LBB13_11:                              # %if.end.36
	movq	-88(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB13_12:                              # %if.end.37
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_move_tool_oper_update, .Lfunc_end13-gimp_move_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_cursor_update,@function
gimp_move_tool_cursor_update:           # @gimp_move_tool_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_move_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movl	$1025, -60(%rbp)        # imm = 0x401
	movl	$11, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$2, 352(%rax)
	jne	.LBB14_10
# BB#1:                                 # %if.then
	movl	$6, -64(%rbp)
	movl	$5, -68(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 356(%rax)
	je	.LBB14_5
# BB#2:                                 # %if.then.7
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	cmpq	$0, %rax
	jne	.LBB14_4
# BB#3:                                 # %if.then.10
	movl	$1, -68(%rbp)
.LBB14_4:                               # %if.end
	jmp	.LBB14_9
.LBB14_5:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$7, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	callq	gimp_draw_tool_on_vectors
	cmpl	$0, %eax
	je	.LBB14_7
# BB#6:                                 # %if.then.15
	movl	$36, -64(%rbp)
	jmp	.LBB14_8
.LBB14_7:                               # %if.else.16
	movl	$1, -68(%rbp)
.LBB14_8:                               # %if.end.17
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.18
	jmp	.LBB14_34
.LBB14_10:                              # %if.else.19
	movq	-40(%rbp), %rax
	cmpl	$1, 352(%rax)
	jne	.LBB14_14
# BB#11:                                # %if.then.22
	movl	$1, -64(%rbp)
	movl	$5, -68(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB14_13
# BB#12:                                # %if.then.26
	movl	$1, -68(%rbp)
.LBB14_13:                              # %if.end.27
	jmp	.LBB14_33
.LBB14_14:                              # %if.else.28
	movq	-40(%rbp), %rax
	cmpl	$0, 356(%rax)
	je	.LBB14_18
# BB#15:                                # %if.then.31
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	cmpq	$0, %rax
	jne	.LBB14_17
# BB#16:                                # %if.then.34
	movl	$1, -68(%rbp)
.LBB14_17:                              # %if.end.35
	jmp	.LBB14_32
.LBB14_18:                              # %if.else.36
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_get_show_guides
	cmpl	$0, %eax
	je	.LBB14_21
# BB#19:                                # %land.lhs.true
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-84(%rbp), %xmm2
	movq	-48(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvtsi2sdl	-84(%rbp), %xmm3
	movq	-48(%rbp), %rax
	divsd	208(%rax), %xmm3
	callq	gimp_image_find_guide
	cmpq	$0, %rax
	je	.LBB14_21
# BB#20:                                # %if.then.44
	movl	$36, -64(%rbp)
	movl	$5, -68(%rbp)
	jmp	.LBB14_31
.LBB14_21:                              # %if.else.45
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %edx
	callq	gimp_image_pick_layer
	movq	%rax, -80(%rbp)
	cmpq	$0, %rax
	je	.LBB14_29
# BB#22:                                # %if.then.52
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB14_25
# BB#23:                                # %land.lhs.true.55
	movq	-80(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	jne	.LBB14_25
# BB#24:                                # %if.then.58
	movl	$11, -64(%rbp)
	movl	$8, -68(%rbp)
	jmp	.LBB14_28
.LBB14_25:                              # %if.else.59
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_layer
	movq	-128(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB14_27
# BB#26:                                # %if.then.63
	movl	$36, -64(%rbp)
	movl	$5, -68(%rbp)
.LBB14_27:                              # %if.end.64
	jmp	.LBB14_28
.LBB14_28:                              # %if.end.65
	jmp	.LBB14_30
.LBB14_29:                              # %if.else.66
	movl	$1, -68(%rbp)
.LBB14_30:                              # %if.end.67
	jmp	.LBB14_31
.LBB14_31:                              # %if.end.68
	jmp	.LBB14_32
.LBB14_32:                              # %if.end.69
	jmp	.LBB14_33
.LBB14_33:                              # %if.end.70
	jmp	.LBB14_34
.LBB14_34:                              # %if.end.71
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_tool_control_set_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-64(%rbp), %esi
	callq	gimp_tool_control_set_tool_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_move_tool_parent_class, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_move_tool_cursor_update, .Lfunc_end14-gimp_move_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_move_tool_draw,@function
gimp_move_tool_draw:                    # @gimp_move_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_move_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_guide_get_orientation
	movq	-16(%rbp), %rdi
	movq	256(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_guide_get_position
	movl	$1, %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_draw_tool_add_guide
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 264(%rax)
	je	.LBB15_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$-2147483648, 268(%rax) # imm = 0xFFFFFFFF80000000
	je	.LBB15_5
# BB#4:                                 # %if.then.8
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	272(%rax), %esi
	movq	-16(%rbp), %rax
	movl	268(%rax), %edx
	callq	gimp_draw_tool_add_guide
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB15_5:                               # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_move_tool_draw, .Lfunc_end15-gimp_move_tool_draw
	.cfi_endproc

	.type	gimp_move_tool_get_type.g_define_type_id__volatile,@object # @gimp_move_tool_get_type.g_define_type_id__volatile
	.local	gimp_move_tool_get_type.g_define_type_id__volatile
	.comm	gimp_move_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMoveTool"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-move-tool"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tool\004Move"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Move Tool: Move layers, selections, and other objects"
	.size	.L.str.3, 54

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Move"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"M"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-move"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Tools"
	.size	.L.str.7, 11

	.type	.L__func__.gimp_move_tool_start_hguide,@object # @__func__.gimp_move_tool_start_hguide
.L__func__.gimp_move_tool_start_hguide:
	.asciz	"gimp_move_tool_start_hguide"
	.size	.L__func__.gimp_move_tool_start_hguide, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_MOVE_TOOL (tool)"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.9, 26

	.type	.L__func__.gimp_move_tool_start_vguide,@object # @__func__.gimp_move_tool_start_vguide
.L__func__.gimp_move_tool_start_vguide:
	.asciz	"gimp_move_tool_start_vguide"
	.size	.L__func__.gimp_move_tool_start_vguide, 28

	.type	gimp_move_tool_parent_class,@object # @gimp_move_tool_parent_class
	.local	gimp_move_tool_parent_class
	.comm	gimp_move_tool_parent_class,8,8
	.type	GimpMoveTool_private_offset,@object # @GimpMoveTool_private_offset
	.local	GimpMoveTool_private_offset
	.comm	GimpMoveTool_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Move Guide: "
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpmovetool.c"
	.size	.L.str.11, 15

	.type	.L__func__.gimp_move_tool_button_release,@object # @__func__.gimp_move_tool_button_release
.L__func__.gimp_move_tool_button_release:
	.asciz	"gimp_move_tool_button_release"
	.size	.L__func__.gimp_move_tool_button_release, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Remove Guide"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Cancel Guide"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Add Guide: "
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"move-current"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"move-type"
	.size	.L.str.16, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
