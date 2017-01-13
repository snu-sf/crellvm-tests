	.text
	.file	"gimpcagetool.bc"
	.globl	gimp_cage_tool_get_type
	.align	16, 0x90
	.type	gimp_cage_tool_get_type,@function
gimp_cage_tool_get_type:                # @gimp_cage_tool_get_type
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
	movq	gimp_cage_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_cage_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_cage_tool_class_intern_init, %rdi
	movl	$376, %r8d              # imm = 0x178
	movabsq	$gimp_cage_tool_init, %rcx
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
	movabsq	$gimp_cage_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_cage_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cage_tool_get_type, .Lfunc_end0-gimp_cage_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_class_intern_init,@function
gimp_cage_tool_class_intern_init:       # @gimp_cage_tool_class_intern_init
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
	movq	%rax, gimp_cage_tool_parent_class
	cmpl	$0, GimpCageTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCageTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_cage_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cage_tool_class_intern_init, .Lfunc_end1-gimp_cage_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_init,@function
gimp_cage_tool_init:                    # @gimp_cage_tool_init
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
	callq	gimp_tool_control_set_preserve
	movl	$841, %esi              # imm = 0x349
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_dirty_mask
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_click
	movl	$17, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	callq	gimp_cage_config_get_type
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rsi
	movq	%rax, 248(%rsi)
	movq	-8(%rbp), %rax
	movl	$-1, 312(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 360(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cage_tool_init, .Lfunc_end2-gimp_cage_tool_init
	.cfi_endproc

	.globl	gimp_cage_tool_register
	.align	16, 0x90
	.type	gimp_cage_tool_register,@function
gimp_cage_tool_register:                # @gimp_cage_tool_register
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
	callq	gimp_cage_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_cage_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_cage_options_gui, %rdx
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
	.size	gimp_cage_tool_register, .Lfunc_end3-gimp_cage_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_class_init,@function
gimp_cage_tool_class_init:              # @gimp_cage_tool_class_init
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
	subq	$40, %rsp
.Ltmp19:
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
	movabsq	$gimp_cage_tool_draw, %rsi
	movabsq	$gimp_cage_tool_oper_update, %rdi
	movabsq	$gimp_cage_tool_cursor_update, %rcx
	movabsq	$gimp_cage_tool_control, %rdx
	movabsq	$gimp_cage_tool_motion, %r8
	movabsq	$gimp_cage_tool_key_press, %r9
	movabsq	$gimp_cage_tool_button_release, %r10
	movabsq	$gimp_cage_tool_button_press, %r11
	movabsq	$gimp_cage_tool_options_notify, %rbx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 272(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 184(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 256(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cage_tool_class_init, .Lfunc_end4-gimp_cage_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_options_notify,@function
gimp_cage_tool_options_notify:          # @gimp_cage_tool_options_notify
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	gimp_cage_tool_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	272(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_17
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.7, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_13
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.7, %rsi
	leaq	-36(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$1, -36(%rbp)
	jne	.LBB5_11
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_reset_displacement
	movq	-32(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_reverse_cage_if_needed
	movabsq	$.L.str.8, %rdi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_push_status
	movq	-32(%rbp), %rcx
	movl	$5, 360(%rcx)
	movq	-32(%rbp), %rcx
	cmpq	$0, 336(%rcx)
	jne	.LBB5_6
# BB#5:                                 # %if.then.14
	movq	-32(%rbp), %rdi
	callq	gimp_cage_tool_create_render_node
.LBB5_6:                                # %if.end.15
	movq	-32(%rbp), %rax
	cmpl	$0, 328(%rax)
	je	.LBB5_8
# BB#7:                                 # %if.then.17
	movq	-32(%rbp), %rdi
	callq	gimp_cage_tool_compute_coef
	movq	-32(%rbp), %rdi
	callq	gimp_cage_tool_render_node_update
.LBB5_8:                                # %if.end.18
	movq	-32(%rbp), %rax
	cmpq	$0, 368(%rax)
	jne	.LBB5_10
# BB#9:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_cage_tool_create_image_map
.LBB5_10:                               # %if.end.24
	movq	-32(%rbp), %rdi
	callq	gimp_cage_tool_image_map_update
	jmp	.LBB5_12
.LBB5_11:                               # %if.else
	movq	-32(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_image_map_clear
	movq	-32(%rbp), %rax
	movq	368(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_cage_tool_image_map_flush
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_tool_pop_status
	movq	-32(%rbp), %rax
	movl	$1, 360(%rax)
.LBB5_12:                               # %if.end.29
	jmp	.LBB5_16
.LBB5_13:                               # %if.else.30
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_15
# BB#14:                                # %if.then.34
	movq	-32(%rbp), %rdi
	callq	gimp_cage_tool_render_node_update
	movq	-32(%rbp), %rdi
	callq	gimp_cage_tool_image_map_update
.LBB5_15:                               # %if.end.35
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.36
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB5_17:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cage_tool_options_notify, .Lfunc_end5-gimp_cage_tool_options_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_button_press,@function
gimp_cage_tool_button_press:            # @gimp_cage_tool_button_press
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	$-1, -60(%rbp)
	movl	$-1, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_cage_tool_start
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-48(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.5
	movl	$13, %ecx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_cage_tool_is_on_handle
	movl	$13, %esi
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_cage_tool_is_on_edge
	movl	%eax, -64(%rbp)
.LBB6_4:                                # %if.end.10
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 280(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 288(%rax)
	movq	-48(%rbp), %rax
	movl	360(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_36
.LBB6_36:                               # %if.end.10
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB6_6
	jmp	.LBB6_37
.LBB6_37:                               # %if.end.10
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB6_25
	jmp	.LBB6_35
.LBB6_5:                                # %sw.bb
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm2
	subsd	%xmm2, %xmm1
	callq	gimp_cage_config_add_cage_point
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_select_point
	movq	-48(%rbp), %rax
	movl	$2, 360(%rax)
	jmp	.LBB6_35
.LBB6_6:                                # %sw.bb.20
	cmpl	$-1, -60(%rbp)
	jne	.LBB6_9
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -64(%rbp)
	jg	.LBB6_9
# BB#8:                                 # %if.then.25
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm2
	subsd	%xmm2, %xmm1
	callq	gimp_cage_config_add_cage_point
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_cage_config_get_n_points
	subl	$1, %eax
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_cage_config_select_point
	movq	-48(%rbp), %rdi
	movl	$2, 360(%rdi)
	jmp	.LBB6_24
.LBB6_9:                                # %if.else
	cmpl	$0, -60(%rbp)
	jne	.LBB6_12
# BB#10:                                # %land.lhs.true.42
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_get_n_points
	cmpl	$2, %eax
	jbe	.LBB6_12
# BB#11:                                # %if.then.47
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_select_point
	movq	-48(%rbp), %rax
	movl	$4, 360(%rax)
	jmp	.LBB6_23
.LBB6_12:                               # %if.else.50
	cmpl	$0, -60(%rbp)
	jl	.LBB6_19
# BB#13:                                # %if.then.53
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB6_15
# BB#14:                                # %if.then.55
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_cage_config_toggle_point_selection
	jmp	.LBB6_18
.LBB6_15:                               # %if.else.57
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_cage_config_point_is_selected
	cmpl	$0, %eax
	jne	.LBB6_17
# BB#16:                                # %if.then.61
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_cage_config_select_point
.LBB6_17:                               # %if.end.63
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.64
	movq	-48(%rbp), %rax
	movl	$2, 360(%rax)
	jmp	.LBB6_22
.LBB6_19:                               # %if.else.66
	cmpl	$0, -64(%rbp)
	jle	.LBB6_21
# BB#20:                                # %if.then.69
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-64(%rbp), %esi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_cage_config_insert_cage_point
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-64(%rbp), %esi
	callq	gimp_cage_config_select_point
	movq	-48(%rbp), %rax
	movl	$2, 360(%rax)
.LBB6_21:                               # %if.end.75
	jmp	.LBB6_22
.LBB6_22:                               # %if.end.76
	jmp	.LBB6_23
.LBB6_23:                               # %if.end.77
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.78
	jmp	.LBB6_35
.LBB6_25:                               # %sw.bb.79
	cmpl	$-1, -60(%rbp)
	jne	.LBB6_27
# BB#26:                                # %if.then.82
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 296(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 304(%rax)
	movq	-48(%rbp), %rax
	movl	$7, 360(%rax)
.LBB6_27:                               # %if.end.86
	cmpl	$0, -60(%rbp)
	jl	.LBB6_34
# BB#28:                                # %if.then.89
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB6_30
# BB#29:                                # %if.then.92
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_cage_config_toggle_point_selection
	jmp	.LBB6_33
.LBB6_30:                               # %if.else.94
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_cage_config_point_is_selected
	cmpl	$0, %eax
	jne	.LBB6_32
# BB#31:                                # %if.then.98
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_cage_config_select_point
.LBB6_32:                               # %if.end.100
	jmp	.LBB6_33
.LBB6_33:                               # %if.end.101
	movq	-48(%rbp), %rax
	movl	$6, 360(%rax)
.LBB6_34:                               # %if.end.103
	jmp	.LBB6_35
.LBB6_35:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cage_tool_button_press, .Lfunc_end6-gimp_cage_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_button_release,@function
gimp_cage_tool_button_release:          # @gimp_cage_tool_button_release
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	cmpl	$1, -28(%rbp)
	jne	.LBB7_8
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	360(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$5, %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB7_7
# BB#37:                                # %if.then
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_2:                                # %sw.bb
	movq	-48(%rbp), %rax
	movl	$1, 360(%rax)
	jmp	.LBB7_7
.LBB7_3:                                # %sw.bb.10
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_remove_last_cage_point
	movq	-48(%rbp), %rax
	movl	$1, 360(%rax)
	jmp	.LBB7_7
.LBB7_4:                                # %sw.bb.12
	movq	-48(%rbp), %rax
	movl	$1, 360(%rax)
	jmp	.LBB7_7
.LBB7_5:                                # %sw.bb.14
	movq	-48(%rbp), %rdi
	callq	gimp_cage_tool_image_map_update
	movq	-48(%rbp), %rdi
	movl	$5, 360(%rdi)
	jmp	.LBB7_7
.LBB7_6:                                # %sw.bb.16
	movq	-48(%rbp), %rax
	movl	$5, 360(%rax)
.LBB7_7:                                # %sw.epilog
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_reset_displacement
	jmp	.LBB7_35
.LBB7_8:                                # %if.else
	movq	-48(%rbp), %rax
	movl	360(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$5, %ecx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	ja	.LBB7_34
# BB#36:                                # %if.else
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_9:                                # %sw.bb.20
	movq	-48(%rbp), %rax
	movl	$1, 328(%rax)
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_commit_displacement
	cmpl	$2, -28(%rbp)
	jne	.LBB7_11
# BB#10:                                # %if.then.23
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB7_11:                               # %if.end
	jmp	.LBB7_34
.LBB7_12:                               # %sw.bb.24
	movq	-48(%rbp), %rax
	movl	$1, 328(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 360(%rax)
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_commit_displacement
	jmp	.LBB7_34
.LBB7_13:                               # %sw.bb.28
	leaq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	296(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jbe	.LBB7_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movsd	296(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB7_16
.LBB7_15:                               # %cond.false
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB7_16:                               # %cond.end
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	cvtsi2sdl	256(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movl	%edx, (%rcx)
	addq	$4, %rax
	movq	-48(%rbp), %rsi
	movsd	304(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jbe	.LBB7_18
# BB#17:                                # %cond.true.37
	movq	-48(%rbp), %rax
	movsd	304(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB7_19
.LBB7_18:                               # %cond.false.39
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB7_19:                               # %cond.end.41
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rdx
	movsd	296(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	subsd	(%rdx), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rdx
	movsd	304(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	subsd	8(%rdx), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB7_21
# BB#20:                                # %if.then.56
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	gimp_cage_config_select_add_area
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.58
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	gimp_cage_config_select_area
.LBB7_22:                               # %if.end.60
	movq	-48(%rbp), %rax
	movl	$1, 360(%rax)
	jmp	.LBB7_34
.LBB7_23:                               # %sw.bb.62
	movq	-48(%rbp), %rax
	movl	$5, 360(%rax)
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_commit_displacement
	movq	-48(%rbp), %rdi
	callq	gimp_cage_tool_image_map_update
	jmp	.LBB7_34
.LBB7_24:                               # %sw.bb.65
	leaq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	296(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jbe	.LBB7_26
# BB#25:                                # %cond.true.72
	movq	-48(%rbp), %rax
	movsd	296(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB7_27
.LBB7_26:                               # %cond.false.74
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB7_27:                               # %cond.end.76
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	cvtsi2sdl	256(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movl	%edx, (%rcx)
	addq	$4, %rax
	movq	-48(%rbp), %rsi
	movsd	304(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jbe	.LBB7_29
# BB#28:                                # %cond.true.87
	movq	-48(%rbp), %rax
	movsd	304(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB7_30
.LBB7_29:                               # %cond.false.89
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB7_30:                               # %cond.end.91
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rdx
	movsd	296(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	subsd	(%rdx), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rdx
	movsd	304(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	subsd	8(%rdx), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	movl	%eax, -76(%rbp)
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB7_32
# BB#31:                                # %if.then.111
	movl	$1, %esi
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	gimp_cage_config_select_add_area
	jmp	.LBB7_33
.LBB7_32:                               # %if.else.113
	movl	$1, %esi
	movq	-48(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	gimp_cage_config_select_area
.LBB7_33:                               # %if.end.115
	movq	-48(%rbp), %rax
	movl	$5, 360(%rax)
.LBB7_34:                               # %sw.epilog.117
	jmp	.LBB7_35
.LBB7_35:                               # %if.end.118
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cage_tool_button_release, .Lfunc_end7-gimp_cage_tool_button_release
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_12
	.quad	.LBB7_13
	.quad	.LBB7_9
	.quad	.LBB7_34
	.quad	.LBB7_23
	.quad	.LBB7_24
.LJTI7_1:
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_2
	.quad	.LBB7_7
	.quad	.LBB7_5
	.quad	.LBB7_6

	.text
	.align	16, 0x90
	.type	gimp_cage_tool_key_press,@function
gimp_cage_tool_key_press:               # @gimp_cage_tool_key_press
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 248(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_23
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65076, %edx            # imm = 0xFE34
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB8_13
	jmp	.LBB8_24
.LBB8_24:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65288, %eax            # imm = 0xFF08
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_25
.LBB8_25:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB8_13
	jmp	.LBB8_26
.LBB8_26:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB8_20
	jmp	.LBB8_27
.LBB8_27:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB8_13
	jmp	.LBB8_21
.LBB8_3:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpl	$1, 360(%rax)
	jne	.LBB8_7
# BB#4:                                 # %if.then.2
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_get_n_points
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	callq	gimp_cage_tool_remove_last_handle
.LBB8_6:                                # %if.end.7
	jmp	.LBB8_12
.LBB8_7:                                # %if.else
	movq	-40(%rbp), %rax
	cmpl	$5, 360(%rax)
	jne	.LBB8_11
# BB#8:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_remove_selected_points
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_get_n_points
	cmpl	$2, %eax
	ja	.LBB8_10
# BB#9:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movl	$1, 360(%rax)
.LBB8_10:                               # %if.end.17
	movq	-40(%rbp), %rdi
	callq	gimp_cage_tool_compute_coef
	movq	-40(%rbp), %rdi
	callq	gimp_cage_tool_render_node_update
.LBB8_11:                               # %if.end.18
	jmp	.LBB8_12
.LBB8_12:                               # %if.end.19
	movl	$1, -4(%rbp)
	jmp	.LBB8_23
.LBB8_13:                               # %sw.bb.20
	movq	-40(%rbp), %rdi
	callq	gimp_cage_tool_is_complete
	cmpl	$0, %eax
	jne	.LBB8_16
# BB#14:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gimp_cage_config_get_n_points
	cmpl	$2, %eax
	jbe	.LBB8_16
# BB#15:                                # %if.then.26
	movq	-16(%rbp), %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB8_19
.LBB8_16:                               # %if.else.28
	movq	-40(%rbp), %rax
	cmpl	$5, 360(%rax)
	jne	.LBB8_18
# BB#17:                                # %if.then.31
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-40(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_image_map_commit
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_control
.LBB8_18:                               # %if.end.36
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.37
	movl	$1, -4(%rbp)
	jmp	.LBB8_23
.LBB8_20:                               # %sw.bb.38
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_control
	movl	$1, -4(%rbp)
	jmp	.LBB8_23
.LBB8_21:                               # %sw.default
	jmp	.LBB8_22
.LBB8_22:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB8_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_cage_tool_key_press, .Lfunc_end8-gimp_cage_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_motion,@function
gimp_cage_tool_motion:                  # @gimp_cage_tool_motion
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-40(%rbp), %rax
	movl	360(%rax), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%edx, -88(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_3
.LBB9_3:                                # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_4
.LBB9_4:                                # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	352(%rax), %esi
	movq	-40(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	280(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	288(%rax), %xmm1
	callq	gimp_cage_config_add_displacement
.LBB9_2:                                # %sw.epilog
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
.Lfunc_end9:
	.size	gimp_cage_tool_motion, .Lfunc_end9-gimp_cage_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_control,@function
gimp_cage_tool_control:                 # @gimp_cage_tool_control
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
	callq	gimp_cage_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jb	.LBB10_1
	jmp	.LBB10_12
.LBB10_12:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_11
.LBB10_1:                               # %sw.bb
	jmp	.LBB10_11
.LBB10_2:                               # %sw.bb.2
	movq	-32(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	$0, 248(%rax)
.LBB10_4:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB10_6
# BB#5:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	$0, 320(%rax)
.LBB10_6:                               # %if.end.9
	movq	-32(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB10_8
# BB#7:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 344(%rax)
.LBB10_8:                               # %if.end.14
	movq	-32(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB10_10
# BB#9:                                 # %if.then.16
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-32(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_image_map_abort
	movq	-32(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
.LBB10_10:                              # %if.end.23
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 360(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.7, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB10_11:                              # %sw.epilog
	movq	gimp_cage_tool_parent_class, %rax
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
	.size	gimp_cage_tool_control, .Lfunc_end10-gimp_cage_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_cursor_update,@function
gimp_cage_tool_cursor_update:           # @gimp_cage_tool_cursor_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$2, -52(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB11_11
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	cmpl	$-1, 312(%rax)
	je	.LBB11_3
# BB#2:                                 # %if.then.8
	movl	$5, -52(%rbp)
	jmp	.LBB11_10
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpl	$-1, 316(%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB11_6
# BB#5:                                 # %if.then.11
	movl	$2, -52(%rbp)
	jmp	.LBB11_9
.LBB11_6:                               # %if.else.12
	movq	-40(%rbp), %rdi
	callq	gimp_cage_tool_is_complete
	cmpl	$0, %eax
	je	.LBB11_8
# BB#7:                                 # %if.then.15
	movl	$1, -52(%rbp)
.LBB11_8:                               # %if.end
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.16
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.17
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.18
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_cage_tool_parent_class, %rax
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
.Lfunc_end11:
	.size	gimp_cage_tool_cursor_update, .Lfunc_end11-gimp_cage_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_oper_update,@function
gimp_cage_tool_oper_update:             # @gimp_cage_tool_oper_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$13, %ecx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_cage_tool_is_on_handle
	movl	$13, %esi
	movq	-40(%rbp), %rdx
	movl	%eax, 312(%rdx)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_cage_tool_is_on_edge
	movq	-40(%rbp), %rdx
	movl	%eax, 316(%rdx)
.LBB12_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 264(%rdi)
	movq	-16(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 272(%rdi)
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_resume
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_cage_tool_oper_update, .Lfunc_end12-gimp_cage_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_draw,@function
gimp_cage_tool_draw:                    # @gimp_cage_tool_draw
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_cage_tool_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_cage_config_get_n_points
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_30
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 360(%rax)
	jne	.LBB13_4
# BB#3:                                 # %if.then.10
	jmp	.LBB13_30
.LBB13_4:                               # %if.end.11
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movq	-16(%rbp), %rdi
	callq	gimp_cage_tool_is_complete
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#5:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	352(%rax), %esi
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	gimp_cage_config_get_point_coordinate
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	272(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_line
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB13_6:                               # %if.end.20
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_pop_group
	movl	$0, -48(%rbp)
.LBB13_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB13_21
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	352(%rax), %esi
	movl	-48(%rbp), %edx
	callq	gimp_cage_config_get_point_coordinate
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm1, -128(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	cmpl	$0, -48(%rbp)
	jg	.LBB13_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_cage_tool_is_complete
	cmpl	$0, %eax
	je	.LBB13_14
.LBB13_10:                              # %if.then.39
                                        #   in Loop: Header=BB13_7 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB13_12
# BB#11:                                # %if.then.42
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB13_13
.LBB13_12:                              # %if.else
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)
.LBB13_13:                              # %if.end.45
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	352(%rax), %esi
	movl	-140(%rbp), %edx
	callq	gimp_cage_config_get_point_coordinate
	movsd	%xmm0, -160(%rbp)
	movsd	%xmm1, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm0
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movq	-8(%rbp), %rdi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_line
	movq	-8(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
.LBB13_14:                              # %if.end.63
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	312(%rcx), %eax
	jne	.LBB13_16
# BB#15:                                # %if.then.66
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	$3, -52(%rbp)
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.67
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	$2, -52(%rbp)
.LBB13_17:                              # %if.end.68
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	$13, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	-16(%rbp), %rdi
	movq	248(%rdi), %rdi
	movl	-48(%rbp), %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_cage_config_point_is_selected
	cmpl	$0, %eax
	je	.LBB13_19
# BB#18:                                # %if.then.75
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%eax, %eax
	movl	$13, %ecx
	movq	-8(%rbp), %rdi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	%eax, %r8d
	callq	gimp_draw_tool_add_handle
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB13_19:                              # %if.end.79
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_20
.LBB13_20:                              # %for.inc
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB13_7
.LBB13_21:                              # %for.end
	movq	-16(%rbp), %rax
	cmpl	$7, 360(%rax)
	je	.LBB13_23
# BB#22:                                # %lor.lhs.false.83
	movq	-16(%rbp), %rax
	cmpl	$3, 360(%rax)
	jne	.LBB13_30
.LBB13_23:                              # %if.then.87
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	296(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	jbe	.LBB13_25
# BB#24:                                # %cond.true
	movq	-16(%rbp), %rax
	movsd	296(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB13_26
.LBB13_25:                              # %cond.false
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB13_26:                              # %cond.end
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	304(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	272(%rax), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jbe	.LBB13_28
# BB#27:                                # %cond.true.96
	movq	-16(%rbp), %rax
	movsd	304(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB13_29
.LBB13_28:                              # %cond.false.98
	movq	-16(%rbp), %rax
	movsd	272(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB13_29:                              # %cond.end.100
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	296(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	264(%rax), %xmm1
	cvttsd2si	%xmm1, %edi
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	callq	abs
	cvtsi2sdl	%eax, %xmm2
	movq	-16(%rbp), %rcx
	movsd	304(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	subsd	272(%rcx), %xmm0
	cvttsd2si	%xmm0, %edi
	movsd	%xmm2, -264(%rbp)       # 8-byte Spill
	callq	abs
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm3
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_draw_tool_add_rectangle
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB13_30:                              # %if.end.115
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_cage_tool_draw, .Lfunc_end13-gimp_cage_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_create_render_node,@function
gimp_cage_tool_create_render_node:      # @gimp_cage_tool_create_render_node
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 336(%rax)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str.10, %rdi
	movabsq	$.L__func__.gimp_cage_tool_create_render_node, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_6
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	callq	gegl_node_new
	movabsq	$.L.str.12, %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gegl_node_get_input_proxy
	movabsq	$.L.str.13, %rsi
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	callq	gegl_node_get_output_proxy
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	320(%rax), %r8
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rcx
	movabsq	$.L.str.19, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %r8
	movq	248(%r8), %r8
	movq	-16(%rbp), %r11
	movl	356(%r11), %r10d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.12, %rcx
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.21, %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.12, %rcx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.21, %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.12, %rcx
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movabsq	$.L.str.22, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, 336(%r8)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, 344(%r8)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, 352(%r8)
	movq	-32(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_cage_tool_transform_progress, %rcx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_object_unref
.LBB14_6:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_cage_tool_create_render_node, .Lfunc_end14-gimp_cage_tool_create_render_node
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_compute_coef,@function
gimp_cage_tool_compute_coef:            # @gimp_cage_tool_compute_coef
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
.LBB15_2:                               # %if.end
	movabsq	$.L.str.26, %rdi
	callq	babl_type
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_cage_config_get_n_points
	shll	$1, %eax
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	babl_format_n
	movq	%rax, -32(%rbp)
	callq	gegl_node_new
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.18, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	248(%rax), %r8
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.16, %rcx
	leaq	-72(%rbp), %r8
	movabsq	$.L.str.29, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %r11
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.12, %rcx
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gegl_node_connect_to
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gegl_node_new_processor
	movq	%rax, -64(%rbp)
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gegl_processor_work
	cmpl	$0, %eax
	je	.LBB15_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_6
# BB#5:                                 # %if.then.19
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-24(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_set_value
.LBB15_6:                               # %if.end.20
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_3
.LBB15_7:                               # %while.end
	cmpq	$0, -24(%rbp)
	je	.LBB15_9
# BB#8:                                 # %if.then.22
	movq	-24(%rbp), %rdi
	callq	gimp_progress_end
.LBB15_9:                               # %if.end.23
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 320(%rdi)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movl	$0, 328(%rax)
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_cage_tool_compute_coef, .Lfunc_end15-gimp_cage_tool_compute_coef
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_render_node_update,@function
gimp_cage_tool_render_node_update:      # @gimp_cage_tool_render_node_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.9, %rsi
	leaq	-24(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	344(%rdi), %rdi
	movb	$0, %al
	callq	gegl_node_get
	movl	-20(%rbp), %r8d
	cmpl	-24(%rbp), %r8d
	je	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	344(%rdx), %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	gegl_node_set
.LBB16_2:                               # %if.end
	movabsq	$.L.str.16, %rsi
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdi
	movb	$0, %al
	callq	gegl_node_get
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	320(%rdx), %rcx
	je	.LBB16_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.16, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	352(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	320(%rdx), %rdx
	movb	$0, %al
	callq	gegl_node_set
.LBB16_4:                               # %if.end.10
	cmpq	$0, -32(%rbp)
	je	.LBB16_6
# BB#5:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB16_6:                               # %if.end.12
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_cage_tool_render_node_update, .Lfunc_end16-gimp_cage_tool_render_node_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_create_image_map,@function
gimp_cage_tool_create_image_map:        # @gimp_cage_tool_create_image_map
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 336(%rsi)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_cage_tool_create_render_node
.LBB17_2:                               # %if.end
	movabsq	$.L.str.30, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r8          # 8-byte Reload
	callq	gimp_image_map_new
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_cage_tool_image_map_flush, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 368(%rdx)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_cage_tool_create_image_map, .Lfunc_end17-gimp_cage_tool_create_image_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_image_map_update,@function
gimp_cage_tool_image_map_update:        # @gimp_cage_tool_image_map_update
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp62:
	.cfi_offset %rbx, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	-56(%rbp), %rax
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%r9d, -120(%rbp)        # 4-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movl	%edx, -128(%rbp)        # 4-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-96(%rbp), %rdi
	movq	%rdi, %r10
	addq	$4, %r10
	movq	%rdi, %r11
	addq	$8, %r11
	movq	%rdi, %rbx
	addq	$12, %rbx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	-128(%rbp), %edx        # 4-byte Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	-136(%rbp), %r8d        # 4-byte Reload
	movl	-120(%rbp), %r9d        # 4-byte Reload
	movl	-140(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	callq	gimp_rectangle_intersect
	leaq	-96(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movl	-96(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -96(%rbp)
	movl	-80(%rbp), %ecx
	movl	-92(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movq	-32(%rbp), %r10
	movq	368(%r10), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_image_map_apply
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_cage_tool_image_map_update, .Lfunc_end18-gimp_cage_tool_image_map_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_image_map_flush,@function
gimp_cage_tool_image_map_flush:         # @gimp_cage_tool_image_map_flush
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, %rdi
	callq	gimp_projection_flush_now
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_flush_now
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_cage_tool_image_map_flush, .Lfunc_end19-gimp_cage_tool_image_map_flush
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_cage_tool_transform_progress,@function
gimp_cage_tool_transform_progress:      # @gimp_cage_tool_transform_progress
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB20_2
	jp	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB20_6
.LBB20_2:                               # %if.else
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB20_4
	jp	.LBB20_4
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
	jmp	.LBB20_5
.LBB20_4:                               # %if.else.6
	movq	-32(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_set_value
.LBB20_5:                               # %if.end
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.7
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_cage_tool_transform_progress, .Lfunc_end20-gimp_cage_tool_transform_progress
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_start,@function
gimp_cage_tool_start:                   # @gimp_cage_tool_start
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movl	$2, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_tool_control
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 248(%rax)
.LBB21_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movl	$1, 328(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
.LBB21_4:                               # %if.end.11
	movq	-8(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB21_6
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_image_map_abort
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 368(%rax)
.LBB21_6:                               # %if.end.17
	movq	-8(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB21_8
# BB#7:                                 # %if.then.19
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
.LBB21_8:                               # %if.end.22
	callq	gimp_cage_config_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rsi
	movq	%rax, 248(%rsi)
	movq	-8(%rbp), %rax
	movl	$-1, 312(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 316(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 360(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-44(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 256(%rax)
	movl	-48(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_cage_tool_start, .Lfunc_end21-gimp_cage_tool_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.align	16, 0x90
	.type	gimp_cage_tool_is_on_handle,@function
gimp_cage_tool_is_on_handle:            # @gimp_cage_tool_is_on_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_cage_tool_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.9
	movl	$1, -132(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.10
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.12
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.14
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.15
	movabsq	$.L.str.10, %rdi
	movabsq	$.L__func__.gimp_cage_tool_is_on_handle, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB22_21
.LBB22_11:                              # %if.end.16
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-72(%rbp), %rdi
	callq	gimp_cage_config_get_n_points
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB22_14
# BB#13:                                # %if.then.19
	movl	$-1, -4(%rbp)
	jmp	.LBB22_21
.LBB22_14:                              # %if.end.20
	movl	$0, -84(%rbp)
.LBB22_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jae	.LBB22_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	352(%rax), %esi
	movl	-84(%rbp), %edx
	callq	gimp_cage_config_get_point_coordinate
	movsd	%xmm0, -152(%rbp)
	movsd	%xmm1, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_draw_tool_calc_distance_square
	movl	$2, %edx
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	movl	%edx, -180(%rbp)        # 4-byte Spill
	cltd
	movl	-180(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-52(%rbp), %r8d
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-184(%rbp), %r8d        # 4-byte Reload
	imull	%eax, %r8d
	cvtsi2sdl	%r8d, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_18
# BB#17:                                # %if.then.36
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_21
.LBB22_18:                              # %if.end.37
                                        #   in Loop: Header=BB22_15 Depth=1
	jmp	.LBB22_19
.LBB22_19:                              # %for.inc
                                        #   in Loop: Header=BB22_15 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB22_15
.LBB22_20:                              # %for.end
	movl	$-1, -4(%rbp)
.LBB22_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_cage_tool_is_on_handle, .Lfunc_end22-gimp_cage_tool_is_on_handle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_cage_tool_is_on_edge,@function
gimp_cage_tool_is_on_edge:              # @gimp_cage_tool_is_on_edge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_cage_options_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gimp_cage_tool_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -220(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.9
	movl	$1, -220(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.10
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.12
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.14
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.15
	movabsq	$.L.str.10, %rdi
	movabsq	$.L__func__.gimp_cage_tool_is_on_edge, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB23_22
.LBB23_11:                              # %if.end.16
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-56(%rbp), %rdi
	callq	gimp_cage_config_get_n_points
	movl	%eax, -64(%rbp)
	cmpl	$2, -64(%rbp)
	jae	.LBB23_14
# BB#13:                                # %if.then.19
	movl	$-1, -4(%rbp)
	jmp	.LBB23_22
.LBB23_14:                              # %if.end.20
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	352(%rax), %esi
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	gimp_cage_config_get_point_coordinate
	xorl	%edx, %edx
	movsd	%xmm0, -240(%rbp)
	movsd	%xmm1, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	352(%rax), %esi
	callq	gimp_cage_config_get_point_coordinate
	movsd	%xmm0, -256(%rbp)
	movsd	%xmm1, -248(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movl	$0, -60(%rbp)
.LBB23_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jae	.LBB23_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB23_15 Depth=1
	leaq	-128(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	gimp_vector2_sub
	leaq	-144(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	callq	gimp_vector2_sub
	leaq	-160(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	callq	gimp_vector2_sub
	leaq	-128(%rbp), %rdi
	callq	gimp_vector2_length
	leaq	-144(%rbp), %rdi
	movsd	%xmm0, -168(%rbp)
	callq	gimp_vector2_length
	leaq	-160(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)
	callq	gimp_vector2_length
	movl	$2, %eax
	movsd	.LCPI23_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-176(%rbp), %xmm2
	movsd	-184(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-184(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	-168(%rbp), %xmm1
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	sqrt
	movsd	%xmm0, -200(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_19
# BB#17:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB23_15 Depth=1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	cvtsi2sdl	%eax, %xmm0
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB23_19
# BB#18:                                # %if.then.52
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB23_22
.LBB23_19:                              # %if.end.53
                                        #   in Loop: Header=BB23_15 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	352(%rax), %esi
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-64(%rbp)
	callq	gimp_cage_config_get_point_coordinate
	movsd	%xmm0, -272(%rbp)
	movsd	%xmm1, -264(%rbp)
	movq	-272(%rbp), %rdi
	movq	%rdi, -96(%rbp)
	movq	-264(%rbp), %rdi
	movq	%rdi, -88(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB23_15 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB23_15
.LBB23_21:                              # %for.end
	movl	$-1, -4(%rbp)
.LBB23_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_cage_tool_is_on_edge, .Lfunc_end23-gimp_cage_tool_is_on_edge
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_remove_last_handle,@function
gimp_cage_tool_remove_last_handle:      # @gimp_cage_tool_remove_last_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rdi
	callq	gimp_cage_config_remove_last_cage_point
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_cage_tool_remove_last_handle, .Lfunc_end24-gimp_cage_tool_remove_last_handle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_tool_is_complete,@function
gimp_cage_tool_is_complete:             # @gimp_cage_tool_is_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$4, 360(%rdi)
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_cage_tool_is_complete, .Lfunc_end25-gimp_cage_tool_is_complete
	.cfi_endproc

	.type	gimp_cage_tool_get_type.g_define_type_id__volatile,@object # @gimp_cage_tool_get_type.g_define_type_id__volatile
	.local	gimp_cage_tool_get_type.g_define_type_id__volatile
	.comm	gimp_cage_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCageTool"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-cage-tool"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Cage Transform"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Cage Transform: Deform a selection with a cage"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Cage Transform"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>G"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-cage"
	.size	.L.str.6, 15

	.type	gimp_cage_tool_parent_class,@object # @gimp_cage_tool_parent_class
	.local	gimp_cage_tool_parent_class
	.comm	gimp_cage_tool_parent_class,8,8
	.type	GimpCageTool_private_offset,@object # @GimpCageTool_private_offset
	.local	GimpCageTool_private_offset
	.comm	GimpCageTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cage-mode"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Press ENTER to commit the transform"
	.size	.L.str.8, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"fill-plain-color"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Gimp-Tools"
	.size	.L.str.10, 11

	.type	.L__func__.gimp_cage_tool_create_render_node,@object # @__func__.gimp_cage_tool_create_render_node
.L__func__.gimp_cage_tool_create_render_node:
	.asciz	"gimp_cage_tool_create_render_node"
	.size	.L__func__.gimp_cage_tool_create_render_node, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ct->render_node == NULL"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"input"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"output"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"operation"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gegl:buffer-source"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"buffer"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp:cage-transform"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"config"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"fill_plain_color"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gegl:map-absolute"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"aux"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gegl-operation"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"notify::progress"
	.size	.L.str.23, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"progress"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Computing Cage Coefficients"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"float"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp:cage-coef-calc"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gegl:buffer-sink"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"format"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Cage transform"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"flush"
	.size	.L.str.31, 6

	.type	.L__func__.gimp_cage_tool_is_on_handle,@object # @__func__.gimp_cage_tool_is_on_handle
.L__func__.gimp_cage_tool_is_on_handle:
	.asciz	"gimp_cage_tool_is_on_handle"
	.size	.L__func__.gimp_cage_tool_is_on_handle, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_IS_CAGE_TOOL (ct)"
	.size	.L.str.32, 23

	.type	.L__func__.gimp_cage_tool_is_on_edge,@object # @__func__.gimp_cage_tool_is_on_edge
.L__func__.gimp_cage_tool_is_on_edge:
	.asciz	"gimp_cage_tool_is_on_edge"
	.size	.L__func__.gimp_cage_tool_is_on_edge, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
