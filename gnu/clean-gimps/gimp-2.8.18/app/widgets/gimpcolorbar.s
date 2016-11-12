	.text
	.file	"gimpcolorbar.bc"
	.globl	gimp_color_bar_get_type
	.align	16, 0x90
	.type	gimp_color_bar_get_type,@function
gimp_color_bar_get_type:                # @gimp_color_bar_get_type
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
	movq	gimp_color_bar_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_bar_get_type.g_define_type_id__volatile, %rax
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
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_color_bar_class_intern_init, %rdi
	movl	$896, %r8d              # imm = 0x380
	movabsq	$gimp_color_bar_init, %rcx
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
	movabsq	$gimp_color_bar_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_bar_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_bar_get_type, .Lfunc_end0-gimp_color_bar_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_bar_class_intern_init,@function
gimp_color_bar_class_intern_init:       # @gimp_color_bar_class_intern_init
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
	movq	%rax, gimp_color_bar_parent_class
	cmpl	$0, GimpColorBar_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorBar_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_bar_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_bar_class_intern_init, .Lfunc_end1-gimp_color_bar_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_bar_init,@function
gimp_color_bar_init:                    # @gimp_color_bar_init
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_event_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_event_box_set_visible_window
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_bar_init, .Lfunc_end2-gimp_color_bar_init
	.cfi_endproc

	.globl	gimp_color_bar_new
	.align	16, 0x90
	.type	gimp_color_bar_new,@function
