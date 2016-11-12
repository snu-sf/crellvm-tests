	.text
	.file	"gimpfgbgeditor.bc"
	.globl	gimp_fg_bg_editor_get_type
	.align	16, 0x90
	.type	gimp_fg_bg_editor_get_type,@function
gimp_fg_bg_editor_get_type:             # @gimp_fg_bg_editor_get_type
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
	movq	gimp_fg_bg_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_fg_bg_editor_get_type.g_define_type_id__volatile, %rax
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
	movl	$760, %edx              # imm = 0x2F8
	movabsq	$gimp_fg_bg_editor_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_fg_bg_editor_init, %rcx
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
	movabsq	$gimp_fg_bg_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_fg_bg_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_fg_bg_editor_get_type, .Lfunc_end0-gimp_fg_bg_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_class_intern_init,@function
gimp_fg_bg_editor_class_intern_init:    # @gimp_fg_bg_editor_class_intern_init
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
	movq	%rax, gimp_fg_bg_editor_parent_class
	cmpl	$0, GimpFgBgEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFgBgEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_fg_bg_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_fg_bg_editor_class_intern_init, .Lfunc_end1-gimp_fg_bg_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_init,@function
gimp_fg_bg_editor_init:                 # @gimp_fg_bg_editor_init
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
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$768, %esi              # imm = 0x300
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_fg_bg_editor_drag_color, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_dnd_color_source_add
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_fg_bg_editor_drop_color, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_dnd_color_dest_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_fg_bg_editor_init, .Lfunc_end2-gimp_fg_bg_editor_init
	.cfi_endproc

	.globl	gimp_fg_bg_editor_new
	.align	16, 0x90
	.type	gimp_fg_bg_editor_new,@function
