	.text
	.file	"gimpdrawtool.bc"
	.globl	gimp_draw_tool_get_type
	.align	16, 0x90
	.type	gimp_draw_tool_get_type,@function
gimp_draw_tool_get_type:                # @gimp_draw_tool_get_type
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
	movq	gimp_draw_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_draw_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_draw_tool_class_intern_init, %rdi
	movl	$248, %r8d
	movabsq	$gimp_draw_tool_init, %rcx
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
	movabsq	$gimp_draw_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_draw_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_draw_tool_get_type, .Lfunc_end0-gimp_draw_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_class_intern_init,@function
gimp_draw_tool_class_intern_init:       # @gimp_draw_tool_class_intern_init
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
	movq	%rax, gimp_draw_tool_parent_class
	cmpl	$0, GimpDrawTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDrawTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_draw_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_draw_tool_class_intern_init, .Lfunc_end1-gimp_draw_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_init,@function
gimp_draw_tool_init:                    # @gimp_draw_tool_init
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
	movq	$0, 200(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 208(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 224(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 232(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_draw_tool_init, .Lfunc_end2-gimp_draw_tool_init
	.cfi_endproc

	.globl	gimp_draw_tool_start
	.align	16, 0x90
	.type	gimp_draw_tool_start,@function
gimp_draw_tool_start:                   # @gimp_draw_tool_start
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_start, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_30
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_start, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_30
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB3_27
# BB#26:                                # %if.then.42
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_start, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_30
.LBB3_28:                               # %if.end.44
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.45
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_draw
.LBB3_30:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_draw_tool_start, .Lfunc_end3-gimp_draw_tool_start
	.cfi_endproc

	.globl	gimp_draw_tool_is_active
	.align	16, 0x90
	.type	gimp_draw_tool_is_active,@function
gimp_draw_tool_is_active:               # @gimp_draw_tool_is_active
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_draw_tool_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_is_active, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_draw_tool_is_active, .Lfunc_end4-gimp_draw_tool_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_draw,@function
gimp_draw_tool_draw:                    # @gimp_draw_tool_draw
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	g_get_monotonic_time
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB5_16
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 208(%rax)
	jne	.LBB5_16
# BB#2:                                 # %land.lhs.true.1
	movq	-8(%rbp), %rax
	cmpl	$0, 212(%rax)
	je	.LBB5_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	216(%rcx), %rax
	cmpq	$50000, %rax            # imm = 0xC350
	jbe	.LBB5_16
.LBB5_4:                                # %if.then
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 212(%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movl	212(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 212(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB5_6:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_undraw
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	280(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB5_11
# BB#7:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L__func__.gimp_draw_tool_draw, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
.LBB5_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB5_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_pop_group
	jmp	.LBB5_8
.LBB5_10:                               # %while.end
	jmp	.LBB5_11
.LBB5_11:                               # %if.end.18
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB5_13
# BB#12:                                # %if.then.20
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	224(%rax), %rsi
	callq	gimp_display_shell_add_preview_item
.LBB5_13:                               # %if.end.22
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB5_15
# BB#14:                                # %if.then.24
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rsi
	callq	gimp_display_shell_add_tool_item
.LBB5_15:                               # %if.end.26
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx)
.LBB5_16:                               # %if.end.28
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_draw_tool_draw, .Lfunc_end5-gimp_draw_tool_draw
	.cfi_endproc

	.globl	gimp_draw_tool_stop
	.align	16, 0x90
	.type	gimp_draw_tool_stop,@function
gimp_draw_tool_stop:                    # @gimp_draw_tool_stop
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_stop, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_20
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$1, %eax
	jne	.LBB6_15
# BB#14:                                # %if.then.14
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_stop, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_20
.LBB6_16:                               # %if.end.16
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.17
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_undraw
	movq	-8(%rbp), %rdi
	cmpl	$0, 212(%rdi)
	je	.LBB6_19
# BB#18:                                # %if.then.19
	movq	-8(%rbp), %rax
	movl	212(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 212(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB6_19:                               # %if.end.23
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 200(%rax)
.LBB6_20:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_draw_tool_stop, .Lfunc_end6-gimp_draw_tool_stop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_undraw,@function
gimp_draw_tool_undraw:                  # @gimp_draw_tool_undraw
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 200(%rdi)
	je	.LBB7_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	224(%rax), %rsi
	callq	gimp_display_shell_remove_preview_item
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 224(%rax)
.LBB7_3:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB7_5
# BB#4:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rsi
	callq	gimp_display_shell_remove_tool_item
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 232(%rax)
.LBB7_5:                                # %if.end.12
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.13
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_draw_tool_undraw, .Lfunc_end7-gimp_draw_tool_undraw
	.cfi_endproc

	.globl	gimp_draw_tool_pause
	.align	16, 0x90
	.type	gimp_draw_tool_pause,@function
gimp_draw_tool_pause:                   # @gimp_draw_tool_pause
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_pause, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_14
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 208(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 212(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	212(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 212(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB8_14:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_draw_tool_pause, .Lfunc_end8-gimp_draw_tool_pause
	.cfi_endproc

	.globl	gimp_draw_tool_resume
	.align	16, 0x90
	.type	gimp_draw_tool_resume,@function
gimp_draw_tool_resume:                  # @gimp_draw_tool_resume
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_resume, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_22
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 208(%rax)
	jle	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_resume, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_22
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 208(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 208(%rax)
	jne	.LBB9_22
# BB#18:                                # %if.then.20
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB9_21
# BB#19:                                # %land.lhs.true.23
	movq	-8(%rbp), %rax
	cmpl	$0, 212(%rax)
	jne	.LBB9_21
# BB#20:                                # %if.then.25
	movl	$100, %edi
	movl	$4, %esi
	movabsq	$gimp_draw_tool_draw_timeout, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	gdk_threads_add_timeout_full
	movq	-8(%rbp), %rcx
	movl	%eax, 212(%rcx)
.LBB9_21:                               # %if.end.28
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_draw
.LBB9_22:                               # %if.end.29
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_draw_tool_resume, .Lfunc_end9-gimp_draw_tool_resume
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_draw_timeout,@function
gimp_draw_tool_draw_timeout:            # @gimp_draw_tool_draw_timeout
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	callq	g_get_monotonic_time
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	subq	216(%rdi), %rax
	cmpq	$50000, %rax            # imm = 0xC350
	ja	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	$0, 212(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_draw_tool_draw
	movl	$0, -4(%rbp)
.LBB10_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_draw_tool_draw_timeout, .Lfunc_end10-gimp_draw_tool_draw_timeout
	.cfi_endproc

	.globl	gimp_draw_tool_calc_distance
	.align	16, 0x90
	.type	gimp_draw_tool_calc_distance,@function
gimp_draw_tool_calc_distance:           # @gimp_draw_tool_calc_distance
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	callq	sqrt
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_draw_tool_calc_distance, .Lfunc_end11-gimp_draw_tool_calc_distance
	.cfi_endproc

	.globl	gimp_draw_tool_calc_distance_square
	.align	16, 0x90
	.type	gimp_draw_tool_calc_distance_square,@function
gimp_draw_tool_calc_distance_square:    # @gimp_draw_tool_calc_distance_square
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_calc_distance_square, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_25
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB12_19:                              # %if.end.31
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.35
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_calc_distance_square, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_25
.LBB12_23:                              # %if.end.37
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.38
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB12_25:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_draw_tool_calc_distance_square, .Lfunc_end12-gimp_draw_tool_calc_distance_square
	.cfi_endproc

	.globl	gimp_draw_tool_add_preview
	.align	16, 0x90
	.type	gimp_draw_tool_add_preview,@function
gimp_draw_tool_add_preview:             # @gimp_draw_tool_add_preview
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_27
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_preview, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_27
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB13_26
# BB#25:                                # %if.then.40
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_canvas_group_new
	movq	-8(%rbp), %rdi
	movq	%rax, 224(%rdi)
.LBB13_26:                              # %if.end.44
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_add_item
.LBB13_27:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_draw_tool_add_preview, .Lfunc_end13-gimp_draw_tool_add_preview
	.cfi_endproc

	.globl	gimp_draw_tool_remove_preview
	.align	16, 0x90
	.type	gimp_draw_tool_remove_preview,@function
gimp_draw_tool_remove_preview:          # @gimp_draw_tool_remove_preview
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_remove_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_30
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_remove_preview, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_30
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	jmp	.LBB14_25
.LBB14_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB14_27
# BB#26:                                # %if.then.41
	jmp	.LBB14_28
.LBB14_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_remove_preview, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_30
.LBB14_28:                              # %if.end.43
	jmp	.LBB14_29
.LBB14_29:                              # %do.end.44
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_remove_item
.LBB14_30:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_draw_tool_remove_preview, .Lfunc_end14-gimp_draw_tool_remove_preview
	.cfi_endproc

	.globl	gimp_draw_tool_add_item
	.align	16, 0x90
	.type	gimp_draw_tool_add_item,@function
gimp_draw_tool_add_item:                # @gimp_draw_tool_add_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_item, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_29
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_item, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_29
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	jne	.LBB15_26
# BB#25:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_canvas_group_new
	movq	-8(%rbp), %rdi
	movq	%rax, 232(%rdi)
.LBB15_26:                              # %if.end.45
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB15_28
# BB#27:                                # %if.then.50
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB15_28:                              # %if.end.52
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_group_add_item
.LBB15_29:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_draw_tool_add_item, .Lfunc_end15-gimp_draw_tool_add_item
	.cfi_endproc

	.globl	gimp_draw_tool_remove_item
	.align	16, 0x90
	.type	gimp_draw_tool_remove_item,@function
gimp_draw_tool_remove_item:             # @gimp_draw_tool_remove_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_remove_item, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_30
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_remove_item, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_30
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB16_27
# BB#26:                                # %if.then.42
	jmp	.LBB16_28
.LBB16_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_remove_item, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_30
.LBB16_28:                              # %if.end.44
	jmp	.LBB16_29
.LBB16_29:                              # %do.end.45
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_remove_item
.LBB16_30:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_draw_tool_remove_item, .Lfunc_end16-gimp_draw_tool_remove_item
	.cfi_endproc

	.globl	gimp_draw_tool_add_stroke_group
	.align	16, 0x90
	.type	gimp_draw_tool_add_stroke_group,@function
gimp_draw_tool_add_stroke_group:        # @gimp_draw_tool_add_stroke_group
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_stroke_group, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_canvas_group_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_canvas_group_set_group_stroking
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB17_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_draw_tool_add_stroke_group, .Lfunc_end17-gimp_draw_tool_add_stroke_group
	.cfi_endproc

	.globl	gimp_draw_tool_add_fill_group
	.align	16, 0x90
	.type	gimp_draw_tool_add_fill_group,@function
gimp_draw_tool_add_fill_group:          # @gimp_draw_tool_add_fill_group
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_fill_group, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_canvas_group_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_canvas_group_set_group_filling
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB18_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_draw_tool_add_fill_group, .Lfunc_end18-gimp_draw_tool_add_fill_group
	.cfi_endproc

	.globl	gimp_draw_tool_push_group
	.align	16, 0x90
	.type	gimp_draw_tool_push_group,@function
gimp_draw_tool_push_group:              # @gimp_draw_tool_push_group
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_push_group, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_25
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_group_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB19_20
.LBB19_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB19_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB19_19
.LBB19_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB19_19:                              # %if.end.31
	jmp	.LBB19_20
.LBB19_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB19_22
# BB#21:                                # %if.then.35
	jmp	.LBB19_23
.LBB19_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_push_group, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_25
.LBB19_23:                              # %if.end.37
	jmp	.LBB19_24
.LBB19_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 240(%rsi)
.LBB19_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_draw_tool_push_group, .Lfunc_end19-gimp_draw_tool_push_group
	.cfi_endproc

	.globl	gimp_draw_tool_pop_group
	.align	16, 0x90
	.type	gimp_draw_tool_pop_group,@function
gimp_draw_tool_pop_group:               # @gimp_draw_tool_pop_group
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_pop_group, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_18
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB20_15
# BB#14:                                # %if.then.13
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_pop_group, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_18
.LBB20_16:                              # %if.end.15
	jmp	.LBB20_17
.LBB20_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	(%rax), %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 240(%rsi)
.LBB20_18:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_draw_tool_pop_group, .Lfunc_end20-gimp_draw_tool_pop_group
	.cfi_endproc

	.globl	gimp_draw_tool_add_line
	.align	16, 0x90
	.type	gimp_draw_tool_add_line,@function
gimp_draw_tool_add_line:                # @gimp_draw_tool_add_line
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_line, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_canvas_line_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB21_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_draw_tool_add_line, .Lfunc_end21-gimp_draw_tool_add_line
	.cfi_endproc

	.globl	gimp_draw_tool_add_guide
	.align	16, 0x90
	.type	gimp_draw_tool_add_guide,@function
gimp_draw_tool_add_guide:               # @gimp_draw_tool_add_guide
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_guide, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_canvas_guide_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB22_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_draw_tool_add_guide, .Lfunc_end22-gimp_draw_tool_add_guide
	.cfi_endproc

	.globl	gimp_draw_tool_add_crosshair
	.align	16, 0x90
	.type	gimp_draw_tool_add_crosshair,@function
gimp_draw_tool_add_crosshair:           # @gimp_draw_tool_add_crosshair
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movl	$1, %esi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	gimp_draw_tool_add_guide
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %edx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_add_guide
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_pop_group
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_draw_tool_add_crosshair, .Lfunc_end23-gimp_draw_tool_add_crosshair
	.cfi_endproc

	.globl	gimp_draw_tool_add_sample_point
	.align	16, 0x90
	.type	gimp_draw_tool_add_sample_point,@function
gimp_draw_tool_add_sample_point:        # @gimp_draw_tool_add_sample_point
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_sample_point, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_13
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movl	$1, %r8d
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_canvas_sample_point_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_draw_tool_add_sample_point, .Lfunc_end24-gimp_draw_tool_add_sample_point
	.cfi_endproc

	.globl	gimp_draw_tool_add_rectangle
	.align	16, 0x90
	.type	gimp_draw_tool_add_rectangle,@function
gimp_draw_tool_add_rectangle:           # @gimp_draw_tool_add_rectangle
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_rectangle, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_canvas_rectangle_new
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB25_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_draw_tool_add_rectangle, .Lfunc_end25-gimp_draw_tool_add_rectangle
	.cfi_endproc

	.globl	gimp_draw_tool_add_rectangle_guides
	.align	16, 0x90
	.type	gimp_draw_tool_add_rectangle_guides,@function
gimp_draw_tool_add_rectangle_guides:    # @gimp_draw_tool_add_rectangle_guides
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_rectangle_guides, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movl	$4, %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_canvas_rectangle_guides_new
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB26_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_draw_tool_add_rectangle_guides, .Lfunc_end26-gimp_draw_tool_add_rectangle_guides
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_draw_tool_add_arc
	.align	16, 0x90
	.type	gimp_draw_tool_add_arc,@function
gimp_draw_tool_add_arc:                 # @gimp_draw_tool_add_arc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	%xmm4, -64(%rbp)
	movsd	%xmm5, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_arc, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_13
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	divsd	%xmm0, %xmm4
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm5        # xmm5 = mem[0],zero
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gimp_canvas_arc_new
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB27_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_draw_tool_add_arc, .Lfunc_end27-gimp_draw_tool_add_arc
	.cfi_endproc

	.globl	gimp_draw_tool_add_handle
	.align	16, 0x90
	.type	gimp_draw_tool_add_handle,@function
gimp_draw_tool_add_handle:              # @gimp_draw_tool_add_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_handle, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movl	-20(%rbp), %esi
	movl	-52(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_canvas_handle_new
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB28_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_draw_tool_add_handle, .Lfunc_end28-gimp_draw_tool_add_handle
	.cfi_endproc

	.globl	gimp_draw_tool_add_corner
	.align	16, 0x90
	.type	gimp_draw_tool_add_corner,@function
gimp_draw_tool_add_corner:              # @gimp_draw_tool_add_corner
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_corner, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-32(%rbp), %xmm2
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-40(%rbp), %xmm3
	movl	-68(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_canvas_corner_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_canvas_item_set_highlight
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB29_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_draw_tool_add_corner, .Lfunc_end29-gimp_draw_tool_add_corner
	.cfi_endproc

	.globl	gimp_draw_tool_add_lines
	.align	16, 0x90
	.type	gimp_draw_tool_add_lines,@function
gimp_draw_tool_add_lines:               # @gimp_draw_tool_add_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_lines, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB30_16
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB30_14
# BB#13:                                # %lor.lhs.false
	cmpl	$2, -28(%rbp)
	jge	.LBB30_15
.LBB30_14:                              # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB30_16
.LBB30_15:                              # %if.end.14
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_canvas_polygon_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB30_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_draw_tool_add_lines, .Lfunc_end30-gimp_draw_tool_add_lines
	.cfi_endproc

	.globl	gimp_draw_tool_add_strokes
	.align	16, 0x90
	.type	gimp_draw_tool_add_strokes,@function
gimp_draw_tool_add_strokes:             # @gimp_draw_tool_add_strokes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_strokes, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB31_16
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB31_14
# BB#13:                                # %lor.lhs.false
	cmpl	$2, -28(%rbp)
	jge	.LBB31_15
.LBB31_14:                              # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB31_16
.LBB31_15:                              # %if.end.14
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_canvas_polygon_new_from_coords
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_draw_tool_add_strokes, .Lfunc_end31-gimp_draw_tool_add_strokes
	.cfi_endproc

	.globl	gimp_draw_tool_add_path
	.align	16, 0x90
	.type	gimp_draw_tool_add_path,@function
gimp_draw_tool_add_path:                # @gimp_draw_tool_add_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_path, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_18
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	jmp	.LBB32_13
.LBB32_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB32_15
# BB#14:                                # %if.then.13
	jmp	.LBB32_16
.LBB32_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_path, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_18
.LBB32_16:                              # %if.end.15
	jmp	.LBB32_17
.LBB32_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_canvas_path_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB32_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_draw_tool_add_path, .Lfunc_end32-gimp_draw_tool_add_path
	.cfi_endproc

	.globl	gimp_draw_tool_add_pen
	.align	16, 0x90
	.type	gimp_draw_tool_add_pen,@function
gimp_draw_tool_add_pen:                 # @gimp_draw_tool_add_pen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_pen, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB33_16
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB33_14
# BB#13:                                # %lor.lhs.false
	cmpl	$2, -28(%rbp)
	jge	.LBB33_15
.LBB33_14:                              # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB33_16
.LBB33_15:                              # %if.end.14
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_canvas_pen_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB33_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_draw_tool_add_pen, .Lfunc_end33-gimp_draw_tool_add_pen
	.cfi_endproc

	.globl	gimp_draw_tool_add_boundary
	.align	16, 0x90
	.type	gimp_draw_tool_add_boundary,@function
gimp_draw_tool_add_boundary:            # @gimp_draw_tool_add_boundary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_boundary, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	jmp	.LBB34_13
.LBB34_13:                              # %do.body.11
	cmpl	$0, -28(%rbp)
	jle	.LBB34_15
# BB#14:                                # %if.then.13
	jmp	.LBB34_16
.LBB34_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_boundary, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_16:                              # %if.end.15
	jmp	.LBB34_17
.LBB34_17:                              # %do.end.16
	jmp	.LBB34_18
.LBB34_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB34_20
# BB#19:                                # %if.then.19
	jmp	.LBB34_21
.LBB34_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_boundary, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_21:                              # %if.end.21
	jmp	.LBB34_22
.LBB34_22:                              # %do.end.22
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_canvas_boundary_new
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_draw_tool_add_boundary, .Lfunc_end34-gimp_draw_tool_add_boundary
	.cfi_endproc

	.globl	gimp_draw_tool_add_text_cursor
	.align	16, 0x90
	.type	gimp_draw_tool_add_text_cursor,@function
gimp_draw_tool_add_text_cursor:         # @gimp_draw_tool_add_text_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_text_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB35_13
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_canvas_text_cursor_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB35_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_draw_tool_add_text_cursor, .Lfunc_end35-gimp_draw_tool_add_text_cursor
	.cfi_endproc

	.globl	gimp_draw_tool_add_transform_guides
	.align	16, 0x90
	.type	gimp_draw_tool_add_transform_guides,@function
gimp_draw_tool_add_transform_guides:    # @gimp_draw_tool_add_transform_guides
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_transform_guides, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB36_18
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	jmp	.LBB36_13
.LBB36_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB36_15
# BB#14:                                # %if.then.13
	jmp	.LBB36_16
.LBB36_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_transform_guides, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB36_18
.LBB36_16:                              # %if.end.15
	jmp	.LBB36_17
.LBB36_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_canvas_transform_guides_new
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB36_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_draw_tool_add_transform_guides, .Lfunc_end36-gimp_draw_tool_add_transform_guides
	.cfi_endproc

	.globl	gimp_draw_tool_add_transform_preview
	.align	16, 0x90
	.type	gimp_draw_tool_add_transform_preview,@function
gimp_draw_tool_add_transform_preview:   # @gimp_draw_tool_add_transform_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movsd	%xmm4, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_transform_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_30
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	jmp	.LBB37_13
.LBB37_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB37_15
# BB#14:                                # %if.then.20
	movl	$0, -132(%rbp)
	jmp	.LBB37_20
.LBB37_15:                              # %if.else.21
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_18
# BB#16:                                # %land.lhs.true.24
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB37_18
# BB#17:                                # %if.then.28
	movl	$1, -132(%rbp)
	jmp	.LBB37_19
.LBB37_18:                              # %if.else.29
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB37_19:                              # %if.end.31
	jmp	.LBB37_20
.LBB37_20:                              # %if.end.32
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB37_22
# BB#21:                                # %if.then.35
	jmp	.LBB37_23
.LBB37_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_transform_preview, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_30
.LBB37_23:                              # %if.end.37
	jmp	.LBB37_24
.LBB37_24:                              # %do.end.38
	jmp	.LBB37_25
.LBB37_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB37_27
# BB#26:                                # %if.then.41
	jmp	.LBB37_28
.LBB37_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_add_transform_preview, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_30
.LBB37_28:                              # %if.end.43
	jmp	.LBB37_29
.LBB37_29:                              # %do.end.44
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-68(%rbp), %ecx
	movsd	-80(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_canvas_transform_preview_new
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_draw_tool_add_preview
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB37_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_draw_tool_add_transform_preview, .Lfunc_end37-gimp_draw_tool_add_transform_preview
	.cfi_endproc

	.globl	gimp_draw_tool_on_handle
	.align	16, 0x90
	.type	gimp_draw_tool_on_handle,@function
gimp_draw_tool_on_handle:               # @gimp_draw_tool_on_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%edx, -44(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_handle, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB38_45
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	jmp	.LBB38_13
.LBB38_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB38_15
# BB#14:                                # %if.then.20
	movl	$0, -164(%rbp)
	jmp	.LBB38_20
.LBB38_15:                              # %if.else.21
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_18
# BB#16:                                # %land.lhs.true.24
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB38_18
# BB#17:                                # %if.then.28
	movl	$1, -164(%rbp)
	jmp	.LBB38_19
.LBB38_18:                              # %if.else.29
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB38_19:                              # %if.end.31
	jmp	.LBB38_20
.LBB38_20:                              # %if.end.32
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB38_22
# BB#21:                                # %if.then.35
	jmp	.LBB38_23
.LBB38_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_handle, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB38_45
.LBB38_23:                              # %if.end.37
	jmp	.LBB38_24
.LBB38_24:                              # %do.end.38
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -88(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_display_shell_transform_xy_f
	movq	-88(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	gimp_display_shell_transform_xy_f
	movl	-44(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	jb	.LBB38_25
	jmp	.LBB38_46
.LBB38_46:                              # %do.end.38
	movl	-172(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jb	.LBB38_40
	jmp	.LBB38_47
.LBB38_47:                              # %do.end.38
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jne	.LBB38_43
	jmp	.LBB38_25
.LBB38_25:                              # %sw.bb
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movl	-76(%rbp), %edi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_canvas_item_shift_to_north_west
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jbe	.LBB38_27
# BB#26:                                # %cond.true
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB38_31
.LBB38_27:                              # %cond.false
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB38_29
# BB#28:                                # %cond.true.46
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB38_30
.LBB38_29:                              # %cond.false.47
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB38_30:                              # %cond.end
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB38_31:                              # %cond.end.48
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -209(%rbp)         # 1-byte Spill
	jne	.LBB38_39
	jp	.LBB38_39
# BB#32:                                # %land.rhs
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jbe	.LBB38_34
# BB#33:                                # %cond.true.56
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB38_38
.LBB38_34:                              # %cond.false.59
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB38_36
# BB#35:                                # %cond.true.62
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB38_37
.LBB38_36:                              # %cond.false.63
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB38_37:                              # %cond.end.64
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB38_38:                              # %cond.end.66
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%cl, %al
	movb	%al, -209(%rbp)         # 1-byte Spill
.LBB38_39:                              # %land.end
	movb	-209(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB38_45
.LBB38_40:                              # %sw.bb.70
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movl	-76(%rbp), %edi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_canvas_item_shift_to_center
	movl	-68(%rbp), %edx
	cmpl	-72(%rbp), %edx
	je	.LBB38_42
# BB#41:                                # %if.then.73
	movl	$2, %eax
	movl	-68(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-244(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -68(%rbp)
.LBB38_42:                              # %if.end.75
	movl	$2, %eax
	movl	-68(%rbp), %ecx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-248(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -68(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-96(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-96(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	imull	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB38_45
.LBB38_43:                              # %sw.default
	movabsq	$.L.str.17, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_handle, %rsi
	movl	-44(%rbp), %edx
	movb	$0, %al
	callq	g_warning
# BB#44:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB38_45:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_draw_tool_on_handle, .Lfunc_end38-gimp_draw_tool_on_handle
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
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
	je	.LBB39_2
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
.LBB39_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end39:
	.size	g_warning, .Lfunc_end39-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI40_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_draw_tool_on_vectors_handle
	.align	16, 0x90
	.type	gimp_draw_tool_on_vectors_handle,@function
gimp_draw_tool_on_vectors_handle:       # @gimp_draw_tool_on_vectors_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$248, %rsp
.Ltmp123:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movsd	.LCPI40_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%ebx, -60(%rbp)
	movl	%r11d, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm0, -144(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -164(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_handle, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB40_90
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	jmp	.LBB40_13
.LBB40_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB40_15
# BB#14:                                # %if.then.20
	movl	$0, -188(%rbp)
	jmp	.LBB40_20
.LBB40_15:                              # %if.else.21
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_18
# BB#16:                                # %land.lhs.true.24
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB40_18
# BB#17:                                # %if.then.28
	movl	$1, -188(%rbp)
	jmp	.LBB40_19
.LBB40_18:                              # %if.else.29
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB40_19:                              # %if.end.31
	jmp	.LBB40_20
.LBB40_20:                              # %if.end.32
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB40_22
# BB#21:                                # %if.then.35
	jmp	.LBB40_23
.LBB40_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_handle, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB40_90
.LBB40_23:                              # %if.end.37
	jmp	.LBB40_24
.LBB40_24:                              # %do.end.38
	jmp	.LBB40_25
.LBB40_25:                              # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB40_27
# BB#26:                                # %if.then.48
	movl	$0, -212(%rbp)
	jmp	.LBB40_32
.LBB40_27:                              # %if.else.49
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_30
# BB#28:                                # %land.lhs.true.52
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB40_30
# BB#29:                                # %if.then.56
	movl	$1, -212(%rbp)
	jmp	.LBB40_31
.LBB40_30:                              # %if.else.57
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB40_31:                              # %if.end.59
	jmp	.LBB40_32
.LBB40_32:                              # %if.end.60
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB40_34
# BB#33:                                # %if.then.63
	jmp	.LBB40_35
.LBB40_34:                              # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_handle, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB40_90
.LBB40_35:                              # %if.end.65
	jmp	.LBB40_36
.LBB40_36:                              # %do.end.66
	jmp	.LBB40_37
.LBB40_37:                              # %do.body.67
	cmpq	$0, -48(%rbp)
	je	.LBB40_39
# BB#38:                                # %if.then.69
	jmp	.LBB40_40
.LBB40_39:                              # %if.else.70
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_handle, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB40_90
.LBB40_40:                              # %if.end.71
	jmp	.LBB40_41
.LBB40_41:                              # %do.end.72
	cmpq	$0, -72(%rbp)
	je	.LBB40_43
# BB#42:                                # %if.then.74
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
.LBB40_43:                              # %if.end.75
	cmpq	$0, -80(%rbp)
	je	.LBB40_45
# BB#44:                                # %if.then.77
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
.LBB40_45:                              # %if.end.78
	jmp	.LBB40_46
.LBB40_46:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_48 Depth 2
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -88(%rbp)
	cmpq	$0, %rax
	je	.LBB40_64
# BB#47:                                # %while.body
                                        #   in Loop: Header=BB40_46 Depth=1
	movq	-88(%rbp), %rdi
	callq	gimp_stroke_get_draw_anchors
	movq	-88(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_draw_controls
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_concat
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -232(%rbp)
.LBB40_48:                              # %for.cond
                                        #   Parent Loop BB40_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -232(%rbp)
	je	.LBB40_63
# BB#49:                                # %for.body
                                        #   in Loop: Header=BB40_48 Depth=2
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	subsd	(%rax), %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	subsd	8(%rax), %xmm1
	movsd	%xmm1, -128(%rbp)
	ucomisd	-144(%rbp), %xmm0
	ja	.LBB40_51
# BB#50:                                # %lor.lhs.false
                                        #   in Loop: Header=BB40_48 Depth=2
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-128(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB40_54
.LBB40_51:                              # %if.then.95
                                        #   in Loop: Header=BB40_48 Depth=2
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB40_53
# BB#52:                                # %if.then.101
                                        #   in Loop: Header=BB40_48 Depth=2
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB40_53:                              # %if.end.102
                                        #   in Loop: Header=BB40_48 Depth=2
	jmp	.LBB40_54
.LBB40_54:                              # %if.end.103
                                        #   in Loop: Header=BB40_48 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-136(%rbp), %xmm0
	ja	.LBB40_56
# BB#55:                                # %lor.lhs.false.105
                                        #   in Loop: Header=BB40_48 Depth=2
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-128(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB40_58
.LBB40_56:                              # %land.lhs.true.110
                                        #   in Loop: Header=BB40_48 Depth=2
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movl	64(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB40_58
# BB#57:                                # %if.then.113
                                        #   in Loop: Header=BB40_48 Depth=2
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB40_58:                              # %if.end.118
                                        #   in Loop: Header=BB40_48 Depth=2
	jmp	.LBB40_59
.LBB40_59:                              # %for.inc
                                        #   in Loop: Header=BB40_48 Depth=2
	cmpq	$0, -232(%rbp)
	je	.LBB40_61
# BB#60:                                # %cond.true
                                        #   in Loop: Header=BB40_48 Depth=2
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB40_62
.LBB40_61:                              # %cond.false
                                        #   in Loop: Header=BB40_48 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB40_62
.LBB40_62:                              # %cond.end
                                        #   in Loop: Header=BB40_48 Depth=2
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	jmp	.LBB40_48
.LBB40_63:                              # %for.end
                                        #   in Loop: Header=BB40_46 Depth=1
	movq	-224(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB40_46
.LBB40_64:                              # %while.end
	cmpq	$0, -72(%rbp)
	je	.LBB40_71
# BB#65:                                # %land.lhs.true.121
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_71
# BB#66:                                # %land.lhs.true.123
	movl	$2, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB40_71
# BB#67:                                # %land.lhs.true.132
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	64(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB40_71
# BB#68:                                # %if.then.135
	cmpq	$0, -80(%rbp)
	je	.LBB40_70
# BB#69:                                # %if.then.137
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB40_70:                              # %if.end.138
	movl	$1, -12(%rbp)
	jmp	.LBB40_90
.LBB40_71:                              # %if.end.139
	cmpq	$0, -112(%rbp)
	je	.LBB40_78
# BB#72:                                # %land.lhs.true.141
	movl	$2, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-112(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB40_78
# BB#73:                                # %if.then.150
	cmpq	$0, -72(%rbp)
	je	.LBB40_75
# BB#74:                                # %if.then.152
	movq	-112(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB40_75:                              # %if.end.153
	cmpq	$0, -80(%rbp)
	je	.LBB40_77
# BB#76:                                # %if.then.155
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB40_77:                              # %if.end.156
	movl	$1, -12(%rbp)
	jmp	.LBB40_90
.LBB40_78:                              # %if.else.157
	cmpl	$0, -64(%rbp)
	jne	.LBB40_84
# BB#79:                                # %land.lhs.true.159
	cmpq	$0, -104(%rbp)
	je	.LBB40_84
# BB#80:                                # %land.lhs.true.161
	movl	$2, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB40_84
# BB#81:                                # %if.then.170
	cmpq	$0, -72(%rbp)
	je	.LBB40_83
# BB#82:                                # %if.then.172
	movq	-104(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB40_83:                              # %if.end.173
	movl	$1, -12(%rbp)
	jmp	.LBB40_90
.LBB40_84:                              # %if.end.174
	jmp	.LBB40_85
.LBB40_85:                              # %if.end.175
	cmpq	$0, -72(%rbp)
	je	.LBB40_87
# BB#86:                                # %if.then.177
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
.LBB40_87:                              # %if.end.178
	cmpq	$0, -80(%rbp)
	je	.LBB40_89
# BB#88:                                # %if.then.180
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
.LBB40_89:                              # %if.end.181
	movl	$0, -12(%rbp)
.LBB40_90:                              # %return
	movl	-12(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_draw_tool_on_vectors_handle, .Lfunc_end40-gimp_draw_tool_on_vectors_handle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI41_0:
	.quad	4602678819172646912     # double 0.5
.LCPI41_1:
	.quad	4607182418800017408     # double 1
.LCPI41_2:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_draw_tool_on_vectors_curve
	.align	16, 0x90
	.type	gimp_draw_tool_on_vectors_curve,@function
gimp_draw_tool_on_vectors_curve:        # @gimp_draw_tool_on_vectors_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp127:
	.cfi_offset %rbx, -56
.Ltmp128:
	.cfi_offset %r12, -48
.Ltmp129:
	.cfi_offset %r13, -40
.Ltmp130:
	.cfi_offset %r14, -32
.Ltmp131:
	.cfi_offset %r15, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movsd	.LCPI41_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI41_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%r15d, %r15d
	movl	$64, %r12d
	movl	%r12d, %r13d
	leaq	-216(%rbp), %r12
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movq	%r14, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%r11, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -176(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)
	callq	gimp_draw_tool_get_type
	movq	%rax, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -324(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-312(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -324(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -324(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_curve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB41_72
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	jmp	.LBB41_13
.LBB41_13:                              # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -344(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.LBB41_15
# BB#14:                                # %if.then.20
	movl	$0, -348(%rbp)
	jmp	.LBB41_20
.LBB41_15:                              # %if.else.21
	movq	-336(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_18
# BB#16:                                # %land.lhs.true.24
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB41_18
# BB#17:                                # %if.then.28
	movl	$1, -348(%rbp)
	jmp	.LBB41_19
.LBB41_18:                              # %if.else.29
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -348(%rbp)
.LBB41_19:                              # %if.end.31
	jmp	.LBB41_20
.LBB41_20:                              # %if.end.32
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$0, -352(%rbp)
	je	.LBB41_22
# BB#21:                                # %if.then.35
	jmp	.LBB41_23
.LBB41_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_curve, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB41_72
.LBB41_23:                              # %if.end.37
	jmp	.LBB41_24
.LBB41_24:                              # %do.end.38
	jmp	.LBB41_25
.LBB41_25:                              # %do.body.39
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -368(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB41_27
# BB#26:                                # %if.then.48
	movl	$0, -372(%rbp)
	jmp	.LBB41_32
.LBB41_27:                              # %if.else.49
	movq	-360(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_30
# BB#28:                                # %land.lhs.true.52
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB41_30
# BB#29:                                # %if.then.56
	movl	$1, -372(%rbp)
	jmp	.LBB41_31
.LBB41_30:                              # %if.else.57
	movq	-360(%rbp), %rdi
	movq	-368(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -372(%rbp)
.LBB41_31:                              # %if.end.59
	jmp	.LBB41_32
.LBB41_32:                              # %if.end.60
	movl	-372(%rbp), %eax
	movl	%eax, -376(%rbp)
	cmpl	$0, -376(%rbp)
	je	.LBB41_34
# BB#33:                                # %if.then.63
	jmp	.LBB41_35
.LBB41_34:                              # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_curve, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB41_72
.LBB41_35:                              # %if.end.65
	jmp	.LBB41_36
.LBB41_36:                              # %do.end.66
	jmp	.LBB41_37
.LBB41_37:                              # %do.body.67
	cmpq	$0, -80(%rbp)
	je	.LBB41_39
# BB#38:                                # %if.then.69
	jmp	.LBB41_40
.LBB41_39:                              # %if.else.70
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_draw_tool_on_vectors_curve, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB41_72
.LBB41_40:                              # %if.end.71
	jmp	.LBB41_41
.LBB41_41:                              # %do.end.72
	cmpq	$0, -96(%rbp)
	je	.LBB41_43
# BB#42:                                # %if.then.74
	movl	$64, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB41_43:                              # %if.end.75
	cmpq	$0, -104(%rbp)
	je	.LBB41_45
# BB#44:                                # %if.then.77
	movsd	.LCPI41_2, %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB41_45:                              # %if.end.78
	cmpq	$0, -112(%rbp)
	je	.LBB41_47
# BB#46:                                # %if.then.80
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
.LBB41_47:                              # %if.end.81
	cmpq	$0, -112(%rbp)
	je	.LBB41_49
# BB#48:                                # %if.then.83
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
.LBB41_49:                              # %if.end.84
	cmpq	$0, -128(%rbp)
	je	.LBB41_51
# BB#50:                                # %if.then.86
	movq	-128(%rbp), %rax
	movq	$0, (%rax)
.LBB41_51:                              # %if.end.87
	movsd	.LCPI41_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)
.LBB41_52:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -136(%rbp)
	cmpq	$0, %rax
	je	.LBB41_68
# BB#53:                                # %while.body
                                        #   in Loop: Header=BB41_52 Depth=1
	movsd	.LCPI41_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-280(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-152(%rbp), %r8
	leaq	-304(%rbp), %r9
	movq	-136(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_stroke_nearest_point_get
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -296(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB41_67
# BB#54:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB41_52 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-288(%rbp), %xmm0
	ja	.LBB41_56
# BB#55:                                # %lor.lhs.false
                                        #   in Loop: Header=BB41_52 Depth=1
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB41_67
.LBB41_56:                              # %if.then.95
                                        #   in Loop: Header=BB41_52 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rcx
	leaq	-216(%rbp), %rsi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	cmpq	$0, -96(%rbp)
	je	.LBB41_58
# BB#57:                                # %if.then.97
                                        #   in Loop: Header=BB41_52 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB41_58:                              # %if.end.98
                                        #   in Loop: Header=BB41_52 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB41_60
# BB#59:                                # %if.then.100
                                        #   in Loop: Header=BB41_52 Depth=1
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB41_60:                              # %if.end.101
                                        #   in Loop: Header=BB41_52 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB41_62
# BB#61:                                # %if.then.103
                                        #   in Loop: Header=BB41_52 Depth=1
	movq	-144(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB41_62:                              # %if.end.104
                                        #   in Loop: Header=BB41_52 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB41_64
# BB#63:                                # %if.then.106
                                        #   in Loop: Header=BB41_52 Depth=1
	movq	-152(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB41_64:                              # %if.end.107
                                        #   in Loop: Header=BB41_52 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB41_66
# BB#65:                                # %if.then.109
                                        #   in Loop: Header=BB41_52 Depth=1
	movq	-136(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB41_66:                              # %if.end.110
                                        #   in Loop: Header=BB41_52 Depth=1
	jmp	.LBB41_67
.LBB41_67:                              # %if.end.111
                                        #   in Loop: Header=BB41_52 Depth=1
	jmp	.LBB41_52
.LBB41_68:                              # %while.end
	xorps	%xmm0, %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB41_71
# BB#69:                                # %land.lhs.true.113
	movl	$2, %edx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-208(%rbp), %xmm3       # xmm3 = mem[0],zero
	movl	-84(%rbp), %ecx
	movl	-88(%rbp), %r8d
	callq	gimp_draw_tool_on_handle
	cmpl	$0, %eax
	je	.LBB41_71
# BB#70:                                # %if.then.118
	movl	$1, -44(%rbp)
	jmp	.LBB41_72
.LBB41_71:                              # %if.end.119
	movl	$0, -44(%rbp)
.LBB41_72:                              # %return
	movl	-44(%rbp), %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_draw_tool_on_vectors_curve, .Lfunc_end41-gimp_draw_tool_on_vectors_curve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI42_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_draw_tool_on_vectors
	.align	16, 0x90
	.type	gimp_draw_tool_on_vectors,@function
gimp_draw_tool_on_vectors:              # @gimp_draw_tool_on_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp135:
	.cfi_offset %rbx, -32
.Ltmp136:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r14, -72(%rbp)
	movq	%rbx, -80(%rbp)
	movq	%r11, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	%rax, -104(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	$64, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB42_2:                               # %if.end
	cmpq	$0, -72(%rbp)
	je	.LBB42_4
# BB#3:                                 # %if.then.2
	movsd	.LCPI42_0, %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB42_4:                               # %if.end.3
	cmpq	$0, -80(%rbp)
	je	.LBB42_6
# BB#5:                                 # %if.then.5
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
.LBB42_6:                               # %if.end.6
	cmpq	$0, -88(%rbp)
	je	.LBB42_8
# BB#7:                                 # %if.then.8
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
.LBB42_8:                               # %if.end.9
	cmpq	$0, -96(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.11
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
.LBB42_10:                              # %if.end.12
	cmpq	$0, -104(%rbp)
	je	.LBB42_12
# BB#11:                                # %if.then.14
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
.LBB42_12:                              # %if.end.15
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_vectors_list
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB42_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB42_25
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	jne	.LBB42_16
# BB#15:                                # %if.then.22
                                        #   in Loop: Header=BB42_13 Depth=1
	jmp	.LBB42_21
.LBB42_16:                              # %if.end.23
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %r10
	movq	-80(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	-96(%rbp), %r14
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	callq	gimp_draw_tool_on_vectors_curve
	cmpl	$0, %eax
	je	.LBB42_20
# BB#17:                                # %if.then.26
	cmpq	$0, -104(%rbp)
	je	.LBB42_19
# BB#18:                                # %if.then.28
	movq	-128(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB42_19:                              # %if.end.29
	movq	-112(%rbp), %rdi
	callq	g_list_free
	movl	$1, -20(%rbp)
	jmp	.LBB42_26
.LBB42_20:                              # %if.end.30
                                        #   in Loop: Header=BB42_13 Depth=1
	jmp	.LBB42_21
.LBB42_21:                              # %for.inc
                                        #   in Loop: Header=BB42_13 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB42_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB42_24
.LBB42_23:                              # %cond.false
                                        #   in Loop: Header=BB42_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB42_24
.LBB42_24:                              # %cond.end
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	jmp	.LBB42_13
.LBB42_25:                              # %for.end
	movq	-112(%rbp), %rdi
	callq	g_list_free
	movl	$0, -20(%rbp)
.LBB42_26:                              # %return
	movl	-20(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_draw_tool_on_vectors, .Lfunc_end42-gimp_draw_tool_on_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_class_init,@function
gimp_draw_tool_class_init:              # @gimp_draw_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_draw_tool_real_draw, %rsi
	movabsq	$gimp_draw_tool_control, %rdi
	movabsq	$gimp_draw_tool_has_image, %rcx
	movabsq	$gimp_draw_tool_has_display, %rdx
	movabsq	$gimp_draw_tool_dispose, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 184(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_draw_tool_class_init, .Lfunc_end43-gimp_draw_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_dispose,@function
gimp_draw_tool_dispose:                 # @gimp_draw_tool_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 212(%rax)
	je	.LBB44_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	212(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 212(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB44_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_draw_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_draw_tool_dispose, .Lfunc_end44-gimp_draw_tool_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_has_display,@function
gimp_draw_tool_has_display:             # @gimp_draw_tool_has_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	200(%rsi), %rax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB45_2
# BB#1:                                 # %lor.rhs
	movq	gimp_draw_tool_parent_class, %rax
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
.LBB45_2:                               # %lor.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_draw_tool_has_display, .Lfunc_end45-gimp_draw_tool_has_display
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_has_image,@function
gimp_draw_tool_has_image:               # @gimp_draw_tool_has_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_draw_tool_parent_class, %rax
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
	jne	.LBB46_8
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB46_8
# BB#2:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB46_5
# BB#3:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB46_5
# BB#4:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB46_5:                               # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB46_7
# BB#6:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB46_7:                               # %if.end.16
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.17
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_draw_tool_has_image, .Lfunc_end46-gimp_draw_tool_has_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_control,@function
gimp_draw_tool_control:                 # @gimp_draw_tool_control
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jb	.LBB47_1
	jmp	.LBB47_6
.LBB47_6:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB47_2
	jmp	.LBB47_5
.LBB47_1:                               # %sw.bb
	jmp	.LBB47_5
.LBB47_2:                               # %sw.bb.2
	movq	-32(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB47_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB47_4:                               # %if.end
	jmp	.LBB47_5
.LBB47_5:                               # %sw.epilog
	movq	gimp_draw_tool_parent_class, %rax
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
.Lfunc_end47:
	.size	gimp_draw_tool_control, .Lfunc_end47-gimp_draw_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_draw_tool_real_draw,@function
gimp_draw_tool_real_draw:               # @gimp_draw_tool_real_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_draw_tool_real_draw, .Lfunc_end48-gimp_draw_tool_real_draw
	.cfi_endproc

	.type	gimp_draw_tool_get_type.g_define_type_id__volatile,@object # @gimp_draw_tool_get_type.g_define_type_id__volatile
	.local	gimp_draw_tool_get_type.g_define_type_id__volatile
	.comm	gimp_draw_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDrawTool"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_draw_tool_start,@object # @__func__.gimp_draw_tool_start
.L__func__.gimp_draw_tool_start:
	.asciz	"gimp_draw_tool_start"
	.size	.L__func__.gimp_draw_tool_start, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DRAW_TOOL (draw_tool)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp_draw_tool_is_active (draw_tool) == FALSE"
	.size	.L.str.4, 46

	.type	.L__func__.gimp_draw_tool_stop,@object # @__func__.gimp_draw_tool_stop
.L__func__.gimp_draw_tool_stop:
	.asciz	"gimp_draw_tool_stop"
	.size	.L__func__.gimp_draw_tool_stop, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_draw_tool_is_active (draw_tool) == TRUE"
	.size	.L.str.5, 45

	.type	.L__func__.gimp_draw_tool_is_active,@object # @__func__.gimp_draw_tool_is_active
.L__func__.gimp_draw_tool_is_active:
	.asciz	"gimp_draw_tool_is_active"
	.size	.L__func__.gimp_draw_tool_is_active, 25

	.type	.L__func__.gimp_draw_tool_pause,@object # @__func__.gimp_draw_tool_pause
.L__func__.gimp_draw_tool_pause:
	.asciz	"gimp_draw_tool_pause"
	.size	.L__func__.gimp_draw_tool_pause, 21

	.type	.L__func__.gimp_draw_tool_resume,@object # @__func__.gimp_draw_tool_resume
.L__func__.gimp_draw_tool_resume:
	.asciz	"gimp_draw_tool_resume"
	.size	.L__func__.gimp_draw_tool_resume, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"draw_tool->paused_count > 0"
	.size	.L.str.6, 28

	.type	.L__func__.gimp_draw_tool_calc_distance_square,@object # @__func__.gimp_draw_tool_calc_distance_square
.L__func__.gimp_draw_tool_calc_distance_square:
	.asciz	"gimp_draw_tool_calc_distance_square"
	.size	.L__func__.gimp_draw_tool_calc_distance_square, 36

	.type	.L__func__.gimp_draw_tool_add_preview,@object # @__func__.gimp_draw_tool_add_preview
.L__func__.gimp_draw_tool_add_preview:
	.asciz	"gimp_draw_tool_add_preview"
	.size	.L__func__.gimp_draw_tool_add_preview, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CANVAS_ITEM (item)"
	.size	.L.str.7, 27

	.type	.L__func__.gimp_draw_tool_remove_preview,@object # @__func__.gimp_draw_tool_remove_preview
.L__func__.gimp_draw_tool_remove_preview:
	.asciz	"gimp_draw_tool_remove_preview"
	.size	.L__func__.gimp_draw_tool_remove_preview, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"draw_tool->preview != NULL"
	.size	.L.str.8, 27

	.type	.L__func__.gimp_draw_tool_add_item,@object # @__func__.gimp_draw_tool_add_item
.L__func__.gimp_draw_tool_add_item:
	.asciz	"gimp_draw_tool_add_item"
	.size	.L__func__.gimp_draw_tool_add_item, 24

	.type	.L__func__.gimp_draw_tool_remove_item,@object # @__func__.gimp_draw_tool_remove_item
.L__func__.gimp_draw_tool_remove_item:
	.asciz	"gimp_draw_tool_remove_item"
	.size	.L__func__.gimp_draw_tool_remove_item, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"draw_tool->item != NULL"
	.size	.L.str.9, 24

	.type	.L__func__.gimp_draw_tool_add_stroke_group,@object # @__func__.gimp_draw_tool_add_stroke_group
.L__func__.gimp_draw_tool_add_stroke_group:
	.asciz	"gimp_draw_tool_add_stroke_group"
	.size	.L__func__.gimp_draw_tool_add_stroke_group, 32

	.type	.L__func__.gimp_draw_tool_add_fill_group,@object # @__func__.gimp_draw_tool_add_fill_group
.L__func__.gimp_draw_tool_add_fill_group:
	.asciz	"gimp_draw_tool_add_fill_group"
	.size	.L__func__.gimp_draw_tool_add_fill_group, 30

	.type	.L__func__.gimp_draw_tool_push_group,@object # @__func__.gimp_draw_tool_push_group
.L__func__.gimp_draw_tool_push_group:
	.asciz	"gimp_draw_tool_push_group"
	.size	.L__func__.gimp_draw_tool_push_group, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_CANVAS_GROUP (group)"
	.size	.L.str.10, 29

	.type	.L__func__.gimp_draw_tool_pop_group,@object # @__func__.gimp_draw_tool_pop_group
.L__func__.gimp_draw_tool_pop_group:
	.asciz	"gimp_draw_tool_pop_group"
	.size	.L__func__.gimp_draw_tool_pop_group, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"draw_tool->group_stack != NULL"
	.size	.L.str.11, 31

	.type	.L__func__.gimp_draw_tool_add_line,@object # @__func__.gimp_draw_tool_add_line
.L__func__.gimp_draw_tool_add_line:
	.asciz	"gimp_draw_tool_add_line"
	.size	.L__func__.gimp_draw_tool_add_line, 24

	.type	.L__func__.gimp_draw_tool_add_guide,@object # @__func__.gimp_draw_tool_add_guide
.L__func__.gimp_draw_tool_add_guide:
	.asciz	"gimp_draw_tool_add_guide"
	.size	.L__func__.gimp_draw_tool_add_guide, 25

	.type	.L__func__.gimp_draw_tool_add_sample_point,@object # @__func__.gimp_draw_tool_add_sample_point
.L__func__.gimp_draw_tool_add_sample_point:
	.asciz	"gimp_draw_tool_add_sample_point"
	.size	.L__func__.gimp_draw_tool_add_sample_point, 32

	.type	.L__func__.gimp_draw_tool_add_rectangle,@object # @__func__.gimp_draw_tool_add_rectangle
.L__func__.gimp_draw_tool_add_rectangle:
	.asciz	"gimp_draw_tool_add_rectangle"
	.size	.L__func__.gimp_draw_tool_add_rectangle, 29

	.type	.L__func__.gimp_draw_tool_add_rectangle_guides,@object # @__func__.gimp_draw_tool_add_rectangle_guides
.L__func__.gimp_draw_tool_add_rectangle_guides:
	.asciz	"gimp_draw_tool_add_rectangle_guides"
	.size	.L__func__.gimp_draw_tool_add_rectangle_guides, 36

	.type	.L__func__.gimp_draw_tool_add_arc,@object # @__func__.gimp_draw_tool_add_arc
.L__func__.gimp_draw_tool_add_arc:
	.asciz	"gimp_draw_tool_add_arc"
	.size	.L__func__.gimp_draw_tool_add_arc, 23

	.type	.L__func__.gimp_draw_tool_add_handle,@object # @__func__.gimp_draw_tool_add_handle
.L__func__.gimp_draw_tool_add_handle:
	.asciz	"gimp_draw_tool_add_handle"
	.size	.L__func__.gimp_draw_tool_add_handle, 26

	.type	.L__func__.gimp_draw_tool_add_corner,@object # @__func__.gimp_draw_tool_add_corner
.L__func__.gimp_draw_tool_add_corner:
	.asciz	"gimp_draw_tool_add_corner"
	.size	.L__func__.gimp_draw_tool_add_corner, 26

	.type	.L__func__.gimp_draw_tool_add_lines,@object # @__func__.gimp_draw_tool_add_lines
.L__func__.gimp_draw_tool_add_lines:
	.asciz	"gimp_draw_tool_add_lines"
	.size	.L__func__.gimp_draw_tool_add_lines, 25

	.type	.L__func__.gimp_draw_tool_add_strokes,@object # @__func__.gimp_draw_tool_add_strokes
.L__func__.gimp_draw_tool_add_strokes:
	.asciz	"gimp_draw_tool_add_strokes"
	.size	.L__func__.gimp_draw_tool_add_strokes, 27

	.type	.L__func__.gimp_draw_tool_add_path,@object # @__func__.gimp_draw_tool_add_path
.L__func__.gimp_draw_tool_add_path:
	.asciz	"gimp_draw_tool_add_path"
	.size	.L__func__.gimp_draw_tool_add_path, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"desc != NULL"
	.size	.L.str.12, 13

	.type	.L__func__.gimp_draw_tool_add_pen,@object # @__func__.gimp_draw_tool_add_pen
.L__func__.gimp_draw_tool_add_pen:
	.asciz	"gimp_draw_tool_add_pen"
	.size	.L__func__.gimp_draw_tool_add_pen, 23

	.type	.L__func__.gimp_draw_tool_add_boundary,@object # @__func__.gimp_draw_tool_add_boundary
.L__func__.gimp_draw_tool_add_boundary:
	.asciz	"gimp_draw_tool_add_boundary"
	.size	.L__func__.gimp_draw_tool_add_boundary, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"n_bound_segs > 0"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"bound_segs != NULL"
	.size	.L.str.14, 19

	.type	.L__func__.gimp_draw_tool_add_text_cursor,@object # @__func__.gimp_draw_tool_add_text_cursor
.L__func__.gimp_draw_tool_add_text_cursor:
	.asciz	"gimp_draw_tool_add_text_cursor"
	.size	.L__func__.gimp_draw_tool_add_text_cursor, 31

	.type	.L__func__.gimp_draw_tool_add_transform_guides,@object # @__func__.gimp_draw_tool_add_transform_guides
.L__func__.gimp_draw_tool_add_transform_guides:
	.asciz	"gimp_draw_tool_add_transform_guides"
	.size	.L__func__.gimp_draw_tool_add_transform_guides, 36

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"transform != NULL"
	.size	.L.str.15, 18

	.type	.L__func__.gimp_draw_tool_add_transform_preview,@object # @__func__.gimp_draw_tool_add_transform_preview
.L__func__.gimp_draw_tool_add_transform_preview:
	.asciz	"gimp_draw_tool_add_transform_preview"
	.size	.L__func__.gimp_draw_tool_add_transform_preview, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.16, 28

	.type	.L__func__.gimp_draw_tool_on_handle,@object # @__func__.gimp_draw_tool_on_handle
.L__func__.gimp_draw_tool_on_handle:
	.asciz	"gimp_draw_tool_on_handle"
	.size	.L__func__.gimp_draw_tool_on_handle, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: invalid handle type %d"
	.size	.L.str.17, 27

	.type	.L__func__.gimp_draw_tool_on_vectors_handle,@object # @__func__.gimp_draw_tool_on_vectors_handle
.L__func__.gimp_draw_tool_on_vectors_handle:
	.asciz	"gimp_draw_tool_on_vectors_handle"
	.size	.L__func__.gimp_draw_tool_on_vectors_handle, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"coord != NULL"
	.size	.L.str.19, 14

	.type	.L__func__.gimp_draw_tool_on_vectors_curve,@object # @__func__.gimp_draw_tool_on_vectors_curve
.L__func__.gimp_draw_tool_on_vectors_curve:
	.asciz	"gimp_draw_tool_on_vectors_curve"
	.size	.L__func__.gimp_draw_tool_on_vectors_curve, 32

	.type	gimp_draw_tool_parent_class,@object # @gimp_draw_tool_parent_class
	.local	gimp_draw_tool_parent_class
	.comm	gimp_draw_tool_parent_class,8,8
	.type	GimpDrawTool_private_offset,@object # @GimpDrawTool_private_offset
	.local	GimpDrawTool_private_offset
	.comm	GimpDrawTool_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s: draw_tool->group_stack not empty after calling GimpDrawTool::draw() of %s"
	.size	.L.str.20, 78

	.type	.L__func__.gimp_draw_tool_draw,@object # @__func__.gimp_draw_tool_draw
.L__func__.gimp_draw_tool_draw:
	.asciz	"gimp_draw_tool_draw"
	.size	.L__func__.gimp_draw_tool_draw, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
