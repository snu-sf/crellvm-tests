	.text
	.file	"gimpoffsetarea.bc"
	.globl	gimp_offset_area_get_type
	.align	16, 0x90
	.type	gimp_offset_area_get_type,@function
gimp_offset_area_get_type:              # @gimp_offset_area_get_type
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
	movq	gimp_offset_area_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_offset_area_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_drawing_area_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$792, %edx              # imm = 0x318
	leaq	gimp_offset_area_class_intern_init(%rip), %rdi
	movl	$144, %r8d
	leaq	gimp_offset_area_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_offset_area_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_offset_area_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_offset_area_get_type, .Lfunc_end0-gimp_offset_area_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_offset_area_class_intern_init,@function
gimp_offset_area_class_intern_init:     # @gimp_offset_area_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_offset_area_parent_class(%rip)
	cmpl	$0, GimpOffsetArea_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpOffsetArea_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_offset_area_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_offset_area_class_intern_init, .Lfunc_end1-gimp_offset_area_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_offset_area_init,@function
gimp_offset_area_init:                  # @gimp_offset_area_init
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
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 108(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 116(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 124(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$800, %esi              # imm = 0x320
	movq	%rax, %rdi
	callq	gtk_widget_add_events@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_offset_area_init, .Lfunc_end2-gimp_offset_area_init
	.cfi_endproc

	.globl	gimp_offset_area_new
	.align	16, 0x90
	.type	gimp_offset_area_new,@function
gimp_offset_area_new:                   # @gimp_offset_area_new
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
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jle	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_offset_area_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpl	$0, -16(%rbp)
	jle	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_offset_area_new(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	callq	gimp_offset_area_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-24(%rbp), %rax
	movl	%ecx, 104(%rax)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 116(%rax)
	movq	-24(%rbp), %rax
	movl	%ecx, 108(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_offset_area_resize
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
.LBB3_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_offset_area_new, .Lfunc_end3-gimp_offset_area_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4641240890982006784     # double 200
	.text
	.align	16, 0x90
	.type	gimp_offset_area_resize,@function
gimp_offset_area_resize:                # @gimp_offset_area_resize
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
	movq	-8(%rbp), %rdi
	cmpl	$0, 104(%rdi)
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$0, 108(%rax)
	jne	.LBB4_3
.LBB4_2:                                # %if.then
	jmp	.LBB4_13
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	112(%rax), %ecx
	jg	.LBB4_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movq	-8(%rbp), %rax
	movl	104(%rax), %ecx
	shll	$1, %ecx
	movq	-8(%rbp), %rax
	subl	112(%rax), %ecx
	movl	%ecx, -12(%rbp)
.LBB4_6:                                # %if.end.9
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	116(%rax), %ecx
	jg	.LBB4_8
# BB#7:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.15
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	shll	$1, %ecx
	movq	-8(%rbp), %rax
	subl	116(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB4_9:                                # %if.end.20
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB4_11
# BB#10:                                # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB4_12:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_widget_set_size_request@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize@PLT
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_offset_area_resize, .Lfunc_end4-gimp_offset_area_resize
	.cfi_endproc

	.globl	gimp_offset_area_set_pixbuf
	.align	16, 0x90
	.type	gimp_offset_area_set_pixbuf,@function
gimp_offset_area_set_pixbuf:            # @gimp_offset_area_set_pixbuf
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_offset_area_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_offset_area_set_pixbuf(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gdk_pixbuf_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_offset_area_set_pixbuf(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_25
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gdk_pixbuf_copy@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	g_object_unref@GOTPCREL(%rip), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB5_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_offset_area_set_pixbuf, .Lfunc_end5-gimp_offset_area_set_pixbuf
	.cfi_endproc

	.globl	gimp_offset_area_set_size
	.align	16, 0x90
	.type	gimp_offset_area_set_size,@function
gimp_offset_area_set_size:              # @gimp_offset_area_set_size
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_offset_area_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_offset_area_set_size(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_54
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jle	.LBB6_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -16(%rbp)
	jle	.LBB6_16
# BB#15:                                # %if.then.15
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_offset_area_set_size(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_54
.LBB6_17:                               # %if.end.17
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.18
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB6_20
# BB#19:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB6_54
.LBB6_20:                               # %if.then.23
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 112(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 116(%rcx)
	movq	-8(%rbp), %rcx
	movl	104(%rcx), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jg	.LBB6_28
# BB#21:                                # %if.then.30
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	112(%rax), %edx
	movq	-8(%rbp), %rax
	subl	104(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB6_23
# BB#22:                                # %cond.true
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	104(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB6_27
.LBB6_23:                               # %cond.false
	movq	-8(%rbp), %rax
	cmpl	$0, 120(%rax)
	jge	.LBB6_25
# BB#24:                                # %cond.true.40
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %cond.false.41
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB6_26:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_27:                               # %cond.end.43
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	jmp	.LBB6_35
.LBB6_28:                               # %if.else.45
	movq	-8(%rbp), %rax
	cmpl	$0, 120(%rax)
	jle	.LBB6_30
# BB#29:                                # %cond.true.48
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_34
.LBB6_30:                               # %cond.false.49
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	112(%rax), %edx
	movq	-8(%rbp), %rax
	subl	104(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB6_32
# BB#31:                                # %cond.true.55
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	104(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB6_33
.LBB6_32:                               # %cond.false.59
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB6_33:                               # %cond.end.61
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB6_34:                               # %cond.end.63
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
.LBB6_35:                               # %if.end.65
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	116(%rax), %ecx
	jg	.LBB6_43
# BB#36:                                # %if.then.68
	movq	-8(%rbp), %rax
	movl	124(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	116(%rax), %edx
	movq	-8(%rbp), %rax
	subl	108(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB6_38
# BB#37:                                # %cond.true.74
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	108(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_42
.LBB6_38:                               # %cond.false.78
	movq	-8(%rbp), %rax
	cmpl	$0, 124(%rax)
	jge	.LBB6_40
# BB#39:                                # %cond.true.81
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB6_41
.LBB6_40:                               # %cond.false.82
	movq	-8(%rbp), %rax
	movl	124(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB6_41:                               # %cond.end.84
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB6_42:                               # %cond.end.86
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	jmp	.LBB6_50
.LBB6_43:                               # %if.else.88
	movq	-8(%rbp), %rax
	cmpl	$0, 124(%rax)
	jle	.LBB6_45
# BB#44:                                # %cond.true.91
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB6_49
.LBB6_45:                               # %cond.false.92
	movq	-8(%rbp), %rax
	movl	124(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	116(%rax), %edx
	movq	-8(%rbp), %rax
	subl	108(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB6_47
# BB#46:                                # %cond.true.98
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	108(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB6_48
.LBB6_47:                               # %cond.false.102
	movq	-8(%rbp), %rax
	movl	124(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB6_48:                               # %cond.end.104
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB6_49:                               # %cond.end.106
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
.LBB6_50:                               # %if.end.108
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jne	.LBB6_52
# BB#51:                                # %lor.lhs.false.111
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	124(%rcx), %eax
	je	.LBB6_53
.LBB6_52:                               # %if.then.114
	xorl	%edx, %edx
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 124(%rcx)
	movq	-8(%rbp), %rcx
	movl	gimp_offset_area_signals(%rip), %esi
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %r8d
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB6_53:                               # %if.end.117
	movq	-8(%rbp), %rdi
	callq	gimp_offset_area_resize
.LBB6_54:                               # %if.end.118
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_offset_area_set_size, .Lfunc_end6-gimp_offset_area_set_size
	.cfi_endproc

	.globl	gimp_offset_area_set_offsets
	.align	16, 0x90
	.type	gimp_offset_area_set_offsets,@function
gimp_offset_area_set_offsets:           # @gimp_offset_area_set_offsets
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_offset_area_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_offset_area_set_offsets(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_45
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB7_14
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movl	124(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB7_45
.LBB7_14:                               # %if.then.15
	movq	-8(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	112(%rax), %ecx
	jg	.LBB7_22
# BB#15:                                # %if.then.17
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	112(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	104(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB7_17
# BB#16:                                # %cond.true
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	104(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB7_21
.LBB7_17:                               # %cond.false
	cmpl	$0, -12(%rbp)
	jge	.LBB7_19
# BB#18:                                # %cond.true.25
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB7_20
.LBB7_19:                               # %cond.false.26
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB7_20:                               # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB7_21:                               # %cond.end.27
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 120(%rcx)
	jmp	.LBB7_29
.LBB7_22:                               # %if.else.30
	cmpl	$0, -12(%rbp)
	jle	.LBB7_24
# BB#23:                                # %cond.true.32
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB7_28
.LBB7_24:                               # %cond.false.33
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	112(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	104(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_26
# BB#25:                                # %cond.true.38
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	104(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB7_27
.LBB7_26:                               # %cond.false.42
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB7_27:                               # %cond.end.43
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB7_28:                               # %cond.end.45
	movl	-52(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 120(%rcx)
.LBB7_29:                               # %if.end.48
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	116(%rax), %ecx
	jg	.LBB7_37
# BB#30:                                # %if.then.50
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	116(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	108(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB7_32
# BB#31:                                # %cond.true.55
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	108(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_36
.LBB7_32:                               # %cond.false.59
	cmpl	$0, -16(%rbp)
	jge	.LBB7_34
# BB#33:                                # %cond.true.61
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB7_35
.LBB7_34:                               # %cond.false.62
	movl	-16(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB7_35:                               # %cond.end.63
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_36:                               # %cond.end.65
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 124(%rcx)
	jmp	.LBB7_44
.LBB7_37:                               # %if.else.68
	cmpl	$0, -16(%rbp)
	jle	.LBB7_39
# BB#38:                                # %cond.true.70
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB7_43
.LBB7_39:                               # %cond.false.71
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	116(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	108(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_41
# BB#40:                                # %cond.true.76
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	108(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB7_42
.LBB7_41:                               # %cond.false.80
	movl	-16(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB7_42:                               # %cond.end.81
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB7_43:                               # %cond.end.83
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 124(%rcx)
.LBB7_44:                               # %if.end.86
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB7_45:                               # %if.end.89
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_offset_area_set_offsets, .Lfunc_end7-gimp_offset_area_set_offsets
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_offset_area_class_init,@function
gimp_offset_area_class_init:            # @gimp_offset_area_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.8(%rip), %rdi
	movl	$1, %edx
	movl	$752, %ecx              # imm = 0x2F0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	_gimp_widgets_marshal_VOID__INT_INT@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movl	$24, %r11d
	movl	%r11d, %ebx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$24, 24(%rsp)
	movq	$24, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	gimp_offset_area_expose_event(%rip), %rsi
	leaq	gimp_offset_area_event(%rip), %rdi
	leaq	gimp_offset_area_realize(%rip), %r8
	leaq	gimp_offset_area_size_allocate(%rip), %r9
	movl	%eax, gimp_offset_area_signals(%rip)
	movq	-32(%rbp), %r10
	movq	%r9, 248(%r10)
	movq	-32(%rbp), %r9
	movq	%r8, 224(%r9)
	movq	-32(%rbp), %r8
	movq	%rdi, 336(%r8)
	movq	-32(%rbp), %rdi
	movq	%rsi, 392(%rdi)
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_offset_area_class_init, .Lfunc_end8-gimp_offset_area_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_offset_area_size_allocate,@function
gimp_offset_area_size_allocate:         # @gimp_offset_area_size_allocate
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_offset_area_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	gimp_offset_area_parent_class(%rip), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	112(%rax), %ecx
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jg	.LBB9_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	shll	$1, %ecx
	movq	-24(%rbp), %rax
	subl	112(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB9_3:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 128(%rcx)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	12(%rcx), %xmm0
	movq	-24(%rbp), %rcx
	movl	108(%rcx), %eax
	movq	-24(%rbp), %rcx
	cmpl	116(%rcx), %eax
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jg	.LBB9_5
# BB#4:                                 # %cond.true.14
	movq	-24(%rbp), %rax
	movl	116(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.16
	movq	-24(%rbp), %rax
	movl	108(%rax), %ecx
	shll	$1, %ecx
	movq	-24(%rbp), %rax
	subl	116(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB9_6:                                # %cond.end.21
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$80, %ecx
	movl	%ecx, %esi
	cvtsi2sdl	%eax, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rdx
	movsd	%xmm1, 136(%rdx)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_20
# BB#7:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	104(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$1, -44(%rbp)
	jle	.LBB9_9
# BB#8:                                 # %cond.true.34
	movl	-44(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false.35
	movl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_10:                               # %cond.end.36
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rcx
	movsd	136(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	cvtsi2sdl	108(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	cmpl	$1, -48(%rbp)
	jle	.LBB9_12
# BB#11:                                # %cond.true.45
	movl	-48(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false.46
	movl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_13
.LBB9_13:                               # %cond.end.47
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB9_17
# BB#14:                                # %land.lhs.true
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_width@PLT
	movl	-104(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_16
# BB#15:                                # %lor.lhs.false
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_height@PLT
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB9_17
.LBB9_16:                               # %if.then.58
	movq	$0, -40(%rbp)
.LBB9_17:                               # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB9_19
# BB#18:                                # %if.then.60
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	gdk_pixbuf_scale_simple@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	g_object_unref@GOTPCREL(%rip), %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data_full@PLT
.LBB9_19:                               # %if.end.63
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.64
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_offset_area_size_allocate, .Lfunc_end9-gimp_offset_area_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_offset_area_realize,@function
gimp_offset_area_realize:               # @gimp_offset_area_realize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	gimp_offset_area_parent_class(%rip), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	224(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movl	$52, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor@PLT
	movq	-16(%rbp), %rdi
	callq	gdk_cursor_unref@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_offset_area_realize, .Lfunc_end10-gimp_offset_area_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_offset_area_event,@function
gimp_offset_area_event:                 # @gimp_offset_area_event
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_offset_area_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 104(%rax)
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$0, 108(%rax)
	jne	.LBB11_3
.LBB11_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_16
.LBB11_3:                               # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$3, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB11_7
	jmp	.LBB11_17
.LBB11_17:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB11_4
	jmp	.LBB11_18
.LBB11_18:                              # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB11_11
	jmp	.LBB11_14
.LBB11_4:                               # %sw.bb
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB11_6
# BB#5:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add@PLT
	movq	-32(%rbp), %rdi
	movl	120(%rdi), %eax
	movl	%eax, gimp_offset_area_event.orig_offset_x(%rip)
	movq	-32(%rbp), %rdi
	movl	124(%rdi), %eax
	movl	%eax, gimp_offset_area_event.orig_offset_y(%rip)
	movq	-24(%rbp), %rdi
	cvttsd2si	24(%rdi), %eax
	movl	%eax, gimp_offset_area_event.start_x(%rip)
	movq	-24(%rbp), %rdi
	cvttsd2si	32(%rdi), %eax
	movl	%eax, gimp_offset_area_event.start_y(%rip)
.LBB11_6:                               # %if.end.11
	jmp	.LBB11_15
.LBB11_7:                               # %sw.bb.12
	cvtsi2sdl	gimp_offset_area_event.orig_offset_x(%rip), %xmm0
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	gimp_offset_area_event.start_x(%rip), %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	divsd	128(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%rbp)
	cvtsi2sdl	gimp_offset_area_event.orig_offset_y(%rip), %xmm0
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	gimp_offset_area_event.start_y(%rip), %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	divsd	136(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	120(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB11_9
# BB#8:                                 # %lor.lhs.false.28
	movq	-32(%rbp), %rax
	movl	124(%rax), %ecx
	cmpl	-40(%rbp), %ecx
	je	.LBB11_10
.LBB11_9:                               # %if.then.32
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_offset_area_set_offsets@PLT
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movl	gimp_offset_area_signals(%rip), %esi
	movq	-32(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %r8d
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB11_10:                              # %if.end.35
	jmp	.LBB11_15
.LBB11_11:                              # %sw.bb.36
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB11_13
# BB#12:                                # %if.then.41
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movl	$0, gimp_offset_area_event.start_y(%rip)
	movl	$0, gimp_offset_area_event.start_x(%rip)
.LBB11_13:                              # %if.end.42
	jmp	.LBB11_15
.LBB11_14:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB11_16
.LBB11_15:                              # %sw.epilog
	movl	$1, -4(%rbp)
.LBB11_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_offset_area_event, .Lfunc_end11-gimp_offset_area_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4602678819172646912     # double 0.5
.LCPI12_2:
	.quad	4611686018427387904     # double 2
.LCPI12_3:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI12_4:
	.quad	4603579539098121011     # double 0.59999999999999998
	.text
	.align	16, 0x90
	.type	gimp_offset_area_expose_event,@function
gimp_offset_area_expose_event:          # @gimp_offset_area_expose_event
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
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp41:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_offset_area_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_clip@PLT
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-32(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	112(%rax), %ecx
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jg	.LBB12_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	104(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	112(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB12_3:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %rcx
	movsd	136(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	108(%rcx), %eax
	movq	-32(%rbp), %rcx
	cmpl	116(%rcx), %eax
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jg	.LBB12_5
# BB#4:                                 # %cond.true.12
	movq	-32(%rbp), %rax
	movl	124(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false.13
	movq	-32(%rbp), %rax
	movl	124(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	108(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	116(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB12_6:                               # %cond.end.19
	movl	-140(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -96(%rbp)
	movq	-32(%rbp), %rcx
	movsd	128(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	cvtsi2sdl	104(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	cmpl	$1, -84(%rbp)
	jle	.LBB12_8
# BB#7:                                 # %cond.true.31
	movl	-84(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %cond.false.32
	movl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB12_9
.LBB12_9:                               # %cond.end.33
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rcx
	movsd	136(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	cvtsi2sdl	108(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	cmpl	$1, -88(%rbp)
	jle	.LBB12_11
# BB#10:                                # %cond.true.42
	movl	-88(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_11:                              # %cond.false.43
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_12:                              # %cond.end.44
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB12_14
# BB#13:                                # %if.then
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	cvtsi2sdl	-92(%rbp), %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	callq	gdk_cairo_set_source_pixbuf@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_paint@PLT
	movsd	.LCPI12_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	cvtsi2sdl	-92(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-96(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movl	-84(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-88(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_rectangle@PLT
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	addq	$504, %rsi              # imm = 0x1F8
	callq	gdk_cairo_set_source_color@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_stroke@PLT
	jmp	.LBB12_15
.LBB12_14:                              # %if.else
	xorl	%edx, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %r9
	movl	-92(%rbp), %eax
	movl	-96(%rbp), %r10d
	movl	-84(%rbp), %r11d
	movl	-88(%rbp), %ebx
	movq	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%ebx, 32(%rsp)
	callq	gtk_paint_shadow@PLT
.LBB12_15:                              # %if.end
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	112(%rax), %ecx
	jg	.LBB12_17
# BB#16:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	116(%rax), %ecx
	jle	.LBB12_45
.LBB12_17:                              # %if.then.66
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	112(%rax), %ecx
	jle	.LBB12_19
# BB#18:                                # %if.then.71
	movq	-32(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	112(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -92(%rbp)
	movq	-32(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	112(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -84(%rbp)
	jmp	.LBB12_20
.LBB12_19:                              # %if.else.84
	movl	$-1, -92(%rbp)
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -84(%rbp)
.LBB12_20:                              # %if.end.87
	movq	-32(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	116(%rax), %ecx
	jle	.LBB12_22
# BB#21:                                # %if.then.92
	movq	-32(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	116(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -96(%rbp)
	movq	-32(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	116(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.105
	movl	$-1, -96(%rbp)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -88(%rbp)
.LBB12_23:                              # %if.end.108
	cmpl	$1, -84(%rbp)
	jle	.LBB12_25
# BB#24:                                # %cond.true.111
	movl	-84(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB12_26
.LBB12_25:                              # %cond.false.112
	movl	$1, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB12_26
.LBB12_26:                              # %cond.end.113
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	cmpl	$1, -88(%rbp)
	jle	.LBB12_28
# BB#27:                                # %cond.true.117
	movl	-88(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB12_29
.LBB12_28:                              # %cond.false.118
	movl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB12_29
.LBB12_29:                              # %cond.end.119
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB12_31
# BB#30:                                # %cond.true.123
	movl	-84(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB12_32
.LBB12_31:                              # %cond.false.124
	movl	-88(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB12_32:                              # %cond.end.125
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cmpl	%eax, %ecx
	jge	.LBB12_34
# BB#33:                                # %cond.true.129
	movl	$3, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB12_38
.LBB12_34:                              # %cond.false.130
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB12_36
# BB#35:                                # %cond.true.133
	movl	-84(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB12_37
.LBB12_36:                              # %cond.false.134
	movl	-88(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB12_37:                              # %cond.end.135
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB12_38:                              # %cond.end.137
	movl	-176(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rdi
	cvtsi2sdl	-92(%rbp), %xmm1
	cvtsi2sdl	-100(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-96(%rbp), %xmm2
	cvtsi2sdl	-100(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movl	-84(%rbp), %eax
	subl	-100(%rbp), %eax
	cmpl	$1, %eax
	movsd	%xmm2, -192(%rbp)       # 8-byte Spill
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	jle	.LBB12_40
# BB#39:                                # %cond.true.149
	movl	-84(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB12_41
.LBB12_40:                              # %cond.false.151
	movl	$1, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB12_41
.LBB12_41:                              # %cond.end.152
	movl	-212(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm2
	movl	-88(%rbp), %eax
	subl	-100(%rbp), %eax
	cmpl	$1, %eax
	movsd	%xmm2, -224(%rbp)       # 8-byte Spill
	jle	.LBB12_43
# BB#42:                                # %cond.true.158
	movl	-88(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB12_44
.LBB12_43:                              # %cond.false.160
	movl	$1, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB12_44
.LBB12_44:                              # %cond.end.161
	movl	-228(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm3
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_rectangle@PLT
	movq	-56(%rbp), %rdi
	cvtsi2sdl	-100(%rbp), %xmm0
	callq	cairo_set_line_width@PLT
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI12_4(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-240(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_stroke_preserve@PLT
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_3(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_stroke@PLT
.LBB12_45:                              # %if.end.165
	movq	-56(%rbp), %rdi
	callq	cairo_destroy@PLT
	xorl	%eax, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_offset_area_expose_event, .Lfunc_end12-gimp_offset_area_expose_event
	.cfi_endproc

	.type	gimp_offset_area_get_type.g_define_type_id__volatile,@object # @gimp_offset_area_get_type.g_define_type_id__volatile
	.local	gimp_offset_area_get_type.g_define_type_id__volatile
	.comm	gimp_offset_area_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOffsetArea"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_offset_area_new,@object # @__func__.gimp_offset_area_new
.L__func__.gimp_offset_area_new:
	.asciz	"gimp_offset_area_new"
	.size	.L__func__.gimp_offset_area_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"orig_width > 0"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"orig_height > 0"
	.size	.L.str.3, 16

	.type	.L__func__.gimp_offset_area_set_pixbuf,@object # @__func__.gimp_offset_area_set_pixbuf
.L__func__.gimp_offset_area_set_pixbuf:
	.asciz	"gimp_offset_area_set_pixbuf"
	.size	.L__func__.gimp_offset_area_set_pixbuf, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_OFFSET_AREA (area)"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pixbuf"
	.size	.L.str.6, 7

	.type	.L__func__.gimp_offset_area_set_size,@object # @__func__.gimp_offset_area_set_size
.L__func__.gimp_offset_area_set_size:
	.asciz	"gimp_offset_area_set_size"
	.size	.L__func__.gimp_offset_area_set_size, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width > 0 && height > 0"
	.size	.L.str.7, 24

	.type	gimp_offset_area_signals,@object # @gimp_offset_area_signals
	.local	gimp_offset_area_signals
	.comm	gimp_offset_area_signals,4,4
	.type	.L__func__.gimp_offset_area_set_offsets,@object # @__func__.gimp_offset_area_set_offsets
.L__func__.gimp_offset_area_set_offsets:
	.asciz	"gimp_offset_area_set_offsets"
	.size	.L__func__.gimp_offset_area_set_offsets, 29

	.type	gimp_offset_area_parent_class,@object # @gimp_offset_area_parent_class
	.local	gimp_offset_area_parent_class
	.comm	gimp_offset_area_parent_class,8,8
	.type	GimpOffsetArea_private_offset,@object # @GimpOffsetArea_private_offset
	.local	GimpOffsetArea_private_offset
	.comm	GimpOffsetArea_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"offsets-changed"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pixbuf-copy"
	.size	.L.str.9, 12

	.type	gimp_offset_area_event.orig_offset_x,@object # @gimp_offset_area_event.orig_offset_x
	.local	gimp_offset_area_event.orig_offset_x
	.comm	gimp_offset_area_event.orig_offset_x,4,4
	.type	gimp_offset_area_event.orig_offset_y,@object # @gimp_offset_area_event.orig_offset_y
	.local	gimp_offset_area_event.orig_offset_y
	.comm	gimp_offset_area_event.orig_offset_y,4,4
	.type	gimp_offset_area_event.start_x,@object # @gimp_offset_area_event.start_x
	.local	gimp_offset_area_event.start_x
	.comm	gimp_offset_area_event.start_x,4,4
	.type	gimp_offset_area_event.start_y,@object # @gimp_offset_area_event.start_y
	.local	gimp_offset_area_event.start_y
	.comm	gimp_offset_area_event.start_y,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
