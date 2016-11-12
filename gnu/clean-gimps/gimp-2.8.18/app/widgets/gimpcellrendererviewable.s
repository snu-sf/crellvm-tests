	.text
	.file	"gimpcellrendererviewable.bc"
	.globl	gimp_cell_renderer_viewable_get_type
	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_get_type,@function
gimp_cell_renderer_viewable_get_type:   # @gimp_cell_renderer_viewable_get_type
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
	movq	gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_cell_renderer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$240, %edx
	movabsq	$gimp_cell_renderer_viewable_class_intern_init, %rdi
	movl	$64, %r8d
	movabsq	$gimp_cell_renderer_viewable_init, %rcx
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
	movabsq	$gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cell_renderer_viewable_get_type, .Lfunc_end0-gimp_cell_renderer_viewable_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_class_intern_init,@function
gimp_cell_renderer_viewable_class_intern_init: # @gimp_cell_renderer_viewable_class_intern_init
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
	movq	%rax, gimp_cell_renderer_viewable_parent_class
	cmpl	$0, GimpCellRendererViewable_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCellRendererViewable_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_cell_renderer_viewable_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cell_renderer_viewable_class_intern_init, .Lfunc_end1-gimp_cell_renderer_viewable_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_init,@function
gimp_cell_renderer_viewable_init:       # @gimp_cell_renderer_viewable_init
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
	movabsq	$.L.str.10, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cell_renderer_viewable_init, .Lfunc_end2-gimp_cell_renderer_viewable_init
	.cfi_endproc

	.globl	gimp_cell_renderer_viewable_new
	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_new,@function
gimp_cell_renderer_viewable_new:        # @gimp_cell_renderer_viewable_new
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
	callq	gimp_cell_renderer_viewable_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cell_renderer_viewable_new, .Lfunc_end3-gimp_cell_renderer_viewable_new
	.cfi_endproc

	.globl	gimp_cell_renderer_viewable_pre_clicked
	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_pre_clicked,@function