gimp_color_bar_new:                     # @gimp_color_bar_new
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
	callq	gimp_color_bar_get_type
	movabsq	$.L.str.1, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	-4(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_bar_new, .Lfunc_end3-gimp_color_bar_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_color_bar_set_color
	.align	16, 0x90
	.type	gimp_color_bar_set_color,@function
gimp_color_bar_set_color:               # @gimp_color_bar_set_color
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
	movq	%rax, -40(%rbp)
	callq	gimp_color_bar_get_type
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_color_bar_set_color, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_22
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_color_bar_set_color, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_22
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$124, %rax
	movq	%rax, -24(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB4_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, 2(%rax)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB4_18
.LBB4_21:                               # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB4_22:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_bar_set_color, .Lfunc_end4-gimp_color_bar_set_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_color_bar_set_channel
	.align	16, 0x90
	.type	gimp_color_bar_set_channel,@function
gimp_color_bar_set_channel:             # @gimp_color_bar_set_channel
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	.Lgimp_color_bar_set_channel.color, %rdi
	movq	%rdi, -48(%rbp)
	movq	.Lgimp_color_bar_set_channel.color+8, %rdi
	movq	%rdi, -40(%rbp)
	movq	.Lgimp_color_bar_set_channel.color+16, %rdi
	movq	%rdi, -32(%rbp)
	movq	.Lgimp_color_bar_set_channel.color+24, %rdi
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_bar_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_color_bar_set_channel, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	ja	.LBB5_17
# BB#19:                                # %do.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_13:                               # %sw.bb
	leaq	-48(%rbp), %rdi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
	jmp	.LBB5_17
.LBB5_14:                               # %sw.bb.11
	leaq	-48(%rbp), %rdi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
	jmp	.LBB5_17
.LBB5_15:                               # %sw.bb.12
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
	jmp	.LBB5_17
.LBB5_16:                               # %sw.bb.13
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_rgb_set
.LBB5_17:                               # %sw.epilog
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_bar_set_color
.LBB5_18:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_bar_set_channel, .Lfunc_end5-gimp_color_bar_set_channel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_13
	.quad	.LBB5_14
	.quad	.LBB5_15
	.quad	.LBB5_16
	.quad	.LBB5_13
	.quad	.LBB5_13

	.text
	.globl	gimp_color_bar_set_buffers
	.align	16, 0x90
	.type	gimp_color_bar_set_buffers,@function
gimp_color_bar_set_buffers:             # @gimp_color_bar_set_buffers
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_bar_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_color_bar_set_buffers, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_32
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_color_bar_set_buffers, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_32
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.19
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.20
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_color_bar_set_buffers, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_32
.LBB6_21:                               # %if.end.21
	jmp	.LBB6_22
.LBB6_22:                               # %do.end.22
	jmp	.LBB6_23
.LBB6_23:                               # %do.body.23
	cmpq	$0, -32(%rbp)
	je	.LBB6_25
# BB#24:                                # %if.then.25
	jmp	.LBB6_26
.LBB6_25:                               # %if.else.26
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_color_bar_set_buffers, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_32
.LBB6_26:                               # %if.end.27
	jmp	.LBB6_27
.LBB6_27:                               # %do.end.28
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rax
	addq	$124, %rax
	movq	%rax, -40(%rbp)
.LBB6_28:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB6_31
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB6_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-40(%rbp), %rax
	movb	%dl, 1(%rax)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-40(%rbp), %rax
	movb	%dl, 2(%rax)
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB6_28 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB6_28
.LBB6_31:                               # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB6_32:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_bar_set_buffers, .Lfunc_end6-gimp_color_bar_set_buffers
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_bar_class_init,@function
gimp_color_bar_class_init:              # @gimp_color_bar_class_init
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_color_bar_expose, %rsi
	movabsq	$gimp_color_bar_get_property, %rdi
	movabsq	$gimp_color_bar_set_property, %rcx
	movq	%rax, -24(%rbp)
	movq	.Lgimp_color_bar_class_init.white, %rax
	movq	%rax, -56(%rbp)
	movq	.Lgimp_color_bar_class_init.white+8, %rax
	movq	%rax, -48(%rbp)
	movq	.Lgimp_color_bar_class_init.white+16, %rax
	movq	%rax, -40(%rbp)
	movq	.Lgimp_color_bar_class_init.white+24, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 392(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_orientation_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r8d, %r8d
	movl	$235, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	leaq	-56(%rbp), %r8
	movl	$230, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb
	movl	$2, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$226, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$3, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_bar_class_init, .Lfunc_end7-gimp_color_bar_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_bar_set_property,@function
gimp_color_bar_set_property:            # @gimp_color_bar_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_bar_get_type
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
	jmp	.LBB8_8
.LBB8_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_9
.LBB8_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_4
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
	jmp	.LBB8_7
.LBB8_2:                                # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boxed
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_bar_set_color
	jmp	.LBB8_7
.LBB8_3:                                # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_bar_set_channel
	jmp	.LBB8_7
.LBB8_4:                                # %sw.default
	jmp	.LBB8_5
.LBB8_5:                                # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$129, %edx
	movabsq	$.L.str.12, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_bar_set_property, .Lfunc_end8-gimp_color_bar_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_bar_get_property,@function
gimp_color_bar_get_property:            # @gimp_color_bar_get_property
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
	callq	gimp_color_bar_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$149, %edx
	movabsq	$.L.str.12, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_bar_get_property, .Lfunc_end9-gimp_color_bar_get_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI10_1:
	.quad	4607182418800017408     # double 1
.LCPI10_2:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gimp_color_bar_expose,@function
gimp_color_bar_expose:                  # @gimp_color_bar_expose
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_bar_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -96(%rbp)
	movl	%eax, -92(%rbp)
	movl	-48(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movl	-44(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -104(%rbp)
	cmpl	$1, -100(%rbp)
	jl	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -104(%rbp)
	jge	.LBB10_3
.LBB10_2:                               # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB10_13
.LBB10_3:                               # %if.end
	movq	-40(%rbp), %rdi
	movl	-56(%rbp), %eax
	addl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-52(%rbp), %eax
	addl	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_translate
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-100(%rbp), %xmm2
	cvtsi2sdl	-104(%rbp), %xmm3
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	movl	$1, %eax
	movl	$256, %esi              # imm = 0x100
	movl	%eax, %edi
	movl	%eax, %edx
	callq	cairo_image_surface_create
	movq	%rax, -64(%rbp)
	movl	$0, -108(%rbp)
	movq	-32(%rbp), %rax
	addq	$124, %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -88(%rbp)
.LBB10_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -108(%rbp)        # imm = 0x100
	jge	.LBB10_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	jmp	.LBB10_6
.LBB10_6:                               # %do.body
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-80(%rbp), %rax
	movb	2(%rax), %cl
	movq	-88(%rbp), %rax
	movb	%cl, (%rax)
	movq	-80(%rbp), %rax
	movb	1(%rax), %cl
	movq	-88(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-80(%rbp), %rax
	movb	(%rax), %cl
	movq	-88(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#7:                                 # %do.end
                                        #   in Loop: Header=BB10_4 Depth=1
	jmp	.LBB10_8
.LBB10_8:                               # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movq	-80(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -80(%rbp)
	movq	-88(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -88(%rbp)
	jmp	.LBB10_4
.LBB10_9:                               # %for.end
	movq	-64(%rbp), %rdi
	callq	cairo_surface_mark_dirty
	movq	-64(%rbp), %rdi
	callq	cairo_pattern_create_for_surface
	movl	$2, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	cairo_pattern_set_extend
	movq	-64(%rbp), %rdi
	callq	cairo_surface_destroy
	movq	-32(%rbp), %rax
	cmpl	$0, 120(%rax)
	jne	.LBB10_11
# BB#10:                                # %if.then.30
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-100(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	cairo_scale
	jmp	.LBB10_12
.LBB10_11:                              # %if.else
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-104(%rbp), %xmm1
	callq	cairo_translate
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-104(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	callq	cairo_scale
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	callq	cairo_rotate
.LBB10_12:                              # %if.end.35
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	cairo_set_source
	movq	-72(%rbp), %rdi
	callq	cairo_pattern_destroy
	movq	-40(%rbp), %rdi
	callq	cairo_paint
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_bar_expose, .Lfunc_end10-gimp_color_bar_expose
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.type	gimp_color_bar_get_type.g_define_type_id__volatile,@object # @gimp_color_bar_get_type.g_define_type_id__volatile
	.local	gimp_color_bar_get_type.g_define_type_id__volatile
	.comm	gimp_color_bar_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorBar"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"orientation"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_color_bar_set_color,@object # @__func__.gimp_color_bar_set_color
.L__func__.gimp_color_bar_set_color:
	.asciz	"gimp_color_bar_set_color"
	.size	.L__func__.gimp_color_bar_set_color, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_COLOR_BAR (bar)"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color != NULL"
	.size	.L.str.4, 14

	.type	.Lgimp_color_bar_set_channel.color,@object # @gimp_color_bar_set_channel.color
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_color_bar_set_channel.color:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	.Lgimp_color_bar_set_channel.color, 32

	.type	.L__func__.gimp_color_bar_set_channel,@object # @__func__.gimp_color_bar_set_channel
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_color_bar_set_channel:
	.asciz	"gimp_color_bar_set_channel"
	.size	.L__func__.gimp_color_bar_set_channel, 27

	.type	.L__func__.gimp_color_bar_set_buffers,@object # @__func__.gimp_color_bar_set_buffers
.L__func__.gimp_color_bar_set_buffers:
	.asciz	"gimp_color_bar_set_buffers"
	.size	.L__func__.gimp_color_bar_set_buffers, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"red != NULL"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"green != NULL"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"blue != NULL"
	.size	.L.str.7, 13

	.type	gimp_color_bar_parent_class,@object # @gimp_color_bar_parent_class
	.local	gimp_color_bar_parent_class
	.comm	gimp_color_bar_parent_class,8,8
	.type	GimpColorBar_private_offset,@object # @GimpColorBar_private_offset
	.local	GimpColorBar_private_offset
	.comm	GimpColorBar_private_offset,4,4
	.type	.Lgimp_color_bar_class_init.white,@object # @gimp_color_bar_class_init.white
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_color_bar_class_init.white:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	.Lgimp_color_bar_class_init.white, 32

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"color"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"histogram-channel"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpcolorbar.c"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
