	.text
	.file	"gimpmagnifytool.bc"
	.globl	gimp_magnify_tool_get_type
	.align	16, 0x90
	.type	gimp_magnify_tool_get_type,@function
gimp_magnify_tool_get_type:             # @gimp_magnify_tool_get_type
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
	movq	gimp_magnify_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_magnify_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_magnify_tool_class_intern_init, %rdi
	movabsq	$gimp_magnify_tool_init, %rdx
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
	movabsq	$gimp_magnify_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_magnify_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_magnify_tool_get_type, .Lfunc_end0-gimp_magnify_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_class_intern_init,@function
gimp_magnify_tool_class_intern_init:    # @gimp_magnify_tool_class_intern_init
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
	movq	%rax, gimp_magnify_tool_parent_class
	cmpl	$0, GimpMagnifyTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMagnifyTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_magnify_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_magnify_tool_class_intern_init, .Lfunc_end1-gimp_magnify_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_init,@function
gimp_magnify_tool_init:                 # @gimp_magnify_tool_init
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
	callq	gimp_tool_control_set_scroll_lock
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_handle_empty_image
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_click
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_snap_to
	movl	$12, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor_modifier
	movl	$3, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_toggle_cursor_modifier
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 248(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 256(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_magnify_tool_init, .Lfunc_end2-gimp_magnify_tool_init
	.cfi_endproc

	.globl	gimp_magnify_tool_register
	.align	16, 0x90
	.type	gimp_magnify_tool_register,@function
gimp_magnify_tool_register:             # @gimp_magnify_tool_register
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
	callq	gimp_magnify_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_magnify_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_magnify_options_gui, %rdx
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
	.size	gimp_magnify_tool_register, .Lfunc_end3-gimp_magnify_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_class_init,@function
gimp_magnify_tool_class_init:           # @gimp_magnify_tool_class_init
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
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_magnify_tool_draw, %rsi
	movabsq	$gimp_magnify_tool_cursor_update, %rdi
	movabsq	$gimp_magnify_tool_modifier_key, %rcx
	movabsq	$gimp_magnify_tool_motion, %rdx
	movabsq	$gimp_magnify_tool_button_release, %r8
	movabsq	$gimp_magnify_tool_button_press, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 192(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 200(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 232(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_magnify_tool_class_init, .Lfunc_end4-gimp_magnify_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_button_press,@function
gimp_magnify_tool_button_press:         # @gimp_magnify_tool_button_press
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
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_magnify_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm1, 248(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm1, 256(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_magnify_tool_button_press, .Lfunc_end5-gimp_magnify_tool_button_press
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_magnify_tool_button_release,@function
gimp_magnify_tool_button_release:       # @gimp_magnify_tool_button_release
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_magnify_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_magnify_options_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movl	-28(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_39
.LBB6_39:                               # %entry
	movl	-228(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$1, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	ja	.LBB6_37
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	xorps	%xmm0, %xmm0
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	356(%rax), %esi
	callq	gimp_display_shell_scale
	jmp	.LBB6_38
.LBB6_2:                                # %sw.bb.11
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -152(%rbp)
	movq	-48(%rbp), %rax
	ucomisd	264(%rax), %xmm0
	jbe	.LBB6_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	264(%rax), %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	movq	-48(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB6_5:                                # %cond.end
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -72(%rbp)
	movq	-48(%rbp), %rax
	ucomisd	272(%rax), %xmm1
	jbe	.LBB6_7
# BB#6:                                 # %cond.true.15
	movq	-48(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	272(%rax), %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false.18
	movq	-48(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB6_8:                                # %cond.end.20
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -80(%rbp)
	movq	-48(%rbp), %rax
	ucomisd	264(%rax), %xmm1
	jbe	.LBB6_10
# BB#9:                                 # %cond.true.24
	movq	-48(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false.26
	movq	-48(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB6_11:                               # %cond.end.28
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -104(%rbp)
	movq	-48(%rbp), %rax
	ucomisd	272(%rax), %xmm1
	jbe	.LBB6_13
# BB#12:                                # %cond.true.32
	movq	-48(%rbp), %rax
	movsd	272(%rax), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false.35
	movq	-48(%rbp), %rax
	movsd	272(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB6_14:                               # %cond.end.37
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	ucomisd	-104(%rbp), %xmm1
	jbe	.LBB6_16
# BB#15:                                # %cond.true.42
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false.43
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB6_17:                               # %cond.end.44
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	ucomisd	-112(%rbp), %xmm1
	jbe	.LBB6_19
# BB#18:                                # %cond.true.47
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %cond.false.48
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB6_20:                               # %cond.end.49
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	%xmm0, -120(%rbp)
	movq	-64(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	movsd	200(%rax), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-64(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm0
	movsd	208(%rax), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-56(%rbp), %rax
	movl	356(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	je	.LBB6_21
	jmp	.LBB6_40
.LBB6_40:                               # %cond.end.49
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB6_25
	jmp	.LBB6_29
.LBB6_21:                               # %sw.bb.55
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-104(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-112(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_23
# BB#22:                                # %cond.true.60
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-104(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB6_24
.LBB6_23:                               # %cond.false.62
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB6_24:                               # %cond.end.64
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB6_30
.LBB6_25:                               # %sw.bb.66
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-136(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-144(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_27
# BB#26:                                # %cond.true.71
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false.73
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-144(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB6_28:                               # %cond.end.75
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB6_30
.LBB6_29:                               # %sw.default
	jmp	.LBB6_30
.LBB6_30:                               # %sw.epilog
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-152(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-120(%rbp), %xmm0
	jne	.LBB6_31
	jp	.LBB6_31
	jmp	.LBB6_36
.LBB6_31:                               # %if.then
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-168(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_get_resolution
	movq	-64(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	callq	gimp_display_shell_get_screen_resolution
	movq	-56(%rbp), %rax
	movl	356(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	je	.LBB6_32
	jmp	.LBB6_41
.LBB6_41:                               # %if.then
	movl	-308(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	je	.LBB6_33
	jmp	.LBB6_34
.LBB6_32:                               # %sw.bb.81
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-88(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	mulsd	-184(%rbp), %xmm1
	divsd	-168(%rbp), %xmm1
	movq	-64(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -156(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-96(%rbp), %xmm1
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	-192(%rbp), %xmm0
	divsd	-176(%rbp), %xmm0
	movq	-64(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -160(%rbp)
	jmp	.LBB6_35
.LBB6_33:                               # %sw.bb.104
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm2
	movq	-64(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movq	-64(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvttsd2si	%xmm2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm2, %xmm1
	mulsd	-184(%rbp), %xmm1
	divsd	-168(%rbp), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-88(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movq	-64(%rbp), %rax
	mulsd	200(%rax), %xmm2
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -336(%rbp)       # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-64(%rbp), %rax
	subl	188(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -156(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	cvtsi2sdl	192(%rax), %xmm1
	movq	-64(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm2
	movsd	-328(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-64(%rbp), %rax
	divsd	208(%rax), %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	-192(%rbp), %xmm0
	divsd	-176(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-96(%rbp), %xmm1
	divsd	%xmm3, %xmm1
	movq	-64(%rbp), %rax
	mulsd	208(%rax), %xmm1
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-64(%rbp), %rax
	subl	192(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -160(%rbp)
	jmp	.LBB6_35
.LBB6_34:                               # %sw.default.155
	jmp	.LBB6_35
.LBB6_35:                               # %sw.epilog.156
	movq	-64(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-156(%rbp), %esi
	movl	-160(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	352(%rax), %ecx
	callq	gimp_display_shell_scale_by_values
.LBB6_36:                               # %if.end
	jmp	.LBB6_38
.LBB6_37:                               # %sw.default.157
	jmp	.LBB6_38
.LBB6_38:                               # %sw.epilog.158
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_magnify_tool_button_release, .Lfunc_end6-gimp_magnify_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_motion,@function
gimp_magnify_tool_motion:               # @gimp_magnify_tool_motion
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_magnify_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	248(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	256(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_magnify_tool_update_items
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_magnify_tool_motion, .Lfunc_end7-gimp_magnify_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_modifier_key,@function
gimp_magnify_tool_modifier_key:         # @gimp_magnify_tool_modifier_key
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
	callq	gimp_magnify_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB8_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	356(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_7
.LBB8_7:                                # %if.then
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_4
.LBB8_2:                                # %sw.bb
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB8_5
.LBB8_3:                                # %sw.bb.6
	movabsq	$.L.str.7, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB8_5
.LBB8_4:                                # %sw.default
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	jmp	.LBB8_6
.LBB8_6:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_magnify_tool_modifier_key, .Lfunc_end8-gimp_magnify_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_cursor_update,@function
gimp_magnify_tool_cursor_update:        # @gimp_magnify_tool_cursor_update
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
	callq	gimp_magnify_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	cmpl	$1, 356(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gimp_tool_control_set_toggled
	movq	gimp_magnify_tool_parent_class, %rax
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
.Lfunc_end9:
	.size	gimp_magnify_tool_cursor_update, .Lfunc_end9-gimp_magnify_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_draw,@function
gimp_magnify_tool_draw:                 # @gimp_magnify_tool_draw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_magnify_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	272(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_rectangle
	movq	-16(%rbp), %rdi
	movq	%rax, 280(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_magnify_tool_draw, .Lfunc_end10-gimp_magnify_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_magnify_tool_update_items,@function
gimp_magnify_tool_update_items:         # @gimp_magnify_tool_update_items
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	272(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_canvas_rectangle_set
.LBB11_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_magnify_tool_update_items, .Lfunc_end11-gimp_magnify_tool_update_items
	.cfi_endproc

	.type	gimp_magnify_tool_get_type.g_define_type_id__volatile,@object # @gimp_magnify_tool_get_type.g_define_type_id__volatile
	.local	gimp_magnify_tool_get_type.g_define_type_id__volatile
	.comm	gimp_magnify_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMagnifyTool"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-zoom-tool"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Zoom"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Zoom Tool: Adjust the zoom level"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Zoom"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Z"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-zoom"
	.size	.L.str.6, 15

	.type	gimp_magnify_tool_parent_class,@object # @gimp_magnify_tool_parent_class
	.local	gimp_magnify_tool_parent_class
	.comm	gimp_magnify_tool_parent_class,8,8
	.type	GimpMagnifyTool_private_offset,@object # @GimpMagnifyTool_private_offset
	.local	GimpMagnifyTool_private_offset
	.comm	GimpMagnifyTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"zoom-type"
	.size	.L.str.7, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