gimp_cell_renderer_viewable_pre_clicked: # @gimp_cell_renderer_viewable_pre_clicked
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_cell_renderer_viewable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cell_renderer_viewable_pre_clicked, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cell_renderer_viewable_pre_clicked, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	xorl	%edx, %edx
	leaq	-32(%rbp), %r9
	movq	-16(%rbp), %rax
	movl	viewable_cell_signals, %esi
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	-32(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB4_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cell_renderer_viewable_pre_clicked, .Lfunc_end4-gimp_cell_renderer_viewable_pre_clicked
	.cfi_endproc

	.globl	gimp_cell_renderer_viewable_clicked
	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_clicked,@function
gimp_cell_renderer_viewable_clicked:    # @gimp_cell_renderer_viewable_clicked
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_cell_renderer_viewable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cell_renderer_viewable_clicked, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_26
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cell_renderer_viewable_clicked, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_26
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB5_25
# BB#18:                                # %if.then.18
	callq	gtk_get_current_event
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB5_24
# BB#19:                                # %if.then.22
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB5_23
# BB#20:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB5_22
# BB#21:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB5_23
.LBB5_22:                               # %if.then.29
	movq	-56(%rbp), %rdi
	callq	gtk_get_event_widget
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	24(%rdi), %rdx
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	40(%rdi), %rcx
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movl	48(%rdi), %r8d
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movl	52(%rdi), %r9d
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movb	60(%rdi), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movq	%rax, %rdi
	movl	%r11d, (%rsp)
	callq	gimp_view_popup_show
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB5_23:                               # %if.end.37
	movq	-56(%rbp), %rdi
	callq	gdk_event_free
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.39
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	viewable_cell_signals+4, %esi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_26:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cell_renderer_viewable_clicked, .Lfunc_end5-gimp_cell_renderer_viewable_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_class_init,@function
gimp_cell_renderer_viewable_class_init: # @gimp_cell_renderer_viewable_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_cell_renderer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gdk_modifier_type_get_type
	movabsq	$.L.str.4, %rdi
	movl	$2, %edx
	movl	$224, %ecx
	movabsq	$g_signal_accumulator_true_handled, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movabsq	$gimp_marshal_BOOLEAN__STRING_FLAGS, %rsi
	movl	$20, %r10d
	movl	%r10d, %r11d
	movl	$64, %r10d
	movl	%r10d, %ebx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$20, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%r11, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, viewable_cell_signals
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gdk_modifier_type_get_type
	movabsq	$.L.str.5, %rdi
	movl	$2, %edx
	movl	$232, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movabsq	$gimp_marshal_VOID__STRING_FLAGS, %r8
	movl	$4, %r10d
	movl	%r10d, %r9d
	movl	$64, %r10d
	movl	%r10d, %r11d
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movq	%r11, -128(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_cell_renderer_viewable_activate, %rsi
	movabsq	$gimp_cell_renderer_viewable_render, %rdi
	movabsq	$gimp_cell_renderer_viewable_get_size, %r8
	movabsq	$gimp_cell_renderer_viewable_set_property, %r9
	movabsq	$gimp_cell_renderer_viewable_get_property, %r11
	movabsq	$gimp_cell_renderer_viewable_finalize, %rbx
	movl	%eax, viewable_cell_signals+4
	movq	-40(%rbp), %r14
	movq	%rbx, 48(%r14)
	movq	-40(%rbp), %rbx
	movq	%r11, 32(%rbx)
	movq	-40(%rbp), %r11
	movq	%r9, 24(%r11)
	movq	-48(%rbp), %r9
	movq	%r8, 160(%r9)
	movq	-48(%rbp), %r8
	movq	%rdi, 168(%r8)
	movq	-48(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	movq	-32(%rbp), %rsi
	movq	$0, 232(%rsi)
	movq	-40(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %r8d
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cell_renderer_viewable_class_init, .Lfunc_end6-gimp_cell_renderer_viewable_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_finalize,@function
gimp_cell_renderer_viewable_finalize:   # @gimp_cell_renderer_viewable_finalize
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
	callq	gimp_cell_renderer_viewable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_cell_renderer_viewable_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cell_renderer_viewable_finalize, .Lfunc_end7-gimp_cell_renderer_viewable_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_get_property,@function
gimp_cell_renderer_viewable_get_property: # @gimp_cell_renderer_viewable_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$193, %edx
	movabsq	$.L.str.9, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_cell_renderer_viewable_get_property, .Lfunc_end8-gimp_cell_renderer_viewable_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_set_property,@function
gimp_cell_renderer_viewable_set_property: # @gimp_cell_renderer_viewable_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	jne	.LBB9_4
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB9_3:                                # %if.end
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB9_7
.LBB9_4:                                # %sw.default
	jmp	.LBB9_5
.LBB9_5:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$220, %edx
	movabsq	$.L.str.9, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
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
	.size	gimp_cell_renderer_viewable_set_property, .Lfunc_end9-gimp_cell_renderer_viewable_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_get_size,@function
gimp_cell_renderer_viewable_get_size:   # @gimp_cell_renderer_viewable_get_size
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
	subq	$128, %rsp
	movq	16(%rbp), %rax
	leaq	-68(%rbp), %r10
	leaq	-72(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r10, %rsi
	movq	%r11, %rdx
	callq	gtk_cell_renderer_get_alignment
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_cell_renderer_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movl	48(%rax), %ecx
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -84(%rbp)
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movl	52(%rax), %ecx
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -88(%rbp)
.LBB10_2:                               # %if.end
	movl	-76(%rbp), %eax
	shll	$1, %eax
	addl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-80(%rbp), %eax
	shll	$1, %eax
	addl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_4
# BB#3:                                 # %if.then.16
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB10_4:                               # %if.end.17
	cmpq	$0, -40(%rbp)
	je	.LBB10_6
# BB#5:                                 # %if.then.19
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB10_6:                               # %if.end.20
	cmpq	$0, -24(%rbp)
	je	.LBB10_23
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -84(%rbp)
	jle	.LBB10_23
# BB#8:                                 # %land.lhs.true.22
	cmpl	$0, -88(%rbp)
	jle	.LBB10_23
# BB#9:                                 # %if.then.24
	cmpq	$0, -32(%rbp)
	je	.LBB10_17
# BB#10:                                # %if.then.26
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB10_12
# BB#11:                                # %cond.true
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-68(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB10_13
.LBB10_12:                              # %cond.false
	cvtss2sd	-68(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB10_13:                              # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-92(%rbp), %ecx
	movl	-76(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB10_15
# BB#14:                                # %cond.true.39
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB10_16
.LBB10_15:                              # %cond.false.40
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB10_16
.LBB10_16:                              # %cond.end.41
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	-76(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_17:                              # %if.end.44
	cmpq	$0, -40(%rbp)
	je	.LBB10_22
# BB#18:                                # %if.then.46
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	subl	-96(%rbp), %ecx
	movl	-80(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB10_20
# BB#19:                                # %cond.true.56
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB10_21
.LBB10_20:                              # %cond.false.57
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB10_21
.LBB10_21:                              # %cond.end.58
	movl	-120(%rbp), %eax        # 4-byte Reload
	addl	-80(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_22:                              # %if.end.61
	jmp	.LBB10_23
.LBB10_23:                              # %if.end.62
	cmpq	$0, -48(%rbp)
	je	.LBB10_25
# BB#24:                                # %if.then.64
	movl	-92(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_25:                              # %if.end.65
	cmpq	$0, -56(%rbp)
	je	.LBB10_27
# BB#26:                                # %if.then.67
	movl	-96(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_27:                              # %if.end.68
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_cell_renderer_viewable_get_size, .Lfunc_end10-gimp_cell_renderer_viewable_get_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_render,@function
gimp_cell_renderer_viewable_render:     # @gimp_cell_renderer_viewable_render
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
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB11_6
# BB#1:                                 # %if.then
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB11_5
# BB#2:                                 # %if.then.3
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	cmpl	$1, 64(%rax)
	jne	.LBB11_4
# BB#3:                                 # %if.then.5
	xorl	%esi, %esi
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_view_renderer_set_border_type
.LBB11_4:                               # %if.end
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_view_renderer_remove_idle
.LBB11_5:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	gdk_cairo_create
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gdk_cairo_rectangle
	movq	-72(%rbp), %rdi
	callq	cairo_clip
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	callq	cairo_translate
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	12(%rax), %r8d
	callq	gimp_view_renderer_draw
	movq	-72(%rbp), %rdi
	callq	cairo_destroy
.LBB11_6:                               # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_cell_renderer_viewable_render, .Lfunc_end11-gimp_cell_renderer_viewable_render
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cell_renderer_viewable_activate,@function
gimp_cell_renderer_viewable_activate:   # @gimp_cell_renderer_viewable_activate
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
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB12_9
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB12_4:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB12_7
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB12_8
# BB#6:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB12_8
.LBB12_7:                               # %if.then.10
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-76(%rbp), %edx
	callq	gimp_cell_renderer_viewable_clicked
	movl	$1, -4(%rbp)
	jmp	.LBB12_10
.LBB12_8:                               # %if.end.11
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.12
	movl	$0, -4(%rbp)
.LBB12_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_cell_renderer_viewable_activate, .Lfunc_end12-gimp_cell_renderer_viewable_activate
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.type	gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile,@object # @gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile
	.local	gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile
	.comm	gimp_cell_renderer_viewable_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCellRendererViewable"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_cell_renderer_viewable_pre_clicked,@object # @__func__.gimp_cell_renderer_viewable_pre_clicked
.L__func__.gimp_cell_renderer_viewable_pre_clicked:
	.asciz	"gimp_cell_renderer_viewable_pre_clicked"
	.size	.L__func__.gimp_cell_renderer_viewable_pre_clicked, 40

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CELL_RENDERER_VIEWABLE (cell)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"path != NULL"
	.size	.L.str.3, 13

	.type	viewable_cell_signals,@object # @viewable_cell_signals
	.local	viewable_cell_signals
	.comm	viewable_cell_signals,8,4
	.type	.L__func__.gimp_cell_renderer_viewable_clicked,@object # @__func__.gimp_cell_renderer_viewable_clicked
.L__func__.gimp_cell_renderer_viewable_clicked:
	.asciz	"gimp_cell_renderer_viewable_clicked"
	.size	.L__func__.gimp_cell_renderer_viewable_clicked, 36

	.type	gimp_cell_renderer_viewable_parent_class,@object # @gimp_cell_renderer_viewable_parent_class
	.local	gimp_cell_renderer_viewable_parent_class
	.comm	gimp_cell_renderer_viewable_parent_class,8,8
	.type	GimpCellRendererViewable_private_offset,@object # @GimpCellRendererViewable_private_offset
	.local	GimpCellRendererViewable_private_offset
	.comm	GimpCellRendererViewable_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pre-clicked"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"clicked"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"renderer"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpcellrendererviewable.c"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"mode"
	.size	.L.str.10, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
