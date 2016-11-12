	.text
	.file	"gimpdasheditor.bc"
	.globl	gimp_dash_editor_get_type
	.align	16, 0x90
	.type	gimp_dash_editor_get_type,@function
gimp_dash_editor_get_type:              # @gimp_dash_editor_get_type
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
	movq	gimp_dash_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dash_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_drawing_area_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$752, %edx              # imm = 0x2F0
	movabsq	$gimp_dash_editor_class_intern_init, %rdi
	movl	$160, %r8d
	movabsq	$gimp_dash_editor_init, %rcx
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
	movabsq	$gimp_dash_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dash_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dash_editor_get_type, .Lfunc_end0-gimp_dash_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_class_intern_init,@function
gimp_dash_editor_class_intern_init:     # @gimp_dash_editor_class_intern_init
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
	movq	%rax, gimp_dash_editor_parent_class
	cmpl	$0, GimpDashEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDashEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dash_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dash_editor_class_intern_init, .Lfunc_end1-gimp_dash_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_init,@function
gimp_dash_editor_init:                  # @gimp_dash_editor_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$6, 144(%rdi)
	movq	-8(%rbp), %rdi
	movl	$6, 148(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 156(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$800, %esi              # imm = 0x320
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dash_editor_init, .Lfunc_end2-gimp_dash_editor_init
	.cfi_endproc

	.globl	gimp_dash_editor_new
	.align	16, 0x90
	.type	gimp_dash_editor_new,@function
gimp_dash_editor_new:                   # @gimp_dash_editor_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_dash_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_dash_editor_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dash_editor_new, .Lfunc_end3-gimp_dash_editor_new
	.cfi_endproc

	.globl	gimp_dash_editor_shift_right
	.align	16, 0x90
	.type	gimp_dash_editor_shift_right,@function
gimp_dash_editor_shift_right:           # @gimp_dash_editor_shift_right
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dash_editor_get_type
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
	movabsq	$.L__func__.gimp_dash_editor_shift_right, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_22
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 120(%rax)
	jle	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dash_editor_shift_right, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_22
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movl	(%rdx,%rax,4), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -16(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	jle	.LBB4_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB4_18
.LBB4_21:                               # %for.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rdi
	callq	update_options_from_segments
.LBB4_22:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dash_editor_shift_right, .Lfunc_end4-gimp_dash_editor_shift_right
	.cfi_endproc

	.align	16, 0x90
	.type	update_options_from_segments,@function
update_options_from_segments:           # @update_options_from_segments
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	-8(%rbp), %rax
	movl	120(%rax), %esi
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dash_pattern_new_from_segments
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_stroke_options_take_dash_pattern
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	update_options_from_segments, .Lfunc_end5-update_options_from_segments
	.cfi_endproc

	.globl	gimp_dash_editor_shift_left
	.align	16, 0x90
	.type	gimp_dash_editor_shift_left,@function
gimp_dash_editor_shift_left:            # @gimp_dash_editor_shift_left
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
	movq	%rax, -24(%rbp)
	callq	gimp_dash_editor_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dash_editor_shift_left, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_22
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 120(%rax)
	jle	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dash_editor_shift_left, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_22
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	$1, -16(%rbp)
.LBB6_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jge	.LBB6_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_18 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	-16(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_18
.LBB6_21:                               # %for.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movl	%eax, (%rsi,%rcx,4)
	movq	-8(%rbp), %rdi
	callq	update_options_from_segments
.LBB6_22:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dash_editor_shift_left, .Lfunc_end6-gimp_dash_editor_shift_left
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4656510908468559872     # double 2000
.LCPI7_1:
	.quad	4622945017495814144     # double 12
	.text
	.align	16, 0x90
	.type	gimp_dash_editor_class_init,@function
gimp_dash_editor_class_init:            # @gimp_dash_editor_class_init
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp24:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_dash_editor_motion_notify, %rsi
	movabsq	$gimp_dash_editor_button_release, %rdi
	movabsq	$gimp_dash_editor_button_press, %rcx
	movabsq	$gimp_dash_editor_expose, %rdx
	movabsq	$gimp_dash_editor_size_request, %r8
	movabsq	$gimp_dash_editor_set_property, %r9
	movabsq	$gimp_dash_editor_get_property, %r10
	movabsq	$gimp_dash_editor_finalize, %r11
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 240(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 392(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 352(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 368(%rax)
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$2, %ecx
	movl	$120, %r8d
	movl	$24, %r9d
	movl	$231, %esi
	movq	-24(%rbp), %rdx
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dash_editor_class_init, .Lfunc_end7-gimp_dash_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_finalize,@function
gimp_dash_editor_finalize:              # @gimp_dash_editor_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB8_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dash_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dash_editor_finalize, .Lfunc_end8-gimp_dash_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_get_property,@function
gimp_dash_editor_get_property:          # @gimp_dash_editor_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_8
.LBB9_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_9
.LBB9_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_4
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_7
.LBB9_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB9_7
.LBB9_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB9_7
.LBB9_4:                                # %sw.default
	jmp	.LBB9_5
.LBB9_5:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$219, %edx
	movabsq	$.L.str.10, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB9_7
.LBB9_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dash_editor_get_property, .Lfunc_end9-gimp_dash_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_set_property,@function
gimp_dash_editor_set_property:          # @gimp_dash_editor_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_16
.LBB10_16:                              # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_7
	jmp	.LBB10_17
.LBB10_17:                              # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB10_10
	jmp	.LBB10_11
.LBB10_1:                               # %sw.bb
	jmp	.LBB10_2
.LBB10_2:                               # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB10_4
# BB#3:                                 # %if.then
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dash_editor_set_property, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_15
.LBB10_5:                               # %if.end
	jmp	.LBB10_6
.LBB10_6:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movabsq	$.L.str.12, %rsi
	movabsq	$update_segments_from_options, %rdi
	movl	$2, %r8d
	movq	-40(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_14
.LBB10_7:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
	movq	-40(%rbp), %rdi
	cmpq	$0, 128(%rdi)
	je	.LBB10_9
# BB#8:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB10_9:                               # %if.end.10
	movl	$4, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movslq	120(%rcx), %rdi
	callq	g_malloc0_n
	movq	-40(%rbp), %rcx
	movq	%rax, 128(%rcx)
	jmp	.LBB10_14
.LBB10_10:                              # %sw.bb.14
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 112(%rdi)
	jmp	.LBB10_14
.LBB10_11:                              # %sw.default
	jmp	.LBB10_12
.LBB10_12:                              # %do.body.16
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$191, %edx
	movabsq	$.L.str.10, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end.21
	jmp	.LBB10_14
.LBB10_14:                              # %sw.epilog
	movq	-40(%rbp), %rdi
	callq	update_segments_from_options
.LBB10_15:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dash_editor_set_property, .Lfunc_end10-gimp_dash_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_size_request,@function
gimp_dash_editor_size_request:          # @gimp_dash_editor_size_request
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	120(%rax), %ecx
	addl	$20, %ecx
	cmpl	$64, %ecx
	jle	.LBB11_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	120(%rax), %ecx
	addl	$20, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movl	$64, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movl	148(%rcx), %eax
	addl	$10, %eax
	cmpl	$20, %eax
	jle	.LBB11_5
# BB#4:                                 # %cond.true.8
	movq	-24(%rbp), %rax
	movl	148(%rax), %ecx
	addl	$10, %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false.11
	movl	$20, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB11_6
.LBB11_6:                               # %cond.end.12
	movl	-40(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dash_editor_size_request, .Lfunc_end11-gimp_dash_editor_size_request
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_dash_editor_expose,@function
gimp_dash_editor_expose:                # @gimp_dash_editor_expose
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	leaq	-56(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-24(%rbp), %rdi
	callq	update_blocksize
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_rectangle
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_paint
	movl	$2, %ecx
	movq	-24(%rbp), %rax
	movl	144(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	148(%rax), %edx
	movl	%edx, -68(%rbp)
	movl	-48(%rbp), %edx
	movl	-64(%rbp), %r8d
	movq	-24(%rbp), %rax
	imull	120(%rax), %r8d
	subl	%r8d, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rsi
	movl	%eax, 136(%rsi)
	movl	-44(%rbp), %eax
	subl	-68(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rsi
	movl	%eax, 140(%rsi)
	movq	-24(%rbp), %rsi
	movl	136(%rsi), %eax
	cltd
	idivl	-64(%rbp)
	movl	%edx, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.LBB12_2
# BB#1:                                 # %if.then
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
.LBB12_2:                               # %if.end
	jmp	.LBB12_3
.LBB12_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	136(%rcx), %eax
	jge	.LBB12_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	dash_x_to_index
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpl	$0, (%rcx,%rdi,4)
	je	.LBB12_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	140(%rax), %xmm1
	cvtsi2sdl	-64(%rbp), %xmm2
	cvtsi2sdl	-68(%rbp), %xmm3
	callq	cairo_rectangle
.LBB12_6:                               # %if.end.18
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-64(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_3
.LBB12_8:                               # %for.end
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$444, %rax              # imm = 0x1BC
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_fill
.LBB12_9:                               # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	136(%rcx), %edx
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %esi
	imull	-64(%rbp), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB12_14
# BB#10:                                # %for.body.27
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	dash_x_to_index
	movl	%eax, -76(%rbp)
	movslq	-76(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpl	$0, (%rcx,%rdi,4)
	je	.LBB12_12
# BB#11:                                # %if.then.34
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	140(%rax), %xmm1
	cvtsi2sdl	-64(%rbp), %xmm2
	cvtsi2sdl	-68(%rbp), %xmm3
	callq	cairo_rectangle
.LBB12_12:                              # %if.end.40
                                        #   in Loop: Header=BB12_9 Depth=1
	jmp	.LBB12_13
.LBB12_13:                              # %for.inc.41
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	-64(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_9
.LBB12_14:                              # %for.end.43
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_fill
.LBB12_15:                              # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_20
# BB#16:                                # %for.body.50
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	dash_x_to_index
	movl	%eax, -80(%rbp)
	movslq	-80(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpl	$0, (%rcx,%rdi,4)
	je	.LBB12_18
# BB#17:                                # %if.then.57
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	140(%rax), %xmm1
	cvtsi2sdl	-64(%rbp), %xmm2
	cvtsi2sdl	-68(%rbp), %xmm3
	callq	cairo_rectangle
.LBB12_18:                              # %if.end.63
                                        #   in Loop: Header=BB12_15 Depth=1
	jmp	.LBB12_19
.LBB12_19:                              # %for.inc.64
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	-64(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_15
.LBB12_20:                              # %for.end.66
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$444, %rax              # imm = 0x1BC
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_fill
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cltd
	idivl	-64(%rbp)
	movl	%edx, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.LBB12_22
# BB#21:                                # %if.then.73
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
.LBB12_22:                              # %if.end.75
	jmp	.LBB12_23
.LBB12_23:                              # %for.cond.76
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_33
# BB#24:                                # %for.body.81
                                        #   in Loop: Header=BB12_23 Depth=1
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	dash_x_to_index
	movl	$4, %esi
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rdi
	movl	120(%rdi), %eax
	cltd
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB12_27
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_23 Depth=1
	movl	$4, %eax
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	120(%rdx), %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-100(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB12_27
# BB#26:                                # %if.then.94
                                        #   in Loop: Header=BB12_23 Depth=1
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movl	140(%rcx), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movl	140(%rcx), %eax
	addl	-68(%rbp), %eax
	addl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	jmp	.LBB12_31
.LBB12_27:                              # %if.else
                                        #   in Loop: Header=BB12_23 Depth=1
	movl	$2, %eax
	movl	-84(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-124(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB12_29
# BB#28:                                # %if.then.111
                                        #   in Loop: Header=BB12_23 Depth=1
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movl	140(%rcx), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movl	140(%rcx), %eax
	addl	-68(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	jmp	.LBB12_30
.LBB12_29:                              # %if.else.125
                                        #   in Loop: Header=BB12_23 Depth=1
	movl	$2, %eax
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %ecx
	addl	-64(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rdx
	movl	140(%rdx), %ecx
	movl	-68(%rbp), %esi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-148(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movl	$2, %eax
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %ecx
	addl	-64(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %r8
	movl	140(%r8), %ecx
	movl	-68(%rbp), %esi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-164(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
.LBB12_30:                              # %if.end.142
                                        #   in Loop: Header=BB12_23 Depth=1
	jmp	.LBB12_31
.LBB12_31:                              # %if.end.143
                                        #   in Loop: Header=BB12_23 Depth=1
	jmp	.LBB12_32
.LBB12_32:                              # %for.inc.144
                                        #   in Loop: Header=BB12_23 Depth=1
	movl	-64(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_23
.LBB12_33:                              # %for.end.146
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movl	140(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movl	140(%rax), %ecx
	addl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$444, %rax              # imm = 0x1BC
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dash_editor_expose, .Lfunc_end12-gimp_dash_editor_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_button_press,@function
gimp_dash_editor_button_press:          # @gimp_dash_editor_button_press
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB13_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_grab_add
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	callq	dash_x_to_index
	movl	%eax, -28(%rbp)
	movslq	-28(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpl	$0, (%rcx,%rdi,4)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movq	-16(%rbp), %rcx
	cvttsd2si	24(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 156(%rcx)
	movq	-24(%rbp), %rcx
	movl	152(%rcx), %eax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	128(%rdi), %rdi
	movl	%eax, (%rdi,%rcx,4)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB13_3:                               # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dash_editor_button_press, .Lfunc_end13-gimp_dash_editor_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_button_release,@function
gimp_dash_editor_button_release:        # @gimp_dash_editor_button_release
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-24(%rbp), %rdi
	callq	update_options_from_segments
.LBB14_2:                               # %if.end
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dash_editor_button_release, .Lfunc_end14-gimp_dash_editor_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dash_editor_motion_notify,@function
gimp_dash_editor_motion_notify:         # @gimp_dash_editor_motion_notify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_dash_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	callq	dash_x_to_index
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	152(%rdi), %eax
	movslq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	%eax, (%rcx,%rdi,4)
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	cvtsi2sdl	156(%rcx), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB15_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	dash_x_to_index
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	152(%rdi), %eax
	movslq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	%eax, (%rcx,%rdi,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB15_2
.LBB15_5:                               # %for.end
	jmp	.LBB15_6
.LBB15_6:                               # %if.end
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	156(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_12
# BB#7:                                 # %if.then.22
	movq	-24(%rbp), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB15_8:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB15_11
# BB#9:                                 # %for.body.29
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	dash_x_to_index
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	152(%rdi), %eax
	movslq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	%eax, (%rcx,%rdi,4)
# BB#10:                                # %for.inc.35
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	movl	-28(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -28(%rbp)
	jmp	.LBB15_8
.LBB15_11:                              # %for.end.37
	jmp	.LBB15_12
.LBB15_12:                              # %if.end.38
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dash_editor_motion_notify, .Lfunc_end15-gimp_dash_editor_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB16_2
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
.LBB16_2:                               # %entry
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
.Lfunc_end16:
	.size	g_warning, .Lfunc_end16-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	update_segments_from_options,@function
update_segments_from_options:           # @update_segments_from_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 104(%rdi)
	je	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB17_3
.LBB17_2:                               # %if.then
	jmp	.LBB17_16
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$0, -36(%rbp)
	jmp	.LBB17_11
.LBB17_6:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_9
# BB#8:                                 # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB17_10
.LBB17_9:                               # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_10:                              # %if.end.10
	jmp	.LBB17_11
.LBB17_11:                              # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_13
# BB#12:                                # %if.then.13
	jmp	.LBB17_14
.LBB17_13:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.update_segments_from_options, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_16
.LBB17_14:                              # %if.end.15
	jmp	.LBB17_15
.LBB17_15:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_stroke_options_get_dash_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	120(%rax), %edx
	callq	gimp_dash_pattern_fill_segments
.LBB17_16:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	update_segments_from_options, .Lfunc_end17-update_segments_from_options
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	update_blocksize,@function
update_blocksize:                       # @update_blocksize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	$6, 148(%rax)
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	120(%rax), %xmm2
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	148(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	cmpl	$4, %ecx
	jle	.LBB18_2
# BB#1:                                 # %cond.true
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	120(%rax), %xmm2
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	148(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movl	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB18_3
.LBB18_3:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	%eax, 144(%rcx)
	movq	-8(%rbp), %rcx
	cvtsi2ssl	144(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	cvtsi2ssl	120(%rcx), %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-8(%rbp), %rcx
	divsd	112(%rcx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	-20(%rbp), %edx
	subl	$4, %edx
	cmpl	%edx, %eax
	jge	.LBB18_5
# BB#4:                                 # %cond.true.27
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2ssl	144(%rax), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2ssl	120(%rax), %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	divsd	112(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB18_6
.LBB18_5:                               # %cond.false.38
	movl	-20(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB18_6:                               # %cond.end.41
	movl	-48(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 148(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	update_blocksize, .Lfunc_end18-update_blocksize
	.cfi_endproc

	.align	16, 0x90
	.type	dash_x_to_index,@function
dash_x_to_index:                        # @dash_x_to_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	subl	136(%rdi), %esi
	movl	%esi, -16(%rbp)
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	jge	.LBB19_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	144(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB19_1
.LBB19_3:                               # %while.end
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	144(%rcx)
	movq	-8(%rbp), %rcx
	cltd
	idivl	120(%rcx)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	dash_x_to_index, .Lfunc_end19-dash_x_to_index
	.cfi_endproc

	.type	gimp_dash_editor_get_type.g_define_type_id__volatile,@object # @gimp_dash_editor_get_type.g_define_type_id__volatile
	.local	gimp_dash_editor_get_type.g_define_type_id__volatile
	.comm	gimp_dash_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDashEditor"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_dash_editor_new,@object # @__func__.gimp_dash_editor_new
.L__func__.gimp_dash_editor_new:
	.asciz	"gimp_dash_editor_new"
	.size	.L__func__.gimp_dash_editor_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_STROKE_OPTIONS (stroke_options)"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"stroke-options"
	.size	.L.str.3, 15

	.type	.L__func__.gimp_dash_editor_shift_right,@object # @__func__.gimp_dash_editor_shift_right
.L__func__.gimp_dash_editor_shift_right:
	.asciz	"gimp_dash_editor_shift_right"
	.size	.L__func__.gimp_dash_editor_shift_right, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_DASH_EDITOR (editor)"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"editor->n_segments > 0"
	.size	.L.str.5, 23

	.type	.L__func__.gimp_dash_editor_shift_left,@object # @__func__.gimp_dash_editor_shift_left
.L__func__.gimp_dash_editor_shift_left:
	.asciz	"gimp_dash_editor_shift_left"
	.size	.L__func__.gimp_dash_editor_shift_left, 28

	.type	gimp_dash_editor_parent_class,@object # @gimp_dash_editor_parent_class
	.local	gimp_dash_editor_parent_class
	.comm	gimp_dash_editor_parent_class,8,8
	.type	GimpDashEditor_private_offset,@object # @GimpDashEditor_private_offset
	.local	GimpDashEditor_private_offset
	.comm	GimpDashEditor_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"n-segments"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dash-length"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpdasheditor.c"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9

	.type	.L__func__.gimp_dash_editor_set_property,@object # @__func__.gimp_dash_editor_set_property
.L__func__.gimp_dash_editor_set_property:
	.asciz	"gimp_dash_editor_set_property"
	.size	.L__func__.gimp_dash_editor_set_property, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"editor->stroke_options == NULL"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"notify::dash-info"
	.size	.L.str.12, 18

	.type	.L__func__.update_segments_from_options,@object # @__func__.update_segments_from_options
.L__func__.update_segments_from_options:
	.asciz	"update_segments_from_options"
	.size	.L__func__.update_segments_from_options, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_STROKE_OPTIONS (editor->stroke_options)"
	.size	.L.str.13, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
