	.text
	.file	"gimpcurveview.bc"
	.globl	gimp_curve_view_get_type
	.align	16, 0x90
	.type	gimp_curve_view_get_type,@function
gimp_curve_view_get_type:               # @gimp_curve_view_get_type
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
	movq	gimp_curve_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_curve_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_histogram_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$784, %edx              # imm = 0x310
	movabsq	$gimp_curve_view_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_curve_view_init, %rcx
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
	movabsq	$gimp_curve_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_curve_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_curve_view_get_type, .Lfunc_end0-gimp_curve_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_class_intern_init,@function
gimp_curve_view_class_intern_init:      # @gimp_curve_view_class_intern_init
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
	movq	%rax, gimp_curve_view_parent_class
	cmpl	$0, GimpCurveView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCurveView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_curve_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_curve_view_class_intern_init, .Lfunc_end1-gimp_curve_view_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curve_view_init,@function
gimp_curve_view_init:                   # @gimp_curve_view_init
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
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 188(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 192(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 200(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 228(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, 232(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, 280(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, 288(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 248(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 256(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 264(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 272(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 320(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 328(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_can_focus
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10020, %esi            # imm = 0x2724
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_curve_view_init, .Lfunc_end2-gimp_curve_view_init
	.cfi_endproc

	.globl	gimp_curve_view_new
	.align	16, 0x90
	.type	gimp_curve_view_new,@function
gimp_curve_view_new:                    # @gimp_curve_view_new
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
	callq	gimp_curve_view_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_curve_view_new, .Lfunc_end3-gimp_curve_view_new
	.cfi_endproc

	.globl	gimp_curve_view_set_curve
	.align	16, 0x90
	.type	gimp_curve_view_set_curve,@function
gimp_curve_view_set_curve:              # @gimp_curve_view_set_curve
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
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_set_curve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_37
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_set_curve, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_37
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB4_27
# BB#26:                                # %if.then.42
	jmp	.LBB4_37
.LBB4_27:                               # %if.end.43
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_29
# BB#28:                                # %if.then.46
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_curve_view_curve_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB4_29:                               # %if.end.50
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_31
# BB#30:                                # %if.then.54
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_curve_view_curve_dirty, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB4_31:                               # %if.end.59
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB4_33
# BB#32:                                # %if.then.61
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB4_33:                               # %if.end.63
	cmpq	$0, -24(%rbp)
	je	.LBB4_35
# BB#34:                                # %if.then.65
	movl	$32, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_memdup
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
	jmp	.LBB4_36
.LBB4_35:                               # %if.else.68
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
.LBB4_36:                               # %if.end.70
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB4_37:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_curve_view_set_curve, .Lfunc_end4-gimp_curve_view_set_curve
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_curve_dirty,@function
gimp_curve_view_curve_dirty:            # @gimp_curve_view_curve_dirty
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_curve_view_curve_dirty, .Lfunc_end5-gimp_curve_view_curve_dirty
	.cfi_endproc

	.globl	gimp_curve_view_get_curve
	.align	16, 0x90
	.type	gimp_curve_view_get_curve,@function
gimp_curve_view_get_curve:              # @gimp_curve_view_get_curve
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_view_get_type
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
	movabsq	$.L__func__.gimp_curve_view_get_curve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_curve_view_get_curve, .Lfunc_end6-gimp_curve_view_get_curve
	.cfi_endproc

	.globl	gimp_curve_view_add_background
	.align	16, 0x90
	.type	gimp_curve_view_add_background,@function
gimp_curve_view_add_background:         # @gimp_curve_view_add_background
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_curve_view_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_add_background, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_39
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_add_background, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_39
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_36
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#27:                                # %do.body.40
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB7_29
# BB#28:                                # %if.then.43
                                        #   in Loop: Header=BB7_25 Depth=1
	jmp	.LBB7_30
.LBB7_29:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_add_background, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_39
.LBB7_30:                               # %if.end.45
                                        #   in Loop: Header=BB7_25 Depth=1
	jmp	.LBB7_31
.LBB7_31:                               # %do.end.46
                                        #   in Loop: Header=BB7_25 Depth=1
	jmp	.LBB7_32
.LBB7_32:                               # %for.inc
                                        #   in Loop: Header=BB7_25 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_35
.LBB7_34:                               # %cond.false
                                        #   in Loop: Header=BB7_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_35
.LBB7_35:                               # %cond.end
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_25
.LBB7_36:                               # %for.end
	movl	$48, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, -24(%rbp)
	je	.LBB7_38
# BB#37:                                # %if.then.52
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 24(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 40(%rax)
.LBB7_38:                               # %if.end.54
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_curve_view_curve_dirty, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_list_append
	movq	-8(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB7_39:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_curve_view_add_background, .Lfunc_end7-gimp_curve_view_add_background
	.cfi_endproc

	.globl	gimp_curve_view_remove_background
	.align	16, 0x90
	.type	gimp_curve_view_remove_background,@function
gimp_curve_view_remove_background:      # @gimp_curve_view_remove_background
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_remove_background, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_38
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_remove_background, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_38
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB8_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_35
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB8_30
# BB#27:                                # %if.then.43
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_curve_view_curve_dirty, %rdx
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-80(%rbp), %r8
	movq	%r8, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 168(%rsi)
# BB#28:                                # %do.body.50
	movl	$48, %eax
	movl	%eax, %edi
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#29:                                # %do.end.51
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB8_35
.LBB8_30:                               # %if.end.54
                                        #   in Loop: Header=BB8_25 Depth=1
	jmp	.LBB8_31
.LBB8_31:                               # %for.inc
                                        #   in Loop: Header=BB8_25 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_33
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB8_34
.LBB8_33:                               # %cond.false
                                        #   in Loop: Header=BB8_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB8_34
.LBB8_34:                               # %cond.end
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB8_25
.LBB8_35:                               # %for.end
	cmpq	$0, -24(%rbp)
	jne	.LBB8_38
# BB#36:                                # %if.then.57
	jmp	.LBB8_37
.LBB8_37:                               # %do.body.58
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	movl	$1305, %r8d             # imm = 0x519
	movabsq	$.L__func__.gimp_curve_view_remove_background, %r9
	movb	$0, %al
	callq	g_log
.LBB8_38:                               # %if.end.60
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_curve_view_remove_background, .Lfunc_end8-gimp_curve_view_remove_background
	.cfi_endproc

	.globl	gimp_curve_view_remove_all_backgrounds
	.align	16, 0x90
	.type	gimp_curve_view_remove_all_backgrounds,@function
gimp_curve_view_remove_all_backgrounds: # @gimp_curve_view_remove_all_backgrounds
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_curve_view_get_type
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
	movabsq	$.L__func__.gimp_curve_view_remove_all_backgrounds, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB9_17
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_curve_view_curve_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-40(%rbp), %r8
	movq	%r8, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 168(%rsi)
# BB#15:                                # %do.body.19
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	$48, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#16:                                # %do.end.20
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_13
.LBB9_17:                               # %while.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB9_18:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_curve_view_remove_all_backgrounds, .Lfunc_end9-gimp_curve_view_remove_all_backgrounds
	.cfi_endproc

	.globl	gimp_curve_view_set_selected
	.align	16, 0x90
	.type	gimp_curve_view_set_selected,@function
gimp_curve_view_set_selected:           # @gimp_curve_view_set_selected
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_view_get_type
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
	movabsq	$.L__func__.gimp_curve_view_set_selected, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 188(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB10_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_curve_view_set_selected, .Lfunc_end10-gimp_curve_view_set_selected
	.cfi_endproc

	.globl	gimp_curve_view_set_range_x
	.align	16, 0x90
	.type	gimp_curve_view_set_range_x,@function
gimp_curve_view_set_range_x:            # @gimp_curve_view_set_range_x
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_set_range_x, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 248(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 256(%rax)
.LBB11_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_curve_view_set_range_x, .Lfunc_end11-gimp_curve_view_set_range_x
	.cfi_endproc

	.globl	gimp_curve_view_set_range_y
	.align	16, 0x90
	.type	gimp_curve_view_set_range_y,@function
gimp_curve_view_set_range_y:            # @gimp_curve_view_set_range_y
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_set_range_y, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 272(%rax)
.LBB12_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_curve_view_set_range_y, .Lfunc_end12-gimp_curve_view_set_range_y
	.cfi_endproc

	.globl	gimp_curve_view_set_xpos
	.align	16, 0x90
	.type	gimp_curve_view_set_xpos,@function
gimp_curve_view_set_xpos:               # @gimp_curve_view_set_xpos
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_view_get_type
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
	movabsq	$.L__func__.gimp_curve_view_set_xpos, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 232(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_curve_view_set_xpos, .Lfunc_end13-gimp_curve_view_set_xpos
	.cfi_endproc

	.globl	gimp_curve_view_set_x_axis_label
	.align	16, 0x90
	.type	gimp_curve_view_set_x_axis_label,@function
gimp_curve_view_set_x_axis_label:       # @gimp_curve_view_set_x_axis_label
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_view_get_type
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
	movabsq	$.L__func__.gimp_curve_view_set_x_axis_label, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_15
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB14_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	callq	g_free
.LBB14_14:                              # %if.end.14
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 320(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB14_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_curve_view_set_x_axis_label, .Lfunc_end14-gimp_curve_view_set_x_axis_label
	.cfi_endproc

	.globl	gimp_curve_view_set_y_axis_label
	.align	16, 0x90
	.type	gimp_curve_view_set_y_axis_label,@function
gimp_curve_view_set_y_axis_label:       # @gimp_curve_view_set_y_axis_label
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_curve_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curve_view_set_y_axis_label, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_15
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB15_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_free
.LBB15_14:                              # %if.end.14
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 328(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB15_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_curve_view_set_y_axis_label, .Lfunc_end15-gimp_curve_view_set_y_axis_label
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_class_init,@function
gimp_curve_view_class_init:             # @gimp_curve_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_curve_view_paste_clipboard, %rsi
	movabsq	$gimp_curve_view_copy_clipboard, %rdi
	movabsq	$gimp_curve_view_cut_clipboard, %rcx
	movabsq	$gimp_curve_view_key_press, %rdx
	movabsq	$gimp_curve_view_leave_notify, %r8
	movabsq	$gimp_curve_view_motion_notify, %r9
	movabsq	$gimp_curve_view_button_release, %r10
	movabsq	$gimp_curve_view_button_press, %r11
	movabsq	$gimp_curve_view_expose, %rbx
	movabsq	$gimp_curve_view_style_set, %r14
	movabsq	$gimp_curve_view_get_property, %r15
	movabsq	$gimp_curve_view_set_property, %r12
	movabsq	$gimp_curve_view_dispose, %r13
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gimp_curve_view_finalize, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 40(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r15, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 392(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 344(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 352(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 368(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 424(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 760(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 768(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 776(%rax)
	movq	-56(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$235, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$8, %r9d
	movl	$235, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$235, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$8, %r9d
	movl	$235, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$235, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$227, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$5, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$227, %r8d
	movq	-56(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$6, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	movl	$34, %edx
	movl	$760, %ecx              # imm = 0x2F8
	xorl	%esi, %esi
	movl	%esi, %eax
	movabsq	$g_cclosure_marshal_VOID__VOID, %r10
	movl	$4, %esi
	movl	%esi, %r11d
	xorl	%esi, %esi
	movq	-48(%rbp), %rbx
	movq	(%rbx), %rbx
	movl	%esi, -172(%rbp)        # 4-byte Spill
	movq	%rbx, %rsi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%r10, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r11, -184(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.16, %rdi
	movl	$34, %edx
	movl	$768, %ecx              # imm = 0x300
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movl	%eax, curve_view_signals
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -216(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.17, %rdi
	movl	$34, %edx
	movl	$776, %ecx              # imm = 0x308
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movl	%eax, curve_view_signals+4
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r9, -240(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-240(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -248(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, curve_view_signals+8
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_binding_set_by_class
	movl	$120, %esi
	movl	$4, %edx
	movabsq	$.L.str.15, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$99, %esi
	movl	$4, %edx
	movabsq	$.L.str.16, %rcx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rdi
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$118, %esi
	movl	$4, %edx
	movabsq	$.L.str.17, %rcx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rdi
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_curve_view_class_init, .Lfunc_end16-gimp_curve_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_finalize,@function
gimp_curve_view_finalize:               # @gimp_curve_view_finalize
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
	callq	gimp_curve_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 240(%rax)
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB17_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 296(%rax)
.LBB17_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB17_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	320(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 320(%rax)
.LBB17_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB17_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 328(%rax)
.LBB17_8:                               # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_curve_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_curve_view_finalize, .Lfunc_end17-gimp_curve_view_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_dispose,@function
gimp_curve_view_dispose:                # @gimp_curve_view_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	gimp_curve_view_set_curve
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_curve_view_remove_all_backgrounds
.LBB18_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_curve_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_curve_view_dispose, .Lfunc_end18-gimp_curve_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_set_property,@function
gimp_curve_view_set_property:           # @gimp_curve_view_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB19_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI19_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB19_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 144(%rdi)
	jmp	.LBB19_10
.LBB19_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 180(%rdi)
	jmp	.LBB19_10
.LBB19_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 184(%rdi)
	jmp	.LBB19_10
.LBB19_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 176(%rdi)
	jmp	.LBB19_10
.LBB19_5:                               # %sw.bb.9
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_curve_view_set_x_axis_label
	jmp	.LBB19_10
.LBB19_6:                               # %sw.bb.11
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_curve_view_set_y_axis_label
	jmp	.LBB19_10
.LBB19_7:                               # %sw.default
	jmp	.LBB19_8
.LBB19_8:                               # %do.body
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$312, %edx              # imm = 0x138
	movabsq	$.L.str.19, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB19_10
.LBB19_10:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_curve_view_set_property, .Lfunc_end19-gimp_curve_view_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI19_0:
	.quad	.LBB19_1
	.quad	.LBB19_4
	.quad	.LBB19_2
	.quad	.LBB19_3
	.quad	.LBB19_5
	.quad	.LBB19_6

	.text
	.align	16, 0x90
	.type	gimp_curve_view_get_property,@function
gimp_curve_view_get_property:           # @gimp_curve_view_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB20_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI20_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB20_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB20_10
.LBB20_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	180(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB20_10
.LBB20_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	184(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB20_10
.LBB20_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	176(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB20_10
.LBB20_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	320(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB20_10
.LBB20_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	328(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB20_10
.LBB20_7:                               # %sw.default
	jmp	.LBB20_8
.LBB20_8:                               # %do.body
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$346, %edx              # imm = 0x15A
	movabsq	$.L.str.19, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB20_10
.LBB20_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_curve_view_get_property, .Lfunc_end20-gimp_curve_view_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI20_0:
	.quad	.LBB20_1
	.quad	.LBB20_4
	.quad	.LBB20_2
	.quad	.LBB20_3
	.quad	.LBB20_5
	.quad	.LBB20_6

	.text
	.align	16, 0x90
	.type	gimp_curve_view_style_set,@function
gimp_curve_view_style_set:              # @gimp_curve_view_style_set
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_curve_view_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 240(%rax)
.LBB21_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 296(%rax)
.LBB21_4:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_curve_view_style_set, .Lfunc_end21-gimp_curve_view_style_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
.LCPI22_1:
	.quad	4607182418800017408     # double 1
.LCPI22_2:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI22_3:
	.quad	4643211180634609287     # double 255.999
.LCPI22_4:
	.quad	4643176031446892544     # double 255
.LCPI22_5:
	.quad	4618441417868443648     # double 6
.LCPI22_6:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI22_7:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	gimp_curve_view_expose,@function
gimp_curve_view_expose:                 # @gimp_curve_view_expose
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
	pushq	%r14
	pushq	%rbx
	subq	$368, %rsp              # imm = 0x170
.Ltmp74:
	.cfi_offset %rbx, -32
.Ltmp75:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -64(%rbp)
	movq	gimp_curve_view_parent_class, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi
	cmpq	$0, 152(%rsi)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
	jmp	.LBB22_60
.LBB22_2:                               # %if.end
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-48(%rbp), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	136(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movl	-72(%rbp), %ecx
	movl	-100(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -104(%rbp)
	movl	-68(%rbp), %ecx
	movl	-100(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -108(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-88(%rbp), %rdi
	callq	cairo_clip
	movq	-32(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	je	.LBB22_4
# BB#3:                                 # %if.then.17
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_state
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-40(%rbp), %rsi
	addq	$20, %rsi
	movq	-32(%rbp), %r8
	movl	-100(%rbp), %ecx
	subl	$2, %ecx
	movl	-100(%rbp), %edx
	subl	$2, %edx
	movl	-104(%rbp), %r10d
	addl	$4, %r10d
	movl	-108(%rbp), %r11d
	addl	$4, %r11d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movq	-288(%rbp), %r14        # 8-byte Reload
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	movq	%r14, %rcx
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	callq	gtk_paint_focus
.LBB22_4:                               # %if.end.22
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$2, %esi
	movq	-88(%rbp), %rdi
	callq	cairo_set_line_cap
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$204, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-100(%rbp), %r8d
	callq	gimp_curve_view_draw_grid
	movq	-48(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB22_8
# BB#5:                                 # %if.then.24
	movq	-48(%rbp), %rax
	cmpq	$0, 240(%rax)
	jne	.LBB22_7
# BB#6:                                 # %if.then.26
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_create_pango_layout
	movq	-48(%rbp), %rsi
	movq	%rax, 240(%rsi)
.LBB22_7:                               # %if.end.29
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	320(%rax), %rsi
	callq	pango_layout_set_text
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movq	-88(%rbp), %rdi
	movl	-104(%rbp), %ecx
	subl	-100(%rbp), %ecx
	subl	-112(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-108(%rbp), %ecx
	subl	-100(%rbp), %ecx
	subl	-116(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	240(%rax), %rsi
	callq	pango_cairo_show_layout
.LBB22_8:                               # %if.end.40
	movq	-48(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB22_12
# BB#9:                                 # %if.then.42
	movq	-48(%rbp), %rax
	cmpq	$0, 240(%rax)
	jne	.LBB22_11
# BB#10:                                # %if.then.45
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_create_pango_layout
	movq	-48(%rbp), %rsi
	movq	%rax, 240(%rsi)
.LBB22_11:                              # %if.end.48
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	328(%rax), %rsi
	callq	pango_layout_set_text
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movq	-88(%rbp), %rdi
	callq	cairo_save
	movq	-88(%rbp), %rdi
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	-112(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movsd	.LCPI22_2, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	callq	cairo_rotate
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	240(%rax), %rsi
	callq	pango_cairo_show_layout
	movq	-88(%rbp), %rdi
	callq	cairo_restore
.LBB22_12:                              # %if.end.60
	movq	-48(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB22_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB22_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB22_16
# BB#15:                                # %if.then.63
                                        #   in Loop: Header=BB22_13 Depth=1
	movsd	.LCPI22_0, %xmm3        # xmm3 = mem[0],zero
	movq	-88(%rbp), %rdi
	movq	-152(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-152(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	jmp	.LBB22_17
.LBB22_16:                              # %if.else
                                        #   in Loop: Header=BB22_13 Depth=1
	movsd	.LCPI22_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI22_7, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	movzwl	328(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movzwl	330(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	movq	-64(%rbp), %rax
	movzwl	332(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm4, %xmm2
	callq	cairo_set_source_rgba
.LBB22_17:                              # %if.end.80
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	(%rax), %rdx
	movl	-104(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	-100(%rbp), %r9d
	callq	gimp_curve_view_draw_curve
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB22_13 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB22_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB22_21
.LBB22_20:                              # %cond.false
                                        #   in Loop: Header=BB22_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB22_21
.LBB22_21:                              # %cond.end
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB22_13
.LBB22_22:                              # %for.end
	movq	-48(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB22_24
# BB#23:                                # %if.then.84
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	160(%rax), %rsi
	callq	gimp_cairo_set_source_rgb
	jmp	.LBB22_25
.LBB22_24:                              # %if.else.86
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
.LBB22_25:                              # %if.end.89
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	152(%rax), %rdx
	movl	-104(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	-100(%rbp), %r9d
	callq	gimp_curve_view_draw_curve
	movq	-48(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_curve_get_curve_type
	cmpl	$0, %eax
	jne	.LBB22_35
# BB#26:                                # %if.then.94
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movl	$0, -140(%rbp)
.LBB22_27:                              # %for.cond.97
                                        # =>This Inner Loop Header: Depth=1
	movl	-140(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	152(%rcx), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB22_32
# BB#28:                                # %for.body.101
                                        #   in Loop: Header=BB22_27 Depth=1
	movl	-140(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	188(%rcx), %eax
	jne	.LBB22_30
# BB#29:                                # %if.then.104
                                        #   in Loop: Header=BB22_27 Depth=1
	jmp	.LBB22_31
.LBB22_30:                              # %if.end.105
                                        #   in Loop: Header=BB22_27 Depth=1
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-104(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	-100(%rbp), %r9d
	callq	gimp_curve_view_draw_point
.LBB22_31:                              # %for.inc.106
                                        #   in Loop: Header=BB22_27 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB22_27
.LBB22_32:                              # %for.end.107
	movq	-88(%rbp), %rdi
	callq	cairo_stroke
	movq	-48(%rbp), %rdi
	cmpl	$-1, 188(%rdi)
	je	.LBB22_34
# BB#33:                                # %if.then.111
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	188(%rax), %edx
	movl	-104(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	-100(%rbp), %r9d
	callq	gimp_curve_view_draw_point
	movq	-88(%rbp), %rdi
	callq	cairo_fill
.LBB22_34:                              # %if.end.113
	jmp	.LBB22_35
.LBB22_35:                              # %if.end.114
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	232(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_42
# BB#36:                                # %if.then.117
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm1
	movq	-48(%rbp), %rax
	mulsd	232(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm1
	movq	-48(%rbp), %rax
	mulsd	232(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-100(%rbp), %ecx
	addl	-108(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_line_to
	movq	-88(%rbp), %rdi
	callq	cairo_stroke
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.20, %rdx
	movsd	.LCPI22_3, %xmm0        # xmm0 = mem[0],zero
	leaq	-192(%rbp), %rdi
	movq	-48(%rbp), %rax
	mulsd	232(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-48(%rbp), %rdx
	cmpq	$0, 240(%rdx)
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jne	.LBB22_38
# BB#37:                                # %if.then.147
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_create_pango_layout
	movq	-48(%rbp), %rsi
	movq	%rax, 240(%rsi)
.LBB22_38:                              # %if.end.150
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	leaq	-192(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	callq	pango_layout_set_text
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	232(%rax), %xmm0
	jbe	.LBB22_40
# BB#39:                                # %if.then.157
	movl	-100(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB22_41
.LBB22_40:                              # %if.else.158
	xorl	%eax, %eax
	movl	-112(%rbp), %ecx
	addl	-100(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -112(%rbp)
.LBB22_41:                              # %if.end.161
	movq	-88(%rbp), %rdi
	cvtsi2sdl	-100(%rbp), %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	movq	-48(%rbp), %rax
	mulsd	232(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-112(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movl	-100(%rbp), %ecx
	addl	-108(%rbp), %ecx
	subl	-100(%rbp), %ecx
	subl	-116(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	240(%rax), %rsi
	callq	pango_cairo_show_layout
.LBB22_42:                              # %if.end.174
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	280(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_59
# BB#43:                                # %land.lhs.true
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	280(%rax), %xmm0
	jb	.LBB22_59
# BB#44:                                # %land.lhs.true.180
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	288(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_59
# BB#45:                                # %land.lhs.true.183
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	288(%rax), %xmm0
	jb	.LBB22_59
# BB#46:                                # %if.then.187
	movq	-48(%rbp), %rax
	cmpq	$0, 296(%rax)
	jne	.LBB22_52
# BB#47:                                # %if.then.190
	movsd	.LCPI22_4, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_50
	jp	.LBB22_50
# BB#48:                                # %land.lhs.true.193
	movsd	.LCPI22_4, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_50
	jp	.LBB22_50
# BB#49:                                # %if.then.196
	movabsq	$.L.str.21, %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_create_pango_layout
	movq	-48(%rbp), %rsi
	movq	%rax, 296(%rsi)
	jmp	.LBB22_51
.LBB22_50:                              # %if.else.199
	movabsq	$.L.str.22, %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_create_pango_layout
	movq	-48(%rbp), %rsi
	movq	%rax, 296(%rsi)
.LBB22_51:                              # %if.end.202
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	296(%rcx), %rdi
	movq	-48(%rbp), %rcx
	addq	$304, %rcx              # imm = 0x130
	movq	%rcx, %rdx
	callq	pango_layout_get_pixel_extents
.LBB22_52:                              # %if.end.204
	movl	-100(%rbp), %eax
	shll	$1, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-100(%rbp), %eax
	shll	$1, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-48(%rbp), %rcx
	movl	312(%rcx), %eax
	movl	%eax, -228(%rbp)
	movq	-48(%rbp), %rcx
	movl	316(%rcx), %eax
	movl	%eax, -232(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	$0, 320(%rcx)
	je	.LBB22_54
# BB#53:                                # %if.then.217
	movl	-100(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	316(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
.LBB22_54:                              # %if.end.223
	movq	-88(%rbp), %rdi
	callq	cairo_push_group
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-128(%rbp), %xmm1
	addsd	-136(%rbp), %xmm0
	cvtsi2sdl	-228(%rbp), %xmm2
	cvtsi2sdl	-232(%rbp), %xmm3
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-88(%rbp), %rdi
	callq	cairo_fill_preserve
	movsd	.LCPI22_5, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	cairo_set_line_join
	movq	-88(%rbp), %rdi
	callq	cairo_stroke
	movsd	.LCPI22_4, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_57
	jp	.LBB22_57
# BB#55:                                # %land.lhs.true.233
	movsd	.LCPI22_4, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_57
	jp	.LBB22_57
# BB#56:                                # %if.then.237
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.23, %rdx
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-224(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	280(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	256(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rcx
	subsd	248(%rcx), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-48(%rbp), %rcx
	addsd	248(%rcx), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-48(%rbp), %r8
	subsd	288(%r8), %xmm0
	movq	-48(%rbp), %r8
	movsd	272(%r8), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %r8
	subsd	264(%r8), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-48(%rbp), %r8
	addsd	264(%r8), %xmm0
	cvttsd2si	%xmm0, %r8d
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB22_58
.LBB22_57:                              # %if.else.255
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.24, %rdx
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-224(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	280(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	256(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rcx
	subsd	248(%rcx), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-48(%rbp), %rcx
	addsd	248(%rcx), %xmm1
	movq	-48(%rbp), %rcx
	subsd	288(%rcx), %xmm0
	movq	-48(%rbp), %rcx
	movsd	272(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rcx
	subsd	264(%rcx), %xmm2
	mulsd	%xmm2, %xmm0
	movq	-48(%rbp), %rcx
	addsd	264(%rcx), %xmm0
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_snprintf
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB22_58:                              # %if.end.273
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	leaq	-224(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	296(%rax), %rdi
	callq	pango_layout_set_text
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-88(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	296(%rax), %rsi
	callq	pango_cairo_show_layout
	movq	-88(%rbp), %rdi
	callq	cairo_pop_group_to_source
	movsd	.LCPI22_6, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	callq	cairo_paint_with_alpha
.LBB22_59:                              # %if.end.278
	movq	-88(%rbp), %rdi
	callq	cairo_destroy
	movl	$0, -20(%rbp)
.LBB22_60:                              # %return
	movl	-20(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_curve_view_expose, .Lfunc_end22-gimp_curve_view_expose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
.LCPI23_1:
	.quad	-4616189618054758400    # double -1
.LCPI23_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_curve_view_button_press,@function
gimp_curve_view_button_press:           # @gimp_curve_view_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB23_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB23_3
.LBB23_2:                               # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB23_33
.LBB23_3:                               # %if.end
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-32(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movl	136(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	-48(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-44(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-64(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_5
# BB#4:                                 # %cond.true
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB23_9
.LBB23_5:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB23_7
# BB#6:                                 # %cond.true.21
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB23_8
.LBB23_7:                               # %cond.false.22
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB23_8:                               # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB23_9:                               # %cond.end.23
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI23_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB23_11
# BB#10:                                # %cond.true.27
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB23_15
.LBB23_11:                              # %cond.false.28
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB23_13
# BB#12:                                # %cond.true.31
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB23_14
.LBB23_13:                              # %cond.false.32
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB23_14:                              # %cond.end.33
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB23_15:                              # %cond.end.35
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_get_closest_point
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %rdi
	movl	$1, 224(%rdi)
	movq	-32(%rbp), %rdi
	movl	$130, %esi
	callq	set_cursor
	movq	-40(%rbp), %rdi
	callq	gimp_curve_get_curve_type
	movl	%eax, %esi
	testl	%eax, %eax
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB23_16
	jmp	.LBB23_34
.LBB23_34:                              # %cond.end.35
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB23_29
	jmp	.LBB23_30
.LBB23_16:                              # %sw.bb
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 208(%rax)
	movl	-92(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -96(%rbp)
.LBB23_17:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -96(%rbp)
	jl	.LBB23_22
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB23_17 Depth=1
	leaq	-104(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	gimp_curve_get_point
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB23_20
# BB#19:                                # %if.then.44
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 208(%rax)
	jmp	.LBB23_22
.LBB23_20:                              # %if.end.46
                                        #   in Loop: Header=BB23_17 Depth=1
	jmp	.LBB23_21
.LBB23_21:                              # %for.inc
                                        #   in Loop: Header=BB23_17 Depth=1
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB23_17
.LBB23_22:                              # %for.end
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
.LBB23_23:                              # %for.cond.47
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB23_28
# BB#24:                                # %for.body.50
                                        #   in Loop: Header=BB23_23 Depth=1
	leaq	-112(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	gimp_curve_get_point
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB23_26
# BB#25:                                # %if.then.54
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	jmp	.LBB23_28
.LBB23_26:                              # %if.end.56
                                        #   in Loop: Header=BB23_23 Depth=1
	jmp	.LBB23_27
.LBB23_27:                              # %for.inc.57
                                        #   in Loop: Header=BB23_23 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB23_23
.LBB23_28:                              # %for.end.58
	movq	-32(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_curve_view_set_selected
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	188(%rax), %esi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	jmp	.LBB23_30
.LBB23_29:                              # %sw.bb.60
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm1, 192(%rax)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm1, 200(%rax)
	movq	-40(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_curve
.LBB23_30:                              # %sw.epilog
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB23_32
# BB#31:                                # %if.then.64
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
.LBB23_32:                              # %if.end.65
	movl	$1, -4(%rbp)
.LBB23_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_curve_view_button_press, .Lfunc_end23-gimp_curve_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_button_release,@function
gimp_curve_view_button_release:         # @gimp_curve_view_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	movl	$52, %esi
	movq	-32(%rbp), %rax
	movl	$0, 224(%rax)
	movq	-32(%rbp), %rdi
	callq	set_cursor
	movl	$1, -4(%rbp)
.LBB24_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_curve_view_button_release, .Lfunc_end24-gimp_curve_view_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4607182418800017408     # double 1
.LCPI25_1:
	.quad	4602678819172646912     # double 0.5
.LCPI25_2:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curve_view_motion_notify,@function
gimp_curve_view_motion_notify:          # @gimp_curve_view_motion_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB25_56
.LBB25_2:                               # %if.end
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-32(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movl	136(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	-48(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	movl	-44(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-72(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_4
# BB#3:                                 # %cond.true
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB25_8
.LBB25_4:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB25_6
# BB#5:                                 # %cond.true.20
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB25_7
.LBB25_6:                               # %cond.false.21
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB25_7:                               # %cond.end
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB25_8:                               # %cond.end.22
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_10
# BB#9:                                 # %cond.true.26
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB25_14
.LBB25_10:                              # %cond.false.27
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB25_12
# BB#11:                                # %cond.true.30
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB25_13
.LBB25_12:                              # %cond.false.31
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB25_13:                              # %cond.end.32
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB25_14:                              # %cond.end.34
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_get_closest_point
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_curve_get_curve_type
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	je	.LBB25_15
	jmp	.LBB25_57
.LBB25_57:                              # %cond.end.34
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB25_27
	jmp	.LBB25_55
.LBB25_15:                              # %sw.bb
	movq	-32(%rbp), %rax
	cmpl	$0, 224(%rax)
	jne	.LBB25_20
# BB#16:                                # %if.then.39
	leaq	-96(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_curve_get_point
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB25_18
# BB#17:                                # %if.then.42
	movl	$52, -60(%rbp)
	jmp	.LBB25_19
.LBB25_18:                              # %if.else
	movl	$130, -60(%rbp)
.LBB25_19:                              # %if.end.43
	jmp	.LBB25_26
.LBB25_20:                              # %if.else.44
	movl	$130, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movsd	.LCPI25_2, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	188(%rax), %esi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	208(%rax), %xmm0
	jbe	.LBB25_25
# BB#21:                                # %land.lhs.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	216(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_25
# BB#22:                                # %if.then.51
	movq	-40(%rbp), %rdi
	callq	gimp_curve_get_n_points
	leaq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -104(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-104(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_curve_get_point
	xorps	%xmm0, %xmm0
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB25_24
# BB#23:                                # %if.then.59
	movq	-32(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_curve_view_set_selected
.LBB25_24:                              # %if.end.60
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	188(%rax), %esi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
.LBB25_25:                              # %if.end.63
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB25_26:                              # %if.end.66
	jmp	.LBB25_55
.LBB25_27:                              # %sw.bb.67
	movq	-32(%rbp), %rax
	cmpl	$0, 224(%rax)
	je	.LBB25_51
# BB#28:                                # %if.then.70
	movq	-40(%rbp), %rdi
	callq	gimp_curve_get_n_samples
	movl	%eax, -108(%rbp)
	movq	-32(%rbp), %rdi
	movsd	192(%rdi), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB25_30
# BB#29:                                # %if.then.74
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rax
	movsd	192(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movq	-32(%rbp), %rax
	movsd	200(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	jmp	.LBB25_31
.LBB25_30:                              # %if.else.76
	movq	-32(%rbp), %rax
	movsd	192(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	movsd	200(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
.LBB25_31:                              # %if.end.79
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-120(%rbp), %xmm0
	jne	.LBB25_32
	jp	.LBB25_32
	jmp	.LBB25_49
.LBB25_32:                              # %if.then.82
	movsd	.LCPI25_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-108(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -148(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-108(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -152(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movl	-148(%rbp), %edx
	movl	%edx, -156(%rbp)
.LBB25_33:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jg	.LBB25_48
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-156(%rbp), %xmm1
	movl	-108(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-136(%rbp), %xmm2
	movsd	-168(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-120(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-120(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -176(%rbp)
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_36
# BB#35:                                # %cond.true.109
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB25_40
.LBB25_36:                              # %cond.false.110
                                        #   in Loop: Header=BB25_33 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-168(%rbp), %xmm0
	jbe	.LBB25_38
# BB#37:                                # %cond.true.113
                                        #   in Loop: Header=BB25_33 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB25_39
.LBB25_38:                              # %cond.false.114
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB25_39:                              # %cond.end.115
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB25_40:                              # %cond.end.117
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_42
# BB#41:                                # %cond.true.121
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB25_46
.LBB25_42:                              # %cond.false.122
                                        #   in Loop: Header=BB25_33 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-176(%rbp), %xmm0
	jbe	.LBB25_44
# BB#43:                                # %cond.true.125
                                        #   in Loop: Header=BB25_33 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB25_45
.LBB25_44:                              # %cond.false.126
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB25_45:                              # %cond.end.127
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB25_46:                              # %cond.end.129
                                        #   in Loop: Header=BB25_33 Depth=1
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movq	-40(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-176(%rbp), %xmm1
	callq	gimp_curve_set_curve
# BB#47:                                # %for.inc
                                        #   in Loop: Header=BB25_33 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB25_33
.LBB25_48:                              # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	jmp	.LBB25_50
.LBB25_49:                              # %if.else.134
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_curve
.LBB25_50:                              # %if.end.136
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 192(%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 200(%rax)
.LBB25_51:                              # %if.end.139
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB25_53
# BB#52:                                # %if.then.141
	movl	$130, -60(%rbp)
	jmp	.LBB25_54
.LBB25_53:                              # %if.else.142
	movl	$86, -60(%rbp)
.LBB25_54:                              # %if.end.143
	jmp	.LBB25_55
.LBB25_55:                              # %sw.epilog
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	set_cursor
	movq	-32(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_curve_view_set_cursor
	movl	$1, -4(%rbp)
.LBB25_56:                              # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_curve_view_motion_notify, .Lfunc_end25-gimp_curve_view_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_leave_notify,@function
gimp_curve_view_leave_notify:           # @gimp_curve_view_leave_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_curve_view_unset_cursor
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_curve_view_leave_notify, .Lfunc_end26-gimp_curve_view_leave_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4607182418800017408     # double 1
.LCPI27_1:
	.quad	4589185681465544720     # double 0.062745098039215685
.LCPI27_2:
	.quad	4571171282956062736     # double 0.0039215686274509803
	.text
	.align	16, 0x90
	.type	gimp_curve_view_key_press,@function
gimp_curve_view_key_press:              # @gimp_curve_view_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 224(%rax)
	jne	.LBB27_43
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB27_43
# BB#2:                                 # %land.lhs.true.4
	movq	-40(%rbp), %rdi
	callq	gimp_curve_get_curve_type
	cmpl	$0, %eax
	jne	.LBB27_43
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	gimp_curve_get_point
	movq	-24(%rbp), %rax
	movl	28(%rax), %esi
	movl	%esi, %r8d
	subl	$65361, %r8d            # imm = 0xFF51
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	je	.LBB27_4
	jmp	.LBB27_47
.LBB27_47:                              # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$65362, %eax            # imm = 0xFF52
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB27_22
	jmp	.LBB27_48
.LBB27_48:                              # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$65363, %eax            # imm = 0xFF53
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB27_13
	jmp	.LBB27_49
.LBB27_49:                              # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$65364, %eax            # imm = 0xFF54
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB27_31
	jmp	.LBB27_50
.LBB27_50:                              # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB27_40
	jmp	.LBB27_41
.LBB27_4:                               # %sw.bb
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB27_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jl	.LBB27_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB27_5 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB27_7:                               # %land.end
                                        #   in Loop: Header=BB27_5 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_8
	jmp	.LBB27_12
.LBB27_8:                               # %for.body
                                        #   in Loop: Header=BB27_5 Depth=1
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_curve_get_point
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB27_10
# BB#9:                                 # %if.then.9
                                        #   in Loop: Header=BB27_5 Depth=1
	movq	-32(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_curve_view_set_selected
	movl	$1, -44(%rbp)
.LBB27_10:                              # %if.end
                                        #   in Loop: Header=BB27_5 Depth=1
	jmp	.LBB27_11
.LBB27_11:                              # %for.inc
                                        #   in Loop: Header=BB27_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB27_5
.LBB27_12:                              # %for.end
	jmp	.LBB27_42
.LBB27_13:                              # %sw.bb.10
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB27_14:                              # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rdx
	cmpl	36(%rdx), %eax
	movb	%cl, -98(%rbp)          # 1-byte Spill
	jge	.LBB27_16
# BB#15:                                # %land.rhs.13
                                        #   in Loop: Header=BB27_14 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -98(%rbp)          # 1-byte Spill
.LBB27_16:                              # %land.end.16
                                        #   in Loop: Header=BB27_14 Depth=1
	movb	-98(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_17
	jmp	.LBB27_21
.LBB27_17:                              # %for.body.17
                                        #   in Loop: Header=BB27_14 Depth=1
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_curve_get_point
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB27_19
# BB#18:                                # %if.then.19
                                        #   in Loop: Header=BB27_14 Depth=1
	movq	-32(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_curve_view_set_selected
	movl	$1, -44(%rbp)
.LBB27_19:                              # %if.end.20
                                        #   in Loop: Header=BB27_14 Depth=1
	jmp	.LBB27_20
.LBB27_20:                              # %for.inc.21
                                        #   in Loop: Header=BB27_14 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB27_14
.LBB27_21:                              # %for.end.22
	jmp	.LBB27_42
.LBB27_22:                              # %sw.bb.23
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB27_30
# BB#23:                                # %if.then.25
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_2, %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	%xmm3, -120(%rbp)       # 8-byte Spill
	movsd	%xmm2, -128(%rbp)       # 8-byte Spill
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jne	.LBB27_52
# BB#51:                                # %if.then.25
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB27_52:                              # %if.then.25
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	jbe	.LBB27_25
# BB#24:                                # %cond.true
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB27_29
.LBB27_25:                              # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB27_27
# BB#26:                                # %cond.true.30
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB27_28
.LBB27_27:                              # %cond.false.31
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB27_28:                              # %cond.end
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB27_29:                              # %cond.end.33
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	callq	gimp_curve_move_point
	movl	$1, -44(%rbp)
.LBB27_30:                              # %if.end.35
	jmp	.LBB27_42
.LBB27_31:                              # %sw.bb.36
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB27_39
# BB#32:                                # %if.then.38
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_2, %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	%xmm3, -184(%rbp)       # 8-byte Spill
	movsd	%xmm2, -192(%rbp)       # 8-byte Spill
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	jne	.LBB27_54
# BB#53:                                # %if.then.38
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB27_54:                              # %if.then.38
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movl	%esi, -212(%rbp)        # 4-byte Spill
	jbe	.LBB27_34
# BB#33:                                # %cond.true.45
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB27_38
.LBB27_34:                              # %cond.false.46
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB27_36
# BB#35:                                # %cond.true.48
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB27_37
.LBB27_36:                              # %cond.false.49
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB27_37:                              # %cond.end.50
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB27_38:                              # %cond.end.52
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	callq	gimp_curve_move_point
	movl	$1, -44(%rbp)
.LBB27_39:                              # %if.end.54
	jmp	.LBB27_42
.LBB27_40:                              # %sw.bb.55
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_curve_delete_point
	jmp	.LBB27_42
.LBB27_41:                              # %sw.default
	jmp	.LBB27_42
.LBB27_42:                              # %sw.epilog
	jmp	.LBB27_43
.LBB27_43:                              # %if.end.56
	cmpl	$0, -44(%rbp)
	je	.LBB27_45
# BB#44:                                # %if.then.58
	movl	$130, %esi
	movq	-32(%rbp), %rdi
	callq	set_cursor
	movl	$1, -4(%rbp)
	jmp	.LBB27_46
.LBB27_45:                              # %if.end.59
	movq	gimp_curve_view_parent_class, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	400(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB27_46:                              # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_curve_view_key_press, .Lfunc_end27-gimp_curve_view_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_cut_clipboard,@function
gimp_curve_view_cut_clipboard:          # @gimp_curve_view_cut_clipboard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.25, %rax
	movabsq	$.L__func__.gimp_curve_view_cut_clipboard, %rsi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	movq	-8(%rbp), %rsi
	cmpq	$0, 152(%rsi)
	je	.LBB28_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB28_3
.LBB28_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_error_bell
	jmp	.LBB28_4
.LBB28_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_curve_view_copy_clipboard
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	callq	gimp_curve_reset
.LBB28_4:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_curve_view_cut_clipboard, .Lfunc_end28-gimp_curve_view_cut_clipboard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_copy_clipboard,@function
gimp_curve_view_copy_clipboard:         # @gimp_curve_view_copy_clipboard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.25, %rax
	movabsq	$.L__func__.gimp_curve_view_copy_clipboard, %rsi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	movq	-8(%rbp), %rsi
	cmpq	$0, 152(%rsi)
	je	.LBB29_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB29_3
.LBB29_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_error_bell
	jmp	.LBB29_4
.LBB29_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_duplicate
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_clipboard_set_curve
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB29_4:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_curve_view_copy_clipboard, .Lfunc_end29-gimp_curve_view_copy_clipboard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_paste_clipboard,@function
gimp_curve_view_paste_clipboard:        # @gimp_curve_view_paste_clipboard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.25, %rax
	movabsq	$.L__func__.gimp_curve_view_paste_clipboard, %rsi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	movq	-8(%rbp), %rsi
	cmpq	$0, 152(%rsi)
	je	.LBB30_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB30_3
.LBB30_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_error_bell
	jmp	.LBB30_5
.LBB30_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_clipboard_get_curve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB30_5
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB30_5:                               # %if.end.13
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_curve_view_paste_clipboard, .Lfunc_end30-gimp_curve_view_paste_clipboard
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
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
	je	.LBB31_2
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
.LBB31_2:                               # %entry
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
.Lfunc_end31:
	.size	g_warning, .Lfunc_end31-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI32_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_curve_view_draw_grid,@function
gimp_curve_view_draw_grid:              # @gimp_curve_view_draw_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$1, -32(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	180(%rcx), %eax
	jge	.LBB32_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	$1, %edx
	imull	%edx, %ecx
	movq	-8(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	180(%rsi)
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rsi
	movl	180(%rsi), %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB32_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	180(%rdx), %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-56(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jne	.LBB32_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_6
.LBB32_5:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
.LBB32_6:                               # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB32_1
.LBB32_7:                               # %for.end
	movl	$1, -32(%rbp)
.LBB32_8:                               # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	184(%rcx), %eax
	jge	.LBB32_14
# BB#9:                                 # %for.body.16
                                        #   in Loop: Header=BB32_8 Depth=1
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	-20(%rbp), %edx
	subl	$1, %edx
	imull	%edx, %ecx
	movq	-8(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	184(%rsi)
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	184(%rsi), %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB32_12
# BB#10:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB32_8 Depth=1
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	184(%rdx), %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-64(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jne	.LBB32_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB32_8 Depth=1
	jmp	.LBB32_13
.LBB32_12:                              # %if.end.31
                                        #   in Loop: Header=BB32_8 Depth=1
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	callq	cairo_move_to
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
.LBB32_13:                              # %for.inc.40
                                        #   in Loop: Header=BB32_8 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB32_8
.LBB32_14:                              # %for.end.42
	movq	-8(%rbp), %rax
	cmpl	$0, 176(%rax)
	je	.LBB32_16
# BB#15:                                # %if.then.43
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	callq	cairo_line_to
.LBB32_16:                              # %if.end.52
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-16(%rbp), %rdi
	callq	cairo_stroke
	movl	$2, %eax
	movq	-8(%rbp), %rdi
	movl	180(%rdi), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-68(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB32_18
# BB#17:                                # %if.then.57
	movl	$2, %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	movl	-28(%rbp), %eax
	addl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-28(%rbp), %eax
	addl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
.LBB32_18:                              # %if.end.69
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	184(%rcx), %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-76(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB32_20
# BB#19:                                # %if.then.74
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	callq	cairo_move_to
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
.LBB32_20:                              # %if.end.86
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-16(%rbp), %rdi
	callq	cairo_stroke
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_curve_view_draw_grid, .Lfunc_end32-gimp_curve_view_draw_grid
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4607182418800017408     # double 1
.LCPI33_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_curve_view_draw_curve,@function
gimp_curve_view_draw_curve:             # @gimp_curve_view_draw_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_curve_map_value
	movsd	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	callq	cairo_move_to
	movl	$1, -60(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jge	.LBB33_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movsd	.LCPI33_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	movsd	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	movl	-32(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	callq	cairo_line_to
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB33_1
.LBB33_4:                               # %for.end
	movq	-16(%rbp), %rdi
	callq	cairo_stroke
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_curve_view_draw_curve, .Lfunc_end33-gimp_curve_view_draw_curve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4613937818241073152     # double 3
.LCPI34_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI34_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_curve_view_draw_point,@function
gimp_curve_view_draw_point:             # @gimp_curve_view_draw_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-40(%rbp), %rax
	leaq	-48(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rdi
	movl	-20(%rbp), %esi
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	gimp_curve_get_point
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_3
.LBB34_2:                               # %if.end
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI34_2, %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm0
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI34_0, %xmm2        # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI34_1, %xmm4        # xmm4 = mem[0],zero
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm5
	mulsd	-48(%rbp), %xmm5
	addsd	%xmm5, %xmm1
	callq	cairo_arc
.LBB34_3:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_curve_view_draw_point, .Lfunc_end34-gimp_curve_view_draw_point
	.cfi_endproc

	.align	16, 0x90
	.type	set_cursor,@function
set_cursor:                             # @set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	cmpl	228(%rdi), %esi
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_display
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gdk_cursor_new_for_display
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-32(%rbp), %rdi
	callq	gdk_cursor_unref
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 228(%rax)
.LBB35_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	set_cursor, .Lfunc_end35-set_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curve_view_set_cursor,@function
gimp_curve_view_set_cursor:             # @gimp_curve_view_set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 280(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 288(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_curve_view_set_cursor, .Lfunc_end36-gimp_curve_view_set_cursor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_curve_view_unset_cursor,@function
gimp_curve_view_unset_cursor:           # @gimp_curve_view_unset_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 280(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 288(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_curve_view_unset_cursor, .Lfunc_end37-gimp_curve_view_unset_cursor
	.cfi_endproc

	.type	gimp_curve_view_get_type.g_define_type_id__volatile,@object # @gimp_curve_view_get_type.g_define_type_id__volatile
	.local	gimp_curve_view_get_type.g_define_type_id__volatile
	.comm	gimp_curve_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCurveView"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_curve_view_set_curve,@object # @__func__.gimp_curve_view_set_curve
.L__func__.gimp_curve_view_set_curve:
	.asciz	"gimp_curve_view_set_curve"
	.size	.L__func__.gimp_curve_view_set_curve, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CURVE_VIEW (view)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"curve == NULL || GIMP_IS_CURVE (curve)"
	.size	.L.str.3, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dirty"
	.size	.L.str.4, 6

	.type	.L__func__.gimp_curve_view_get_curve,@object # @__func__.gimp_curve_view_get_curve
.L__func__.gimp_curve_view_get_curve:
	.asciz	"gimp_curve_view_get_curve"
	.size	.L__func__.gimp_curve_view_get_curve, 26

	.type	.L__func__.gimp_curve_view_add_background,@object # @__func__.gimp_curve_view_add_background
.L__func__.gimp_curve_view_add_background:
	.asciz	"gimp_curve_view_add_background"
	.size	.L__func__.gimp_curve_view_add_background, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_CURVE (curve)"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"curve != bg->curve"
	.size	.L.str.6, 19

	.type	.L__func__.gimp_curve_view_remove_background,@object # @__func__.gimp_curve_view_remove_background
.L__func__.gimp_curve_view_remove_background:
	.asciz	"gimp_curve_view_remove_background"
	.size	.L__func__.gimp_curve_view_remove_background, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.7, 45

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpcurveview.c"
	.size	.L.str.8, 16

	.type	.L__func__.gimp_curve_view_remove_all_backgrounds,@object # @__func__.gimp_curve_view_remove_all_backgrounds
.L__func__.gimp_curve_view_remove_all_backgrounds:
	.asciz	"gimp_curve_view_remove_all_backgrounds"
	.size	.L__func__.gimp_curve_view_remove_all_backgrounds, 39

	.type	.L__func__.gimp_curve_view_set_selected,@object # @__func__.gimp_curve_view_set_selected
.L__func__.gimp_curve_view_set_selected:
	.asciz	"gimp_curve_view_set_selected"
	.size	.L__func__.gimp_curve_view_set_selected, 29

	.type	.L__func__.gimp_curve_view_set_range_x,@object # @__func__.gimp_curve_view_set_range_x
.L__func__.gimp_curve_view_set_range_x:
	.asciz	"gimp_curve_view_set_range_x"
	.size	.L__func__.gimp_curve_view_set_range_x, 28

	.type	.L__func__.gimp_curve_view_set_range_y,@object # @__func__.gimp_curve_view_set_range_y
.L__func__.gimp_curve_view_set_range_y:
	.asciz	"gimp_curve_view_set_range_y"
	.size	.L__func__.gimp_curve_view_set_range_y, 28

	.type	.L__func__.gimp_curve_view_set_xpos,@object # @__func__.gimp_curve_view_set_xpos
.L__func__.gimp_curve_view_set_xpos:
	.asciz	"gimp_curve_view_set_xpos"
	.size	.L__func__.gimp_curve_view_set_xpos, 25

	.type	.L__func__.gimp_curve_view_set_x_axis_label,@object # @__func__.gimp_curve_view_set_x_axis_label
.L__func__.gimp_curve_view_set_x_axis_label:
	.asciz	"gimp_curve_view_set_x_axis_label"
	.size	.L__func__.gimp_curve_view_set_x_axis_label, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"x-axis-label"
	.size	.L.str.9, 13

	.type	.L__func__.gimp_curve_view_set_y_axis_label,@object # @__func__.gimp_curve_view_set_y_axis_label
.L__func__.gimp_curve_view_set_y_axis_label:
	.asciz	"gimp_curve_view_set_y_axis_label"
	.size	.L__func__.gimp_curve_view_set_y_axis_label, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"y-axis-label"
	.size	.L.str.10, 13

	.type	gimp_curve_view_parent_class,@object # @gimp_curve_view_parent_class
	.local	gimp_curve_view_parent_class
	.comm	gimp_curve_view_parent_class,8,8
	.type	GimpCurveView_private_offset,@object # @GimpCurveView_private_offset
	.local	GimpCurveView_private_offset
	.comm	GimpCurveView_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"base-line"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"grid-rows"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"grid-columns"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cut-clipboard"
	.size	.L.str.15, 14

	.type	curve_view_signals,@object # @curve_view_signals
	.local	curve_view_signals
	.comm	curve_view_signals,12,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"copy-clipboard"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"paste-clipboard"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.18, 54

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"property"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"x:%d"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"x:888 y:888"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"x:0.888 y:0.888"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"x:%3d y:%3d"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"x:%0.3f y:%0.3f"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s\n"
	.size	.L.str.25, 4

	.type	.L__func__.gimp_curve_view_cut_clipboard,@object # @__func__.gimp_curve_view_cut_clipboard
.L__func__.gimp_curve_view_cut_clipboard:
	.asciz	"gimp_curve_view_cut_clipboard"
	.size	.L__func__.gimp_curve_view_cut_clipboard, 30

	.type	.L__func__.gimp_curve_view_copy_clipboard,@object # @__func__.gimp_curve_view_copy_clipboard
.L__func__.gimp_curve_view_copy_clipboard:
	.asciz	"gimp_curve_view_copy_clipboard"
	.size	.L__func__.gimp_curve_view_copy_clipboard, 31

	.type	.L__func__.gimp_curve_view_paste_clipboard,@object # @__func__.gimp_curve_view_paste_clipboard
.L__func__.gimp_curve_view_paste_clipboard:
	.asciz	"gimp_curve_view_paste_clipboard"
	.size	.L__func__.gimp_curve_view_paste_clipboard, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
