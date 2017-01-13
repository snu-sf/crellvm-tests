	.text
	.file	"gimpforegroundselecttool.bc"
	.globl	gimp_foreground_select_tool_get_type
	.align	16, 0x90
	.type	gimp_foreground_select_tool_get_type,@function
gimp_foreground_select_tool_get_type:   # @gimp_foreground_select_tool_get_type
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
	movq	gimp_foreground_select_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_foreground_select_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_free_select_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_foreground_select_tool_class_intern_init, %rdi
	movl	$376, %r8d              # imm = 0x178
	movabsq	$gimp_foreground_select_tool_init, %rcx
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
	movabsq	$gimp_foreground_select_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_foreground_select_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_foreground_select_tool_get_type, .Lfunc_end0-gimp_foreground_select_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_class_intern_init,@function
gimp_foreground_select_tool_class_intern_init: # @gimp_foreground_select_tool_class_intern_init
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
	movq	%rax, gimp_foreground_select_tool_parent_class
	cmpl	$0, GimpForegroundSelectTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpForegroundSelectTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_foreground_select_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_foreground_select_tool_class_intern_init, .Lfunc_end1-gimp_foreground_select_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_init,@function
gimp_foreground_select_tool_init:       # @gimp_foreground_select_tool_init
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
	callq	gimp_tool_control_set_scroll_lock
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_preserve
	movl	$514, %esi              # imm = 0x202
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_dirty_mask
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$3, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.31, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_2
	movq	-8(%rbp), %rax
	movl	$0, 328(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_foreground_select_tool_init, .Lfunc_end2-gimp_foreground_select_tool_init
	.cfi_endproc

	.globl	gimp_foreground_select_tool_register
	.align	16, 0x90
	.type	gimp_foreground_select_tool_register,@function
gimp_foreground_select_tool_register:   # @gimp_foreground_select_tool_register
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
	callq	gimp_foreground_select_tool_get_type
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_foreground_select_options_gui, %rdx
	movl	$192, %ecx
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
	.size	gimp_foreground_select_tool_register, .Lfunc_end3-gimp_foreground_select_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_class_init,@function
gimp_foreground_select_tool_class_init: # @gimp_foreground_select_tool_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_foreground_select_tool_select, %rsi
	movabsq	$gimp_foreground_select_tool_draw, %rdi
	movabsq	$gimp_foreground_select_tool_motion, %rcx
	movabsq	$gimp_foreground_select_tool_button_release, %rdx
	movabsq	$gimp_foreground_select_tool_button_press, %r8
	movabsq	$gimp_foreground_select_tool_key_press, %r9
	movabsq	$gimp_foreground_select_tool_cursor_update, %r10
	movabsq	$gimp_foreground_select_tool_modifier_key, %r11
	movabsq	$gimp_foreground_select_tool_oper_update, %rbx
	movabsq	$gimp_foreground_select_tool_control, %r14
	movabsq	$gimp_foreground_select_tool_finalize, %r15
	movabsq	$gimp_foreground_select_tool_constructed, %r12
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%r12, 72(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%r14, 184(%rax)
	movq	-56(%rbp), %rax
	movq	%rbx, 248(%rax)
	movq	-56(%rbp), %rax
	movq	%r11, 232(%rax)
	movq	-56(%rbp), %rax
	movq	%r10, 256(%rax)
	movq	-56(%rbp), %rax
	movq	%r9, 216(%rax)
	movq	-56(%rbp), %rax
	movq	%r8, 192(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-56(%rbp), %rax
	movq	%rcx, 208(%rax)
	movq	-64(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-72(%rbp), %rax
	movq	%rsi, 288(%rax)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_foreground_select_tool_class_init, .Lfunc_end4-gimp_foreground_select_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_constructed,@function
gimp_foreground_select_tool_constructed: # @gimp_foreground_select_tool_constructed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_foreground_select_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_foreground_select_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_foreground_select_options_notify, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_foreground_select_tool_constructed, .Lfunc_end5-gimp_foreground_select_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_finalize,@function
gimp_foreground_select_tool_finalize:   # @gimp_foreground_select_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_4:                                # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.6
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_6:                                # %if.end.7
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.9
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_8:                                # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_foreground_select_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_foreground_select_tool_finalize, .Lfunc_end6-gimp_foreground_select_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_control,@function
gimp_foreground_select_tool_control:    # @gimp_foreground_select_tool_control
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%r8d, -64(%rbp)         # 4-byte Spill
	jb	.LBB7_1
	jmp	.LBB7_12
.LBB7_12:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_11
.LBB7_1:                                # %sw.bb
	jmp	.LBB7_11
.LBB7_2:                                # %sw.bb.2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_foreground_select_tool_set_mask
	movq	-32(%rbp), %rdx
	movq	344(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#5:                                 # %do.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_3
.LBB7_8:                                # %for.end
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	callq	g_list_free
	movq	-32(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB7_10
# BB#9:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gimp_drawable_foreground_extract_siox_done
	movq	-32(%rbp), %rax
	movq	$0, 360(%rax)
.LBB7_10:                               # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.LBB7_11:                               # %sw.epilog
	movq	gimp_foreground_select_tool_parent_class, %rax
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
.Lfunc_end7:
	.size	gimp_foreground_select_tool_control, .Lfunc_end7-gimp_foreground_select_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_oper_update,@function
gimp_foreground_select_tool_oper_update: # @gimp_foreground_select_tool_oper_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	gimp_foreground_select_tool_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-40(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB8_6
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB8_6
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_resume
	movq	-40(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
.LBB8_5:                                # %if.end
	jmp	.LBB8_9
.LBB8_6:                                # %if.else.11
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 248(%rax)
	jne	.LBB8_8
# BB#7:                                 # %if.then.15
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
.LBB8_8:                                # %if.end.17
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.18
	cmpl	$0, -24(%rbp)
	je	.LBB8_12
# BB#10:                                # %land.lhs.true.20
	cmpq	$0, -48(%rbp)
	je	.LBB8_12
# BB#11:                                # %if.then.22
	movabsq	$.L.str.23, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
.LBB8_12:                               # %if.end.23
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_foreground_select_tool_oper_update, .Lfunc_end8-gimp_foreground_select_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_modifier_key,@function
gimp_foreground_select_tool_modifier_key: # @gimp_foreground_select_tool_modifier_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdi
	cmpl	$0, 388(%rdi)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB9_2:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_foreground_select_tool_modifier_key, .Lfunc_end9-gimp_foreground_select_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_cursor_update,@function
gimp_foreground_select_tool_cursor_update: # @gimp_foreground_select_tool_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB10_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movl	388(%rax), %esi
	callq	gimp_tool_control_set_toggled
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	248(%rax), %ecx
	decl	%ecx
	subl	$3, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	ja	.LBB10_3
	jmp	.LBB10_2
.LBB10_2:                               # %sw.bb
	jmp	.LBB10_6
.LBB10_3:                               # %sw.default
	jmp	.LBB10_4
.LBB10_4:                               # %sw.epilog
	jmp	.LBB10_5
.LBB10_5:                               # %if.end
	movq	gimp_foreground_select_tool_parent_class, %rax
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
.LBB10_6:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_foreground_select_tool_cursor_update, .Lfunc_end10-gimp_foreground_select_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_key_press,@function
gimp_foreground_select_tool_key_press:  # @gimp_foreground_select_tool_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	56(%rdx), %rax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_8
.LBB11_2:                               # %if.end
	movq	-40(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB11_7
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65076, %edx            # imm = 0xFE34
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB11_4
	jmp	.LBB11_9
.LBB11_9:                               # %if.then.3
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB11_4
	jmp	.LBB11_10
.LBB11_10:                              # %if.then.3
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB11_5
	jmp	.LBB11_11
.LBB11_11:                              # %if.then.3
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB11_6
	jmp	.LBB11_4
.LBB11_4:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_foreground_select_tool_apply
	movl	$1, -4(%rbp)
	jmp	.LBB11_8
.LBB11_5:                               # %sw.bb.4
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_control
	movl	$1, -4(%rbp)
	jmp	.LBB11_8
.LBB11_6:                               # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB11_8
.LBB11_7:                               # %if.else
	movq	gimp_foreground_select_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB11_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_foreground_select_tool_key_press, .Lfunc_end11-gimp_foreground_select_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_button_press,@function
gimp_foreground_select_tool_button_press: # @gimp_foreground_select_tool_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB12_12
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_vector2_new
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB12_4
# BB#2:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB12_4
# BB#3:                                 # %if.then.8
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB12_4:                               # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
# BB#5:                                 # %do.body
	movq	-48(%rbp), %rax
	cmpq	$0, 336(%rax)
	jne	.LBB12_7
# BB#6:                                 # %if.then.10
	jmp	.LBB12_8
.LBB12_7:                               # %if.else
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_foreground_select_tool_button_press, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_13
.LBB12_8:                               # %if.end.11
	jmp	.LBB12_9
.LBB12_9:                               # %do.end
	xorl	%eax, %eax
	movl	$16, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, 336(%r8)
	movq	-48(%rbp), %rax
	movq	336(%rax), %rdi
	movq	%rcx, %rsi
	callq	g_array_append_vals
	movq	-56(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB12_11
# BB#10:                                # %if.then.18
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_start
.LBB12_11:                              # %if.end.19
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB12_13
.LBB12_12:                              # %if.else.20
	movq	gimp_foreground_select_tool_parent_class, %rax
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
.LBB12_13:                              # %if.end.23
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_foreground_select_tool_button_press, .Lfunc_end12-gimp_foreground_select_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_button_release,@function
gimp_foreground_select_tool_button_release: # @gimp_foreground_select_tool_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
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
	callq	gimp_foreground_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_options_get_type
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_foreground_select_tool_push_stroke
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_free_select_tool_select
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movq	gimp_foreground_select_tool_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
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
.LBB13_3:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_foreground_select_tool_button_release, .Lfunc_end13-gimp_foreground_select_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_motion,@function
gimp_foreground_select_tool_motion:     # @gimp_foreground_select_tool_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB14_5
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	(%rdx), %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_3
	jp	.LBB14_3
# BB#2:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_3
	jp	.LBB14_3
	jmp	.LBB14_4
.LBB14_3:                               # %if.then.13
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_vector2_new
	movl	$1, %edx
	leaq	-64(%rbp), %rax
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	336(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB14_4:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB14_6
.LBB14_5:                               # %if.else
	movq	gimp_foreground_select_tool_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
.LBB14_6:                               # %if.end.23
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_foreground_select_tool_motion, .Lfunc_end14-gimp_foreground_select_tool_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI15_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_foreground_select_tool_draw,@function
gimp_foreground_select_tool_draw:       # @gimp_foreground_select_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	8(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	-32(%rbp), %rcx
	cmpl	$0, 388(%rcx)
	cmovnel	%r8d, %edx
	movq	-32(%rbp), %rcx
	movl	392(%rcx), %r9d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movq	%rax, %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_add_pen
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.16
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	xorl	%esi, %esi
	xorps	%xmm4, %xmm4
	movsd	.LCPI15_0, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cvttsd2si	264(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	cvttsd2si	272(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	392(%rax), %xmm1
	movq	-40(%rbp), %rax
	divsd	208(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-44(%rbp), %xmm1
	subsd	-56(%rbp), %xmm1
	cvtsi2sdl	-48(%rbp), %xmm2
	subsd	-56(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	mulsd	-56(%rbp), %xmm3
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-144(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_arc
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %if.else
	movq	gimp_foreground_select_tool_parent_class, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB15_5:                               # %if.end.32
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_foreground_select_tool_draw, .Lfunc_end15-gimp_foreground_select_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_select,@function
gimp_foreground_select_tool_select:     # @gimp_foreground_select_tool_select
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_foreground_select_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_foreground_select_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 328(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	328(%rax), %edi
	callq	g_source_remove
	movq	-24(%rbp), %rcx
	movl	$0, 328(%rcx)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB16_2:                               # %if.end
	cmpq	$0, -48(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.13
	jmp	.LBB16_16
.LBB16_4:                               # %if.end.14
	callq	gimp_scan_convert_new
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_get_points
	movl	$1, %ecx
	movq	-56(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rdx
	callq	gimp_scan_convert_add_polyline
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-40(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.29, %rcx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	xorl	%edx, %edx
	movl	$128, %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	callq	gimp_scan_convert_render_value
	movq	-56(%rbp), %rdi
	callq	gimp_scan_convert_free
	movq	-24(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB16_12
# BB#5:                                 # %if.then.23
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB16_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB16_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB16_6 Depth=1
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_foreground_select_tool_stroke
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB16_6 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB16_6
.LBB16_9:                               # %for.end
	movq	-24(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB16_11
# BB#10:                                # %if.then.27
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	360(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movl	368(%rdi), %edx
	movq	-32(%rbp), %rdi
	movl	396(%rdi), %ecx
	movq	-32(%rbp), %rdi
	addq	$408, %rdi              # imm = 0x198
	movq	-32(%rbp), %r8
	cmpl	$0, 384(%r8)
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	movq	-24(%rbp), %r8
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%r9d, -220(%rbp)        # 4-byte Spill
	movq	%r8, -232(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	-204(%rbp), %edx        # 4-byte Reload
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movl	-220(%rbp), %r9d        # 4-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_drawable_foreground_extract_siox
.LBB16_11:                              # %if.end.34
	movq	-24(%rbp), %rax
	movl	$0, 368(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_unset_busy
	jmp	.LBB16_15
.LBB16_12:                              # %if.else
	movabsq	$.L.str.24, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	-64(%rbp), %rdi
	callq	gimp_foreground_select_tool_get_area
	movq	-24(%rbp), %rcx
	cmpq	$0, 360(%rcx)
	je	.LBB16_14
# BB#13:                                # %if.then.39
	movabsq	$.L.str.30, %rdi
	movb	$0, %al
	callq	g_warning
.LBB16_14:                              # %if.end.40
	movq	-48(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	-104(%rbp), %ecx
	subl	-96(%rbp), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gimp_drawable_foreground_extract_siox_init
	movq	-24(%rbp), %rdi
	movq	%rax, 360(%rdi)
.LBB16_15:                              # %if.end.44
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gimp_foreground_select_tool_set_mask
	movq	-64(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
.LBB16_16:                              # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_foreground_select_tool_select, .Lfunc_end16-gimp_foreground_select_tool_select
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_options_notify,@function
gimp_foreground_select_options_notify:  # @gimp_foreground_select_options_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 352(%rdx)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_20
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.7, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_4
# BB#3:                                 # %if.then.1
	movl	$8, -28(%rbp)
	jmp	.LBB17_10
.LBB17_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.8, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_6
# BB#5:                                 # %if.then.5
	movl	$16, -28(%rbp)
	jmp	.LBB17_9
.LBB17_6:                               # %if.else.6
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB17_8
# BB#7:                                 # %if.then.10
	movl	$4, -28(%rbp)
.LBB17_8:                               # %if.end.11
	jmp	.LBB17_9
.LBB17_9:                               # %if.end.12
	jmp	.LBB17_10
.LBB17_10:                              # %if.end.13
	cmpl	$0, -28(%rbp)
	je	.LBB17_15
# BB#11:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB17_15
# BB#12:                                # %if.then.16
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	orl	368(%rcx), %eax
	movl	%eax, 368(%rcx)
	movq	-24(%rbp), %rcx
	cmpl	$0, 328(%rcx)
	je	.LBB17_14
# BB#13:                                # %if.then.19
	movq	-24(%rbp), %rax
	movl	328(%rax), %edi
	callq	g_source_remove
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB17_14:                              # %if.end.22
	movl	$300, %eax              # imm = 0x12C
	movabsq	$gimp_foreground_select_tool_idle_select, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_timeout_add_full
	movq	-24(%rbp), %rcx
	movl	%eax, 328(%rcx)
.LBB17_15:                              # %if.end.25
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB17_20
# BB#16:                                # %if.then.29
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB17_19
# BB#17:                                # %land.lhs.true.33
	movq	-24(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB17_19
# BB#18:                                # %if.then.36
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_foreground_select_options_get_mask_color
	movq	-40(%rbp), %rsi
	movq	56(%rsi), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movq	352(%rsi), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_display_shell_set_mask
.LBB17_19:                              # %if.end.42
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.43
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_foreground_select_options_notify, .Lfunc_end17-gimp_foreground_select_options_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_idle_select,@function
gimp_foreground_select_tool_idle_select: # @gimp_foreground_select_tool_idle_select
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 328(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_free_select_tool_select
.LBB18_2:                               # %if.end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_foreground_select_tool_idle_select, .Lfunc_end18-gimp_foreground_select_tool_idle_select
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB19_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB19_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.19, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_set_mask,@function
gimp_foreground_select_tool_set_mask:   # @gimp_foreground_select_tool_set_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_foreground_select_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_10
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 352(%rax)
.LBB20_4:                               # %if.end.12
	cmpq	$0, -24(%rbp)
	je	.LBB20_6
# BB#5:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 352(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_foreground_select_options_get_mask_color
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_display_shell_set_mask
	jmp	.LBB20_7
.LBB20_6:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	gimp_display_shell_set_mask
.LBB20_7:                               # %if.end.21
	cmpq	$0, -24(%rbp)
	je	.LBB20_9
# BB#8:                                 # %if.then.23
	movl	$25, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movl	$30, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_toggle_tool_cursor
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	388(%rax), %esi
	callq	gimp_tool_control_set_toggled
	jmp	.LBB20_10
.LBB20_9:                               # %if.else.26
	movl	$3, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movl	$3, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_toggle_tool_cursor
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_toggled
.LBB20_10:                              # %if.end.30
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_foreground_select_tool_set_mask, .Lfunc_end20-gimp_foreground_select_tool_set_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_apply,@function
gimp_foreground_select_tool_apply:      # @gimp_foreground_select_tool_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_foreground_select_tool_apply, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_6
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.26, %rsi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movq	352(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movl	352(%rsi), %r9d
	movq	-32(%rbp), %rsi
	movl	360(%rsi), %r8d
	movq	-32(%rbp), %rsi
	movsd	368(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	368(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	-80(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	callq	gimp_channel_select_channel
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_tool_control
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
.LBB21_6:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_foreground_select_tool_apply, .Lfunc_end21-gimp_foreground_select_tool_apply
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_foreground_select_tool_push_stroke,@function
gimp_foreground_select_tool_push_stroke: # @gimp_foreground_select_tool_push_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_foreground_select_tool_push_stroke, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_6
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	xorl	%esi, %esi
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	388(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	cvtsi2sdl	392(%rax), %xmm1
	movq	-32(%rbp), %rax
	divsd	208(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	g_array_free
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movl	$1, %ecx
	movl	$2, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, 344(%rsi)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rax
	orl	368(%rax), %ecx
	movl	%ecx, 368(%rax)
.LBB22_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_foreground_select_tool_push_stroke, .Lfunc_end22-gimp_foreground_select_tool_push_stroke
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4576918229304087675     # double 0.01
.LCPI23_1:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_foreground_select_tool_stroke,@function
gimp_foreground_select_tool_stroke:     # @gimp_foreground_select_tool_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_scan_convert_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	xorl	%ecx, %ecx
	leaq	-64(%rbp), %rdx
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	movq	%rdi, -48(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_scan_convert_add_polyline
	jmp	.LBB23_3
.LBB23_2:                               # %if.else
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	callq	gimp_scan_convert_add_polyline
.LBB23_3:                               # %if.end
	movl	$1, %eax
	movsd	.LCPI23_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm0
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_scan_convert_stroke
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	xorl	%edx, %edx
	movl	$255, %r8d
	movq	-16(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	cmovnel	%edx, %r8d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %ecx         # 4-byte Reload
	callq	gimp_scan_convert_compose_value
	movq	-24(%rbp), %rdi
	callq	gimp_scan_convert_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_foreground_select_tool_stroke, .Lfunc_end23-gimp_foreground_select_tool_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_foreground_select_tool_get_area,@function
gimp_foreground_select_tool_get_area:   # @gimp_foreground_select_tool_get_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	gimp_channel_bounds
	movl	$2, %r9d
	movq	-32(%rbp), %rcx
	movl	(%rcx), %r10d
	movq	-16(%rbp), %rcx
	subl	(%rcx), %r10d
	movl	%r10d, -44(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %r10d
	movq	-24(%rbp), %rcx
	subl	(%rcx), %r10d
	movl	%r10d, -48(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %r10d
	movl	-44(%rbp), %r11d
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%r11d, %eax
	cltd
	idivl	%r9d
	subl	%eax, %r10d
	cmpl	$0, %r10d
	jle	.LBB24_2
# BB#1:                                 # %cond.true
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	-44(%rbp), %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -60(%rbp)         # 4-byte Spill
	cltd
	movl	-56(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-60(%rbp), %edi         # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, -64(%rbp)         # 4-byte Spill
	jmp	.LBB24_3
.LBB24_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB24_3
.LBB24_3:                               # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	-48(%rbp), %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, %ecx
	jle	.LBB24_5
# BB#4:                                 # %cond.true.8
	movl	$2, %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	movl	-48(%rbp), %esi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -76(%rbp)         # 4-byte Spill
	cltd
	movl	-72(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-76(%rbp), %edi         # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, -80(%rbp)         # 4-byte Spill
	jmp	.LBB24_6
.LBB24_5:                               # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB24_6
.LBB24_6:                               # %cond.end.12
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rdx
	movl	(%rdx), %eax
	movl	-44(%rbp), %esi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB24_8
# BB#7:                                 # %cond.true.19
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movl	-44(%rbp), %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -104(%rbp)        # 4-byte Spill
	cltd
	movl	-100(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-104(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -108(%rbp)        # 4-byte Spill
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false.22
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB24_9:                               # %cond.end.26
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rdx
	movl	(%rdx), %eax
	movl	-48(%rbp), %esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-128(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB24_11
# BB#10:                                # %cond.true.34
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movl	-48(%rbp), %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -144(%rbp)        # 4-byte Spill
	cltd
	movl	-140(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-144(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -148(%rbp)        # 4-byte Spill
	jmp	.LBB24_12
.LBB24_11:                              # %cond.false.37
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB24_12:                              # %cond.end.41
	movl	-148(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_foreground_select_tool_get_area, .Lfunc_end24-gimp_foreground_select_tool_get_area
	.cfi_endproc

	.type	gimp_foreground_select_tool_get_type.g_define_type_id__volatile,@object # @gimp_foreground_select_tool_get_type.g_define_type_id__volatile
	.local	gimp_foreground_select_tool_get_type.g_define_type_id__volatile
	.comm	gimp_foreground_select_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpForegroundSelectTool"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-foreground-select-tool"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Foreground Select"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Foreground Select Tool: Select a region containing foreground objects"
	.size	.L.str.3, 70

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"F_oreground Select"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-foreground-select"
	.size	.L.str.5, 28

	.type	gimp_foreground_select_tool_parent_class,@object # @gimp_foreground_select_tool_parent_class
	.local	gimp_foreground_select_tool_parent_class
	.comm	gimp_foreground_select_tool_parent_class,8,8
	.type	GimpForegroundSelectTool_private_offset,@object # @GimpForegroundSelectTool_private_offset
	.local	GimpForegroundSelectTool_private_offset
	.comm	GimpForegroundSelectTool_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"smoothness"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"contiguous"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sensitivity"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"mask-color"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s: stroke should be NULL at this point"
	.size	.L.str.11, 40

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimpforegroundselecttool.c:222"
	.size	.L.str.12, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s: strokes should be NULL at this point"
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpforegroundselecttool.c:225"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: state should be NULL at this point"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpforegroundselecttool.c:228"
	.size	.L.str.16, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: mask should be NULL at this point"
	.size	.L.str.17, 38

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimpforegroundselecttool.c:231"
	.size	.L.str.18, 31

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Gimp-Tools"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Add more strokes or press Enter to accept the selection"
	.size	.L.str.20, 56

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Mark foreground by painting on the object to extract"
	.size	.L.str.21, 53

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Roughly outline the object to extract"
	.size	.L.str.22, 38

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"background"
	.size	.L.str.24, 11

	.type	.L__func__.gimp_foreground_select_tool_apply,@object # @__func__.gimp_foreground_select_tool_apply
.L__func__.gimp_foreground_select_tool_apply:
	.asciz	"gimp_foreground_select_tool_apply"
	.size	.L__func__.gimp_foreground_select_tool_apply, 34

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"fg_select->mask != NULL"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"command\004Foreground Select"
	.size	.L.str.26, 26

	.type	.L__func__.gimp_foreground_select_tool_button_press,@object # @__func__.gimp_foreground_select_tool_button_press
.L__func__.gimp_foreground_select_tool_button_press:
	.asciz	"gimp_foreground_select_tool_button_press"
	.size	.L__func__.gimp_foreground_select_tool_button_press, 41

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"fg_select->stroke == NULL"
	.size	.L.str.27, 26

	.type	.L__func__.gimp_foreground_select_tool_push_stroke,@object # @__func__.gimp_foreground_select_tool_push_stroke
.L__func__.gimp_foreground_select_tool_push_stroke:
	.asciz	"gimp_foreground_select_tool_push_stroke"
	.size	.L__func__.gimp_foreground_select_tool_push_stroke, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"fg_select->stroke != NULL"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"foreground-extraction"
	.size	.L.str.29, 22

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"state should be NULL here"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"tools/tools-foreground-select-brush-size-set"
	.size	.L.str.31, 45


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
