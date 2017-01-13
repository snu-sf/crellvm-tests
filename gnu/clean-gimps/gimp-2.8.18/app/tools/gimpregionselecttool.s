	.text
	.file	"gimpregionselecttool.bc"
	.globl	gimp_region_select_tool_get_type
	.align	16, 0x90
	.type	gimp_region_select_tool_get_type,@function
gimp_region_select_tool_get_type:       # @gimp_region_select_tool_get_type
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
	movq	gimp_region_select_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_region_select_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_selection_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$304, %ecx              # imm = 0x130
	movabsq	$gimp_region_select_tool_class_intern_init, %rdi
	movabsq	$gimp_region_select_tool_init, %rdx
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
	movabsq	$gimp_region_select_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_region_select_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_region_select_tool_get_type, .Lfunc_end0-gimp_region_select_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_class_intern_init,@function
gimp_region_select_tool_class_intern_init: # @gimp_region_select_tool_class_intern_init
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
	movq	%rax, gimp_region_select_tool_parent_class
	cmpl	$0, GimpRegionSelectTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpRegionSelectTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_region_select_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_region_select_tool_class_intern_init, .Lfunc_end1-gimp_region_select_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_init,@function
gimp_region_select_tool_init:           # @gimp_region_select_tool_init
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
	callq	gimp_tool_control_set_motion_mode
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 268(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 296(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_region_select_tool_init, .Lfunc_end2-gimp_region_select_tool_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_class_init,@function
gimp_region_select_tool_class_init:     # @gimp_region_select_tool_class_init
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
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_region_select_tool_draw, %rsi
	movabsq	$gimp_region_select_tool_cursor_update, %rdi
	movabsq	$gimp_region_select_tool_motion, %rcx
	movabsq	$gimp_region_select_tool_button_release, %rdx
	movabsq	$gimp_region_select_tool_button_press, %r8
	movabsq	$gimp_region_select_tool_finalize, %r9
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_region_select_tool_class_init, .Lfunc_end3-gimp_region_select_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_finalize,@function
gimp_region_select_tool_finalize:       # @gimp_region_select_tool_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_region_select_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 296(%rax)
.LBB4_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_region_select_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_region_select_tool_finalize, .Lfunc_end4-gimp_region_select_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_button_press,@function
gimp_region_select_tool_button_press:   # @gimp_region_select_tool_button_press
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_region_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_region_select_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 264(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 268(%rax)
	movq	-56(%rbp), %rax
	movsd	392(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_selection_tool_start_edit
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movabsq	$.L.str.1, %rdi
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_push_status
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rcx
	addq	$296, %rcx              # imm = 0x128
	movq	%rcx, %rdx
	callq	gimp_region_select_tool_calculate
	movq	-48(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB5_3:                                # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_region_select_tool_button_press, .Lfunc_end5-gimp_region_select_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_button_release,@function
gimp_region_select_tool_button_release: # @gimp_region_select_tool_button_release
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_region_select_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_region_select_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	cmpl	$1, -28(%rbp)
	je	.LBB6_12
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$4, 248(%rax)
	jne	.LBB6_6
# BB#2:                                 # %if.then.18
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB6_4
# BB#3:                                 # %if.then.20
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, %rdi
	callq	floating_sel_anchor
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
.LBB6_5:                                # %if.end
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB6_11
.LBB6_6:                                # %if.else.23
	movq	-48(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB6_10
# BB#7:                                 # %if.then.25
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, 388(%rax)
	jne	.LBB6_9
# BB#8:                                 # %if.then.27
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
.LBB6_9:                                # %if.end.31
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	288(%rdi), %rsi
	movq	-48(%rbp), %rdi
	movq	280(%rdi), %rdx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movl	352(%rdi), %r9d
	movq	-56(%rbp), %rdi
	movl	360(%rdi), %r10d
	movq	-56(%rbp), %rdi
	movsd	368(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	368(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	callq	gimp_channel_select_channel
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
.LBB6_10:                               # %if.end.35
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.36
	jmp	.LBB6_12
.LBB6_12:                               # %if.end.37
	movq	-48(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB6_14
# BB#13:                                # %if.then.40
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	$0, 280(%rax)
.LBB6_14:                               # %if.end.43
	movq	-48(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB6_16
# BB#15:                                # %if.then.45
	movq	-48(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 296(%rax)
.LBB6_16:                               # %if.end.48
	movabsq	$.L.str.2, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movsd	272(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_region_select_tool_button_release, .Lfunc_end6-gimp_region_select_tool_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4643176031446892544     # double 255
.LCPI7_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_region_select_tool_motion,@function
gimp_region_select_tool_motion:         # @gimp_region_select_tool_motion
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_region_select_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_region_select_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %ecx
	subl	gimp_region_select_tool_motion.last_time, %ecx
	cmpl	$100, %ecx
	jae	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_20
.LBB7_2:                                # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, gimp_region_select_tool_motion.last_time
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	cvtsi2sdl	264(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	cvtsi2sdl	268(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB7_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB7_5:                                # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	cmpl	$0, -56(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jge	.LBB7_7
# BB#6:                                 # %cond.true.19
	xorl	%eax, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false.21
	movl	-56(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB7_8:                                # %cond.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_10
# BB#9:                                 # %cond.true.26
	movl	-52(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.27
	movl	-56(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB7_11:                               # %cond.end.28
	movl	-104(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -64(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movsd	272(%rdx), %xmm1        # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jbe	.LBB7_13
# BB#12:                                # %cond.true.33
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB7_17
.LBB7_13:                               # %cond.false.34
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_15
# BB#14:                                # %cond.true.39
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB7_16
.LBB7_15:                               # %cond.false.40
	movq	-40(%rbp), %rax
	movsd	272(%rax), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB7_16:                               # %cond.end.43
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB7_17:                               # %cond.end.45
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.2, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movb	$1, %al
	callq	g_object_set
	movq	-8(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-40(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB7_19
# BB#18:                                # %if.then.49
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB7_19:                               # %if.end.51
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	addq	$296, %rax              # imm = 0x128
	movq	%rax, %rdx
	callq	gimp_region_select_tool_calculate
	movq	-40(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB7_20:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_region_select_tool_motion, .Lfunc_end7-gimp_region_select_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_cursor_update,@function
gimp_region_select_tool_cursor_update:  # @gimp_region_select_tool_cursor_update
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
	callq	gimp_region_select_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	388(%rax), %edx
	callq	gimp_image_coords_in_active_pickable
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, -44(%rbp)
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_region_select_tool_parent_class, %rax
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
.Lfunc_end8:
	.size	gimp_region_select_tool_cursor_update, .Lfunc_end8-gimp_region_select_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_draw,@function
gimp_region_select_tool_draw:           # @gimp_region_select_tool_draw
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_region_select_tool_get_type
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
	callq	gimp_region_select_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB9_4
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 388(%rax)
	jne	.LBB9_3
# BB#2:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
.LBB9_3:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	288(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	296(%rdx), %edx
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	callq	gimp_draw_tool_add_boundary
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB9_4:                                # %if.end.16
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_region_select_tool_draw, .Lfunc_end9-gimp_region_select_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_region_select_tool_calculate,@function
gimp_region_select_tool_calculate:      # @gimp_region_select_tool_calculate
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	$150, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_set_override_cursor
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rsi
	movq	%rax, 280(%rsi)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	jne	.LBB10_4
# BB#3:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_unset_override_cursor
	movq	-32(%rbp), %rdi
	movl	$0, (%rdi)
	movq	$0, -8(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movq	280(%rsi), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movq	280(%rsi), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$127, %edx
	movq	-32(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-164(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$127, (%rsp)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	boundary_find
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_unset_override_cursor
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_region_select_tool_calculate, .Lfunc_end10-gimp_region_select_tool_calculate
	.cfi_endproc

	.type	gimp_region_select_tool_get_type.g_define_type_id__volatile,@object # @gimp_region_select_tool_get_type.g_define_type_id__volatile
	.local	gimp_region_select_tool_get_type.g_define_type_id__volatile
	.comm	gimp_region_select_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRegionSelectTool"
	.size	.L.str, 21

	.type	gimp_region_select_tool_parent_class,@object # @gimp_region_select_tool_parent_class
	.local	gimp_region_select_tool_parent_class
	.comm	gimp_region_select_tool_parent_class,8,8
	.type	GimpRegionSelectTool_private_offset,@object # @GimpRegionSelectTool_private_offset
	.local	GimpRegionSelectTool_private_offset
	.comm	GimpRegionSelectTool_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Move the mouse to change threshold"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"threshold"
	.size	.L.str.2, 10

	.type	gimp_region_select_tool_motion.last_time,@object # @gimp_region_select_tool_motion.last_time
	.local	gimp_region_select_tool_motion.last_time
	.comm	gimp_region_select_tool_motion.last_time,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
