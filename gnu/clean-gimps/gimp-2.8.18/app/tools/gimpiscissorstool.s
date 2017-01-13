	.text
	.file	"gimpiscissorstool.bc"
	.globl	gimp_iscissors_tool_get_type
	.align	16, 0x90
	.type	gimp_iscissors_tool_get_type,@function
gimp_iscissors_tool_get_type:           # @gimp_iscissors_tool_get_type
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
	movq	gimp_iscissors_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_iscissors_tool_get_type.g_define_type_id__volatile, %rax
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
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_iscissors_tool_class_intern_init, %rdi
	movl	$368, %r8d              # imm = 0x170
	movabsq	$gimp_iscissors_tool_init, %rcx
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
	movabsq	$gimp_iscissors_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_iscissors_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_iscissors_tool_get_type, .Lfunc_end0-gimp_iscissors_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_class_intern_init,@function
gimp_iscissors_tool_class_intern_init:  # @gimp_iscissors_tool_class_intern_init
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
	movq	%rax, gimp_iscissors_tool_parent_class
	cmpl	$0, GimpIscissorsTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpIscissorsTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_iscissors_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_iscissors_tool_class_intern_init, .Lfunc_end1-gimp_iscissors_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_init,@function
gimp_iscissors_tool_init:               # @gimp_iscissors_tool_init
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
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_snap_to
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_preserve
	movl	$514, %esi              # imm = 0x202
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_dirty_mask
	movl	$10, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movq	-8(%rbp), %rax
	movl	$0, 264(%rax)
	callq	g_queue_new
	movq	-8(%rbp), %rdi
	movq	%rax, 328(%rdi)
	movq	-8(%rbp), %rax
	movl	$0, 344(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_iscissors_tool_init, .Lfunc_end2-gimp_iscissors_tool_init
	.cfi_endproc

	.globl	gimp_iscissors_tool_register
	.align	16, 0x90
	.type	gimp_iscissors_tool_register,@function
gimp_iscissors_tool_register:           # @gimp_iscissors_tool_register
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
	callq	gimp_iscissors_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_iscissors_options_gui, %rdx
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
	.size	gimp_iscissors_tool_register, .Lfunc_end3-gimp_iscissors_tool_register
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4609047870845172685     # double 1.4142135623730951
	.text
	.align	16, 0x90
	.type	gimp_iscissors_tool_class_init,@function
gimp_iscissors_tool_class_init:         # @gimp_iscissors_tool_class_init
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
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_iscissors_tool_draw, %rsi
	movabsq	$gimp_iscissors_tool_key_press, %rdi
	movabsq	$gimp_iscissors_tool_cursor_update, %rcx
	movabsq	$gimp_iscissors_tool_oper_update, %rdx
	movabsq	$gimp_iscissors_tool_motion, %r8
	movabsq	$gimp_iscissors_tool_button_release, %r9
	movabsq	$gimp_iscissors_tool_button_press, %r10
	movabsq	$gimp_iscissors_tool_control, %r11
	movabsq	$gimp_iscissors_tool_finalize, %rbx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 184(%rax)
	movq	-32(%rbp), %rax
	movq	%r10, 192(%rax)
	movq	-32(%rbp), %rax
	movq	%r9, 200(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 256(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 216(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 280(%rax)
	movl	$0, -44(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$127, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movslq	-44(%rbp), %rdx
	movl	%ecx, diagonal_weight(,%rdx,4)
	subl	-44(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movl	$127, %ecx
	movabsq	$direction_value, %rdx
	movl	%ecx, %edi
	subl	%eax, %edi
	shll	$1, %edi
	movslq	-44(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movl	%edi, (%rdx)
	subl	-44(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	$191, %ecx
	movabsq	$direction_value, %rdx
	shll	$1, %eax
	movslq	-44(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movl	%eax, 4(%rdx)
	subl	-44(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	$63, %ecx
	movabsq	$direction_value, %rdx
	shll	$1, %eax
	movslq	-44(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movl	%eax, 8(%rdx)
	subl	-44(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movabsq	$direction_value, %rdx
	shll	$1, %eax
	movslq	-44(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movl	%eax, 12(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movl	$255, direction_value+4080
	movl	$255, direction_value+4084
	movl	$255, direction_value+4088
	movl	$255, direction_value+4092
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_iscissors_tool_class_init, .Lfunc_end4-gimp_iscissors_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_finalize,@function
gimp_iscissors_tool_finalize:           # @gimp_iscissors_tool_finalize
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
	callq	gimp_iscissors_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_iscissors_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_iscissors_tool_finalize, .Lfunc_end5-gimp_iscissors_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_control,@function
gimp_iscissors_tool_control:            # @gimp_iscissors_tool_control
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	jb	.LBB6_1
	jmp	.LBB6_19
.LBB6_19:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_18
.LBB6_1:                                # %sw.bb
	jmp	.LBB6_18
.LBB6_2:                                # %sw.bb.2
	jmp	.LBB6_3
.LBB6_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_is_empty
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB6_4
	jmp	.LBB6_9
.LBB6_4:                                # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_pop_head
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$1, %esi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_ptr_array_free
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %do.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_3
.LBB6_9:                                # %while.end
	movq	-32(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB6_11
# BB#10:                                # %if.then.10
	movq	-32(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	$0, 352(%rax)
.LBB6_11:                               # %if.end.13
	movq	-32(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB6_15
# BB#12:                                # %if.then.15
	cmpq	$0, cur_tile
	je	.LBB6_14
# BB#13:                                # %if.then.17
	xorl	%esi, %esi
	movq	cur_tile, %rdi
	callq	tile_release
	movq	$0, cur_tile
.LBB6_14:                               # %if.end.18
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdi
	callq	tile_manager_unref
	movq	-32(%rbp), %rax
	movq	$0, 360(%rax)
.LBB6_15:                               # %if.end.21
	movq	-32(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 336(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 340(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 344(%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB6_17
# BB#16:                                # %if.then.23
	movq	-32(%rbp), %rax
	movq	296(%rax), %rdi
	callq	temp_buf_free
	movq	-32(%rbp), %rax
	movq	$0, 296(%rax)
.LBB6_17:                               # %if.end.26
	jmp	.LBB6_18
.LBB6_18:                               # %sw.epilog
	movq	gimp_iscissors_tool_parent_class, %rax
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
	.size	gimp_iscissors_tool_control, .Lfunc_end6-gimp_iscissors_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_button_press,@function
gimp_iscissors_tool_button_press:       # @gimp_iscissors_tool_button_press
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 268(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 272(%rax)
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-48(%rbp), %rax
	movl	344(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB7_18
	jmp	.LBB7_3
.LBB7_3:                                # %sw.bb
	movq	-48(%rbp), %rax
	movl	$1, 344(%rax)
	movl	-24(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_5
# BB#4:                                 # %if.then.13
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	addq	$268, %rax              # imm = 0x10C
	movq	-48(%rbp), %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	%rax, %rdx
	callq	find_max_gradient
.LBB7_5:                                # %if.end.16
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-56(%rbp), %rdi
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_7
# BB#6:                                 # %cond.true
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB7_11
.LBB7_7:                                # %cond.false
	movq	-48(%rbp), %rax
	cmpl	$0, 268(%rax)
	jge	.LBB7_9
# BB#8:                                 # %cond.true.26
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false.27
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB7_10:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB7_11:                               # %cond.end.29
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, 268(%rcx)
	movq	-48(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-56(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	-80(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB7_13
# BB#12:                                # %cond.true.37
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB7_17
.LBB7_13:                               # %cond.false.40
	movq	-48(%rbp), %rax
	cmpl	$0, 272(%rax)
	jge	.LBB7_15
# BB#14:                                # %cond.true.44
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB7_16
.LBB7_15:                               # %cond.false.45
	movq	-48(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB7_16:                               # %cond.end.47
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_17:                               # %cond.end.49
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-48(%rbp), %rcx
	movl	268(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 276(%rcx)
	movq	-48(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	jmp	.LBB7_29
.LBB7_18:                               # %sw.default
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	clicked_on_vertex
	cmpl	$0, %eax
	je	.LBB7_20
# BB#19:                                # %if.then.60
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 284(%rax)
	movq	-48(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-48(%rbp), %rax
	movl	$2, 344(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB7_28
.LBB7_20:                               # %if.else
	movq	-48(%rbp), %rax
	cmpl	$0, 340(%rax)
	je	.LBB7_24
# BB#21:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB7_24
# BB#22:                                # %land.lhs.true.68
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	268(%rsi), %esi
	movq	-48(%rbp), %rdi
	movl	272(%rdi), %edx
	movq	%rax, %rdi
	callq	gimp_pickable_get_opacity_at
	cmpl	$0, %eax
	je	.LBB7_24
# BB#23:                                # %if.then.76
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_iscissors_tool_apply
	jmp	.LBB7_27
.LBB7_24:                               # %if.else.77
	movq	-48(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB7_26
# BB#25:                                # %if.then.80
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-48(%rbp), %rax
	movl	$1, 344(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB7_26:                               # %if.end.86
	jmp	.LBB7_27
.LBB7_27:                               # %if.end.87
	jmp	.LBB7_28
.LBB7_28:                               # %if.end.88
	jmp	.LBB7_29
.LBB7_29:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_iscissors_tool_button_press, .Lfunc_end7-gimp_iscissors_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_button_release,@function
gimp_iscissors_tool_button_release:     # @gimp_iscissors_tool_button_release
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-48(%rbp), %rax
	cmpl	$3, 344(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_24
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	cmpl	$1, -28(%rbp)
	je	.LBB8_22
# BB#3:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movl	344(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%edx, -88(%rbp)         # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_25
.LBB8_25:                               # %if.then.6
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB8_15
	jmp	.LBB8_20
.LBB8_4:                                # %sw.bb
	movq	-48(%rbp), %rax
	cmpl	$0, 336(%rax)
	jne	.LBB8_13
# BB#5:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_is_empty
	cmpl	$0, %eax
	jne	.LBB8_9
# BB#6:                                 # %if.then.11
	movq	-48(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_peek_head
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$13, %ecx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdi
	cvtsi2sdl	268(%rdi), %xmm0
	movq	-48(%rbp), %rdi
	cvtsi2sdl	272(%rdi), %xmm1
	movq	-56(%rbp), %rdi
	cvtsi2sdl	(%rdi), %xmm2
	movq	-56(%rbp), %rdi
	cvtsi2sdl	4(%rdi), %xmm3
	movq	%rax, %rdi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.21
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 268(%rax)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 272(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 340(%rax)
.LBB8_8:                                # %if.end.26
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.27
	movq	-48(%rbp), %rax
	movl	276(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	268(%rax), %ecx
	jne	.LBB8_11
# BB#10:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	272(%rax), %ecx
	je	.LBB8_12
.LBB8_11:                               # %if.then.34
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	276(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-48(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	%ecx, 276(%rax)
	movq	-48(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-48(%rbp), %rax
	movl	%ecx, 280(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_queue_push_tail
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	calculate_curve
.LBB8_12:                               # %if.end.46
	jmp	.LBB8_14
.LBB8_13:                               # %if.else
	movq	-48(%rbp), %rax
	movl	$0, 336(%rax)
.LBB8_14:                               # %if.end.48
	jmp	.LBB8_21
.LBB8_15:                               # %sw.bb.49
	movq	-48(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB8_17
# BB#16:                                # %if.then.51
	movq	-48(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movl	%ecx, 4(%rax)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	312(%rax), %rsi
	callq	calculate_curve
.LBB8_17:                               # %if.end.57
	movq	-48(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB8_19
# BB#18:                                # %if.then.59
	movq	-48(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	320(%rax), %rax
	movl	%ecx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	320(%rax), %rax
	movl	%ecx, 12(%rax)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	320(%rax), %rsi
	callq	calculate_curve
.LBB8_19:                               # %if.end.67
	jmp	.LBB8_21
.LBB8_20:                               # %sw.default
	jmp	.LBB8_21
.LBB8_21:                               # %sw.epilog
	jmp	.LBB8_22
.LBB8_22:                               # %if.end.68
	movq	-48(%rbp), %rax
	movl	$3, 344(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movq	-48(%rbp), %rax
	cmpl	$0, 340(%rax)
	je	.LBB8_24
# BB#23:                                # %if.then.74
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	iscissors_convert
.LBB8_24:                               # %if.end.75
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_iscissors_tool_button_release, .Lfunc_end8-gimp_iscissors_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_motion,@function
gimp_iscissors_tool_motion:             # @gimp_iscissors_tool_motion
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 344(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_37
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 268(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 272(%rax)
	movq	-40(%rbp), %rax
	movl	344(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_38
.LBB9_38:                               # %if.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB9_20
	jmp	.LBB9_35
.LBB9_3:                                # %sw.bb
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB9_5
# BB#4:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	addq	$268, %rax              # imm = 0x10C
	movq	-40(%rbp), %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	%rax, %rdx
	callq	find_max_gradient
.LBB9_5:                                # %if.end.15
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB9_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB9_11
.LBB9_7:                                # %cond.false
	movq	-40(%rbp), %rax
	cmpl	$0, 268(%rax)
	jge	.LBB9_9
# BB#8:                                 # %cond.true.25
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false.26
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB9_10:                               # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB9_11:                               # %cond.end.28
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, 268(%rcx)
	movq	-40(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	-92(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB9_13
# BB#12:                                # %cond.true.36
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB9_17
.LBB9_13:                               # %cond.false.39
	movq	-40(%rbp), %rax
	cmpl	$0, 272(%rax)
	jge	.LBB9_15
# BB#14:                                # %cond.true.43
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_16
.LBB9_15:                               # %cond.false.44
	movq	-40(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB9_16:                               # %cond.end.46
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB9_17:                               # %cond.end.48
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-40(%rbp), %rcx
	cmpl	$0, 336(%rcx)
	je	.LBB9_19
# BB#18:                                # %if.then.52
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 276(%rax)
	movq	-40(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 280(%rax)
.LBB9_19:                               # %if.end.55
	jmp	.LBB9_36
.LBB9_20:                               # %sw.bb.56
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#21:                                # %if.then.59
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	addq	$268, %rax              # imm = 0x10C
	movq	-40(%rbp), %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	%rax, %rdx
	callq	find_max_gradient
.LBB9_22:                               # %if.end.62
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	-104(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB9_24
# BB#23:                                # %cond.true.68
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB9_28
.LBB9_24:                               # %cond.false.71
	movq	-40(%rbp), %rax
	cmpl	$0, 268(%rax)
	jge	.LBB9_26
# BB#25:                                # %cond.true.75
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB9_27
.LBB9_26:                               # %cond.false.76
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB9_27:                               # %cond.end.78
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB9_28:                               # %cond.end.80
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, 268(%rcx)
	movq	-40(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	-116(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB9_30
# BB#29:                                # %cond.true.88
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB9_34
.LBB9_30:                               # %cond.false.91
	movq	-40(%rbp), %rax
	cmpl	$0, 272(%rax)
	jge	.LBB9_32
# BB#31:                                # %cond.true.95
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB9_33
.LBB9_32:                               # %cond.false.96
	movq	-40(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB9_33:                               # %cond.end.98
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB9_34:                               # %cond.end.100
	movl	-120(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-40(%rbp), %rcx
	movl	268(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 284(%rcx)
	movq	-40(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 288(%rcx)
	jmp	.LBB9_36
.LBB9_35:                               # %sw.default
	jmp	.LBB9_36
.LBB9_36:                               # %sw.epilog
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB9_37:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_iscissors_tool_motion, .Lfunc_end9-gimp_iscissors_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_oper_update,@function
gimp_iscissors_tool_oper_update:        # @gimp_iscissors_tool_oper_update
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	gimp_iscissors_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	mouse_over_vertex
	cmpl	$1, %eax
	jle	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movabsq	$.L.str.9, %rdx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rcx
	movl	$2, 264(%rcx)
	jmp	.LBB10_25
.LBB10_2:                               # %if.else
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	mouse_over_curve
	cmpq	$0, %rax
	je	.LBB10_7
# BB#3:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_peek_head
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$13, %ecx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movl	%r9d, -116(%rbp)        # 4-byte Spill
	movl	%edx, -120(%rbp)        # 4-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	rint
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	movq	-56(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm2
	movq	-56(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm3
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-120(%rbp), %edx        # 4-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	-116(%rbp), %r9d        # 4-byte Reload
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB10_5
# BB#4:                                 # %if.then.22
	movabsq	$.L.str.10, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-40(%rbp), %rdx
	movl	$4, 264(%rdx)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.25
	movabsq	$.L.str.11, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-40(%rbp), %rdx
	movl	$3, 264(%rdx)
.LBB10_6:                               # %if.end
	jmp	.LBB10_24
.LBB10_7:                               # %if.else.28
	movq	-40(%rbp), %rax
	cmpl	$0, 340(%rax)
	je	.LBB10_17
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB10_17
# BB#9:                                 # %if.then.31
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %esi
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movl	%esi, -212(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	callq	gimp_pickable_get_opacity_at
	cmpl	$0, %eax
	je	.LBB10_13
# BB#10:                                # %if.then.43
	cmpl	$0, -24(%rbp)
	je	.LBB10_12
# BB#11:                                # %if.then.45
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_replace_status
.LBB10_12:                              # %if.end.47
	movq	-40(%rbp), %rax
	movl	$1, 264(%rax)
	jmp	.LBB10_16
.LBB10_13:                              # %if.else.49
	cmpl	$0, -24(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.51
	movabsq	$.L.str.13, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_replace_status
.LBB10_15:                              # %if.end.53
	movq	-40(%rbp), %rax
	movl	$5, 264(%rax)
.LBB10_16:                              # %if.end.55
	jmp	.LBB10_23
.LBB10_17:                              # %if.else.56
	movq	-40(%rbp), %rax
	movl	344(%rax), %ecx
	subl	$3, %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	jne	.LBB10_21
	jmp	.LBB10_18
.LBB10_18:                              # %sw.bb
	cmpl	$0, -24(%rbp)
	je	.LBB10_20
# BB#19:                                # %if.then.59
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$1, %ecx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	-268(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movabsq	$.L.str.9, %rdx
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB10_20:                              # %if.end.66
	movq	-40(%rbp), %rax
	movl	$3, 264(%rax)
	jmp	.LBB10_22
.LBB10_21:                              # %sw.default
	movq	-40(%rbp), %rax
	movl	$0, 264(%rax)
.LBB10_22:                              # %sw.epilog
	jmp	.LBB10_23
.LBB10_23:                              # %if.end.69
	jmp	.LBB10_24
.LBB10_24:                              # %if.end.70
	jmp	.LBB10_25
.LBB10_25:                              # %if.end.71
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_iscissors_tool_oper_update, .Lfunc_end10-gimp_iscissors_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_cursor_update,@function
gimp_iscissors_tool_cursor_update:      # @gimp_iscissors_tool_cursor_update
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	264(%rax), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$4, %edx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	ja	.LBB11_8
# BB#13:                                # %entry
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$2, 352(%rax)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$13, -44(%rbp)
.LBB11_3:                               # %if.end
	jmp	.LBB11_9
.LBB11_4:                               # %sw.bb.7
	movl	$5, -44(%rbp)
	jmp	.LBB11_9
.LBB11_5:                               # %sw.bb.8
	movl	$2, -44(%rbp)
	jmp	.LBB11_9
.LBB11_6:                               # %sw.bb.9
	movl	$12, -44(%rbp)
	jmp	.LBB11_9
.LBB11_7:                               # %sw.bb.10
	movl	$1, -44(%rbp)
	jmp	.LBB11_9
.LBB11_8:                               # %sw.default
	jmp	.LBB11_9
.LBB11_9:                               # %sw.epilog
	cmpl	$0, -44(%rbp)
	je	.LBB11_11
# BB#10:                                # %if.then.12
	movl	$1025, %edx             # imm = 0x401
	movl	$10, %ecx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %r8d
	callq	gimp_tool_set_cursor
	jmp	.LBB11_12
.LBB11_11:                              # %if.else
	movq	gimp_iscissors_tool_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
.LBB11_12:                              # %if.end.15
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_iscissors_tool_cursor_update, .Lfunc_end11-gimp_iscissors_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_1
	.quad	.LBB11_4
	.quad	.LBB11_5
	.quad	.LBB11_6
	.quad	.LBB11_7

	.text
	.align	16, 0x90
	.type	gimp_iscissors_tool_key_press,@function
gimp_iscissors_tool_key_press:          # @gimp_iscissors_tool_key_press
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	56(%rdx), %rax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_9
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65076, %edx            # imm = 0xFE34
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_10
.LBB12_10:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_11
.LBB12_11:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB12_7
	jmp	.LBB12_12
.LBB12_12:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB12_8
	jmp	.LBB12_3
.LBB12_3:                               # %sw.bb
	movq	-40(%rbp), %rax
	cmpl	$0, 340(%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB12_6
# BB#5:                                 # %if.then.4
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_iscissors_tool_apply
	movl	$1, -4(%rbp)
	jmp	.LBB12_9
.LBB12_6:                               # %if.end.5
	movl	$0, -4(%rbp)
	jmp	.LBB12_9
.LBB12_7:                               # %sw.bb.6
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_control
	movl	$1, -4(%rbp)
	jmp	.LBB12_9
.LBB12_8:                               # %sw.default
	movl	$0, -4(%rbp)
.LBB12_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_iscissors_tool_key_press, .Lfunc_end12-gimp_iscissors_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_draw,@function
gimp_iscissors_tool_draw:               # @gimp_iscissors_tool_draw
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_iscissors_tool_get_type
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
	callq	gimp_iscissors_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 344(%rax)
	jne	.LBB13_20
# BB#1:                                 # %if.then
	movl	$4, %esi
	movl	$13, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	cvtsi2sdl	268(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	272(%rcx), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	-16(%rbp), %rdi
	cmpl	$0, 336(%rdi)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB13_19
# BB#2:                                 # %if.then.9
	movq	-24(%rbp), %rax
	cmpl	$0, 384(%rax)
	jne	.LBB13_4
# BB#3:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvtsi2sdl	276(%rax), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	280(%rax), %xmm1
	movq	-16(%rbp), %rax
	cvtsi2sdl	268(%rax), %xmm2
	movq	-16(%rbp), %rax
	cvtsi2sdl	272(%rax), %xmm3
	callq	gimp_draw_tool_add_line
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB13_18
.LBB13_4:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB13_10
# BB#5:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB13_17
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	276(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	cmpl	(%rax), %ecx
	jne	.LBB13_10
# BB#7:                                 # %lor.lhs.false.26
	movq	-16(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB13_10
# BB#8:                                 # %lor.lhs.false.31
	movq	-16(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	cmpl	4(%rax), %ecx
	jne	.LBB13_10
# BB#9:                                 # %lor.lhs.false.36
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	cmpl	12(%rax), %ecx
	je	.LBB13_17
.LBB13_10:                              # %if.then.41
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	276(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB13_16
# BB#11:                                # %if.then.53
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB13_13
# BB#12:                                # %if.then.57
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_ptr_array_free
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB13_13:                              # %if.end
	jmp	.LBB13_14
.LBB13_14:                              # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	304(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#15:                                # %do.end
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
.LBB13_16:                              # %if.end.63
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	calculate_curve
.LBB13_17:                              # %if.end.65
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	304(%rax), %rsi
	callq	iscissors_draw_curve
.LBB13_18:                              # %if.end.67
	jmp	.LBB13_19
.LBB13_19:                              # %if.end.68
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.69
	movq	-16(%rbp), %rax
	cmpl	$0, 336(%rax)
	jne	.LBB13_39
# BB#21:                                # %if.then.72
	movq	-16(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB13_23
# BB#22:                                # %if.then.74
	movl	$3, %esi
	movl	$13, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	cvtsi2sdl	276(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	280(%rcx), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB13_23:                              # %if.end.80
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_peek_head_link
	movq	%rax, -40(%rbp)
.LBB13_24:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_38
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB13_24 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$2, 344(%rax)
	jne	.LBB13_29
# BB#26:                                # %if.then.87
                                        #   in Loop: Header=BB13_24 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	312(%rcx), %rax
	jne	.LBB13_28
# BB#27:                                # %if.then.90
                                        #   in Loop: Header=BB13_24 Depth=1
	jmp	.LBB13_34
.LBB13_28:                              # %if.end.91
                                        #   in Loop: Header=BB13_24 Depth=1
	jmp	.LBB13_29
.LBB13_29:                              # %if.end.92
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	$3, %esi
	movl	$13, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movq	-48(%rbp), %rcx
	cvtsi2sdl	4(%rcx), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	-16(%rbp), %rdi
	cmpl	$2, 344(%rdi)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB13_33
# BB#30:                                # %if.then.101
                                        #   in Loop: Header=BB13_24 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	320(%rcx), %rax
	jne	.LBB13_32
# BB#31:                                # %if.then.104
                                        #   in Loop: Header=BB13_24 Depth=1
	jmp	.LBB13_34
.LBB13_32:                              # %if.end.105
                                        #   in Loop: Header=BB13_24 Depth=1
	jmp	.LBB13_33
.LBB13_33:                              # %if.end.106
                                        #   in Loop: Header=BB13_24 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	iscissors_draw_curve
.LBB13_34:                              # %for.inc
                                        #   in Loop: Header=BB13_24 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_36
# BB#35:                                # %cond.true
                                        #   in Loop: Header=BB13_24 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_37
.LBB13_36:                              # %cond.false
                                        #   in Loop: Header=BB13_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_37
.LBB13_37:                              # %cond.end
                                        #   in Loop: Header=BB13_24 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB13_24
.LBB13_38:                              # %for.end
	jmp	.LBB13_39
.LBB13_39:                              # %if.end.108
	movq	-16(%rbp), %rax
	cmpl	$2, 344(%rax)
	jne	.LBB13_45
# BB#40:                                # %if.then.112
	movq	-16(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB13_42
# BB#41:                                # %if.then.115
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	cvtsi2sdl	12(%rax), %xmm1
	movq	-16(%rbp), %rax
	cvtsi2sdl	284(%rax), %xmm2
	movq	-16(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm3
	callq	gimp_draw_tool_add_line
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB13_42:                              # %if.end.125
	movq	-16(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB13_44
# BB#43:                                # %if.then.128
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	cvtsi2sdl	4(%rax), %xmm1
	movq	-16(%rbp), %rax
	cvtsi2sdl	284(%rax), %xmm2
	movq	-16(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm3
	callq	gimp_draw_tool_add_line
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB13_44:                              # %if.end.140
	movl	$3, %esi
	movl	$13, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	cvtsi2sdl	284(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	288(%rcx), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB13_45:                              # %if.end.146
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_iscissors_tool_draw, .Lfunc_end13-gimp_iscissors_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	find_max_gradient,@function
find_max_gradient:                      # @find_max_gradient
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	$0, 360(%rcx)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gradient_map_new
	movq	-8(%rbp), %rdi
	movq	%rax, 360(%rdi)
.LBB14_2:                               # %if.end
	movl	$16, -100(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-176(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB14_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB14_8
.LBB14_4:                               # %cond.false
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB14_6
# BB#5:                                 # %cond.true.5
	xorl	%eax, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false.6
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB14_7:                               # %cond.end
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB14_8:                               # %cond.end.7
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-188(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB14_10
# BB#9:                                 # %cond.true.11
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB14_14
.LBB14_10:                              # %cond.false.13
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB14_12
# BB#11:                                # %cond.true.15
	xorl	%eax, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false.16
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB14_13:                              # %cond.end.17
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB14_14:                              # %cond.end.19
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	movl	-120(%rbp), %eax
	subl	-100(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-200(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB14_16
# BB#15:                                # %cond.true.23
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB14_20
.LBB14_16:                              # %cond.false.25
	movl	-120(%rbp), %eax
	subl	-100(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB14_18
# BB#17:                                # %cond.true.28
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB14_19
.LBB14_18:                              # %cond.false.29
	movl	-120(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB14_19:                              # %cond.end.31
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB14_20:                              # %cond.end.33
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movl	-124(%rbp), %eax
	subl	-100(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-212(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB14_22
# BB#21:                                # %cond.true.38
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB14_26
.LBB14_22:                              # %cond.false.40
	movl	-124(%rbp), %eax
	subl	-100(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB14_24
# BB#23:                                # %cond.true.43
	xorl	%eax, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB14_25
.LBB14_24:                              # %cond.false.44
	movl	-124(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB14_25:                              # %cond.end.46
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB14_26:                              # %cond.end.48
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	addl	-100(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-224(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB14_28
# BB#27:                                # %cond.true.52
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB14_32
.LBB14_28:                              # %cond.false.54
	movl	-120(%rbp), %eax
	addl	-100(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB14_30
# BB#29:                                # %cond.true.57
	xorl	%eax, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB14_31
.LBB14_30:                              # %cond.false.58
	movl	-120(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB14_31:                              # %cond.end.60
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB14_32:                              # %cond.end.62
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	addl	-100(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-236(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB14_34
# BB#33:                                # %cond.true.67
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB14_38
.LBB14_34:                              # %cond.false.69
	movl	-124(%rbp), %eax
	addl	-100(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB14_36
# BB#35:                                # %cond.true.72
	xorl	%eax, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB14_37
.LBB14_36:                              # %cond.false.73
	movl	-124(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB14_37:                              # %cond.end.75
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB14_38:                              # %cond.end.77
	movl	-240(%rbp), %eax        # 4-byte Reload
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movl	%eax, -140(%rbp)
	movss	%xmm0, -156(%rbp)
	movl	-120(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-124(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rdx
	movq	360(%rdx), %rsi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %r8d
	subl	-128(%rbp), %r8d
	movl	-140(%rbp), %r9d
	subl	-132(%rbp), %r9d
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-96(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -152(%rbp)
.LBB14_39:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_41 Depth 2
                                        #       Child Loop BB14_43 Depth 3
	cmpq	$0, -152(%rbp)
	je	.LBB14_52
# BB#40:                                # %for.body
                                        #   in Loop: Header=BB14_39 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB14_41:                              # %for.cond.89
                                        #   Parent Loop BB14_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_43 Depth 3
	movl	-104(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB14_50
# BB#42:                                # %for.body.91
                                        #   in Loop: Header=BB14_41 Depth=2
	movq	-96(%rbp), %rax
	movl	-64(%rbp), %ecx
	movl	-104(%rbp), %edx
	subl	-56(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -168(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -108(%rbp)
.LBB14_43:                              # %for.cond.95
                                        #   Parent Loop BB14_39 Depth=1
                                        #     Parent Loop BB14_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-108(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB14_48
# BB#44:                                # %for.body.97
                                        #   in Loop: Header=BB14_43 Depth=3
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -172(%rbp)
	movq	-168(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -168(%rbp)
	movl	-104(%rbp), %ecx
	subl	-132(%rbp), %ecx
	shll	$5, %ecx
	movl	-108(%rbp), %edx
	subl	-128(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movss	distance_weights(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	mulss	-172(%rbp), %xmm0
	movss	%xmm0, -172(%rbp)
	movss	-172(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	-156(%rbp), %xmm0
	jbe	.LBB14_46
# BB#45:                                # %if.then.106
                                        #   in Loop: Header=BB14_43 Depth=3
	movss	-172(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)
	movl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-104(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB14_46:                              # %if.end.107
                                        #   in Loop: Header=BB14_43 Depth=3
	jmp	.LBB14_47
.LBB14_47:                              # %for.inc
                                        #   in Loop: Header=BB14_43 Depth=3
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB14_43
.LBB14_48:                              # %for.end
                                        #   in Loop: Header=BB14_41 Depth=2
	jmp	.LBB14_49
.LBB14_49:                              # %for.inc.108
                                        #   in Loop: Header=BB14_41 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB14_41
.LBB14_50:                              # %for.end.110
                                        #   in Loop: Header=BB14_39 Depth=1
	jmp	.LBB14_51
.LBB14_51:                              # %for.inc.111
                                        #   in Loop: Header=BB14_39 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -152(%rbp)
	jmp	.LBB14_39
.LBB14_52:                              # %for.end.113
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end14:
	.size	find_max_gradient, .Lfunc_end14-find_max_gradient
	.cfi_endproc

	.align	16, 0x90
	.type	clicked_on_vertex,@function
clicked_on_vertex:                      # @clicked_on_vertex
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	mouse_over_vertex
	movl	%eax, -36(%rbp)
	cmpl	$1, -36(%rbp)
	jle	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	$1, -4(%rbp)
	jmp	.LBB15_5
.LBB15_2:                               # %if.end
	cmpl	$1, -36(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB15_5
.LBB15_4:                               # %if.end.5
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	clicked_on_curve
	movl	%eax, -4(%rbp)
.LBB15_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	clicked_on_vertex, .Lfunc_end15-clicked_on_vertex
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_iscissors_tool_apply,@function
gimp_iscissors_tool_apply:              # @gimp_iscissors_tool_apply
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
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	64(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdx
	movq	-32(%rbp), %rdi
	movl	352(%rdi), %r9d
	movq	-32(%rbp), %rdi
	movl	360(%rdi), %r8d
	movq	-32(%rbp), %rdi
	movsd	368(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	368(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
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
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_iscissors_tool_apply, .Lfunc_end16-gimp_iscissors_tool_apply
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_map_new,@function
gradient_map_new:                       # @gradient_map_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	$2, %edx
	movl	-20(%rbp), %edi         # 4-byte Reload
	movl	%eax, %esi
	callq	tile_manager_new
	movabsq	$gradmap_tile_validate, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	tile_manager_set_validate_proc
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gradient_map_new, .Lfunc_end17-gradient_map_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4629700416936869888     # double 32
.LCPI18_4:
	.quad	4640523340897627144     # double 179.60599999999999
.LCPI18_5:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI18_6:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI18_7:
	.quad	4643140847074803712     # double 254
.LCPI18_8:
	.quad	4614256656552045848     # double 3.1415926535897931
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_2:
	.long	1115422720              # float 63
.LCPI18_3:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	gradmap_tile_validate,@function
gradmap_tile_validate:                  # @gradmap_tile_validate
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, gradmap_tile_validate.first_gradient
	je	.LBB18_10
# BB#1:                                 # %if.then
	movl	$16, -228(%rbp)
	movl	$0, -196(%rbp)
.LBB18_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_4 Depth 2
	cmpl	$32, -196(%rbp)
	jge	.LBB18_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$0, -200(%rbp)
.LBB18_4:                               # %for.cond.1
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$32, -200(%rbp)
	jge	.LBB18_7
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB18_4 Depth=2
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movl	-196(%rbp), %eax
	subl	-228(%rbp), %eax
	movl	-196(%rbp), %ecx
	subl	-228(%rbp), %ecx
	imull	%ecx, %eax
	movl	-200(%rbp), %ecx
	subl	-228(%rbp), %ecx
	movl	-200(%rbp), %edx
	subl	-228(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-196(%rbp), %eax
	shll	$5, %eax
	addl	-200(%rbp), %eax
	movslq	%eax, %rsi
	movss	%xmm0, distance_weights(,%rsi,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB18_4 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB18_4
.LBB18_7:                               # %for.end
                                        #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_8
.LBB18_8:                               # %for.inc.12
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB18_2
.LBB18_9:                               # %for.end.14
	movl	$0, gradmap_tile_validate.first_gradient
.LBB18_10:                              # %if.end
	leaq	-172(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tile_manager_get_tile_coordinates
	movq	-16(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -180(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_eheight
	movl	%eax, -184(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_flush
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-172(%rbp), %esi
	movl	-176(%rbp), %edx
	movq	%rax, %rdi
	callq	tile_manager_get_tile
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_12
# BB#11:                                # %if.then.23
	jmp	.LBB18_50
.LBB18_12:                              # %if.end.24
	movq	-40(%rbp), %rdi
	callq	tile_ewidth
	movl	%eax, -188(%rbp)
	movq	-40(%rbp), %rdi
	callq	tile_eheight
	xorl	%ecx, %ecx
	movl	%eax, -192(%rbp)
	movq	-40(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	tile_data_pointer
	movq	-32(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_pickable_get_bytes
	movq	-32(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_pickable_get_bytes
	movl	-180(%rbp), %ecx
	cmpl	-188(%rbp), %ecx
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jge	.LBB18_14
# BB#13:                                # %cond.true
	movl	-180(%rbp), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB18_15
.LBB18_14:                              # %cond.false
	movl	-188(%rbp), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB18_15:                              # %cond.end
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	-288(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-180(%rbp), %eax
	cmpl	-188(%rbp), %eax
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	jge	.LBB18_17
# BB#16:                                # %cond.true.35
	movl	-180(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB18_18
.LBB18_17:                              # %cond.false.36
	movl	-188(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB18_18:                              # %cond.end.37
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	-184(%rbp), %ecx
	cmpl	-192(%rbp), %ecx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jge	.LBB18_20
# BB#19:                                # %cond.true.41
	movl	-184(%rbp), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB18_21
.LBB18_20:                              # %cond.false.42
	movl	-192(%rbp), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB18_21:                              # %cond.end.43
	movl	-308(%rbp), %eax        # 4-byte Reload
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	-284(%rbp), %edx        # 4-byte Reload
	movl	-296(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-312(%rbp), %r8d        # 4-byte Reload
	movl	-312(%rbp), %r9d        # 4-byte Reload
	movl	-304(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-168(%rbp), %rdi
	movabsq	$maxgrad_conv0, %rsi
	movl	$4, %edx
	movl	$256, %ecx              # imm = 0x100
	xorl	%eax, %eax
	movl	-60(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%r8d, -316(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -320(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-104(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movabsq	$blur_32, %rdx
	movl	$3, %ecx
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	convolve_region
	leaq	-104(%rbp), %rdi
	movabsq	$maxgrad_conv0, %rsi
	movl	$4, %edx
	movl	$256, %ecx              # imm = 0x100
	xorl	%eax, %eax
	movl	-60(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%r8d, -324(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -328(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-168(%rbp), %rdi
	movabsq	$maxgrad_conv1, %rsi
	movl	$4, %edx
	movl	$256, %ecx              # imm = 0x100
	xorl	%eax, %eax
	movl	-60(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%r8d, -332(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -336(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-104(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movabsq	$horz_deriv, %rdx
	movl	$3, %ecx
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %r8d
	xorl	%r9d, %r9d
	callq	convolve_region
	leaq	-168(%rbp), %rdi
	movabsq	$maxgrad_conv2, %rsi
	movl	$4, %edx
	movl	$256, %ecx              # imm = 0x100
	xorl	%eax, %eax
	movl	-60(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%r8d, -340(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -344(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-104(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movabsq	$vert_deriv, %rdx
	movl	$3, %ecx
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %r8d
	xorl	%r9d, %r9d
	callq	convolve_region
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	%rax, -216(%rbp)
	movl	$0, -196(%rbp)
.LBB18_22:                              # %for.cond.52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_24 Depth 2
                                        #       Child Loop BB18_26 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB18_49
# BB#23:                                # %for.body.56
                                        #   in Loop: Header=BB18_22 Depth=1
	movabsq	$maxgrad_conv2, %rax
	movabsq	$maxgrad_conv1, %rcx
	movl	-72(%rbp), %edx
	imull	-196(%rbp), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -240(%rbp)
	movl	-72(%rbp), %edx
	imull	-196(%rbp), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -248(%rbp)
	movq	-216(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	tile_ewidth
	shll	$1, %eax
	imull	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-352(%rbp), %rsi        # 8-byte Reload
	addq	%rcx, %rsi
	movq	%rsi, -224(%rbp)
	movl	$0, -200(%rbp)
.LBB18_24:                              # %for.cond.67
                                        #   Parent Loop BB18_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_26 Depth 3
	movl	-200(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB18_47
# BB#25:                                # %for.body.71
                                        #   in Loop: Header=BB18_24 Depth=2
	movq	-240(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -249(%rbp)
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -250(%rbp)
	movl	$1, -204(%rbp)
.LBB18_26:                              # %for.cond.80
                                        #   Parent Loop BB18_22 Depth=1
                                        #     Parent Loop BB18_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB18_33
# BB#27:                                # %for.body.83
                                        #   in Loop: Header=BB18_26 Depth=3
	movslq	-204(%rbp), %rax
	movq	-240(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	subl	$128, %edx
	movl	%edx, %edi
	callq	abs
	movsbl	-249(%rbp), %edi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	abs
	movl	-356(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB18_29
# BB#28:                                # %if.then.93
                                        #   in Loop: Header=BB18_26 Depth=3
	movslq	-204(%rbp), %rax
	movq	-240(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	subl	$128, %edx
	movb	%dl, %sil
	movb	%sil, -249(%rbp)
.LBB18_29:                              # %if.end.99
                                        #   in Loop: Header=BB18_26 Depth=3
	movslq	-204(%rbp), %rax
	movq	-248(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	subl	$128, %edx
	movl	%edx, %edi
	callq	abs
	movsbl	-250(%rbp), %edi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	abs
	movl	-360(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB18_31
# BB#30:                                # %if.then.109
                                        #   in Loop: Header=BB18_26 Depth=3
	movslq	-204(%rbp), %rax
	movq	-248(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	subl	$128, %edx
	movb	%dl, %sil
	movb	%sil, -250(%rbp)
.LBB18_31:                              # %if.end.115
                                        #   in Loop: Header=BB18_26 Depth=3
	jmp	.LBB18_32
.LBB18_32:                              # %for.inc.116
                                        #   in Loop: Header=BB18_26 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB18_26
.LBB18_33:                              # %for.end.118
                                        #   in Loop: Header=BB18_24 Depth=2
	cmpl	$0, -196(%rbp)
	je	.LBB18_37
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_24 Depth=2
	cmpl	$0, -200(%rbp)
	je	.LBB18_37
# BB#35:                                # %lor.lhs.false.123
                                        #   in Loop: Header=BB18_24 Depth=2
	movl	-196(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB18_37
# BB#36:                                # %lor.lhs.false.128
                                        #   in Loop: Header=BB18_24 Depth=2
	movl	-200(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB18_38
.LBB18_37:                              # %if.then.133
                                        #   in Loop: Header=BB18_24 Depth=2
	movl	-200(%rbp), %eax
	shll	$1, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-224(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-200(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-224(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	jmp	.LBB18_45
.LBB18_38:                              # %if.end.142
                                        #   in Loop: Header=BB18_24 Depth=2
	movss	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movsbl	-249(%rbp), %eax
	imull	%eax, %eax
	movsbl	-250(%rbp), %ecx
	imull	%ecx, %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	movss	%xmm0, -364(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -208(%rbp)
	movss	.LCPI18_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI18_4(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movl	-200(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rsi
	movq	-224(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
	movss	-208(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-364(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB18_43
# BB#39:                                # %if.then.162
                                        #   in Loop: Header=BB18_24 Depth=2
	cmpb	$0, -249(%rbp)
	jne	.LBB18_41
# BB#40:                                # %if.then.164
                                        #   in Loop: Header=BB18_24 Depth=2
	movsd	.LCPI18_5, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_6, %xmm1        # xmm1 = mem[0],zero
	movsbl	-250(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	jg	.LBB18_52
# BB#51:                                # %if.then.164
                                        #   in Loop: Header=BB18_24 Depth=2
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
.LBB18_52:                              # %if.then.164
                                        #   in Loop: Header=BB18_24 Depth=2
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -256(%rbp)
	jmp	.LBB18_42
.LBB18_41:                              # %if.else
                                        #   in Loop: Header=BB18_24 Depth=2
	movsbl	-250(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsbl	-249(%rbp), %eax
	movb	%al, %cl
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movb	%cl, -385(%rbp)         # 1-byte Spill
	callq	atan
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -256(%rbp)
.LBB18_42:                              # %if.end.175
                                        #   in Loop: Header=BB18_24 Depth=2
	movss	-256(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI18_5(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI18_7(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI18_8(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movl	-200(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-224(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB18_44
.LBB18_43:                              # %if.else.185
                                        #   in Loop: Header=BB18_24 Depth=2
	movl	-200(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-224(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
.LBB18_44:                              # %if.end.190
                                        #   in Loop: Header=BB18_24 Depth=2
	jmp	.LBB18_45
.LBB18_45:                              # %contin
                                        #   in Loop: Header=BB18_24 Depth=2
	movl	-52(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	movl	-52(%rbp), %eax
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -248(%rbp)
# BB#46:                                # %for.inc.197
                                        #   in Loop: Header=BB18_24 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB18_24
.LBB18_47:                              # %for.end.199
                                        #   in Loop: Header=BB18_22 Depth=1
	jmp	.LBB18_48
.LBB18_48:                              # %for.inc.200
                                        #   in Loop: Header=BB18_22 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB18_22
.LBB18_49:                              # %for.end.202
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	tile_release
.LBB18_50:                              # %return
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gradmap_tile_validate, .Lfunc_end18-gradmap_tile_validate
	.cfi_endproc

	.align	16, 0x90
	.type	mouse_over_vertex,@function
mouse_over_vertex:                      # @mouse_over_vertex
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	$0, 320(%rdi)
	movq	-16(%rbp), %rdi
	movq	$0, 312(%rdi)
	movq	-16(%rbp), %rdi
	movq	328(%rdi), %rdi
	callq	g_queue_peek_head_link
	movq	%rax, -40(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$13, %ecx
	xorl	%r9d, %r9d
	movq	56(%rax), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm2
	movq	-56(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm3
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB19_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 312(%rcx)
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -44(%rbp)
	cmpl	$0, %edx
	je	.LBB19_5
# BB#4:                                 # %if.then.10
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_17
.LBB19_5:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_11
.LBB19_6:                               # %if.else
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$13, %ecx
	xorl	%r9d, %r9d
	movq	56(%rax), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm2
	movq	-56(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm3
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB19_10
# BB#7:                                 # %if.then.20
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 320(%rcx)
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -44(%rbp)
	cmpl	$0, %edx
	je	.LBB19_9
# BB#8:                                 # %if.then.24
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_17
.LBB19_9:                               # %if.end.25
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_10
.LBB19_10:                              # %if.end.26
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_11
.LBB19_11:                              # %if.end.27
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_12
.LBB19_12:                              # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB19_15
.LBB19_14:                              # %cond.false
                                        #   in Loop: Header=BB19_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB19_15
.LBB19_15:                              # %cond.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB19_1
.LBB19_16:                              # %for.end
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB19_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	mouse_over_vertex, .Lfunc_end19-mouse_over_vertex
	.cfi_endproc

	.align	16, 0x90
	.type	clicked_on_curve,@function
clicked_on_curve:                       # @clicked_on_curve
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	mouse_over_curve
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	$24, %ecx
	movl	%ecx, %edi
	callq	g_slice_alloc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-56(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	callq	g_queue_insert_after
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 312(%rdx)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 320(%rdx)
	movl	$1, -4(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB20_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	clicked_on_curve, .Lfunc_end20-clicked_on_curve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4630263366890291200     # double 36
	.text
	.align	16, 0x90
	.type	mouse_over_curve,@function
mouse_over_curve:                       # @mouse_over_curve
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	328(%rdi), %rdi
	callq	g_queue_peek_head_link
	movq	%rax, -40(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB21_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB21_3:                               # %while.cond
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB21_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB21_3 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movl	-64(%rbp), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	movl	%ecx, -68(%rbp)
	movl	-64(%rbp), %ecx
	shrl	$16, %ecx
	movl	%ecx, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rsi
	cvtsi2sdl	-68(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_draw_tool_calc_distance_square
	movsd	.LCPI21_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_13
.LBB21_6:                               # %if.end
                                        #   in Loop: Header=BB21_3 Depth=2
	jmp	.LBB21_3
.LBB21_7:                               # %while.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_8
.LBB21_8:                               # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false
                                        #   in Loop: Header=BB21_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB21_11
.LBB21_11:                              # %cond.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB21_1
.LBB21_12:                              # %for.end
	movq	$0, -8(%rbp)
.LBB21_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	mouse_over_curve, .Lfunc_end21-mouse_over_curve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4617315517961601024     # double 5
.LCPI22_1:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	calculate_curve,@function
calculate_curve:                        # @calculate_curve
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB22_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB22_6
.LBB22_2:                               # %cond.false
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB22_4
# BB#3:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false.11
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB22_5:                               # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB22_6:                               # %cond.end.13
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	-120(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB22_8
# BB#7:                                 # %cond.true.19
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB22_12
.LBB22_8:                               # %cond.false.22
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	jge	.LBB22_10
# BB#9:                                 # %cond.true.25
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB22_11
.LBB22_10:                              # %cond.false.26
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB22_11:                              # %cond.end.28
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB22_12:                              # %cond.end.30
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	-132(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB22_14
# BB#13:                                # %cond.true.36
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_width
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB22_18
.LBB22_14:                              # %cond.false.39
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jge	.LBB22_16
# BB#15:                                # %cond.true.42
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB22_17
.LBB22_16:                              # %cond.false.43
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB22_17:                              # %cond.end.45
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB22_18:                              # %cond.end.47
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	-144(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB22_20
# BB#19:                                # %cond.true.53
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_height
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB22_24
.LBB22_20:                              # %cond.false.56
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	jge	.LBB22_22
# BB#21:                                # %cond.true.59
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB22_23
.LBB22_22:                              # %cond.false.60
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
.LBB22_23:                              # %cond.end.62
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB22_24:                              # %cond.end.64
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB22_26
# BB#25:                                # %cond.true.67
	movl	-48(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB22_27
.LBB22_26:                              # %cond.false.68
	movl	-56(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB22_27:                              # %cond.end.69
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB22_29
# BB#28:                                # %cond.true.72
	movl	-52(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB22_30
.LBB22_29:                              # %cond.false.73
	movl	-60(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB22_30:                              # %cond.end.74
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB22_32
# BB#31:                                # %cond.true.77
	movl	-48(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB22_33
.LBB22_32:                              # %cond.false.78
	movl	-56(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB22_33:                              # %cond.end.79
	movl	-164(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB22_35
# BB#34:                                # %cond.true.82
	movl	-52(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB22_36
.LBB22_35:                              # %cond.false.83
	movl	-60(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB22_36:                              # %cond.end.84
	movl	-168(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -92(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.LBB22_44
# BB#37:                                # %if.then
	movl	-88(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	subl	-72(%rbp), %eax
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB22_39
# BB#38:                                # %cond.true.101
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_width
	subl	-72(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB22_43
.LBB22_39:                              # %cond.false.104
	cmpl	$0, -88(%rbp)
	jge	.LBB22_41
# BB#40:                                # %cond.true.107
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB22_42
.LBB22_41:                              # %cond.false.108
	movl	-88(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB22_42:                              # %cond.end.109
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB22_43:                              # %cond.end.111
	movl	-176(%rbp), %eax        # 4-byte Reload
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB22_51
.LBB22_44:                              # %if.else
	movl	-88(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB22_46
# BB#45:                                # %cond.true.116
	movl	-64(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB22_50
.LBB22_46:                              # %cond.false.117
	cmpl	$0, -88(%rbp)
	jge	.LBB22_48
# BB#47:                                # %cond.true.120
	xorl	%eax, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB22_49
.LBB22_48:                              # %cond.false.121
	movl	-88(%rbp), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB22_49:                              # %cond.end.122
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB22_50:                              # %cond.end.124
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	-64(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -64(%rbp)
.LBB22_51:                              # %if.end
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB22_59
# BB#52:                                # %if.then.129
	movl	-92(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	subl	-76(%rbp), %eax
	movl	-192(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB22_54
# BB#53:                                # %cond.true.134
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_height
	subl	-76(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB22_58
.LBB22_54:                              # %cond.false.137
	cmpl	$0, -92(%rbp)
	jge	.LBB22_56
# BB#55:                                # %cond.true.140
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB22_57
.LBB22_56:                              # %cond.false.141
	movl	-92(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB22_57:                              # %cond.end.142
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB22_58:                              # %cond.end.144
	movl	-196(%rbp), %eax        # 4-byte Reload
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB22_66
.LBB22_59:                              # %if.else.147
	movl	-92(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB22_61
# BB#60:                                # %cond.true.150
	movl	-68(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB22_65
.LBB22_61:                              # %cond.false.151
	cmpl	$0, -92(%rbp)
	jge	.LBB22_63
# BB#62:                                # %cond.true.154
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB22_64
.LBB22_63:                              # %cond.false.155
	movl	-92(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB22_64:                              # %cond.end.156
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB22_65:                              # %cond.end.158
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	-68(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -68(%rbp)
.LBB22_66:                              # %if.end.161
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB22_68
# BB#67:                                # %if.then.162
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_ptr_array_free
	movq	-16(%rbp), %rdi
	movq	$0, 16(%rdi)
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB22_68:                              # %if.end.166
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB22_73
# BB#69:                                # %land.lhs.true
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB22_73
# BB#70:                                # %if.then.171
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	$0, 360(%rcx)
	jne	.LBB22_72
# BB#71:                                # %if.then.175
	movq	-32(%rbp), %rdi
	callq	gradient_map_new
	movq	-8(%rbp), %rdi
	movq	%rax, 360(%rdi)
.LBB22_72:                              # %if.end.178
	movl	$4, %esi
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	-84(%rbp), %r9d
	callq	temp_buf_resize
	movq	-8(%rbp), %rdi
	movq	%rax, 296(%rdi)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	296(%rax), %rsi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movl	-52(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	find_optimal_path
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	296(%rax), %rsi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	-60(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	plot_pixels
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB22_85
.LBB22_73:                              # %if.else.186
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB22_78
# BB#74:                                # %if.then.190
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-52(%rbp), %edx
	movl	%edx, -40(%rbp)
	movl	-52(%rbp), %edx
	cmpl	-60(%rbp), %edx
	cmovgl	%ecx, %eax
	movl	%eax, -44(%rbp)
	callq	g_ptr_array_new
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB22_75:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB22_77
# BB#76:                                # %while.body
                                        #   in Loop: Header=BB22_75 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-40(%rbp), %ecx
	shll	$16, %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rsi
	callq	g_ptr_array_add
	movl	-44(%rbp), %ecx
	addl	-40(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB22_75
.LBB22_77:                              # %while.end
	jmp	.LBB22_84
.LBB22_78:                              # %if.else.202
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB22_83
# BB#79:                                # %if.then.206
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-48(%rbp), %edx
	movl	%edx, -36(%rbp)
	movl	-48(%rbp), %edx
	cmpl	-56(%rbp), %edx
	cmovgl	%ecx, %eax
	movl	%eax, -44(%rbp)
	callq	g_ptr_array_new
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB22_80:                              # %while.cond.212
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB22_82
# BB#81:                                # %while.body.215
                                        #   in Loop: Header=BB22_80 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-52(%rbp), %ecx
	shll	$16, %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rsi
	callq	g_ptr_array_add
	movl	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB22_80
.LBB22_82:                              # %while.end.221
	jmp	.LBB22_83
.LBB22_83:                              # %if.end.222
	jmp	.LBB22_84
.LBB22_84:                              # %if.end.223
	jmp	.LBB22_85
.LBB22_85:                              # %if.end.224
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	calculate_curve, .Lfunc_end22-calculate_curve
	.cfi_endproc

	.align	16, 0x90
	.type	iscissors_convert,@function
iscissors_convert:                      # @iscissors_convert
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
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
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	callq	gimp_scan_convert_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_peek_tail_link
	movq	%rax, -48(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB23_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB23_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB23_6
.LBB23_5:                               # %cond.false
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB23_6
.LBB23_6:                               # %cond.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB23_1
.LBB23_7:                               # %for.end
	movl	$16, %eax
	movl	%eax, %esi
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_queue_peek_tail_link
	movq	%rax, -48(%rbp)
.LBB23_8:                               # %for.cond.13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_10 Depth 2
	cmpq	$0, -48(%rbp)
	je	.LBB23_18
# BB#9:                                 # %for.body.15
                                        #   in Loop: Header=BB23_8 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movl	$0, -84(%rbp)
.LBB23_10:                              # %for.cond.20
                                        #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jae	.LBB23_13
# BB#11:                                # %for.body.22
                                        #   in Loop: Header=BB23_10 Depth=2
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx,%rax,8), %edx
	movl	%edx, -92(%rbp)
	movzwl	-92(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movl	-60(%rbp), %edx
	movl	-84(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, %eax
	movq	-56(%rbp), %rcx
	shlq	$4, %rax
	movsd	%xmm0, (%rcx,%rax)
	movzwl	-90(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movl	-60(%rbp), %edx
	addl	-84(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %eax
	shlq	$4, %rax
	addq	-56(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#12:                                # %for.inc.33
                                        #   in Loop: Header=BB23_10 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB23_10
.LBB23_13:                              # %for.end.34
                                        #   in Loop: Header=BB23_8 Depth=1
	movl	-88(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#14:                                # %for.inc.36
                                        #   in Loop: Header=BB23_8 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB23_16
# BB#15:                                # %cond.true.38
                                        #   in Loop: Header=BB23_8 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_17
.LBB23_16:                              # %cond.false.40
                                        #   in Loop: Header=BB23_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_17
.LBB23_17:                              # %cond.end.41
                                        #   in Loop: Header=BB23_8 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB23_8
.LBB23_18:                              # %for.end.43
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rdx
	callq	gimp_scan_convert_add_polyline
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_free
	movq	-8(%rbp), %rdx
	cmpq	$0, 352(%rdx)
	je	.LBB23_20
# BB#19:                                # %if.then
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB23_20:                              # %if.end
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new_mask
	movq	-8(%rbp), %rdi
	movq	%rax, 352(%rdi)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movl	356(%rsi), %r8d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %ecx        # 4-byte Reload
	callq	gimp_scan_convert_render
	movq	-40(%rbp), %rdi
	callq	gimp_scan_convert_free
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	iscissors_convert, .Lfunc_end23-iscissors_convert
	.cfi_endproc

	.align	16, 0x90
	.type	find_optimal_path,@function
find_optimal_path:                      # @find_optimal_path
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
	subq	$288, %rsp              # imm = 0x120
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	temp_buf_data_clear
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	movq	%rax, -232(%rbp)
	movl	-36(%rbp), %r8d
	subl	-20(%rbp), %r8d
	cmpl	$0, %r8d
	movl	%ecx, %r8d
	cmovel	%edx, %r8d
	movl	%r8d, -72(%rbp)
	movl	-40(%rbp), %r8d
	subl	-24(%rbp), %r8d
	cmpl	$0, %r8d
	cmovel	%edx, %ecx
	movl	%ecx, -76(%rbp)
	movl	-72(%rbp), %ecx
	imull	-76(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	$0, -44(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
                                        #       Child Loop BB24_5 Depth 3
                                        #       Child Loop BB24_23 Depth 3
                                        #       Child Loop BB24_35 Depth 3
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB24_55
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-232(%rbp), %rcx
	movl	-60(%rbp), %eax
	subl	-24(%rbp), %eax
	movq	-16(%rbp), %rdx
	imull	4(%rdx), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movl	-56(%rbp), %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	movl	$0, -48(%rbp)
.LBB24_3:                               # %for.cond.10
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_5 Depth 3
                                        #       Child Loop BB24_23 Depth 3
                                        #       Child Loop BB24_35 Depth 3
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB24_53
# BB#4:                                 # %for.body.13
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	$2147483647, -80(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -52(%rbp)
.LBB24_5:                               # %for.cond.14
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -52(%rbp)
	jge	.LBB24_8
# BB#6:                                 # %for.body.16
                                        #   in Loop: Header=BB24_5 Depth=3
	movslq	-52(%rbp), %rax
	movl	$0, -224(%rbp,%rax,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB24_5 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB24_5
.LBB24_8:                               # %for.end
                                        #   in Loop: Header=BB24_3 Depth=2
	cmpl	$0, -48(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB24_3 Depth=2
	xorl	%eax, %eax
	movl	$4, %ecx
	movl	%eax, %edx
	subl	-72(%rbp), %edx
	andl	$255, %edx
	orl	$0, %edx
	cmpl	$1, -72(%rbp)
	cmovel	%ecx, %eax
	movslq	%eax, %rsi
	movl	%edx, -224(%rbp,%rsi,4)
.LBB24_10:                              # %if.end
                                        #   in Loop: Header=BB24_3 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB24_22
# BB#11:                                # %if.then.23
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	$2, %eax
	movl	$3, %ecx
	movl	$1, %edx
	movl	$5, %esi
	xorl	%edi, %edi
	subl	-76(%rbp), %edi
	andl	$255, %edi
	shll	$8, %edi
	cmpl	$1, -76(%rbp)
	cmovel	%esi, %edx
	movslq	%edx, %r8
	movl	%edi, -224(%rbp,%r8,4)
	cmpl	$1, -68(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB24_16
# BB#12:                                # %if.then.33
                                        #   in Loop: Header=BB24_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-76(%rbp), %ecx
	andl	$255, %ecx
	shll	$8, %ecx
	subl	-72(%rbp), %eax
	andl	$255, %eax
	orl	%eax, %ecx
	cmpl	$1, -76(%rbp)
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	jne	.LBB24_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB24_15
.LBB24_14:                              # %cond.false
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB24_15:                              # %cond.end
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-248(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp,%rcx,4)
.LBB24_16:                              # %if.end.44
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	$3, %eax
	movl	$2, %ecx
	cmpl	$1, -68(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB24_21
# BB#17:                                # %if.then.50
                                        #   in Loop: Header=BB24_3 Depth=2
	xorl	%eax, %eax
	subl	-76(%rbp), %eax
	andl	$255, %eax
	shll	$8, %eax
	movl	-72(%rbp), %ecx
	andl	$255, %ecx
	orl	%ecx, %eax
	cmpl	$1, -76(%rbp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jne	.LBB24_19
# BB#18:                                # %cond.true.57
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB24_20
.LBB24_19:                              # %cond.false.59
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB24_20:                              # %cond.end.60
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-256(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp,%rcx,4)
.LBB24_21:                              # %if.end.64
                                        #   in Loop: Header=BB24_3 Depth=2
	jmp	.LBB24_22
.LBB24_22:                              # %if.end.65
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	$-1, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB24_23:                              # %for.cond.66
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -52(%rbp)
	jge	.LBB24_33
# BB#24:                                # %for.body.68
                                        #   in Loop: Header=BB24_23 Depth=3
	movslq	-52(%rbp), %rax
	cmpl	$0, -224(%rbp,%rax,4)
	je	.LBB24_31
# BB#25:                                # %if.then.72
                                        #   in Loop: Header=BB24_23 Depth=3
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %eax
	movl	-48(%rbp), %ecx
	imull	-72(%rbp), %ecx
	addl	%ecx, %eax
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %edx
	imull	-76(%rbp), %edx
	addl	%edx, %ecx
	movslq	-52(%rbp), %rsi
	movl	-224(%rbp,%rsi,4), %edx
	cmpl	$3, -52(%rbp)
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jle	.LBB24_27
# BB#26:                                # %cond.true.80
                                        #   in Loop: Header=BB24_23 Depth=3
	movl	-52(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB24_28
.LBB24_27:                              # %cond.false.82
                                        #   in Loop: Header=BB24_23 Depth=3
	movl	-52(%rbp), %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB24_28:                              # %cond.end.83
                                        #   in Loop: Header=BB24_23 Depth=3
	movl	-280(%rbp), %eax        # 4-byte Reload
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	-268(%rbp), %esi        # 4-byte Reload
	movl	-272(%rbp), %edx        # 4-byte Reload
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	calculate_link
	movslq	-52(%rbp), %rdi
	movl	%eax, -160(%rbp,%rdi,4)
	movslq	-52(%rbp), %rdi
	movl	-224(%rbp,%rdi,4), %eax
	andl	$255, %eax
	movb	%al, %r9b
	movsbl	%r9b, %eax
	movslq	-52(%rbp), %rdi
	movl	-224(%rbp,%rdi,4), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shrl	$8, %ecx
	movb	%cl, %r9b
	movsbl	%r9b, %ecx
	movq	-16(%rbp), %rdi
	imull	4(%rdi), %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movslq	-88(%rbp), %rdi
	movq	-240(%rbp), %r10
	movl	(%r10,%rdi,4), %eax
	shrl	$8, %eax
	movslq	-52(%rbp), %rdi
	movl	%eax, -192(%rbp,%rdi,4)
	movslq	-52(%rbp), %rdi
	movl	-192(%rbp,%rdi,4), %eax
	movslq	-52(%rbp), %rdi
	addl	-160(%rbp,%rdi,4), %eax
	movslq	-52(%rbp), %rdi
	movl	%eax, -128(%rbp,%rdi,4)
	movslq	-52(%rbp), %rdi
	movl	-128(%rbp,%rdi,4), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB24_30
# BB#29:                                # %if.then.116
                                        #   in Loop: Header=BB24_23 Depth=3
	movslq	-52(%rbp), %rax
	movl	-128(%rbp,%rax,4), %ecx
	movl	%ecx, -80(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, -64(%rbp)
.LBB24_30:                              # %if.end.119
                                        #   in Loop: Header=BB24_23 Depth=3
	jmp	.LBB24_31
.LBB24_31:                              # %if.end.120
                                        #   in Loop: Header=BB24_23 Depth=3
	jmp	.LBB24_32
.LBB24_32:                              # %for.inc.121
                                        #   in Loop: Header=BB24_23 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB24_23
.LBB24_33:                              # %for.end.123
                                        #   in Loop: Header=BB24_3 Depth=2
	cmpl	$0, -64(%rbp)
	jl	.LBB24_47
# BB#34:                                # %if.then.126
                                        #   in Loop: Header=BB24_3 Depth=2
	movslq	-64(%rbp), %rax
	movl	-128(%rbp,%rax,4), %ecx
	shll	$8, %ecx
	addl	-64(%rbp), %ecx
	movq	-240(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -52(%rbp)
.LBB24_35:                              # %for.cond.131
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -52(%rbp)
	jge	.LBB24_46
# BB#36:                                # %for.body.134
                                        #   in Loop: Header=BB24_35 Depth=3
	movslq	-52(%rbp), %rax
	cmpl	$0, -224(%rbp,%rax,4)
	je	.LBB24_44
# BB#37:                                # %land.lhs.true
                                        #   in Loop: Header=BB24_35 Depth=3
	movl	-52(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB24_44
# BB#38:                                # %if.then.140
                                        #   in Loop: Header=BB24_35 Depth=3
	movslq	-52(%rbp), %rax
	movl	-160(%rbp,%rax,4), %ecx
	movslq	-64(%rbp), %rax
	addl	-128(%rbp,%rax,4), %ecx
	movl	%ecx, -84(%rbp)
	movslq	-52(%rbp), %rax
	movl	-192(%rbp,%rax,4), %ecx
	cmpl	-84(%rbp), %ecx
	jle	.LBB24_43
# BB#39:                                # %if.then.150
                                        #   in Loop: Header=BB24_35 Depth=3
	movslq	-52(%rbp), %rax
	movl	-224(%rbp,%rax,4), %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movslq	-52(%rbp), %rax
	movl	-224(%rbp,%rax,4), %esi
	andl	$65280, %esi            # imm = 0xFF00
	shrl	$8, %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	movq	-16(%rbp), %rax
	imull	4(%rax), %esi
	addl	%esi, %ecx
	movl	%ecx, -88(%rbp)
	movl	-84(%rbp), %ecx
	shll	$8, %ecx
	cmpl	$3, -52(%rbp)
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	jle	.LBB24_41
# BB#40:                                # %cond.true.168
                                        #   in Loop: Header=BB24_35 Depth=3
	movl	-52(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB24_42
.LBB24_41:                              # %cond.false.170
                                        #   in Loop: Header=BB24_35 Depth=3
	movl	-52(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB24_42:                              # %cond.end.172
                                        #   in Loop: Header=BB24_35 Depth=3
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movslq	-88(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
.LBB24_43:                              # %if.end.177
                                        #   in Loop: Header=BB24_35 Depth=3
	jmp	.LBB24_44
.LBB24_44:                              # %if.end.178
                                        #   in Loop: Header=BB24_35 Depth=3
	jmp	.LBB24_45
.LBB24_45:                              # %for.inc.179
                                        #   in Loop: Header=BB24_35 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB24_35
.LBB24_46:                              # %for.end.181
                                        #   in Loop: Header=BB24_3 Depth=2
	jmp	.LBB24_51
.LBB24_47:                              # %if.else
                                        #   in Loop: Header=BB24_3 Depth=2
	cmpl	$0, -44(%rbp)
	jne	.LBB24_50
# BB#48:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB24_3 Depth=2
	cmpl	$0, -48(%rbp)
	jne	.LBB24_50
# BB#49:                                # %if.then.185
                                        #   in Loop: Header=BB24_3 Depth=2
	movq	-240(%rbp), %rax
	movl	$9, (%rax)
.LBB24_50:                              # %if.end.186
                                        #   in Loop: Header=BB24_3 Depth=2
	jmp	.LBB24_51
.LBB24_51:                              # %if.end.187
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-72(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	movl	-72(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
# BB#52:                                # %for.inc.191
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB24_3
.LBB24_53:                              # %for.end.193
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-76(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#54:                                # %for.inc.195
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB24_1
.LBB24_55:                              # %for.end.197
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end24:
	.size	find_optimal_path, .Lfunc_end24-find_optimal_path
	.cfi_endproc

	.align	16, 0x90
	.type	plot_pixels,@function
plot_pixels:                            # @plot_pixels
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
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-40(%rbp), %ecx
	subl	-24(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rax
	movl	-36(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rax
	movq	%rax, -72(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	callq	g_ptr_array_new
	movq	%rax, -80(%rbp)
.LBB25_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	shll	$16, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	callq	g_ptr_array_add
	movq	-72(%rbp), %rsi
	movl	(%rsi), %eax
	andl	$255, %eax
	movl	%eax, -56(%rbp)
	cmpl	$9, -56(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movq	-80(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.LBB25_3:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movslq	-56(%rbp), %rax
	movl	move(,%rax,8), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movslq	-56(%rbp), %rax
	movl	move+4(,%rax,8), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movslq	-56(%rbp), %rax
	movl	move+4(,%rax,8), %ecx
	imull	-60(%rbp), %ecx
	movslq	-56(%rbp), %rax
	addl	move(,%rax,8), %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB25_1
.Lfunc_end25:
	.size	plot_pixels, .Lfunc_end25-plot_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI26_1:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	calculate_link,@function
calculate_link:                         # @calculate_link
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
	subq	$32, %rsp
	leaq	-29(%rbp), %rax
	leaq	-30(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rcx
	movq	%r9, %r8
	callq	gradient_map_value
	cmpl	$0, %eax
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movb	$0, -29(%rbp)
	movb	$-1, -30(%rbp)
.LBB26_2:                               # %if.end
	movl	$255, %eax
	movzbl	-29(%rbp), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -29(%rbp)
	cmpl	$1, -24(%rbp)
	jle	.LBB26_4
# BB#3:                                 # %if.then.3
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-29(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdl	diagonal_weight(,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.else
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-29(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
.LBB26_5:                               # %if.end.13
	leaq	-31(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movb	%al, %dl
	movsbl	%dl, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	shrl	$8, %eax
	movb	%al, %dl
	movsbl	%dl, %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gradient_map_value
	cmpl	$0, %eax
	jne	.LBB26_7
# BB#6:                                 # %if.then.23
	movb	$0, -31(%rbp)
	movb	$-1, -32(%rbp)
.LBB26_7:                               # %if.end.24
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movabsq	$direction_value, %rax
	movslq	-24(%rbp), %rcx
	movzbl	-30(%rbp), %edx
	movl	%edx, %esi
	shlq	$4, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movl	(%rdi,%rcx,4), %edx
	movslq	-24(%rbp), %rcx
	movzbl	-32(%rbp), %r8d
	movl	%r8d, %esi
	shlq	$4, %rsi
	addq	%rsi, %rax
	addl	(%rax,%rcx,4), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	calculate_link, .Lfunc_end26-calculate_link
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_map_value,@function
gradient_map_value:                     # @gradient_map_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, cur_tile
	je	.LBB27_3
# BB#1:                                 # %lor.lhs.false
	movl	$64, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	gradient_map_value.cur_tilex, %eax
	jne	.LBB27_3
# BB#2:                                 # %lor.lhs.false.1
	movl	$64, %eax
	movl	-24(%rbp), %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	gradient_map_value.cur_tiley, %eax
	je	.LBB27_8
.LBB27_3:                               # %if.then
	cmpq	$0, cur_tile
	je	.LBB27_5
# BB#4:                                 # %if.then.5
	xorl	%esi, %esi
	movq	cur_tile, %rdi
	callq	tile_release
.LBB27_5:                               # %if.end
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, cur_tile
	cmpq	$0, cur_tile
	jne	.LBB27_7
# BB#6:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB27_9
.LBB27_7:                               # %if.end.8
	movl	$64, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, gradient_map_value.cur_tilex
	movl	-24(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, gradient_map_value.cur_tiley
.LBB27_8:                               # %if.end.11
	movq	cur_tile, %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	movq	-48(%rbp), %rax
	movb	1(%rax), %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movl	$1, -4(%rbp)
.LBB27_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gradient_map_value, .Lfunc_end27-gradient_map_value
	.cfi_endproc

	.align	16, 0x90
	.type	iscissors_draw_curve,@function
iscissors_draw_curve:                   # @iscissors_draw_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_7
.LBB28_2:                               # %if.end
	movl	$16, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -40(%rbp)
	movslq	-40(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB28_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB28_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movzwl	-44(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rdx
	shlq	$4, %rax
	movsd	%xmm0, (%rdx,%rax)
	movzwl	-42(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB28_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB28_3
.LBB28_6:                               # %for.end
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	gimp_draw_tool_add_lines
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_free
.LBB28_7:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	iscissors_draw_curve, .Lfunc_end28-iscissors_draw_curve
	.cfi_endproc

	.type	gimp_iscissors_tool_get_type.g_define_type_id__volatile,@object # @gimp_iscissors_tool_get_type.g_define_type_id__volatile
	.local	gimp_iscissors_tool_get_type.g_define_type_id__volatile
	.comm	gimp_iscissors_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpIscissorsTool"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-iscissors-tool"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Scissors"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Scissors Select Tool: Select shapes using intelligent edge-fitting"
	.size	.L.str.3, 67

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Intelligent _Scissors"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"I"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-iscissors"
	.size	.L.str.6, 20

	.type	gimp_iscissors_tool_parent_class,@object # @gimp_iscissors_tool_parent_class
	.local	gimp_iscissors_tool_parent_class
	.comm	gimp_iscissors_tool_parent_class,8,8
	.type	GimpIscissorsTool_private_offset,@object # @GimpIscissorsTool_private_offset
	.local	GimpIscissorsTool_private_offset
	.comm	GimpIscissorsTool_private_offset,4,4
	.type	diagonal_weight,@object # @diagonal_weight
	.local	diagonal_weight
	.comm	diagonal_weight,1024,16
	.type	direction_value,@object # @direction_value
	.local	direction_value
	.comm	direction_value,4096,16
	.type	cur_tile,@object        # @cur_tile
	.local	cur_tile
	.comm	cur_tile,8,8
	.type	distance_weights,@object # @distance_weights
	.local	distance_weights
	.comm	distance_weights,4096,16
	.type	gradmap_tile_validate.first_gradient,@object # @gradmap_tile_validate.first_gradient
	.data
	.align	4
gradmap_tile_validate.first_gradient:
	.long	1                       # 0x1
	.size	gradmap_tile_validate.first_gradient, 4

	.type	maxgrad_conv0,@object   # @maxgrad_conv0
	.local	maxgrad_conv0
	.comm	maxgrad_conv0,16384,16
	.type	blur_32,@object         # @blur_32
	.section	.rodata,"a",@progbits
	.align	16
blur_32:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1103101952              # float 2.400000e+01
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	blur_32, 36

	.type	maxgrad_conv1,@object   # @maxgrad_conv1
	.local	maxgrad_conv1
	.comm	maxgrad_conv1,16384,16
	.type	horz_deriv,@object      # @horz_deriv
	.align	16
horz_deriv:
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	3212836864              # float -1.000000e+00
	.long	1073741824              # float 2.000000e+00
	.long	0                       # float 0.000000e+00
	.long	3221225472              # float -2.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	3212836864              # float -1.000000e+00
	.size	horz_deriv, 36

	.type	maxgrad_conv2,@object   # @maxgrad_conv2
	.local	maxgrad_conv2
	.comm	maxgrad_conv2,16384,16
	.type	vert_deriv,@object      # @vert_deriv
	.align	16
vert_deriv:
	.long	1065353216              # float 1.000000e+00
	.long	1073741824              # float 2.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	3212836864              # float -1.000000e+00
	.long	3221225472              # float -2.000000e+00
	.long	3212836864              # float -1.000000e+00
	.size	vert_deriv, 36

	.type	gradient_map_value.cur_tilex,@object # @gradient_map_value.cur_tilex
	.local	gradient_map_value.cur_tilex
	.comm	gradient_map_value.cur_tilex,4,4
	.type	gradient_map_value.cur_tiley,@object # @gradient_map_value.cur_tiley
	.local	gradient_map_value.cur_tiley
	.comm	gradient_map_value.cur_tiley,4,4
	.type	move,@object            # @move
	.align	16
move:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	8,255
	.size	move, 64

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Click-Drag to move this point"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s: disable auto-snap"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Click to close the curve"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Click to add a point on this segment"
	.size	.L.str.11, 37

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Click or press Enter to convert to a selection"
	.size	.L.str.12, 47

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Press Enter to convert to a selection"
	.size	.L.str.13, 38

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Click or Click-Drag to add a point"
	.size	.L.str.14, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
