	.text
	.file	"print-preview.bc"
	.globl	print_preview_get_type
	.align	16, 0x90
	.type	print_preview_get_type,@function
print_preview_get_type:                 # @print_preview_get_type
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
	movq	print_preview_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$print_preview_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_event_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$print_preview_class_intern_init, %rdi
	movl	$240, %r8d
	movabsq	$print_preview_init, %rcx
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
	movabsq	$print_preview_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	print_preview_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_preview_get_type, .Lfunc_end0-print_preview_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_class_intern_init,@function
print_preview_class_intern_init:        # @print_preview_class_intern_init
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
	movq	%rax, print_preview_parent_class
	cmpl	$0, PrintPreview_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$PrintPreview_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	print_preview_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_preview_class_intern_init, .Lfunc_end1-print_preview_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_init,@function
print_preview_init:                     # @print_preview_init
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
	callq	gtk_event_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_event_box_set_visible_window
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$772, %esi              # imm = 0x304
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	print_preview_init, .Lfunc_end2-print_preview_init
	.cfi_endproc

	.globl	print_preview_new
	.align	16, 0x90
	.type	print_preview_new,@function
print_preview_new:                      # @print_preview_new
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_page_setup_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	print_preview_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_drawable_get
	movq	-32(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	print_preview_set_page_setup
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_preview_new, .Lfunc_end3-print_preview_new
	.cfi_endproc

	.globl	print_preview_set_page_setup
	.align	16, 0x90
	.type	print_preview_set_page_setup,@function
print_preview_set_page_setup:           # @print_preview_set_page_setup
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	print_preview_get_type
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
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_set_page_setup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_page_setup_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_set_page_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB4_26
# BB#25:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_26:                               # %if.end.43
	movq	-16(%rbp), %rdi
	callq	gtk_page_setup_copy
	movq	-8(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB4_27:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	print_preview_set_page_setup, .Lfunc_end4-print_preview_set_page_setup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	print_preview_set_image_dpi
	.align	16, 0x90
	.type	print_preview_set_image_dpi,@function
print_preview_set_image_dpi:            # @print_preview_set_image_dpi
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	print_preview_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_set_image_dpi, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_21
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_16
# BB#14:                                # %land.lhs.true.13
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_16
# BB#15:                                # %if.then.15
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.16
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_set_image_dpi, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_21
.LBB5_17:                               # %if.end.17
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.18
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	divsd	-24(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	192(%rax), %xmm0
	jne	.LBB5_20
	jp	.LBB5_20
# BB#19:                                # %lor.lhs.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	200(%rax), %xmm0
	jne	.LBB5_20
	jp	.LBB5_20
	jmp	.LBB5_21
.LBB5_20:                               # %if.then.29
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 192(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 200(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB5_21:                               # %if.end.34
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	print_preview_set_image_dpi, .Lfunc_end5-print_preview_set_image_dpi
	.cfi_endproc

	.globl	print_preview_set_image_offsets
	.align	16, 0x90
	.type	print_preview_set_image_offsets,@function
print_preview_set_image_offsets:        # @print_preview_set_image_offsets
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	print_preview_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_set_image_offsets, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 160(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 168(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB6_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	print_preview_set_image_offsets, .Lfunc_end6-print_preview_set_image_offsets
	.cfi_endproc

	.globl	print_preview_set_image_offsets_max
	.align	16, 0x90
	.type	print_preview_set_image_offsets_max,@function
print_preview_set_image_offsets_max:    # @print_preview_set_image_offsets_max
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	print_preview_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_set_image_offsets_max, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 176(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 184(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB7_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	print_preview_set_image_offsets_max, .Lfunc_end7-print_preview_set_image_offsets_max
	.cfi_endproc

	.globl	print_preview_set_use_full_page
	.align	16, 0x90
	.type	print_preview_set_use_full_page,@function
print_preview_set_use_full_page:        # @print_preview_set_use_full_page
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	print_preview_get_type
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
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_set_use_full_page, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB8_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	print_preview_set_use_full_page, .Lfunc_end8-print_preview_set_use_full_page
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_class_init,@function
print_preview_class_init:               # @print_preview_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
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
	movabsq	$.L.str.4, %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$marshal_VOID__DOUBLE_DOUBLE, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movl	$60, %r11d
	movl	%r11d, %ebx
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$60, 24(%rsp)
	movq	$60, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$print_preview_leave_notify_event, %rsi
	movabsq	$print_preview_motion_notify_event, %rdi
	movabsq	$print_preview_button_release_event, %r8
	movabsq	$print_preview_button_press_event, %r9
	movabsq	$print_preview_expose_event, %r10
	movabsq	$print_preview_size_allocate, %rbx
	movabsq	$print_preview_size_request, %r14
	movabsq	$print_preview_unrealize, %r15
	movabsq	$print_preview_realize, %r12
	movabsq	$print_preview_finalize, %r13
	movl	%eax, print_preview_signals
	movq	-56(%rbp), %r11
	movq	%r13, 48(%r11)
	movq	-64(%rbp), %r11
	movq	%r12, 224(%r11)
	movq	-64(%rbp), %r11
	movq	%r15, 232(%r11)
	movq	-64(%rbp), %r11
	movq	%r14, 240(%r11)
	movq	-64(%rbp), %r11
	movq	%rbx, 248(%r11)
	movq	-64(%rbp), %r11
	movq	%r10, 392(%r11)
	movq	-64(%rbp), %r10
	movq	%r9, 344(%r10)
	movq	-64(%rbp), %r9
	movq	%r8, 352(%r9)
	movq	-64(%rbp), %r8
	movq	%rdi, 368(%r8)
	movq	-64(%rbp), %rdi
	movq	%rsi, 424(%rdi)
	movq	-48(%rbp), %rsi
	movq	$0, 824(%rsi)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	print_preview_class_init, .Lfunc_end9-print_preview_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	marshal_VOID__DOUBLE_DOUBLE,@function
marshal_VOID__DOUBLE_DOUBLE:            # @marshal_VOID__DOUBLE_DOUBLE
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#1:                                 # %do.body
	cmpl	$3, -20(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.marshal_VOID__DOUBLE_DOUBLE, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_12
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$29, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB10_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -80(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.2
	movq	-32(%rbp), %rdi
	callq	g_value_peek_pointer
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB10_8:                               # %if.end.6
	cmpq	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB10_11
.LBB10_10:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB10_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	56(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-80(%rbp), %rsi
	callq	*%rax
.LBB10_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	marshal_VOID__DOUBLE_DOUBLE, .Lfunc_end10-marshal_VOID__DOUBLE_DOUBLE
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_finalize,@function
print_preview_finalize:                 # @print_preview_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_drawable_detach
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB11_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB11_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB11_6:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	print_preview_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	print_preview_finalize, .Lfunc_end11-print_preview_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_realize,@function
print_preview_realize:                  # @print_preview_realize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	print_preview_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	224(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movl	$58, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display
	movq	-16(%rbp), %rdi
	movq	%rax, 120(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	print_preview_realize, .Lfunc_end12-print_preview_realize
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_unrealize,@function
print_preview_unrealize:                # @print_preview_unrealize
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
	callq	print_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gdk_cursor_unref
.LBB13_2:                               # %if.end
	movq	print_preview_parent_class, %rax
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
.Lfunc_end13:
	.size	print_preview_unrealize, .Lfunc_end13-print_preview_unrealize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4641240890982006784     # double 200
	.text
	.align	16, 0x90
	.type	print_preview_size_request,@function
print_preview_size_request:             # @print_preview_size_request
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	print_preview_get_page_size
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB14_5
# BB#1:                                 # %if.then
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	$200, 4(%rax)
	mulsd	-32(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$400, (%rax)            # imm = 0x190
	jge	.LBB14_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB14_4
.LBB14_3:                               # %cond.false
	movl	$400, %eax              # imm = 0x190
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB14_4
.LBB14_4:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB14_9
.LBB14_5:                               # %if.else
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	$200, (%rax)
	mulsd	-40(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	cmpl	$400, 4(%rax)           # imm = 0x190
	jge	.LBB14_7
# BB#6:                                 # %cond.true.18
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false.20
	movl	$400, %eax              # imm = 0x190
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end.21
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB14_9:                               # %if.end
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	print_preview_size_request, .Lfunc_end14-print_preview_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_size_allocate,@function
print_preview_size_allocate:            # @print_preview_size_allocate
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	print_preview_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-24(%rbp), %rax
	movq	$0, 136(%rax)
.LBB15_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	print_preview_size_allocate, .Lfunc_end15-print_preview_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	print_preview_expose_event,@function
print_preview_expose_event:             # @print_preview_expose_event
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	print_preview_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movq	-24(%rbp), %rdi
	callq	print_preview_get_page_size
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	-24(%rbp), %rdi
	callq	print_preview_get_page_margins
	movq	-24(%rbp), %rdi
	callq	print_preview_get_scale
	movsd	%xmm0, -112(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %r9d
	addl	-116(%rbp), %r9d
	cvtsi2sdl	%r9d, %xmm0
	movl	-44(%rbp), %r9d
	addl	-116(%rbp), %r9d
	cvtsi2sdl	%r9d, %xmm1
	callq	cairo_translate
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	xorps	%xmm1, %xmm1
	movl	-40(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -120(%rbp)
	movq	-56(%rbp), %rdi
	cvtsi2sdl	-120(%rbp), %xmm0
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	callq	cairo_translate
.LBB16_2:                               # %if.end
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	callq	cairo_set_line_width
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	-160(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-168(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -176(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	-176(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_rectangle
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-56(%rbp), %rdi
	callq	cairo_stroke_preserve
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$516, %rax              # imm = 0x204
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-56(%rbp), %rdi
	callq	cairo_fill
	movq	-56(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-80(%rbp), %xmm3
	subsd	-88(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	-96(%rbp), %xmm4
	subsd	-104(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	callq	cairo_rectangle
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	addq	$264, %rdi              # imm = 0x108
	imulq	$12, %rsi, %rsi
	addq	%rsi, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	gdk_cairo_set_source_color
	movq	-56(%rbp), %rdi
	callq	cairo_stroke
	movq	-56(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	addsd	160(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rsi
	addsd	168(%rsi), %xmm2
	mulsd	%xmm2, %xmm1
	callq	cairo_translate
	movq	-24(%rbp), %rsi
	cmpl	$0, 144(%rsi)
	jne	.LBB16_4
# BB#3:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$0, 148(%rax)
	je	.LBB16_5
.LBB16_4:                               # %if.then.34
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	192(%rax), %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	200(%rax), %xmm2
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	-200(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-208(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -216(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_rectangle
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-56(%rbp), %rdi
	callq	cairo_stroke
.LBB16_5:                               # %if.end.38
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	jne	.LBB16_14
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	je	.LBB16_14
# BB#7:                                 # %if.then.43
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	cmpl	$1024, -40(%rbp)        # imm = 0x400
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	jge	.LBB16_9
# BB#8:                                 # %cond.true
	movl	-40(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB16_10
.LBB16_10:                              # %cond.end
	movl	-228(%rbp), %eax        # 4-byte Reload
	cmpl	$1024, -36(%rbp)        # imm = 0x400
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jge	.LBB16_12
# BB#11:                                # %cond.true.51
	movl	-36(%rbp), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB16_13
.LBB16_12:                              # %cond.false.53
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB16_13
.LBB16_13:                              # %cond.end.54
	movl	-236(%rbp), %eax        # 4-byte Reload
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-232(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	print_preview_get_thumbnail
	movq	-24(%rbp), %rdi
	movq	%rax, 136(%rdi)
.LBB16_14:                              # %if.end.58
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB16_16
# BB#15:                                # %if.then.62
	movq	-24(%rbp), %rax
	movsd	192(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	cairo_image_surface_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movq	-24(%rbp), %rdi
	movsd	200(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	callq	cairo_image_surface_get_height
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -136(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movsd	192(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	200(%rcx), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-56(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-112(%rbp), %xmm1
	callq	cairo_scale
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rsi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_set_source_surface
	movq	-56(%rbp), %rdi
	callq	cairo_fill
.LBB16_16:                              # %if.end.77
	movq	-56(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end16:
	.size	print_preview_expose_event, .Lfunc_end16-print_preview_expose_event
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_button_press_event,@function
print_preview_button_press_event:       # @print_preview_button_press_event
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB17_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB17_6
# BB#2:                                 # %land.lhs.true.3
	movq	-24(%rbp), %rax
	cmpl	$0, 148(%rax)
	je	.LBB17_6
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movl	$52, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display
	xorl	%esi, %esi
	movl	$544, %edx              # imm = 0x220
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	20(%rax), %r9d
	callq	gdk_pointer_grab
	cmpl	$0, %eax
	jne	.LBB17_5
# BB#4:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 224(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 232(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 236(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 144(%rax)
.LBB17_5:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gdk_cursor_unref
.LBB17_6:                               # %if.end.10
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	print_preview_button_press_event, .Lfunc_end17-print_preview_button_press_event
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_button_release_event,@function
print_preview_button_release_event:     # @print_preview_button_release_event
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	-16(%rbp), %rdi
	movl	20(%rdi), %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
	movq	-24(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	print_preview_is_inside
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	print_preview_set_inside
.LBB18_2:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	print_preview_button_release_event, .Lfunc_end18-print_preview_button_release_event
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_motion_notify_event,@function
print_preview_motion_notify_event:      # @print_preview_motion_notify_event
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB19_17
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	print_preview_get_scale
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movsd	216(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	24(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	232(%rdi), %xmm2
	subsd	%xmm2, %xmm1
	divsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdi
	movsd	224(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	236(%rdi), %xmm2
	subsd	%xmm2, %xmm1
	divsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	ucomisd	176(%rdi), %xmm0
	jbe	.LBB19_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB19_7
.LBB19_3:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB19_5
# BB#4:                                 # %cond.true.11
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false.12
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB19_6:                               # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB19_7:                               # %cond.end.13
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	184(%rax), %xmm0
	jbe	.LBB19_9
# BB#8:                                 # %cond.true.17
	movq	-24(%rbp), %rax
	movsd	184(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB19_13
.LBB19_9:                               # %cond.false.19
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB19_11
# BB#10:                                # %cond.true.22
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB19_12
.LBB19_11:                              # %cond.false.23
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB19_12:                              # %cond.end.24
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB19_13:                              # %cond.end.26
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jne	.LBB19_15
	jp	.LBB19_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jne	.LBB19_15
	jp	.LBB19_15
	jmp	.LBB19_16
.LBB19_15:                              # %if.then.32
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	print_preview_set_image_offsets
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movl	print_preview_signals, %esi
	movq	-24(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_signal_emit
.LBB19_16:                              # %if.end
	jmp	.LBB19_18
.LBB19_17:                              # %if.else
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	print_preview_is_inside
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	print_preview_set_inside
.LBB19_18:                              # %if.end.38
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	print_preview_motion_notify_event, .Lfunc_end19-print_preview_motion_notify_event
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_leave_notify_event,@function
print_preview_leave_notify_event:       # @print_preview_leave_notify_event
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	print_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 72(%rax)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	print_preview_set_inside
.LBB20_2:                               # %if.end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	print_preview_leave_notify_event, .Lfunc_end20-print_preview_leave_notify_event
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_get_page_size,@function
print_preview_get_page_size:            # @print_preview_get_page_size
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
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdi
	movl	%eax, %esi
	callq	gtk_page_setup_get_paper_width
	movl	$1, %esi
	movq	-16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdi
	callq	gtk_page_setup_get_paper_height
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	print_preview_get_page_size, .Lfunc_end21-print_preview_get_page_size
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_get_page_margins,@function
print_preview_get_page_margins:         # @print_preview_get_page_margins
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$0, 208(%rcx)
	je	.LBB22_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB22_3
.LBB22_2:                               # %if.else
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_page_setup_get_left_margin
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_page_setup_get_right_margin
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_page_setup_get_top_margin
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_page_setup_get_bottom_margin
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB22_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	print_preview_get_page_margins, .Lfunc_end22-print_preview_get_page_margins
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_get_scale,@function
print_preview_get_scale:                # @print_preview_get_scale
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	callq	print_preview_get_page_size
	movl	-24(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-20(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_2
# BB#1:                                 # %cond.true
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB23_3
.LBB23_2:                               # %cond.false
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB23_3:                               # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	print_preview_get_scale, .Lfunc_end23-print_preview_get_scale
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_get_thumbnail,@function
print_preview_get_thumbnail:            # @print_preview_get_thumbnail
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	jle	.LBB24_4
# BB#2:                                 # %land.lhs.true
	cmpl	$1024, -20(%rbp)        # imm = 0x400
	jg	.LBB24_4
# BB#3:                                 # %if.then
	jmp	.LBB24_5
.LBB24_4:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_get_thumbnail, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_47
.LBB24_5:                               # %if.end
	jmp	.LBB24_6
.LBB24_6:                               # %do.end
	jmp	.LBB24_7
.LBB24_7:                               # %do.body.2
	cmpl	$0, -24(%rbp)
	jle	.LBB24_10
# BB#8:                                 # %land.lhs.true.4
	cmpl	$1024, -24(%rbp)        # imm = 0x400
	jg	.LBB24_10
# BB#9:                                 # %if.then.6
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.7
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_preview_get_thumbnail, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_47
.LBB24_11:                              # %if.end.8
	jmp	.LBB24_12
.LBB24_12:                              # %do.end.9
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	callq	gimp_drawable_get_thumbnail_data
	movq	%rax, -48(%rbp)
	movl	-80(%rbp), %edi
	decl	%edi
	movl	%edi, %eax
	subl	$3, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%edi, -140(%rbp)        # 4-byte Spill
	ja	.LBB24_15
# BB#48:                                # %do.end.9
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_13:                              # %sw.bb
	movl	$1, -36(%rbp)
	jmp	.LBB24_17
.LBB24_14:                              # %sw.bb.10
	movl	$0, -36(%rbp)
	jmp	.LBB24_17
.LBB24_15:                              # %sw.default
	jmp	.LBB24_16
.LBB24_16:                              # %do.body.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.8, %rsi
	movl	$820, %edx              # imm = 0x334
	movabsq	$.L__func__.print_preview_get_thumbnail, %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB24_17:                              # %sw.epilog
	movl	-36(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	cairo_image_surface_create
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %edx
	imull	-80(%rbp), %edx
	movl	%edx, -68(%rbp)
	movq	-32(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	cairo_image_surface_get_stride
	movl	%eax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB24_18:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_39 Depth 2
                                        #     Child Loop BB24_33 Depth 2
                                        #     Child Loop BB24_27 Depth 2
                                        #     Child Loop BB24_21 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB24_46
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB24_18 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movl	-80(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	ja	.LBB24_44
# BB#49:                                # %for.body
                                        #   in Loop: Header=BB24_18 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI24_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_20:                              # %sw.bb.17
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_21
.LBB24_21:                              # %while.cond
                                        #   Parent Loop BB24_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB24_25
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB24_21 Depth=2
	jmp	.LBB24_23
.LBB24_23:                              # %do.body.18
                                        #   in Loop: Header=BB24_21 Depth=2
	movq	-88(%rbp), %rax
	movb	(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, (%rax)
	movq	-88(%rbp), %rax
	movb	(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-88(%rbp), %rax
	movb	(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#24:                                # %do.end.24
                                        #   in Loop: Header=BB24_21 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB24_21
.LBB24_25:                              # %while.end
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_44
.LBB24_26:                              # %sw.bb.26
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_27
.LBB24_27:                              # %while.cond.27
                                        #   Parent Loop BB24_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB24_31
# BB#28:                                # %while.body.30
                                        #   in Loop: Header=BB24_27 Depth=2
	jmp	.LBB24_29
.LBB24_29:                              # %do.body.31
                                        #   in Loop: Header=BB24_27 Depth=2
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -104(%rbp)
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -108(%rbp)
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -112(%rbp)
	movl	-112(%rbp), %ecx
	shrl	$8, %ecx
	addl	-112(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-96(%rbp), %rax
	movb	%sil, (%rax)
	movl	-108(%rbp), %ecx
	shrl	$8, %ecx
	addl	-108(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-96(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-104(%rbp), %ecx
	shrl	$8, %ecx
	addl	-104(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-96(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-88(%rbp), %rax
	movb	1(%rax), %sil
	movq	-96(%rbp), %rax
	movb	%sil, 3(%rax)
# BB#30:                                # %do.end.64
                                        #   in Loop: Header=BB24_27 Depth=2
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB24_27
.LBB24_31:                              # %while.end.67
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_44
.LBB24_32:                              # %sw.bb.68
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_33
.LBB24_33:                              # %while.cond.69
                                        #   Parent Loop BB24_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB24_37
# BB#34:                                # %while.body.72
                                        #   in Loop: Header=BB24_33 Depth=2
	jmp	.LBB24_35
.LBB24_35:                              # %do.body.73
                                        #   in Loop: Header=BB24_33 Depth=2
	movq	-88(%rbp), %rax
	movb	2(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, (%rax)
	movq	-88(%rbp), %rax
	movb	1(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-88(%rbp), %rax
	movb	(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#36:                                # %do.end.80
                                        #   in Loop: Header=BB24_33 Depth=2
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB24_33
.LBB24_37:                              # %while.end.83
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_44
.LBB24_38:                              # %sw.bb.84
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_39
.LBB24_39:                              # %while.cond.85
                                        #   Parent Loop BB24_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB24_43
# BB#40:                                # %while.body.88
                                        #   in Loop: Header=BB24_39 Depth=2
	jmp	.LBB24_41
.LBB24_41:                              # %do.body.89
                                        #   in Loop: Header=BB24_39 Depth=2
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -116(%rbp)
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -120(%rbp)
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -124(%rbp)
	movl	-124(%rbp), %ecx
	shrl	$8, %ecx
	addl	-124(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-96(%rbp), %rax
	movb	%sil, (%rax)
	movl	-120(%rbp), %ecx
	shrl	$8, %ecx
	addl	-120(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-96(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-116(%rbp), %ecx
	shrl	$8, %ecx
	addl	-116(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-96(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-88(%rbp), %rax
	movb	3(%rax), %sil
	movq	-96(%rbp), %rax
	movb	%sil, 3(%rax)
# BB#42:                                # %do.end.128
                                        #   in Loop: Header=BB24_39 Depth=2
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB24_39
.LBB24_43:                              # %while.end.131
                                        #   in Loop: Header=BB24_18 Depth=1
	jmp	.LBB24_44
.LBB24_44:                              # %sw.epilog.132
                                        #   in Loop: Header=BB24_18 Depth=1
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#45:                                # %for.inc
                                        #   in Loop: Header=BB24_18 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB24_18
.LBB24_46:                              # %for.end
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	cairo_surface_mark_dirty
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB24_47:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	print_preview_get_thumbnail, .Lfunc_end24-print_preview_get_thumbnail
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_13
	.quad	.LBB24_14
	.quad	.LBB24_13
	.quad	.LBB24_14
.LJTI24_1:
	.quad	.LBB24_20
	.quad	.LBB24_26
	.quad	.LBB24_32
	.quad	.LBB24_38

	.text
	.align	16, 0x90
	.type	print_preview_set_inside,@function
print_preview_set_inside:               # @print_preview_set_inside
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	cmpl	148(%rdi), %esi
	je	.LBB25_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 148(%rax)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB25_6
# BB#2:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	cmpl	$0, -12(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB25_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB25_5
.LBB25_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB25_5
.LBB25_5:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gdk_window_set_cursor
.LBB25_6:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB25_7:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	print_preview_set_inside, .Lfunc_end25-print_preview_set_inside
	.cfi_endproc

	.align	16, 0x90
	.type	print_preview_is_inside,@function
print_preview_is_inside:                # @print_preview_is_inside
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	cvtsi2sdl	-92(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	print_preview_get_scale
	movsd	%xmm0, -88(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB26_2
# BB#1:                                 # %if.then
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movl	-40(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -116(%rbp)
	movq	-8(%rbp), %rdi
	callq	print_preview_get_page_size
	cvtsi2sdl	-116(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
.LBB26_2:                               # %if.end
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	-8(%rbp), %rdi
	callq	print_preview_get_page_margins
	xorl	%eax, %eax
	movb	%al, %r9b
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-88(%rbp), %xmm0
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-88(%rbp), %xmm0
	subsd	-72(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	ucomisd	160(%rcx), %xmm0
	movb	%r9b, -137(%rbp)        # 1-byte Spill
	jbe	.LBB26_6
# BB#3:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movsd	160(%rdx), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdx
	addsd	192(%rdx), %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jbe	.LBB26_6
# BB#4:                                 # %land.lhs.true.23
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	ucomisd	168(%rdx), %xmm0
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jbe	.LBB26_6
# BB#5:                                 # %land.rhs
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	168(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	200(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%cl
	movb	%cl, -137(%rbp)         # 1-byte Spill
.LBB26_6:                               # %land.end
	movb	-137(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	print_preview_is_inside, .Lfunc_end26-print_preview_is_inside
	.cfi_endproc

	.type	print_preview_get_type.g_define_type_id__volatile,@object # @print_preview_get_type.g_define_type_id__volatile
	.local	print_preview_get_type.g_define_type_id__volatile
	.comm	print_preview_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PrintPreview"
	.size	.L.str, 13

	.type	.L__func__.print_preview_new,@object # @__func__.print_preview_new
.L__func__.print_preview_new:
	.asciz	"print_preview_new"
	.size	.L__func__.print_preview_new, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GTK_IS_PAGE_SETUP (page)"
	.size	.L.str.1, 25

	.type	.L__func__.print_preview_set_image_dpi,@object # @__func__.print_preview_set_image_dpi
.L__func__.print_preview_set_image_dpi:
	.asciz	"print_preview_set_image_dpi"
	.size	.L__func__.print_preview_set_image_dpi, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"PRINT_IS_PREVIEW (preview)"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"xres > 0.0 && yres > 0.0"
	.size	.L.str.3, 25

	.type	.L__func__.print_preview_set_page_setup,@object # @__func__.print_preview_set_page_setup
.L__func__.print_preview_set_page_setup:
	.asciz	"print_preview_set_page_setup"
	.size	.L__func__.print_preview_set_page_setup, 29

	.type	.L__func__.print_preview_set_image_offsets,@object # @__func__.print_preview_set_image_offsets
.L__func__.print_preview_set_image_offsets:
	.asciz	"print_preview_set_image_offsets"
	.size	.L__func__.print_preview_set_image_offsets, 32

	.type	.L__func__.print_preview_set_image_offsets_max,@object # @__func__.print_preview_set_image_offsets_max
.L__func__.print_preview_set_image_offsets_max:
	.asciz	"print_preview_set_image_offsets_max"
	.size	.L__func__.print_preview_set_image_offsets_max, 36

	.type	.L__func__.print_preview_set_use_full_page,@object # @__func__.print_preview_set_use_full_page
.L__func__.print_preview_set_use_full_page:
	.asciz	"print_preview_set_use_full_page"
	.size	.L__func__.print_preview_set_use_full_page, 32

	.type	print_preview_parent_class,@object # @print_preview_parent_class
	.local	print_preview_parent_class
	.comm	print_preview_parent_class,8,8
	.type	PrintPreview_private_offset,@object # @PrintPreview_private_offset
	.local	PrintPreview_private_offset
	.comm	PrintPreview_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"offsets-changed"
	.size	.L.str.4, 16

	.type	print_preview_signals,@object # @print_preview_signals
	.local	print_preview_signals
	.comm	print_preview_signals,4,4
	.type	.L__func__.marshal_VOID__DOUBLE_DOUBLE,@object # @__func__.marshal_VOID__DOUBLE_DOUBLE
.L__func__.marshal_VOID__DOUBLE_DOUBLE:
	.asciz	"marshal_VOID__DOUBLE_DOUBLE"
	.size	.L__func__.marshal_VOID__DOUBLE_DOUBLE, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"n_param_values == 3"
	.size	.L.str.5, 20

	.type	.L__func__.print_preview_get_thumbnail,@object # @__func__.print_preview_get_thumbnail
.L__func__.print_preview_get_thumbnail:
	.asciz	"print_preview_get_thumbnail"
	.size	.L__func__.print_preview_get_thumbnail, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"width > 0 && width <= 1024"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"height > 0 && height <= 1024"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"print-preview.c"
	.size	.L.str.8, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
