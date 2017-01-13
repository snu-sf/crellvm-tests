	.text
	.file	"gimpview.bc"
	.globl	gimp_view_get_type
	.align	16, 0x90
	.type	gimp_view_get_type,@function
gimp_view_get_type:                     # @gimp_view_get_type
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
	movq	gimp_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_widget_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$752, %edx              # imm = 0x2F0
	movabsq	$gimp_view_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_view_init, %rcx
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
	movabsq	$gimp_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_get_type, .Lfunc_end0-gimp_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_class_intern_init,@function
gimp_view_class_intern_init:            # @gimp_view_class_intern_init
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
	movq	%rax, gimp_view_parent_class
	cmpl	$0, GimpView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_class_intern_init, .Lfunc_end1-gimp_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_init,@function
gimp_view_init:                         # @gimp_view_init
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_has_window
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$13056, %esi            # imm = 0x3300
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 120(%rax)
	movq	-8(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 120(%rax)
	movq	-8(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 120(%rax)
	movq	-8(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-9, %cl
	movb	%cl, 120(%rax)
	movq	-8(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-17, %cl
	movb	%cl, 120(%rax)
	movq	-8(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-33, %cl
	movb	%cl, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_init, .Lfunc_end2-gimp_view_init
	.cfi_endproc

	.globl	gimp_view_new
	.align	16, 0x90
	.type	gimp_view_new,@function
gimp_view_new:                          # @gimp_view_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	jmp	.LBB3_14
.LBB3_14:                               # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB3_21
.LBB3_16:                               # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_20:                               # %if.end.32
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_23
# BB#22:                                # %if.then.36
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_24:                               # %if.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.end.39
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_new_by_types
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.45
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
.LBB3_27:                               # %if.end.48
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_remove_idle
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_new, .Lfunc_end3-gimp_view_new
	.cfi_endproc

	.globl	gimp_view_new_by_types
	.align	16, 0x90
	.type	gimp_view_new_by_types,@function
gimp_view_new_by_types:                 # @gimp_view_new_by_types
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.4
	movl	$1, -84(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.5
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_8:                                # %if.end
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.7
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_11
.LBB4_10:                               # %if.then.9
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_by_types, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_41
.LBB4_12:                               # %if.end.11
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
	jmp	.LBB4_14
.LBB4_14:                               # %do.body.12
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB4_16
# BB#15:                                # %if.then.16
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_by_types, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_41
.LBB4_17:                               # %if.end.18
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.19
	jmp	.LBB4_19
.LBB4_19:                               # %do.body.20
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB4_21
# BB#20:                                # %if.then.24
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.25
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_by_types, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_41
.LBB4_22:                               # %if.end.26
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.27
	jmp	.LBB4_24
.LBB4_24:                               # %do.body.28
	cmpl	$0, -36(%rbp)
	jle	.LBB4_27
# BB#25:                                # %land.lhs.true.30
	cmpl	$2048, -36(%rbp)        # imm = 0x800
	jg	.LBB4_27
# BB#26:                                # %if.then.32
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.33
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_by_types, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_41
.LBB4_28:                               # %if.end.34
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.35
	jmp	.LBB4_30
.LBB4_30:                               # %do.body.36
	cmpl	$0, -40(%rbp)
	jl	.LBB4_33
# BB#31:                                # %land.lhs.true.38
	cmpl	$16, -40(%rbp)
	jg	.LBB4_33
# BB#32:                                # %if.then.40
	jmp	.LBB4_34
.LBB4_33:                               # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_by_types, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_41
.LBB4_34:                               # %if.end.42
	jmp	.LBB4_35
.LBB4_35:                               # %do.end.43
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	gimp_view_renderer_new
	movq	%rax, -56(%rbp)
# BB#36:                                # %do.body.45
	cmpq	$0, -56(%rbp)
	je	.LBB4_38
# BB#37:                                # %if.then.47
	jmp	.LBB4_39
.LBB4_38:                               # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_by_types, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_41
.LBB4_39:                               # %if.end.49
	jmp	.LBB4_40
.LBB4_40:                               # %do.end.50
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_view_update_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 112(%rdx)
	movq	-64(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_41:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_new_by_types, .Lfunc_end4-gimp_view_new_by_types
	.cfi_endproc

	.globl	gimp_view_set_viewable
	.align	16, 0x90
	.type	gimp_view_set_viewable,@function
gimp_view_set_viewable:                 # @gimp_view_set_viewable
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_get_type
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
	movabsq	$.L__func__.gimp_view_set_viewable, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_28
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_set_viewable, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_28
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	.LBB5_27
# BB#26:                                # %if.then.42
	jmp	.LBB5_28
.LBB5_27:                               # %if.end.43
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	view_signals, %esi
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_28:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_view_set_viewable, .Lfunc_end5-gimp_view_set_viewable
	.cfi_endproc

	.globl	gimp_view_new_full
	.align	16, 0x90
	.type	gimp_view_new_full,@function
gimp_view_new_full:                     # @gimp_view_new_full
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB6_10
# BB#2:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_9
.LBB6_4:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.4
	movl	$1, -84(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.5
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB6_8:                                # %if.end
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.7
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_11
.LBB6_10:                               # %if.then.9
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB6_28
.LBB6_12:                               # %if.end.11
	jmp	.LBB6_13
.LBB6_13:                               # %do.end
	jmp	.LBB6_14
.LBB6_14:                               # %do.body.12
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.21
	movl	$0, -108(%rbp)
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.22
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.25
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.29
	movl	$1, -108(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.30
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB6_20:                               # %if.end.32
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.33
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB6_23
# BB#22:                                # %if.then.36
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB6_28
.LBB6_24:                               # %if.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.end.39
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %r10d
	movl	-56(%rbp), %r11d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-124(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.45
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
.LBB6_27:                               # %if.end.48
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_remove_idle
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB6_28:                               # %return
	movq	-16(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_view_new_full, .Lfunc_end6-gimp_view_new_full
	.cfi_endproc

	.globl	gimp_view_new_full_by_types
	.align	16, 0x90
	.type	gimp_view_new_full_by_types,@function
gimp_view_new_full_by_types:            # @gimp_view_new_full_by_types
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%r11d, -64(%rbp)
	movl	%r10d, -68(%rbp)
	movl	%eax, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB7_10
# BB#2:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_7
# BB#6:                                 # %if.then.4
	movl	$1, -108(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.5
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB7_8:                                # %if.end
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.7
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB7_11
.LBB7_10:                               # %if.then.9
	jmp	.LBB7_12
.LBB7_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full_by_types, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_47
.LBB7_12:                               # %if.end.11
	jmp	.LBB7_13
.LBB7_13:                               # %do.end
	jmp	.LBB7_14
.LBB7_14:                               # %do.body.12
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB7_16
# BB#15:                                # %if.then.16
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full_by_types, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_47
.LBB7_17:                               # %if.end.18
	jmp	.LBB7_18
.LBB7_18:                               # %do.end.19
	jmp	.LBB7_19
.LBB7_19:                               # %do.body.20
	movq	-48(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB7_21
# BB#20:                                # %if.then.24
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.25
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full_by_types, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_47
.LBB7_22:                               # %if.end.26
	jmp	.LBB7_23
.LBB7_23:                               # %do.end.27
	jmp	.LBB7_24
.LBB7_24:                               # %do.body.28
	cmpl	$0, -52(%rbp)
	jle	.LBB7_27
# BB#25:                                # %land.lhs.true.30
	cmpl	$2048, -52(%rbp)        # imm = 0x800
	jg	.LBB7_27
# BB#26:                                # %if.then.32
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.33
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full_by_types, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_47
.LBB7_28:                               # %if.end.34
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.35
	jmp	.LBB7_30
.LBB7_30:                               # %do.body.36
	cmpl	$0, -56(%rbp)
	jle	.LBB7_33
# BB#31:                                # %land.lhs.true.38
	cmpl	$2048, -56(%rbp)        # imm = 0x800
	jg	.LBB7_33
# BB#32:                                # %if.then.40
	jmp	.LBB7_34
.LBB7_33:                               # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full_by_types, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_47
.LBB7_34:                               # %if.end.42
	jmp	.LBB7_35
.LBB7_35:                               # %do.end.43
	jmp	.LBB7_36
.LBB7_36:                               # %do.body.44
	cmpl	$0, -60(%rbp)
	jl	.LBB7_39
# BB#37:                                # %land.lhs.true.46
	cmpl	$16, -60(%rbp)
	jg	.LBB7_39
# BB#38:                                # %if.then.48
	jmp	.LBB7_40
.LBB7_39:                               # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full_by_types, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_47
.LBB7_40:                               # %if.end.50
	jmp	.LBB7_41
.LBB7_41:                               # %do.end.51
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	gimp_view_renderer_new_full
	movq	%rax, -80(%rbp)
# BB#42:                                # %do.body.53
	cmpq	$0, -80(%rbp)
	je	.LBB7_44
# BB#43:                                # %if.then.55
	jmp	.LBB7_45
.LBB7_44:                               # %if.else.56
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_new_full_by_types, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_47
.LBB7_45:                               # %if.end.57
	jmp	.LBB7_46
.LBB7_46:                               # %do.end.58
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_view_update_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, 112(%rdx)
	cmpl	$0, -68(%rbp)
	movl	%r9d, %r11d
	cmovnel	%r10d, %r11d
	movq	-88(%rbp), %rcx
	movb	%r11b, %bl
	movb	120(%rcx), %r14b
	andb	$1, %bl
	andb	$-2, %r14b
	orb	%bl, %r14b
	movb	%r14b, 120(%rcx)
	cmpl	$0, -72(%rbp)
	cmovnel	%r10d, %r9d
	movq	-88(%rbp), %rcx
	movb	%r9b, %bl
	movb	120(%rcx), %r14b
	andb	$1, %bl
	shlb	$2, %bl
	andb	$-5, %r14b
	orb	%bl, %r14b
	movb	%r14b, 120(%rcx)
	movq	-88(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
.LBB7_47:                               # %return
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_view_new_full_by_types, .Lfunc_end7-gimp_view_new_full_by_types
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_update_callback,@function
gimp_view_update_callback:              # @gimp_view_update_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_requisition
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB8_3
.LBB8_2:                                # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_widget_queue_resize
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB8_4:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_view_update_callback, .Lfunc_end8-gimp_view_update_callback
	.cfi_endproc

	.globl	gimp_view_get_viewable
	.align	16, 0x90
	.type	gimp_view_get_viewable,@function
gimp_view_get_viewable:                 # @gimp_view_get_viewable
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_get_viewable, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_view_get_viewable, .Lfunc_end9-gimp_view_get_viewable
	.cfi_endproc

	.globl	gimp_view_set_expand
	.align	16, 0x90
	.type	gimp_view_set_expand,@function
gimp_view_set_expand:                   # @gimp_view_set_expand
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_set_expand, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_14
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movb	120(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	-12(%rbp), %edx
	je	.LBB10_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movb	%al, %sil
	movb	120(%rdx), %dil
	andb	$1, %sil
	shlb	$3, %sil
	andb	$-9, %dil
	orb	%sil, %dil
	movb	%dil, 120(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB10_14:                              # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_view_set_expand, .Lfunc_end10-gimp_view_set_expand
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_class_init,@function
gimp_view_class_init:                   # @gimp_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movabsq	$.L.str.14, %rdi
	movl	$1, %edx
	movl	$720, %ecx              # imm = 0x2D0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__OBJECT_OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%rbx, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movq	%r10, -120(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, view_signals
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gdk_modifier_type_get_type
	movabsq	$.L.str.15, %rdi
	movl	$1, %edx
	movl	$728, %ecx              # imm = 0x2D8
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movabsq	$g_cclosure_marshal_VOID__FLAGS, %r8
	movl	$4, %r12d
	movl	%r12d, %r9d
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.16, %rdi
	movl	$1, %edx
	movl	$736, %ecx              # imm = 0x2E0
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r12d
	movl	%r12d, %r9d
	xorl	%r12d, %r12d
	movl	%eax, view_signals+4
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r12d, -180(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.17, %rdi
	movl	$1, %edx
	movl	$744, %ecx              # imm = 0x2E8
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r12d
	movl	%r12d, %r9d
	xorl	%r12d, %r12d
	movl	%eax, view_signals+8
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r12d, -212(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_view_real_set_viewable, %rsi
	movabsq	$gimp_view_leave_notify_event, %rdi
	movabsq	$gimp_view_enter_notify_event, %r8
	movabsq	$gimp_view_button_release_event, %r9
	movabsq	$gimp_view_button_press_event, %r10
	movabsq	$gimp_view_expose_event, %r11
	movabsq	$gimp_view_size_allocate, %rbx
	movabsq	$gimp_view_size_request, %r14
	movabsq	$gimp_view_unmap, %r15
	movabsq	$gimp_view_map, %r13
	movabsq	$gimp_view_unrealize, %r12
	movabsq	$gimp_view_realize, %rcx
	movabsq	$gimp_view_dispose, %rdx
	movl	%eax, view_signals+12
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	view_signals+4, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 160(%rdx)
	movq	-64(%rbp), %rdx
	movq	%rcx, 224(%rdx)
	movq	-64(%rbp), %rcx
	movq	%r12, 232(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r13, 208(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r15, 216(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r14, 240(%rcx)
	movq	-64(%rbp), %rcx
	movq	%rbx, 248(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r11, 392(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r10, 344(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r9, 352(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r8, 416(%rcx)
	movq	-64(%rbp), %rcx
	movq	%rdi, 424(%rcx)
	movq	-48(%rbp), %rcx
	movq	%rsi, 720(%rcx)
	movq	-48(%rbp), %rcx
	movq	$0, 728(%rcx)
	movq	-48(%rbp), %rcx
	movq	$0, 736(%rcx)
	movq	-48(%rbp), %rcx
	movq	$0, 744(%rcx)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_view_class_init, .Lfunc_end11-gimp_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_dispose,@function
gimp_view_dispose:                      # @gimp_view_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_view_set_viewable
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
.LBB12_4:                               # %if.end.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_view_dispose, .Lfunc_end12-gimp_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_realize,@function
gimp_view_realize:                      # @gimp_view_realize
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_view_parent_class, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	224(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	$2, -72(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movl	$1, -92(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_events
	movl	%eax, -112(%rbp)
	movl	$12, -124(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-120(%rbp), %rsi
	movl	-124(%rbp), %edx
	movq	%rax, %rdi
	callq	gdk_window_new
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gdk_window_set_user_data
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_view_realize, .Lfunc_end13-gimp_view_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_unrealize,@function
gimp_view_unrealize:                    # @gimp_view_unrealize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rdi
	callq	gdk_window_set_user_data
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rdi
	callq	gdk_window_destroy
	movq	-16(%rbp), %rcx
	movq	$0, 96(%rcx)
.LBB14_2:                               # %if.end
	movq	gimp_view_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_view_unrealize, .Lfunc_end14-gimp_view_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_map,@function
gimp_view_map:                          # @gimp_view_map
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_view_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gdk_window_show
.LBB15_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_view_map, .Lfunc_end15-gimp_view_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_unmap,@function
gimp_view_unmap:                        # @gimp_view_unmap
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	120(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-16(%rbp), %rdi
	movb	120(%rdi), %al
	andb	$-33, %al
	movb	%al, 120(%rdi)
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gdk_window_hide
.LBB16_4:                               # %if.end.8
	movq	gimp_view_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_view_unmap, .Lfunc_end16-gimp_view_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_size_request,@function
gimp_view_size_request:                 # @gimp_view_size_request
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	120(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	52(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB17_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_view_size_request, .Lfunc_end17-gimp_view_size_request
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_view_size_allocate,@function
gimp_view_size_allocate:                # @gimp_view_size_allocate
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	120(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB18_23
# BB#1:                                 # %if.then
	movl	$2048, %eax             # imm = 0x800
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-24(%rbp), %rcx
	movq	112(%rcx), %rcx
	movl	56(%rcx), %esi
	shll	$1, %esi
	subl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB18_3
# BB#2:                                 # %cond.true
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB18_4
.LBB18_3:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB18_4:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	$2048, %ecx             # imm = 0x800
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	movl	12(%rdx), %eax
	movq	-24(%rbp), %rdx
	movq	112(%rdx), %rdx
	movl	56(%rdx), %esi
	shll	$1, %esi
	subl	%esi, %eax
	cmpl	%eax, %ecx
	jge	.LBB18_6
# BB#5:                                 # %cond.true.14
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB18_7
.LBB18_6:                               # %cond.false.15
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB18_7:                               # %cond.end.21
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	112(%rcx), %rcx
	movl	48(%rcx), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB18_9
# BB#8:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	52(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	je	.LBB18_22
.LBB18_9:                               # %if.then.29
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	cmpl	$-1, 136(%rax)
	je	.LBB18_20
# BB#10:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB18_20
# BB#11:                                # %if.then.37
	movl	$2048, %esi             # imm = 0x800
	leaq	-40(%rbp), %r8
	leaq	-44(%rbp), %r9
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movb	60(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	gimp_viewable_get_preview_size
	movl	$1, %r8d
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-48(%rbp), %r9
	leaq	-52(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r10d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movl	%r10d, %ecx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	movl	-48(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	jle	.LBB18_13
# BB#12:                                # %if.then.50
	movl	-52(%rbp), %eax
	imull	-28(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	imull	-28(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, -48(%rbp)
	jmp	.LBB18_16
.LBB18_13:                              # %if.else
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB18_15
# BB#14:                                # %if.then.55
	movl	-48(%rbp), %eax
	imull	-32(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	imull	-32(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%eax, -52(%rbp)
.LBB18_15:                              # %if.end
	jmp	.LBB18_16
.LBB18_16:                              # %if.end.60
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdi
	movl	-48(%rbp), %ecx
	cmpl	-52(%rbp), %ecx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jle	.LBB18_18
# BB#17:                                # %cond.true.63
	movl	-48(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB18_19
.LBB18_18:                              # %cond.false.64
	movl	-52(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB18_19:                              # %cond.end.65
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	-36(%rbp), %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_view_renderer_set_size
	jmp	.LBB18_21
.LBB18_20:                              # %if.else.67
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	callq	gimp_view_renderer_set_size_full
.LBB18_21:                              # %if.end.69
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_remove_idle
.LBB18_22:                              # %if.end.71
	jmp	.LBB18_23
.LBB18_23:                              # %if.end.72
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	52(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jle	.LBB18_25
# BB#24:                                # %if.then.86
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-28(%rbp), %edx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-104(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB18_25:                              # %if.end.91
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jle	.LBB18_27
# BB#26:                                # %if.then.94
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	-32(%rbp), %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
.LBB18_27:                              # %if.end.99
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB18_29
# BB#28:                                # %if.then.104
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	12(%rax), %r8d
	callq	gdk_window_move_resize
.LBB18_29:                              # %if.end.109
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_view_size_allocate, .Lfunc_end18-gimp_view_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_expose_event,@function
gimp_view_expose_event:                 # @gimp_view_expose_event
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB19_2
# BB#1:                                 # %if.then
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_cairo_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	callq	cairo_translate
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	gimp_view_renderer_draw
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
.LBB19_2:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_view_expose_event, .Lfunc_end19-gimp_view_expose_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_button_press_event,@function
gimp_view_button_press_event:           # @gimp_view_button_press_event
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB20_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$1, gimp_debug_memsize
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	movl	$0, gimp_debug_memsize
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB20_3:                               # %if.end
	movq	-32(%rbp), %rax
	movb	120(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB20_6
# BB#4:                                 # %land.lhs.true.6
	movq	-32(%rbp), %rax
	movb	120(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB20_6
# BB#5:                                 # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB20_27
.LBB20_6:                               # %if.end.12
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	jne	.LBB20_8
# BB#7:                                 # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB20_27
.LBB20_8:                               # %if.end.16
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB20_21
# BB#9:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB20_11
# BB#10:                                # %if.then.22
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-16(%rbp), %rax
	movl	view_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB20_20
.LBB20_11:                              # %if.else
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB20_16
# BB#12:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add
	movq	-32(%rbp), %rdi
	movb	120(%rdi), %al
	andb	$-33, %al
	orb	$32, %al
	movb	%al, 120(%rdi)
	movq	-24(%rbp), %rdi
	movl	48(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, 124(%rdi)
	movq	-32(%rbp), %rdi
	movb	120(%rdi), %al
	shrb	$2, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB20_15
# BB#13:                                # %land.lhs.true.35
	movq	-32(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB20_15
# BB#14:                                # %if.then.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movl	48(%rax), %r8d
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movl	52(%rax), %r9d
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movb	60(%rax), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	callq	gimp_view_popup_show
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB20_15:                              # %if.end.47
	jmp	.LBB20_19
.LBB20_16:                              # %if.else.48
	movq	-32(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-24(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB20_18
# BB#17:                                # %if.then.52
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movl	48(%rax), %r8d
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movl	52(%rax), %r9d
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movb	60(%rax), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	callq	gimp_view_popup_show
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB20_18:                              # %if.end.66
	movl	$0, -4(%rbp)
	jmp	.LBB20_27
.LBB20_19:                              # %if.end.67
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.68
	jmp	.LBB20_26
.LBB20_21:                              # %if.else.69
	movq	-24(%rbp), %rax
	cmpl	$5, (%rax)
	jne	.LBB20_25
# BB#22:                                # %if.then.72
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB20_24
# BB#23:                                # %if.then.75
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	view_signals+8, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB20_24:                              # %if.end.76
	jmp	.LBB20_25
.LBB20_25:                              # %if.end.77
	jmp	.LBB20_26
.LBB20_26:                              # %if.end.78
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	movb	120(%rdx), %sil
	shrb	$1, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB20_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_view_button_press_event, .Lfunc_end20-gimp_view_button_press_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_button_release_event,@function
gimp_view_button_release_event:         # @gimp_view_button_release_event
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	120(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movb	120(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB21_10
.LBB21_3:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB21_8
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-32(%rbp), %rdi
	movb	120(%rdi), %al
	andb	$-33, %al
	movb	%al, 120(%rdi)
	movq	-32(%rbp), %rdi
	movb	120(%rdi), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB21_7
# BB#5:                                 # %land.lhs.true.14
	movq	-32(%rbp), %rax
	movb	120(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB21_7
# BB#6:                                 # %if.then.20
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	view_signals+4, %esi
	movq	-32(%rbp), %rcx
	movl	124(%rcx), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB21_7:                               # %if.end.21
	jmp	.LBB21_9
.LBB21_8:                               # %if.else
	movl	$0, -4(%rbp)
	jmp	.LBB21_10
.LBB21_9:                               # %if.end.22
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	movb	120(%rdx), %sil
	shrb	$1, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB21_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_view_button_release_event, .Lfunc_end21-gimp_view_button_release_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_enter_notify_event,@function
gimp_view_enter_notify_event:           # @gimp_view_enter_notify_event
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_get_event_widget
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB22_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$2, 76(%rax)
	je	.LBB22_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-17, %cl
	orb	$16, %cl
	movb	%cl, 120(%rax)
.LBB22_3:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_view_enter_notify_event, .Lfunc_end22-gimp_view_enter_notify_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_leave_notify_event,@function
gimp_view_leave_notify_event:           # @gimp_view_leave_notify_event
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_get_event_widget
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB23_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$2, 76(%rax)
	je	.LBB23_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movb	120(%rax), %cl
	andb	$-17, %cl
	movb	%cl, 120(%rax)
.LBB23_3:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_view_leave_notify_event, .Lfunc_end23-gimp_view_leave_notify_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_real_set_viewable,@function
gimp_view_real_set_viewable:            # @gimp_view_real_set_viewable
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$4, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	cmpq	104(%rsi), %rdx
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_28
.LBB24_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB24_9
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#4:                                 # %do.body
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	32(%rax), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB24_6
# BB#5:                                 # %if.then.5
	jmp	.LBB24_7
.LBB24_6:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_real_set_viewable, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_28
.LBB24_7:                               # %if.end.6
	jmp	.LBB24_8
.LBB24_8:                               # %do.end
	jmp	.LBB24_9
.LBB24_9:                               # %if.end.7
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB24_18
# BB#10:                                # %if.then.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	addq	$104, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
	cmpq	$0, -24(%rbp)
	jne	.LBB24_17
# BB#11:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB24_17
# BB#12:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	104(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_dnd_viewable_source_remove
	cmpl	$0, %eax
	je	.LBB24_16
# BB#13:                                # %if.then.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	104(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_viewable_get_size
	cmpl	$0, %eax
	je	.LBB24_15
# BB#14:                                # %if.then.29
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dnd_pixbuf_source_remove
.LBB24_15:                              # %if.end.32
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_drag_source_unset
.LBB24_16:                              # %if.end.35
	jmp	.LBB24_17
.LBB24_17:                              # %if.end.36
	jmp	.LBB24_26
.LBB24_18:                              # %if.else.37
	cmpq	$0, -24(%rbp)
	je	.LBB24_25
# BB#19:                                # %land.lhs.true.39
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB24_25
# BB#20:                                # %if.then.47
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$768, %esi              # imm = 0x300
	movl	$2, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_dnd_drag_source_set_by_type
	cmpl	$0, %eax
	je	.LBB24_24
# BB#21:                                # %if.then.52
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_view_drag_viewable, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dnd_viewable_source_add
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_viewable_get_size
	cmpl	$0, %eax
	je	.LBB24_23
# BB#22:                                # %if.then.58
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_view_drag_pixbuf, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_dnd_pixbuf_source_add
.LBB24_23:                              # %if.end.61
	jmp	.LBB24_24
.LBB24_24:                              # %if.end.62
	jmp	.LBB24_25
.LBB24_25:                              # %if.end.63
	jmp	.LBB24_26
.LBB24_26:                              # %if.end.64
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_view_renderer_set_viewable
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 104(%rsi)
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB24_28
# BB#27:                                # %if.then.69
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	addq	$104, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
.LBB24_28:                              # %if.end.73
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_view_real_set_viewable, .Lfunc_end24-gimp_view_real_set_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_drag_viewable,@function
gimp_view_drag_viewable:                # @gimp_view_drag_viewable
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_view_drag_viewable, .Lfunc_end25-gimp_view_drag_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_drag_pixbuf,@function
gimp_view_drag_pixbuf:                  # @gimp_view_drag_pixbuf
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
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB26_3
# BB#1:                                 # %land.lhs.true
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_viewable_get_size
	cmpl	$0, %eax
	je	.LBB26_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	24(%rax), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	gimp_viewable_get_new_pixbuf
	movq	%rax, -8(%rbp)
	jmp	.LBB26_4
.LBB26_3:                               # %if.end
	movq	$0, -8(%rbp)
.LBB26_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_view_drag_pixbuf, .Lfunc_end26-gimp_view_drag_pixbuf
	.cfi_endproc

	.type	gimp_view_get_type.g_define_type_id__volatile,@object # @gimp_view_get_type.g_define_type_id__volatile
	.local	gimp_view_get_type.g_define_type_id__volatile
	.comm	gimp_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpView"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_view_new,@object # @__func__.gimp_view_new
.L__func__.gimp_view_new:
	.asciz	"gimp_view_new"
	.size	.L__func__.gimp_view_new, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.3, 28

	.type	.L__func__.gimp_view_new_full,@object # @__func__.gimp_view_new_full
.L__func__.gimp_view_new_full:
	.asciz	"gimp_view_new_full"
	.size	.L__func__.gimp_view_new_full, 19

	.type	.L__func__.gimp_view_new_by_types,@object # @__func__.gimp_view_new_by_types
.L__func__.gimp_view_new_by_types:
	.asciz	"gimp_view_new_by_types"
	.size	.L__func__.gimp_view_new_by_types, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"g_type_is_a (view_type, GIMP_TYPE_VIEW)"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"g_type_is_a (viewable_type, GIMP_TYPE_VIEWABLE)"
	.size	.L.str.5, 48

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"size > 0 && size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.6, 51

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"border_width >= 0 && border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.7, 64

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"renderer != NULL"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"update"
	.size	.L.str.9, 7

	.type	.L__func__.gimp_view_new_full_by_types,@object # @__func__.gimp_view_new_full_by_types
.L__func__.gimp_view_new_full_by_types:
	.asciz	"gimp_view_new_full_by_types"
	.size	.L__func__.gimp_view_new_full_by_types, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"width > 0 && width <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.10, 53

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"height > 0 && height <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.11, 55

	.type	.L__func__.gimp_view_get_viewable,@object # @__func__.gimp_view_get_viewable
.L__func__.gimp_view_get_viewable:
	.asciz	"gimp_view_get_viewable"
	.size	.L__func__.gimp_view_get_viewable, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_VIEW (view)"
	.size	.L.str.12, 20

	.type	.L__func__.gimp_view_set_viewable,@object # @__func__.gimp_view_set_viewable
.L__func__.gimp_view_set_viewable:
	.asciz	"gimp_view_set_viewable"
	.size	.L__func__.gimp_view_set_viewable, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"viewable == NULL || GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.13, 48

	.type	view_signals,@object    # @view_signals
	.local	view_signals
	.comm	view_signals,16,16
	.type	.L__func__.gimp_view_set_expand,@object # @__func__.gimp_view_set_expand
.L__func__.gimp_view_set_expand:
	.asciz	"gimp_view_set_expand"
	.size	.L__func__.gimp_view_set_expand, 21

	.type	gimp_view_parent_class,@object # @gimp_view_parent_class
	.local	gimp_view_parent_class
	.comm	gimp_view_parent_class,8,8
	.type	GimpView_private_offset,@object # @GimpView_private_offset
	.local	GimpView_private_offset
	.comm	GimpView_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"set-viewable"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clicked"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"double-clicked"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"context"
	.size	.L.str.17, 8

	.type	.L__func__.gimp_view_real_set_viewable,@object # @__func__.gimp_view_real_set_viewable
.L__func__.gimp_view_real_set_viewable:
	.asciz	"gimp_view_real_set_viewable"
	.size	.L__func__.gimp_view_real_set_viewable, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"g_type_is_a (viewable_type, view->renderer->viewable_type)"
	.size	.L.str.18, 59


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
