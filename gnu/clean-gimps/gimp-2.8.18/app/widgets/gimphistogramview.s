	.text
	.file	"gimphistogramview.bc"
	.globl	gimp_histogram_view_get_type
	.align	16, 0x90
	.type	gimp_histogram_view_get_type,@function
gimp_histogram_view_get_type:           # @gimp_histogram_view_get_type
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
	movq	gimp_histogram_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_histogram_view_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_histogram_view_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_histogram_view_init, %rcx
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
	movabsq	$gimp_histogram_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_histogram_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_histogram_view_get_type, .Lfunc_end0-gimp_histogram_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_class_intern_init,@function
gimp_histogram_view_class_intern_init:  # @gimp_histogram_view_class_intern_init
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
	movq	%rax, gimp_histogram_view_parent_class
	cmpl	$0, GimpHistogramView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpHistogramView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_histogram_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_histogram_view_class_intern_init, .Lfunc_end1-gimp_histogram_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_init,@function
gimp_histogram_view_init:               # @gimp_histogram_view_init
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
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$255, 132(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_histogram_view_init, .Lfunc_end2-gimp_histogram_view_init
	.cfi_endproc

	.globl	gimp_histogram_view_new
	.align	16, 0x90
	.type	gimp_histogram_view_new,@function
gimp_histogram_view_new:                # @gimp_histogram_view_new
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	gimp_histogram_view_get_type
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$800, %esi              # imm = 0x320
	movq	-16(%rbp), %rdi
	callq	gtk_widget_add_events
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_histogram_view_new, .Lfunc_end3-gimp_histogram_view_new
	.cfi_endproc

	.globl	gimp_histogram_view_set_histogram
	.align	16, 0x90
	.type	gimp_histogram_view_set_histogram,@function
gimp_histogram_view_set_histogram:      # @gimp_histogram_view_set_histogram
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_histogram_view_get_type
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
	movabsq	$.L__func__.gimp_histogram_view_set_histogram, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_21
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB4_20
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB4_15
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_histogram_unref
.LBB4_15:                               # %if.end.18
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB4_19
# BB#16:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_ref
	movq	-8(%rbp), %rdi
	movl	120(%rdi), %ecx
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_histogram_n_channels
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB4_18
# BB#17:                                # %if.then.25
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_view_set_channel
.LBB4_18:                               # %if.end.26
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.27
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.28
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB4_21:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_histogram_view_set_histogram, .Lfunc_end4-gimp_histogram_view_set_histogram
	.cfi_endproc

	.globl	gimp_histogram_view_set_channel
	.align	16, 0x90
	.type	gimp_histogram_view_set_channel,@function
gimp_histogram_view_set_channel:        # @gimp_histogram_view_set_channel
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
	callq	gimp_histogram_view_get_type
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
	movabsq	$.L__func__.gimp_histogram_view_set_channel, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	120(%rcx), %eax
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.3, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB5_14:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_histogram_view_set_channel, .Lfunc_end5-gimp_histogram_view_set_channel
	.cfi_endproc

	.globl	gimp_histogram_view_get_histogram
	.align	16, 0x90
	.type	gimp_histogram_view_get_histogram,@function
gimp_histogram_view_get_histogram:      # @gimp_histogram_view_get_histogram
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
	callq	gimp_histogram_view_get_type
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
	movabsq	$.L__func__.gimp_histogram_view_get_histogram, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_histogram_view_get_histogram, .Lfunc_end6-gimp_histogram_view_get_histogram
	.cfi_endproc

	.globl	gimp_histogram_view_set_background
	.align	16, 0x90
	.type	gimp_histogram_view_set_background,@function
gimp_histogram_view_set_background:     # @gimp_histogram_view_set_background
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_histogram_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_histogram_view_set_background, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_21
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB7_20
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB7_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gimp_histogram_unref
.LBB7_15:                               # %if.end.17
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 112(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB7_19
# BB#16:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_ref
	movq	-8(%rbp), %rdi
	movl	120(%rdi), %ecx
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_histogram_n_channels
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB7_18
# BB#17:                                # %if.then.24
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_view_set_channel
.LBB7_18:                               # %if.end.25
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.26
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.27
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB7_21:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_histogram_view_set_background, .Lfunc_end7-gimp_histogram_view_set_background
	.cfi_endproc

	.globl	gimp_histogram_view_get_background
	.align	16, 0x90
	.type	gimp_histogram_view_get_background,@function
gimp_histogram_view_get_background:     # @gimp_histogram_view_get_background
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_histogram_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_histogram_view_get_background, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_histogram_view_get_background, .Lfunc_end8-gimp_histogram_view_get_background
	.cfi_endproc

	.globl	gimp_histogram_view_get_channel
	.align	16, 0x90
	.type	gimp_histogram_view_get_channel,@function
gimp_histogram_view_get_channel:        # @gimp_histogram_view_get_channel
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_histogram_view_get_type
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
	movabsq	$.L__func__.gimp_histogram_view_get_channel, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_histogram_view_get_channel, .Lfunc_end9-gimp_histogram_view_get_channel
	.cfi_endproc

	.globl	gimp_histogram_view_set_scale
	.align	16, 0x90
	.type	gimp_histogram_view_set_scale,@function
gimp_histogram_view_set_scale:          # @gimp_histogram_view_set_scale
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
	callq	gimp_histogram_view_get_type
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
	movabsq	$.L__func__.gimp_histogram_view_set_scale, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_14
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	124(%rcx), %eax
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.4, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB10_14:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_histogram_view_set_scale, .Lfunc_end10-gimp_histogram_view_set_scale
	.cfi_endproc

	.globl	gimp_histogram_view_get_scale
	.align	16, 0x90
	.type	gimp_histogram_view_get_scale,@function
gimp_histogram_view_get_scale:          # @gimp_histogram_view_get_scale
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_histogram_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_histogram_view_get_scale, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	124(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB11_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_histogram_view_get_scale, .Lfunc_end11-gimp_histogram_view_get_scale
	.cfi_endproc

	.globl	gimp_histogram_view_set_range
	.align	16, 0x90
	.type	gimp_histogram_view_set_range,@function
gimp_histogram_view_set_range:          # @gimp_histogram_view_set_range
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_histogram_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_histogram_view_set_range, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_27
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	movl	-12(%rbp), %edx
	cmpl	-16(%rbp), %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jge	.LBB12_14
# BB#13:                                # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB12_15
.LBB12_14:                              # %cond.false
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB12_15:                              # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB12_20
# BB#16:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movl	132(%rax), %ecx
	movl	-12(%rbp), %edx
	cmpl	-16(%rbp), %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jle	.LBB12_18
# BB#17:                                # %cond.true.16
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB12_19
.LBB12_18:                              # %cond.false.17
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB12_19:                              # %cond.end.18
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB12_27
.LBB12_20:                              # %if.then.21
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB12_22
# BB#21:                                # %cond.true.23
	movl	-12(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB12_23
.LBB12_22:                              # %cond.false.24
	movl	-16(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB12_23:                              # %cond.end.25
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB12_25
# BB#24:                                # %cond.true.29
	movl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB12_26
.LBB12_25:                              # %cond.false.30
	movl	-16(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB12_26:                              # %cond.end.31
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 132(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	histogram_view_signals, %esi
	movq	-8(%rbp), %rcx
	movl	128(%rcx), %ecx
	movq	-8(%rbp), %rdi
	movl	132(%rdi), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB12_27:                              # %if.end.38
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_histogram_view_set_range, .Lfunc_end12-gimp_histogram_view_set_range
	.cfi_endproc

	.globl	gimp_histogram_view_get_range
	.align	16, 0x90
	.type	gimp_histogram_view_get_range,@function
gimp_histogram_view_get_range:          # @gimp_histogram_view_get_range
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_histogram_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_histogram_view_get_range, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_16
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB13_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB13_14:                              # %if.end.14
	cmpq	$0, -24(%rbp)
	je	.LBB13_16
# BB#15:                                # %if.then.16
	movq	-8(%rbp), %rax
	movl	132(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB13_16:                              # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_histogram_view_get_range, .Lfunc_end13-gimp_histogram_view_get_range
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_class_init,@function
gimp_histogram_view_class_init:         # @gimp_histogram_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movl	$752, %ecx              # imm = 0x2F0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__INT_INT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movl	$24, %r11d
	movl	%r11d, %ebx
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$24, 24(%rsp)
	movq	$24, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_histogram_view_motion_notify, %rsi
	movabsq	$gimp_histogram_view_button_release, %rdi
	movabsq	$gimp_histogram_view_button_press, %r8
	movabsq	$gimp_histogram_view_expose, %r9
	movabsq	$gimp_histogram_view_size_request, %r10
	movabsq	$gimp_histogram_view_set_property, %rbx
	movabsq	$gimp_histogram_view_get_property, %r14
	movabsq	$gimp_histogram_view_finalize, %r15
	movl	%eax, histogram_view_signals
	movq	-48(%rbp), %r12
	movq	%r15, 48(%r12)
	movq	-48(%rbp), %r15
	movq	%r14, 32(%r15)
	movq	-48(%rbp), %r14
	movq	%rbx, 24(%r14)
	movq	-56(%rbp), %rbx
	movq	%r10, 240(%rbx)
	movq	-56(%rbp), %r10
	movq	%r9, 392(%r10)
	movq	-56(%rbp), %r9
	movq	%r8, 344(%r9)
	movq	-56(%rbp), %r8
	movq	%rdi, 352(%r8)
	movq	-56(%rbp), %rdi
	movq	%rsi, 368(%rdi)
	movq	-40(%rbp), %rsi
	movq	$0, 752(%rsi)
	movq	-48(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_histogram_scale_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$32, %r8d
	movl	$1, %r9d
	movl	$231, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$64, %r8d
	movl	$5, %r9d
	movl	$231, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_histogram_view_class_init, .Lfunc_end14-gimp_histogram_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_finalize,@function
gimp_histogram_view_finalize:           # @gimp_histogram_view_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_histogram_unref
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gimp_histogram_unref
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
.LBB15_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_histogram_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_histogram_view_finalize, .Lfunc_end15-gimp_histogram_view_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_get_property,@function
gimp_histogram_view_get_property:       # @gimp_histogram_view_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB16_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_8
.LBB16_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	124(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_8
.LBB16_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	136(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_8
.LBB16_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	140(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_8
.LBB16_5:                               # %sw.default
	jmp	.LBB16_6
.LBB16_6:                               # %do.body
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$241, %edx
	movabsq	$.L.str.10, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB16_8
.LBB16_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_histogram_view_get_property, .Lfunc_end16-gimp_histogram_view_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_1
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_4

	.text
	.align	16, 0x90
	.type	gimp_histogram_view_set_property,@function
gimp_histogram_view_set_property:       # @gimp_histogram_view_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB17_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB17_8
.LBB17_2:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 124(%rdi)
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB17_8
.LBB17_3:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 136(%rdi)
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
	jmp	.LBB17_8
.LBB17_4:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 140(%rdi)
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB17_8
.LBB17_5:                               # %sw.default
	jmp	.LBB17_6
.LBB17_6:                               # %do.body
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
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$212, %edx
	movabsq	$.L.str.10, %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB17_8
.LBB17_8:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_histogram_view_set_property, .Lfunc_end17-gimp_histogram_view_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_1
	.quad	.LBB17_2
	.quad	.LBB17_3
	.quad	.LBB17_4

	.text
	.align	16, 0x90
	.type	gimp_histogram_view_size_request,@function
gimp_histogram_view_size_request:       # @gimp_histogram_view_size_request
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	shll	$1, %ecx
	addl	$64, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	shll	$1, %ecx
	addl	$64, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_histogram_view_size_request, .Lfunc_end18-gimp_histogram_view_size_request
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4602678819172646912     # double 0.5
.LCPI19_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_histogram_view_expose,@function
gimp_histogram_view_expose:             # @gimp_histogram_view_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp64:
	.cfi_offset %rbx, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_style
	xorps	%xmm0, %xmm0
	movq	%rax, -64(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-88(%rbp), %rdi
	callq	cairo_clip
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-88(%rbp), %rdi
	callq	cairo_paint
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movl	-72(%rbp), %ecx
	movl	-104(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -108(%rbp)
	movl	-68(%rbp), %ecx
	movl	-104(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -112(%rbp)
	movq	-88(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$2, %esi
	movq	-88(%rbp), %rdi
	callq	cairo_set_line_cap
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$204, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-88(%rbp), %rdi
	cvtsi2sdl	-104(%rbp), %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	movl	-108(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movl	-112(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	callq	cairo_rectangle
	movq	-88(%rbp), %rdi
	callq	cairo_stroke
	movq	-56(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB19_3
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movq	-88(%rbp), %rdi
	callq	cairo_destroy
	movl	$0, -28(%rbp)
	jmp	.LBB19_82
.LBB19_3:                               # %if.end
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	132(%rax), %ecx
	jge	.LBB19_5
# BB#4:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false
	movq	-56(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
.LBB19_6:                               # %cond.end
	movl	-252(%rbp), %eax        # 4-byte Reload
	cmpl	$255, %eax
	jle	.LBB19_8
# BB#7:                                 # %cond.true.21
	movl	$255, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB19_18
.LBB19_8:                               # %cond.false.22
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	132(%rax), %ecx
	jge	.LBB19_10
# BB#9:                                 # %cond.true.27
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB19_11
.LBB19_10:                              # %cond.false.29
	movq	-56(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB19_11:                              # %cond.end.31
	movl	-260(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB19_13
# BB#12:                                # %cond.true.35
	xorl	%eax, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB19_17
.LBB19_13:                              # %cond.false.36
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	132(%rax), %ecx
	jge	.LBB19_15
# BB#14:                                # %cond.true.41
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB19_16
.LBB19_15:                              # %cond.false.43
	movq	-56(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB19_16:                              # %cond.end.45
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB19_17:                              # %cond.end.47
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB19_18:                              # %cond.end.49
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	movq	-56(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-56(%rbp), %rcx
	cmpl	132(%rcx), %eax
	jle	.LBB19_20
# BB#19:                                # %cond.true.55
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB19_21
.LBB19_20:                              # %cond.false.57
	movq	-56(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
.LBB19_21:                              # %cond.end.59
	movl	-272(%rbp), %eax        # 4-byte Reload
	cmpl	$255, %eax
	jle	.LBB19_23
# BB#22:                                # %cond.true.63
	movl	$255, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB19_33
.LBB19_23:                              # %cond.false.64
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	132(%rax), %ecx
	jle	.LBB19_25
# BB#24:                                # %cond.true.69
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB19_26
.LBB19_25:                              # %cond.false.71
	movq	-56(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
.LBB19_26:                              # %cond.end.73
	movl	-280(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB19_28
# BB#27:                                # %cond.true.77
	xorl	%eax, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB19_32
.LBB19_28:                              # %cond.false.78
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	132(%rax), %ecx
	jle	.LBB19_30
# BB#29:                                # %cond.true.83
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	jmp	.LBB19_31
.LBB19_30:                              # %cond.false.85
	movq	-56(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
.LBB19_31:                              # %cond.end.87
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB19_32:                              # %cond.end.89
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB19_33:                              # %cond.end.91
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	$0, 104(%rcx)
	je	.LBB19_35
# BB#34:                                # %if.then.95
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	120(%rax), %edx
	callq	gimp_histogram_view_get_maximum
	movsd	%xmm0, -120(%rbp)
.LBB19_35:                              # %if.end.98
	movq	-56(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB19_37
# BB#36:                                # %if.then.101
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	120(%rax), %edx
	callq	gimp_histogram_view_get_maximum
	movsd	%xmm0, -128(%rbp)
.LBB19_37:                              # %if.end.105
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	addq	$36, %rax
	movq	%rax, -144(%rbp)
	movq	-64(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, -152(%rbp)
	movq	-64(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	addq	$36, %rax
	movq	%rax, -160(%rbp)
	movq	-64(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$5, 120(%rax)
	jne	.LBB19_43
# BB#38:                                # %if.then.115
	movl	$0, -92(%rbp)
.LBB19_39:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -92(%rbp)
	jge	.LBB19_42
# BB#40:                                # %for.body
                                        #   in Loop: Header=BB19_39 Depth=1
	leaq	-208(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$65535, %edx            # imm = 0xFFFF
	cmpl	$0, -92(%rbp)
	movl	%ecx, %esi
	cmovel	%edx, %esi
	movw	%si, %di
	movslq	-92(%rbp), %r8
	imulq	$12, %r8, %r8
	movq	%rax, %r9
	addq	%r8, %r9
	movw	%di, 4(%r9)
	cmpl	$1, -92(%rbp)
	movl	%ecx, %esi
	cmovel	%edx, %esi
	movw	%si, %di
	movslq	-92(%rbp), %r8
	imulq	$12, %r8, %r8
	movq	%rax, %r9
	addq	%r8, %r9
	movw	%di, 6(%r9)
	cmpl	$2, -92(%rbp)
	cmovel	%edx, %ecx
	movw	%cx, %di
	movslq	-92(%rbp), %r8
	imulq	$12, %r8, %r8
	addq	%r8, %rax
	movw	%di, 8(%rax)
# BB#41:                                # %for.inc
                                        #   in Loop: Header=BB19_39 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB19_39
.LBB19_42:                              # %for.end
	jmp	.LBB19_43
.LBB19_43:                              # %if.end.135
	movl	$1, -132(%rbp)
	movl	$0, -92(%rbp)
.LBB19_44:                              # %for.cond.136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_48 Depth 2
                                        #     Child Loop BB19_61 Depth 2
                                        #     Child Loop BB19_65 Depth 2
	movl	-92(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB19_81
# BB#45:                                # %for.body.139
                                        #   in Loop: Header=BB19_44 Depth=1
	movl	$0, -212(%rbp)
	movl	-92(%rbp), %eax
	shll	$8, %eax
	cltd
	idivl	-108(%rbp)
	movl	%eax, -216(%rbp)
	movl	-92(%rbp), %eax
	addl	$1, %eax
	shll	$8, %eax
	cltd
	idivl	-108(%rbp)
	movl	%eax, -220(%rbp)
	cmpl	$0, -96(%rbp)
	jne	.LBB19_47
# BB#46:                                # %land.lhs.true.145
                                        #   in Loop: Header=BB19_44 Depth=1
	cmpl	$255, -100(%rbp)
	je	.LBB19_53
.LBB19_47:                              # %if.then.148
                                        #   in Loop: Header=BB19_44 Depth=1
	movl	-216(%rbp), %eax
	movl	%eax, -224(%rbp)
.LBB19_48:                              # %do.body
                                        #   Parent Loop BB19_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-96(%rbp), %eax
	cmpl	-224(%rbp), %eax
	movb	%cl, -289(%rbp)         # 1-byte Spill
	jg	.LBB19_50
# BB#49:                                # %land.rhs
                                        #   in Loop: Header=BB19_48 Depth=2
	movl	-224(%rbp), %eax
	cmpl	-100(%rbp), %eax
	setle	%cl
	movb	%cl, -289(%rbp)         # 1-byte Spill
.LBB19_50:                              # %land.end
                                        #   in Loop: Header=BB19_48 Depth=2
	movb	-289(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	orl	-212(%rbp), %ecx
	movl	%ecx, -212(%rbp)
# BB#51:                                # %do.cond
                                        #   in Loop: Header=BB19_48 Depth=2
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	cmpl	-220(%rbp), %eax
	jl	.LBB19_48
# BB#52:                                # %do.end
                                        #   in Loop: Header=BB19_44 Depth=1
	jmp	.LBB19_53
.LBB19_53:                              # %if.end.156
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$1, 140(%rax)
	jle	.LBB19_56
# BB#54:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB19_44 Depth=1
	movl	-92(%rbp), %eax
	movl	-132(%rbp), %ecx
	imull	-108(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	%eax, -296(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	cltd
	movq	-304(%rbp), %rsi        # 8-byte Reload
	idivl	140(%rsi)
	movl	-296(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB19_56
# BB#55:                                # %if.then.165
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$204, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %ecx
	addl	-104(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	callq	cairo_move_to
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %ecx
	addl	-104(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-104(%rbp), %ecx
	addl	-112(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_line_to
	movq	-88(%rbp), %rdi
	callq	cairo_stroke
	movl	-132(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -132(%rbp)
	jmp	.LBB19_59
.LBB19_56:                              # %if.else
                                        #   in Loop: Header=BB19_44 Depth=1
	cmpl	$0, -212(%rbp)
	je	.LBB19_58
# BB#57:                                # %if.then.178
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	addq	$36, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %ecx
	addl	-104(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	callq	cairo_move_to
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %ecx
	addl	-104(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-104(%rbp), %ecx
	addl	-112(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_line_to
	movq	-88(%rbp), %rdi
	callq	cairo_stroke
.LBB19_58:                              # %if.end.189
                                        #   in Loop: Header=BB19_44 Depth=1
	jmp	.LBB19_59
.LBB19_59:                              # %if.end.190
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$5, 120(%rax)
	jne	.LBB19_72
# BB#60:                                # %if.then.194
                                        #   in Loop: Header=BB19_44 Depth=1
	movl	$0, -228(%rbp)
.LBB19_61:                              # %for.cond.195
                                        #   Parent Loop BB19_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -228(%rbp)
	jge	.LBB19_64
# BB#62:                                # %for.body.198
                                        #   in Loop: Header=BB19_61 Depth=2
	movl	$2, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-56(%rbp), %rdi
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rcx
	addq	$504, %rcx              # imm = 0x1F8
	movl	-92(%rbp), %esi
	movl	-216(%rbp), %r10d
	movl	-220(%rbp), %r11d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-112(%rbp), %ebx
	movl	-104(%rbp), %r14d
	movl	%esi, -308(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	callq	gimp_histogram_view_draw_spike
# BB#63:                                # %for.inc.200
                                        #   in Loop: Header=BB19_61 Depth=2
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB19_61
.LBB19_64:                              # %for.end.202
                                        #   in Loop: Header=BB19_44 Depth=1
	movl	$0, -228(%rbp)
.LBB19_65:                              # %for.cond.203
                                        #   Parent Loop BB19_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -228(%rbp)
	jge	.LBB19_68
# BB#66:                                # %for.body.206
                                        #   in Loop: Header=BB19_65 Depth=2
	movl	$12, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-208(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movq	-88(%rbp), %rdx
	movslq	-228(%rbp), %rsi
	imulq	$12, %rsi, %rsi
	addq	%rsi, %rcx
	movl	-92(%rbp), %r10d
	movl	-216(%rbp), %r11d
	movl	-220(%rbp), %ebx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-112(%rbp), %r14d
	movl	-104(%rbp), %r15d
	movl	%eax, %esi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	callq	gimp_histogram_view_draw_spike
# BB#67:                                # %for.inc.210
                                        #   in Loop: Header=BB19_65 Depth=2
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB19_65
.LBB19_68:                              # %for.end.212
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	120(%rax), %esi
	movq	-88(%rbp), %rdx
	cmpl	$0, -212(%rbp)
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movl	%esi, -324(%rbp)        # 4-byte Spill
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	je	.LBB19_70
# BB#69:                                # %cond.true.215
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB19_71
.LBB19_70:                              # %cond.false.216
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB19_71:                              # %cond.end.217
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$2, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	-92(%rbp), %ecx
	movl	-216(%rbp), %edx
	movl	-220(%rbp), %esi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-112(%rbp), %edi
	movl	-104(%rbp), %r10d
	movq	-320(%rbp), %r11        # 8-byte Reload
	movl	%edi, -348(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movl	-324(%rbp), %ebx        # 4-byte Reload
	movl	%esi, -352(%rbp)        # 4-byte Spill
	movl	%ebx, %esi
	movq	-336(%rbp), %r14        # 8-byte Reload
	movl	%edx, -356(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-360(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movl	-356(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 8(%rsp)
	movl	-352(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movl	-348(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 24(%rsp)
	movl	%r10d, 32(%rsp)
	callq	gimp_histogram_view_draw_spike
	jmp	.LBB19_79
.LBB19_72:                              # %if.else.219
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	120(%rax), %esi
	movq	-88(%rbp), %rdx
	cmpl	$0, -212(%rbp)
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movl	%esi, -372(%rbp)        # 4-byte Spill
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	je	.LBB19_74
# BB#73:                                # %cond.true.222
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB19_75
.LBB19_74:                              # %cond.false.223
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB19_75:                              # %cond.end.224
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -212(%rbp)
	movq	%rax, -400(%rbp)        # 8-byte Spill
	je	.LBB19_77
# BB#76:                                # %cond.true.227
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB19_78
.LBB19_77:                              # %cond.false.228
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB19_78:                              # %cond.end.229
                                        #   in Loop: Header=BB19_44 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	$2, %r8d
	movl	-92(%rbp), %ecx
	movl	-216(%rbp), %edx
	movl	-220(%rbp), %esi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-112(%rbp), %edi
	movl	-104(%rbp), %r9d
	movq	-368(%rbp), %r10        # 8-byte Reload
	movl	%edi, -412(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movl	-372(%rbp), %r11d       # 4-byte Reload
	movl	%esi, -416(%rbp)        # 4-byte Spill
	movl	%r11d, %esi
	movq	-384(%rbp), %rbx        # 8-byte Reload
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	-400(%rbp), %r14        # 8-byte Reload
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	movq	%r14, %rcx
	movl	%r9d, -428(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	-424(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movl	-420(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 8(%rsp)
	movl	-416(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movl	-412(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 24(%rsp)
	movl	-428(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	callq	gimp_histogram_view_draw_spike
.LBB19_79:                              # %if.end.231
                                        #   in Loop: Header=BB19_44 Depth=1
	jmp	.LBB19_80
.LBB19_80:                              # %for.inc.232
                                        #   in Loop: Header=BB19_44 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB19_44
.LBB19_81:                              # %for.end.234
	movq	-88(%rbp), %rdi
	callq	cairo_destroy
	movl	$0, -28(%rbp)
.LBB19_82:                              # %return
	movl	-28(%rbp), %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_histogram_view_expose, .Lfunc_end19-gimp_histogram_view_expose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4643176031446892544     # double 255
.LCPI20_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gimp_histogram_view_button_press,@function
gimp_histogram_view_button_press:       # @gimp_histogram_view_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB20_9
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB20_9
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_grab_add
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_1, %xmm1        # xmm1 = mem[0],zero
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	136(%rsi), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	136(%rsi), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB20_4
# BB#3:                                 # %cond.true
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_4:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	.LCPI20_1, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB20_6
# BB#5:                                 # %cond.true.19
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB20_7
.LBB20_6:                               # %cond.false.20
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-44(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
.LBB20_7:                               # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB20_8:                               # %cond.end.28
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movq	-24(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 132(%rcx)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB20_9:                               # %if.end
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_histogram_view_button_press, .Lfunc_end20-gimp_histogram_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_button_release,@function
gimp_histogram_view_button_release:     # @gimp_histogram_view_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB21_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-24(%rbp), %rdi
	movl	128(%rdi), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	132(%rdi), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB21_3
# BB#2:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB21_4
.LBB21_3:                               # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB21_4:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB21_6
# BB#5:                                 # %cond.true.7
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false.8
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB21_7:                               # %cond.end.9
	movl	-48(%rbp), %eax         # 4-byte Reload
	xorl	%edx, %edx
	movq	-24(%rbp), %rcx
	movl	%eax, 132(%rcx)
	movq	-24(%rbp), %rcx
	movl	histogram_view_signals, %esi
	movq	-24(%rbp), %rdi
	movl	128(%rdi), %eax
	movq	-24(%rbp), %rdi
	movl	132(%rdi), %r8d
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_signal_emit
.LBB21_8:                               # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_histogram_view_button_release, .Lfunc_end21-gimp_histogram_view_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4643176031446892544     # double 255
.LCPI22_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gimp_histogram_view_motion_notify,@function
gimp_histogram_view_motion_notify:      # @gimp_histogram_view_motion_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_histogram_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	136(%rax), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB22_2
# BB#1:                                 # %cond.true
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB22_6
.LBB22_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB22_4
# BB#3:                                 # %cond.true.17
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false.18
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-44(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
.LBB22_5:                               # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB22_6:                               # %cond.end.26
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_histogram_view_motion_notify, .Lfunc_end22-gimp_histogram_view_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB23_2
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
.LBB23_2:                               # %entry
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
.Lfunc_end23:
	.size	g_warning, .Lfunc_end23-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_histogram_view_get_maximum,@function
gimp_histogram_view_get_maximum:        # @gimp_histogram_view_get_maximum
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	%edx, %esi
	callq	gimp_histogram_get_maximum
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	124(%rdi), %edx
	testl	%edx, %edx
	movl	%edx, -36(%rbp)         # 4-byte Spill
	je	.LBB24_1
	jmp	.LBB24_7
.LBB24_7:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB24_2
	jmp	.LBB24_6
.LBB24_1:                               # %sw.bb
	jmp	.LBB24_6
.LBB24_2:                               # %sw.bb.1
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB24_4
# BB#3:                                 # %if.then
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB24_5
.LBB24_4:                               # %if.else
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB24_5:                               # %if.end
	jmp	.LBB24_6
.LBB24_6:                               # %sw.epilog
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_histogram_view_get_maximum, .Lfunc_end24-gimp_histogram_view_get_maximum
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_draw_spike,@function
gimp_histogram_view_draw_spike:         # @gimp_histogram_view_draw_spike
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
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp85:
	.cfi_offset %rbx, -32
.Ltmp86:
	.cfi_offset %r14, -24
	movl	48(%rbp), %eax
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	xorps	%xmm2, %xmm2
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movl	%r14d, -68(%rbp)
	movl	%ebx, -72(%rbp)
	movl	%r11d, -76(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -96(%rbp)
	movl	%r10d, -100(%rbp)
	movl	%eax, -104(%rbp)
	movsd	%xmm2, -112(%rbp)
	movsd	%xmm2, -120(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, 104(%rcx)
	je	.LBB25_7
# BB#1:                                 # %if.then
	jmp	.LBB25_2
.LBB25_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	movl	-28(%rbp), %esi
	movl	-72(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -72(%rbp)
	movl	%ecx, %edx
	callq	gimp_histogram_get_value
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB25_4
# BB#3:                                 # %if.then.2
                                        #   in Loop: Header=BB25_2 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_2 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %do.cond
                                        #   in Loop: Header=BB25_2 Depth=1
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB25_2
# BB#6:                                 # %do.end
	jmp	.LBB25_7
.LBB25_7:                               # %if.end.4
	cmpq	$0, -64(%rbp)
	je	.LBB25_15
# BB#8:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB25_15
# BB#9:                                 # %if.then.7
	jmp	.LBB25_10
.LBB25_10:                              # %do.body.8
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdi
	movl	-28(%rbp), %esi
	movl	-72(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -72(%rbp)
	movl	%ecx, %edx
	callq	gimp_histogram_get_value
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-120(%rbp), %xmm0
	jbe	.LBB25_12
# BB#11:                                # %if.then.14
                                        #   in Loop: Header=BB25_10 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB25_12:                              # %if.end.15
                                        #   in Loop: Header=BB25_10 Depth=1
	jmp	.LBB25_13
.LBB25_13:                              # %do.cond.16
                                        #   in Loop: Header=BB25_10 Depth=1
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB25_10
# BB#14:                                # %do.end.18
	jmp	.LBB25_15
.LBB25_15:                              # %if.end.19
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jb	.LBB25_18
# BB#16:                                # %land.lhs.true.21
	xorps	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	jb	.LBB25_18
# BB#17:                                # %if.then.23
	jmp	.LBB25_25
.LBB25_18:                              # %if.end.24
	movq	-24(%rbp), %rax
	movl	124(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	je	.LBB25_19
	jmp	.LBB25_26
.LBB25_26:                              # %if.end.24
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB25_20
	jmp	.LBB25_21
.LBB25_19:                              # %sw.bb
	movl	-100(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -124(%rbp)
	movl	-100(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-120(%rbp), %xmm0
	divsd	-96(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB25_22
.LBB25_20:                              # %sw.bb.31
	movl	-100(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-88(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -124(%rbp)
	movl	-100(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-96(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB25_22
.LBB25_21:                              # %sw.default
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
.LBB25_22:                              # %sw.epilog
	cmpq	$0, -64(%rbp)
	je	.LBB25_24
# BB#23:                                # %if.then.45
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	-128(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
.LBB25_24:                              # %if.end.56
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	cairo_set_operator
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	-104(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-100(%rbp), %eax
	addl	-104(%rbp), %eax
	subl	-124(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	movl	$2, %esi
	movq	-40(%rbp), %rdi
	callq	cairo_set_operator
.LBB25_25:                              # %return
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_histogram_view_draw_spike, .Lfunc_end25-gimp_histogram_view_draw_spike
	.cfi_endproc

	.type	gimp_histogram_view_get_type.g_define_type_id__volatile,@object # @gimp_histogram_view_get_type.g_define_type_id__volatile
	.local	gimp_histogram_view_get_type.g_define_type_id__volatile
	.comm	gimp_histogram_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpHistogramView"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_histogram_view_set_histogram,@object # @__func__.gimp_histogram_view_set_histogram
.L__func__.gimp_histogram_view_set_histogram:
	.asciz	"gimp_histogram_view_set_histogram"
	.size	.L__func__.gimp_histogram_view_set_histogram, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_HISTOGRAM_VIEW (view)"
	.size	.L.str.2, 30

	.type	.L__func__.gimp_histogram_view_get_histogram,@object # @__func__.gimp_histogram_view_get_histogram
.L__func__.gimp_histogram_view_get_histogram:
	.asciz	"gimp_histogram_view_get_histogram"
	.size	.L__func__.gimp_histogram_view_get_histogram, 34

	.type	.L__func__.gimp_histogram_view_set_background,@object # @__func__.gimp_histogram_view_set_background
.L__func__.gimp_histogram_view_set_background:
	.asciz	"gimp_histogram_view_set_background"
	.size	.L__func__.gimp_histogram_view_set_background, 35

	.type	.L__func__.gimp_histogram_view_get_background,@object # @__func__.gimp_histogram_view_get_background
.L__func__.gimp_histogram_view_get_background:
	.asciz	"gimp_histogram_view_get_background"
	.size	.L__func__.gimp_histogram_view_get_background, 35

	.type	.L__func__.gimp_histogram_view_set_channel,@object # @__func__.gimp_histogram_view_set_channel
.L__func__.gimp_histogram_view_set_channel:
	.asciz	"gimp_histogram_view_set_channel"
	.size	.L__func__.gimp_histogram_view_set_channel, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"histogram-channel"
	.size	.L.str.3, 18

	.type	.L__func__.gimp_histogram_view_get_channel,@object # @__func__.gimp_histogram_view_get_channel
.L__func__.gimp_histogram_view_get_channel:
	.asciz	"gimp_histogram_view_get_channel"
	.size	.L__func__.gimp_histogram_view_get_channel, 32

	.type	.L__func__.gimp_histogram_view_set_scale,@object # @__func__.gimp_histogram_view_set_scale
.L__func__.gimp_histogram_view_set_scale:
	.asciz	"gimp_histogram_view_set_scale"
	.size	.L__func__.gimp_histogram_view_set_scale, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"histogram-scale"
	.size	.L.str.4, 16

	.type	.L__func__.gimp_histogram_view_get_scale,@object # @__func__.gimp_histogram_view_get_scale
.L__func__.gimp_histogram_view_get_scale:
	.asciz	"gimp_histogram_view_get_scale"
	.size	.L__func__.gimp_histogram_view_get_scale, 30

	.type	.L__func__.gimp_histogram_view_set_range,@object # @__func__.gimp_histogram_view_set_range
.L__func__.gimp_histogram_view_set_range:
	.asciz	"gimp_histogram_view_set_range"
	.size	.L__func__.gimp_histogram_view_set_range, 30

	.type	histogram_view_signals,@object # @histogram_view_signals
	.local	histogram_view_signals
	.comm	histogram_view_signals,4,4
	.type	.L__func__.gimp_histogram_view_get_range,@object # @__func__.gimp_histogram_view_get_range
.L__func__.gimp_histogram_view_get_range:
	.asciz	"gimp_histogram_view_get_range"
	.size	.L__func__.gimp_histogram_view_get_range, 30

	.type	gimp_histogram_view_parent_class,@object # @gimp_histogram_view_parent_class
	.local	gimp_histogram_view_parent_class
	.comm	gimp_histogram_view_parent_class,8,8
	.type	GimpHistogramView_private_offset,@object # @GimpHistogramView_private_offset
	.local	GimpHistogramView_private_offset
	.comm	GimpHistogramView_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"range-changed"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"border-width"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"subdivisions"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimphistogramview.c"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