gimp_fg_bg_editor_new:                  # @gimp_fg_bg_editor_new
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
	cmpq	$0, -16(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_fg_bg_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_14
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	callq	gimp_fg_bg_editor_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_fg_bg_editor_new, .Lfunc_end3-gimp_fg_bg_editor_new
	.cfi_endproc

	.globl	gimp_fg_bg_editor_set_context
	.align	16, 0x90
	.type	gimp_fg_bg_editor_set_context,@function
gimp_fg_bg_editor_set_context:          # @gimp_fg_bg_editor_set_context
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_fg_bg_editor_get_type
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
	movabsq	$.L__func__.gimp_fg_bg_editor_set_context, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_fg_bg_editor_set_context, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	.LBB4_27
# BB#26:                                # %if.then.42
	jmp	.LBB4_32
.LBB4_27:                               # %if.end.43
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB4_29
# BB#28:                                # %if.then.46
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gtk_widget_queue_draw, %rdx
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
.LBB4_29:                               # %if.end.51
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB4_31
# BB#30:                                # %if.then.54
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_widget_queue_draw, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_widget_queue_draw, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_31:                               # %if.end.58
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB4_32:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_fg_bg_editor_set_context, .Lfunc_end4-gimp_fg_bg_editor_set_context
	.cfi_endproc

	.globl	gimp_fg_bg_editor_set_active
	.align	16, 0x90
	.type	gimp_fg_bg_editor_set_active,@function
gimp_fg_bg_editor_set_active:           # @gimp_fg_bg_editor_set_active
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_fg_bg_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_fg_bg_editor_set_active, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 112(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_fg_bg_editor_set_active, .Lfunc_end5-gimp_fg_bg_editor_set_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_class_init,@function
gimp_fg_bg_editor_class_init:           # @gimp_fg_bg_editor_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_active_color_get_type
	movabsq	$.L.str.8, %rdi
	movl	$1, %edx
	movl	$752, %ecx              # imm = 0x2F0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_fg_bg_editor_drag_motion, %rsi
	movabsq	$gimp_fg_bg_editor_button_release, %rdi
	movabsq	$gimp_fg_bg_editor_button_press, %r8
	movabsq	$gimp_fg_bg_editor_expose, %r9
	movabsq	$gimp_fg_bg_editor_get_property, %r10
	movabsq	$gimp_fg_bg_editor_set_property, %r11
	movabsq	$gimp_fg_bg_editor_dispose, %rbx
	movl	%eax, editor_signals
	movq	-32(%rbp), %r14
	movq	%rbx, 40(%r14)
	movq	-32(%rbp), %rbx
	movq	%r11, 24(%rbx)
	movq	-32(%rbp), %r11
	movq	%r10, 32(%r11)
	movq	-40(%rbp), %r10
	movq	%r9, 392(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 344(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 352(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 608(%rdi)
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %r8d
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_active_color_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_fg_bg_editor_class_init, .Lfunc_end6-gimp_fg_bg_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_dispose,@function
gimp_fg_bg_editor_dispose:              # @gimp_fg_bg_editor_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_fg_bg_editor_set_context
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB7_4:                                # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB7_6:                                # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_fg_bg_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_fg_bg_editor_dispose, .Lfunc_end7-gimp_fg_bg_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_set_property,@function
gimp_fg_bg_editor_set_property:         # @gimp_fg_bg_editor_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_7
.LBB8_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_3
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_fg_bg_editor_set_context
	jmp	.LBB8_6
.LBB8_2:                                # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_fg_bg_editor_set_active
	jmp	.LBB8_6
.LBB8_3:                                # %sw.default
	jmp	.LBB8_4
.LBB8_4:                                # %do.body
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$196, %edx
	movabsq	$.L.str.11, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_fg_bg_editor_set_property, .Lfunc_end8-gimp_fg_bg_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_get_property,@function
gimp_fg_bg_editor_get_property:         # @gimp_fg_bg_editor_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
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
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_3
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	112(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB9_6
.LBB9_3:                                # %sw.default
	jmp	.LBB9_4
.LBB9_4:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$218, %edx
	movabsq	$.L.str.11, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_fg_bg_editor_get_property, .Lfunc_end9-gimp_fg_bg_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_expose,@function
gimp_fg_bg_editor_expose:               # @gimp_fg_bg_editor_expose
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
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp35:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
	jmp	.LBB10_30
.LBB10_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-64(%rbp), %rdi
	callq	cairo_clip
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-72(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-68(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 120(%rax)
	jne	.LBB10_4
# BB#3:                                 # %if.then.10
	movabsq	$.L.str.12, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	gtk_widget_render_icon
	movq	-40(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB10_4:                               # %if.end.13
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	callq	gdk_pixbuf_get_height
	movl	$2, %ecx
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-156(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB10_7
# BB#5:                                 # %land.lhs.true
	movl	$2, %eax
	movl	-96(%rbp), %ecx
	movl	-88(%rbp), %edx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-160(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB10_7
# BB#6:                                 # %if.then.20
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	120(%rax), %rsi
	movl	-88(%rbp), %ecx
	subl	-96(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	gdk_cairo_set_source_pixbuf
	movq	-64(%rbp), %rdi
	callq	cairo_paint
	jmp	.LBB10_8
.LBB10_7:                               # %if.else
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
.LBB10_8:                               # %if.end.22
	movq	-40(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB10_10
# BB#9:                                 # %if.then.24
	movabsq	$.L.str.13, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	gtk_widget_render_icon
	movq	-40(%rbp), %rcx
	movq	%rax, 128(%rcx)
.LBB10_10:                              # %if.end.27
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rdi
	movq	128(%rdi), %rdi
	callq	gdk_pixbuf_get_height
	movl	$2, %ecx
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	movl	-84(%rbp), %edx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-164(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB10_13
# BB#11:                                # %land.lhs.true.35
	movl	$2, %eax
	movl	-104(%rbp), %ecx
	movl	-88(%rbp), %edx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-168(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB10_13
# BB#12:                                # %if.then.39
	xorps	%xmm1, %xmm1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rsi
	movl	-84(%rbp), %ecx
	subl	-100(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	gdk_cairo_set_source_pixbuf
	movq	-64(%rbp), %rdi
	callq	cairo_paint
	jmp	.LBB10_14
.LBB10_13:                              # %if.else.43
	movl	$0, -104(%rbp)
	movl	$0, -100(%rbp)
.LBB10_14:                              # %if.end.44
	movl	-88(%rbp), %eax
	movl	-96(%rbp), %ecx
	cmpl	-104(%rbp), %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jle	.LBB10_16
# BB#15:                                # %cond.true
	movl	-96(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false
	movl	-104(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB10_17:                              # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	subl	$2, %ecx
	movl	%ecx, -112(%rbp)
	movl	-84(%rbp), %eax
	movl	-92(%rbp), %ecx
	cmpl	-100(%rbp), %ecx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jle	.LBB10_19
# BB#18:                                # %cond.true.51
	movl	-92(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false.52
	movl	-100(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB10_20:                              # %cond.end.53
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	movl	-180(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	subl	$4, %edx
	movl	%edx, -108(%rbp)
	movl	-112(%rbp), %eax
	imull	$3, -88(%rbp), %edx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-188(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB10_25
# BB#21:                                # %if.then.60
	movl	$3, %eax
	movl	$4, %ecx
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %esi
	imull	$3, -88(%rbp), %edi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -196(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	subl	%eax, %esi
	movl	-196(%rbp), %eax        # 4-byte Reload
	subl	%esi, %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-192(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-200(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jle	.LBB10_23
# BB#22:                                # %cond.true.69
	movl	$4, %eax
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %edx
	imull	$3, -88(%rbp), %esi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -208(%rbp)        # 4-byte Spill
	cltd
	movl	-204(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-208(%rbp), %edi        # 4-byte Reload
	subl	%eax, %edi
	subl	%edi, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB10_24
.LBB10_23:                              # %cond.false.74
	movl	$3, %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-216(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB10_24:                              # %cond.end.77
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)
.LBB10_25:                              # %if.end.79
	movl	-108(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 136(%rcx)
	movl	-112(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 140(%rcx)
	movq	-40(%rbp), %rcx
	cmpq	$0, 104(%rcx)
	je	.LBB10_27
# BB#26:                                # %if.then.81
	leaq	-144(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_context_get_background
	leaq	-144(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_cairo_set_source_rgb
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-88(%rbp), %ecx
	subl	-112(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdl	-108(%rbp), %xmm2
	cvtsi2sdl	-112(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-64(%rbp), %rdi
	callq	cairo_fill
.LBB10_27:                              # %if.end.89
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$1, %eax
	movl	$2, %ecx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %r9
	cmpl	$0, 112(%r9)
	cmovel	%ecx, %eax
	movq	-24(%rbp), %r9
	movl	-84(%rbp), %ecx
	subl	-108(%rbp), %ecx
	movl	-88(%rbp), %r10d
	subl	-112(%rbp), %r10d
	movl	-108(%rbp), %r11d
	movl	-112(%rbp), %ebx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movq	$0, (%rsp)
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%ebx, 32(%rsp)
	callq	gtk_paint_shadow
	movq	-40(%rbp), %rsi
	cmpq	$0, 104(%rsi)
	je	.LBB10_29
# BB#28:                                # %if.then.97
	leaq	-144(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_context_get_foreground
	leaq	-144(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_cairo_set_source_rgb
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-108(%rbp), %xmm2
	cvtsi2sdl	-112(%rbp), %xmm3
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-64(%rbp), %rdi
	callq	cairo_fill
.LBB10_29:                              # %if.end.101
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$1, %eax
	movl	$2, %ecx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %r9
	cmpl	$1, 112(%r9)
	cmovel	%ecx, %eax
	movq	-24(%rbp), %r9
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r10d
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%r10d, 32(%rsp)
	callq	gtk_paint_shadow
	movq	-64(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, -12(%rbp)
.LBB10_30:                              # %return
	movl	-12(%rbp), %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_fg_bg_editor_expose, .Lfunc_end10-gimp_fg_bg_editor_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_button_press,@function
gimp_fg_bg_editor_button_press:         # @gimp_fg_bg_editor_button_press
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB11_17
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB11_17
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	cvttsd2si	32(%rax), %edx
	callq	gimp_fg_bg_editor_target
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	$0, 144(%rdi)
	movl	-28(%rbp), %eax
	decl	%eax
	movl	%eax, %edi
	subl	$3, %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB11_15
# BB#18:                                # %if.then
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_3:                               # %sw.bb
	movq	-24(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB11_5
# BB#4:                                 # %if.then.7
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_fg_bg_editor_set_active
.LBB11_5:                               # %if.end
	movq	-24(%rbp), %rax
	movl	$1, 144(%rax)
	jmp	.LBB11_16
.LBB11_6:                               # %sw.bb.9
	movq	-24(%rbp), %rax
	cmpl	$1, 112(%rax)
	je	.LBB11_8
# BB#7:                                 # %if.then.13
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_fg_bg_editor_set_active
.LBB11_8:                               # %if.end.14
	movq	-24(%rbp), %rax
	movl	$2, 144(%rax)
	jmp	.LBB11_16
.LBB11_9:                               # %sw.bb.16
	movq	-24(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB11_11
# BB#10:                                # %if.then.17
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_context_swap_colors
.LBB11_11:                              # %if.end.19
	jmp	.LBB11_16
.LBB11_12:                              # %sw.bb.20
	movq	-24(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB11_14
# BB#13:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_context_set_default_colors
.LBB11_14:                              # %if.end.25
	jmp	.LBB11_16
.LBB11_15:                              # %sw.default
	jmp	.LBB11_16
.LBB11_16:                              # %sw.epilog
	jmp	.LBB11_17
.LBB11_17:                              # %if.end.26
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_fg_bg_editor_button_press, .Lfunc_end11-gimp_fg_bg_editor_button_press
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_3
	.quad	.LBB11_6
	.quad	.LBB11_9
	.quad	.LBB11_12

	.text
	.align	16, 0x90
	.type	gimp_fg_bg_editor_button_release,@function
gimp_fg_bg_editor_button_release:       # @gimp_fg_bg_editor_button_release
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB12_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	gimp_fg_bg_editor_target
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	cmpl	144(%rdi), %eax
	jne	.LBB12_7
# BB#2:                                 # %if.then.6
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_9
.LBB12_9:                               # %if.then.6
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB12_4
	jmp	.LBB12_5
.LBB12_3:                               # %sw.bb
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movl	editor_signals, %esi
	movq	%rcx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB12_6
.LBB12_4:                               # %sw.bb.7
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	editor_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB12_6
.LBB12_5:                               # %sw.default
	jmp	.LBB12_6
.LBB12_6:                               # %sw.epilog
	jmp	.LBB12_7
.LBB12_7:                               # %if.end
	movq	-24(%rbp), %rax
	movl	$0, 144(%rax)
.LBB12_8:                               # %if.end.9
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_fg_bg_editor_button_release, .Lfunc_end12-gimp_fg_bg_editor_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_drag_motion,@function
gimp_fg_bg_editor_drag_motion:          # @gimp_fg_bg_editor_drag_motion
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_fg_bg_editor_target
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	je	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$2, -52(%rbp)
	jne	.LBB13_3
.LBB13_2:                               # %if.then
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	movl	$1, -4(%rbp)
	jmp	.LBB13_4
.LBB13_3:                               # %if.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	movl	$0, -4(%rbp)
.LBB13_4:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_fg_bg_editor_drag_motion, .Lfunc_end13-gimp_fg_bg_editor_drag_motion
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_target,@function
gimp_fg_bg_editor_target:               # @gimp_fg_bg_editor_target
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	136(%rdi), %edx
	movl	%edx, -52(%rbp)
	movq	-16(%rbp), %rdi
	movl	140(%rdi), %edx
	movl	%edx, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	movl	-32(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -48(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB15_5
# BB#1:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB15_5
# BB#2:                                 # %land.lhs.true.5
	cmpl	$0, -24(%rbp)
	jle	.LBB15_5
# BB#3:                                 # %land.lhs.true.7
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB15_5
# BB#4:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_5:                               # %if.else
	movl	-20(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_10
# BB#6:                                 # %land.lhs.true.10
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB15_10
# BB#7:                                 # %land.lhs.true.12
	movl	-24(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_10
# BB#8:                                 # %land.lhs.true.15
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_10
# BB#9:                                 # %if.then.17
	movl	$2, -4(%rbp)
	jmp	.LBB15_24
.LBB15_10:                              # %if.else.18
	cmpl	$0, -20(%rbp)
	jle	.LBB15_15
# BB#11:                                # %land.lhs.true.20
	movl	-20(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_15
# BB#12:                                # %land.lhs.true.23
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB15_15
# BB#13:                                # %land.lhs.true.25
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_15
# BB#14:                                # %if.then.27
	movl	$4, -4(%rbp)
	jmp	.LBB15_24
.LBB15_15:                              # %if.else.28
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB15_20
# BB#16:                                # %land.lhs.true.30
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB15_20
# BB#17:                                # %land.lhs.true.32
	cmpl	$0, -24(%rbp)
	jle	.LBB15_20
# BB#18:                                # %land.lhs.true.34
	movl	-24(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_20
# BB#19:                                # %if.then.37
	movl	$3, -4(%rbp)
	jmp	.LBB15_24
.LBB15_20:                              # %if.end
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.38
	jmp	.LBB15_22
.LBB15_22:                              # %if.end.39
	jmp	.LBB15_23
.LBB15_23:                              # %if.end.40
	movl	$0, -4(%rbp)
.LBB15_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_fg_bg_editor_target, .Lfunc_end15-gimp_fg_bg_editor_target
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_drag_color,@function
gimp_fg_bg_editor_drag_color:           # @gimp_fg_bg_editor_drag_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB16_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	112(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB16_2
	jmp	.LBB16_6
.LBB16_6:                               # %if.then
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB16_3
	jmp	.LBB16_4
.LBB16_2:                               # %sw.bb
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_get_foreground
	jmp	.LBB16_4
.LBB16_3:                               # %sw.bb.3
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_get_background
.LBB16_4:                               # %sw.epilog
	jmp	.LBB16_5
.LBB16_5:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_fg_bg_editor_drag_color, .Lfunc_end16-gimp_fg_bg_editor_drag_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_editor_drop_color,@function
gimp_fg_bg_editor_drop_color:           # @gimp_fg_bg_editor_drop_color
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB17_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_fg_bg_editor_target
	movl	%eax, %edx
	subl	$1, %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB17_2
	jmp	.LBB17_7
.LBB17_7:                               # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB17_3
	jmp	.LBB17_4
.LBB17_2:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_set_foreground
	jmp	.LBB17_5
.LBB17_3:                               # %sw.bb.4
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_set_background
	jmp	.LBB17_5
.LBB17_4:                               # %sw.default
	jmp	.LBB17_5
.LBB17_5:                               # %sw.epilog
	jmp	.LBB17_6
.LBB17_6:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_fg_bg_editor_drop_color, .Lfunc_end17-gimp_fg_bg_editor_drop_color
	.cfi_endproc

	.type	gimp_fg_bg_editor_get_type.g_define_type_id__volatile,@object # @gimp_fg_bg_editor_get_type.g_define_type_id__volatile
	.local	gimp_fg_bg_editor_get_type.g_define_type_id__volatile
	.comm	gimp_fg_bg_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFgBgEditor"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_fg_bg_editor_new,@object # @__func__.gimp_fg_bg_editor_new
.L__func__.gimp_fg_bg_editor_new:
	.asciz	"gimp_fg_bg_editor_new"
	.size	.L__func__.gimp_fg_bg_editor_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context"
	.size	.L.str.3, 8

	.type	.L__func__.gimp_fg_bg_editor_set_context,@object # @__func__.gimp_fg_bg_editor_set_context
.L__func__.gimp_fg_bg_editor_set_context:
	.asciz	"gimp_fg_bg_editor_set_context"
	.size	.L__func__.gimp_fg_bg_editor_set_context, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_FG_BG_EDITOR (editor)"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"foreground-changed"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"background-changed"
	.size	.L.str.6, 19

	.type	.L__func__.gimp_fg_bg_editor_set_active,@object # @__func__.gimp_fg_bg_editor_set_active
.L__func__.gimp_fg_bg_editor_set_active:
	.asciz	"gimp_fg_bg_editor_set_active"
	.size	.L__func__.gimp_fg_bg_editor_set_active, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"active-color"
	.size	.L.str.7, 13

	.type	gimp_fg_bg_editor_parent_class,@object # @gimp_fg_bg_editor_parent_class
	.local	gimp_fg_bg_editor_parent_class
	.comm	gimp_fg_bg_editor_parent_class,8,8
	.type	GimpFgBgEditor_private_offset,@object # @GimpFgBgEditor_private_offset
	.local	GimpFgBgEditor_private_offset
	.comm	GimpFgBgEditor_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color-clicked"
	.size	.L.str.8, 14

	.type	editor_signals,@object  # @editor_signals
	.local	editor_signals
	.comm	editor_signals,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpfgbgeditor.c"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-default-colors"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-swap-colors"
	.size	.L.str.13, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
