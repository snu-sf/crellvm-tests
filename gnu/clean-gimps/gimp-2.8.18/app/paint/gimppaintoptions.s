	.text
	.file	"gimppaintoptions.bc"
	.globl	gimp_paint_options_get_type
	.align	16, 0x90
	.type	gimp_paint_options_get_type,@function
gimp_paint_options_get_type:            # @gimp_paint_options_get_type
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
	movq	gimp_paint_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_paint_options_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_tool_options_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_paint_options_class_intern_init, %rdi
	movl	$472, %r8d              # imm = 0x1D8
	movabsq	$gimp_paint_options_init, %rcx
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
	movabsq	$gimp_paint_options_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_paint_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paint_options_get_type, .Lfunc_end0-gimp_paint_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_options_class_intern_init,@function
gimp_paint_options_class_intern_init:   # @gimp_paint_options_class_intern_init
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
	movq	%rax, gimp_paint_options_parent_class
	cmpl	$0, GimpPaintOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaintOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_paint_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paint_options_class_intern_init, .Lfunc_end1-gimp_paint_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_options_init,@function
gimp_paint_options_init:                # @gimp_paint_options_init
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
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 388(%rdi)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movl	$24, %edx
	movl	%edx, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, 400(%rcx)
	callq	g_slice_alloc0
	movl	$8, %edx
	movl	%edx, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, 416(%rcx)
	callq	g_slice_alloc0
	movl	$16, %edx
	movl	%edx, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, 424(%rcx)
	callq	g_slice_alloc0
	movq	-8(%rbp), %rcx
	movq	%rax, 432(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_paint_options_init, .Lfunc_end2-gimp_paint_options_init
	.cfi_endproc

	.globl	gimp_paint_options_new
	.align	16, 0x90
	.type	gimp_paint_options_new,@function
gimp_paint_options_new:                 # @gimp_paint_options_new
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_paint_info_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	%rax, %r8
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paint_options_new, .Lfunc_end3-gimp_paint_options_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4616189618054758400    # double -1
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4636737291354636288     # double 100
.LCPI4_3:
	.quad	4607182417899297483     # double 0.99999990000000005
	.text
	.globl	gimp_paint_options_get_fade
	.align	16, 0x90
	.type	gimp_paint_options_get_fade,@function
gimp_paint_options_get_fade:            # @gimp_paint_options_get_fade
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
	subq	$176, %rsp
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_get_fade, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB4_47
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_get_fade, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB4_47
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	16(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	je	.LBB4_25
	jmp	.LBB4_48
.LBB4_48:                               # %do.end.38
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB4_26
	jmp	.LBB4_30
.LBB4_25:                               # %sw.bb
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB4_34
.LBB4_26:                               # %sw.bb.40
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB4_28
# BB#27:                                # %cond.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB4_29:                               # %cond.end
	movl	-152(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movq	-40(%rbp), %rcx
	mulsd	8(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	jmp	.LBB4_34
.LBB4_30:                               # %sw.default
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-40(%rbp), %rdx
	movl	16(%rdx), %edi
	callq	gimp_unit_get_factor
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	-136(%rbp), %xmm1
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jbe	.LBB4_32
# BB#31:                                # %cond.true.54
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB4_33
.LBB4_32:                               # %cond.false.55
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB4_33:                               # %cond.end.56
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	-64(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB4_34:                               # %sw.epilog
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_36
# BB#35:                                # %if.then.62
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB4_37
.LBB4_36:                               # %if.else.64
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB4_37:                               # %if.end.65
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB4_40
# BB#38:                                # %land.lhs.true.68
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_40
# BB#39:                                # %if.then.71
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB4_40:                               # %if.end.72
	cvttsd2si	-72(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB4_43
# BB#41:                                # %land.lhs.true.75
	movq	-40(%rbp), %rax
	cmpl	$1, 20(%rax)
	je	.LBB4_43
# BB#42:                                # %if.then.79
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	-72(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB4_44
.LBB4_43:                               # %if.else.83
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-72(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB4_44:                               # %if.end.87
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB4_46
# BB#45:                                # %if.then.89
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB4_46:                               # %if.end.91
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB4_47:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_paint_options_get_fade, .Lfunc_end4-gimp_paint_options_get_fade
	.cfi_endproc

	.globl	gimp_paint_options_get_jitter
	.align	16, 0x90
	.type	gimp_paint_options_get_jitter,@function
gimp_paint_options_get_jitter:          # @gimp_paint_options_get_jitter
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_get_jitter, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.end.14
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB5_15:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_paint_options_get_jitter, .Lfunc_end5-gimp_paint_options_get_jitter
	.cfi_endproc

	.globl	gimp_paint_options_get_gradient_color
	.align	16, 0x90
	.type	gimp_paint_options_get_gradient_color,@function
gimp_paint_options_get_gradient_color:  # @gimp_paint_options_get_gradient_color
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	%rdx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_get_gradient_color, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_32
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_get_gradient_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_32
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.body.39
	cmpq	$0, -48(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.41
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_get_gradient_color, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_32
.LBB6_28:                               # %if.end.43
	jmp	.LBB6_29
.LBB6_29:                               # %do.end.44
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_gradient
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_dynamics
	movl	$3, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_dynamics_output_is_enabled
	cmpl	$0, %eax
	je	.LBB6_31
# BB#30:                                # %if.then.55
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rsi
	movl	(%rsi), %ecx
	movq	-48(%rbp), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gradient_get_color_at
	movl	$1, -4(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_32
.LBB6_31:                               # %if.end.59
	movl	$0, -4(%rbp)
.LBB6_32:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_paint_options_get_gradient_color, .Lfunc_end6-gimp_paint_options_get_gradient_color
	.cfi_endproc

	.globl	gimp_paint_options_get_brush_mode
	.align	16, 0x90
	.type	gimp_paint_options_get_brush_mode,@function
gimp_paint_options_get_brush_mode:      # @gimp_paint_options_get_brush_mode
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_get_brush_mode, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 392(%rax)
	je	.LBB7_14
# BB#13:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB7_19
.LBB7_14:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_dynamics
	movl	$5, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_16
# BB#15:                                # %if.then.19
	movl	$1, -4(%rbp)
	jmp	.LBB7_19
.LBB7_16:                               # %if.end.20
	movq	-32(%rbp), %rdi
	callq	gimp_dynamics_output_is_enabled
	cmpl	$0, %eax
	je	.LBB7_18
# BB#17:                                # %if.then.23
	movl	$2, -4(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.end.24
	movl	$1, -4(%rbp)
.LBB7_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_paint_options_get_brush_mode, .Lfunc_end7-gimp_paint_options_get_brush_mode
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_paint_options_set_default_brush_size
	.align	16, 0x90
	.type	gimp_paint_options_set_default_brush_size,@function
gimp_paint_options_set_default_brush_size: # @gimp_paint_options_set_default_brush_size
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_paint_options_get_type
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
	movabsq	$.L__func__.gimp_paint_options_set_default_brush_size, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_32
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB8_21
.LBB8_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_20:                               # %if.end.32
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_23
.LBB8_22:                               # %if.then.36
	jmp	.LBB8_24
.LBB8_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_set_default_brush_size, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_32
.LBB8_24:                               # %if.end.38
	jmp	.LBB8_25
.LBB8_25:                               # %do.end.39
	cmpq	$0, -16(%rbp)
	jne	.LBB8_27
# BB#26:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_brush
	movq	%rax, -16(%rbp)
.LBB8_27:                               # %if.end.45
	cmpq	$0, -16(%rbp)
	je	.LBB8_32
# BB#28:                                # %if.then.47
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_brush_transform_size
	movq	-8(%rbp), %rdx
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	jle	.LBB8_30
# BB#29:                                # %cond.true
	movl	-68(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB8_31
.LBB8_30:                               # %cond.false
	movl	-72(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB8_31:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.10, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cvtsi2sdl	%eax, %xmm0
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movb	$1, %al
	callq	g_object_set
.LBB8_32:                               # %if.end.51
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_paint_options_set_default_brush_size, .Lfunc_end8-gimp_paint_options_set_default_brush_size
	.cfi_endproc

	.globl	gimp_paint_options_copy_brush_props
	.align	16, 0x90
	.type	gimp_paint_options_copy_brush_props,@function
gimp_paint_options_copy_brush_props:    # @gimp_paint_options_copy_brush_props
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_copy_brush_props, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_copy_brush_props, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	movabsq	$.L.str.10, %rsi
	leaq	-32(%rbp), %rdx
	movabsq	$.L.str.13, %rcx
	leaq	-40(%rbp), %r8
	movabsq	$.L.str.14, %r9
	leaq	-48(%rbp), %rax
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-16(%rbp), %r11
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_object_get
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movb	$3, %al
	callq	g_object_set
.LBB9_25:                               # %return
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_paint_options_copy_brush_props, .Lfunc_end9-gimp_paint_options_copy_brush_props
	.cfi_endproc

	.globl	gimp_paint_options_copy_dynamics_props
	.align	16, 0x90
	.type	gimp_paint_options_copy_dynamics_props,@function
gimp_paint_options_copy_dynamics_props: # @gimp_paint_options_copy_dynamics_props
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_copy_dynamics_props, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_copy_dynamics_props, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	movabsq	$.L.str.15, %rsi
	leaq	-60(%rbp), %rdx
	movabsq	$.L.str.16, %rcx
	leaq	-64(%rbp), %r8
	movabsq	$.L.str.17, %r9
	leaq	-72(%rbp), %rax
	movabsq	$.L.str.18, %rdi
	leaq	-76(%rbp), %r10
	movabsq	$.L.str.19, %r11
	leaq	-80(%rbp), %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	-48(%rbp), %r12
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r15, -144(%rbp)        # 8-byte Spill
	callq	g_object_get
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rdi
	xorl	%r14d, %r14d
	movl	%r14d, %r8d
	movq	-56(%rbp), %r10
	movl	-60(%rbp), %r14d
	movl	-64(%rbp), %r13d
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-76(%rbp), %eax
	movl	-80(%rbp), %r11d
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movl	%r13d, %r8d
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$1, %al
	callq	g_object_set
.LBB10_25:                              # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_paint_options_copy_dynamics_props, .Lfunc_end10-gimp_paint_options_copy_dynamics_props
	.cfi_endproc

	.globl	gimp_paint_options_copy_gradient_props
	.align	16, 0x90
	.type	gimp_paint_options_copy_gradient_props,@function
gimp_paint_options_copy_gradient_props: # @gimp_paint_options_copy_gradient_props
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
	movq	%rax, -32(%rbp)
	callq	gimp_paint_options_get_type
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
	movabsq	$.L__func__.gimp_paint_options_copy_gradient_props, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_25
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_options_copy_gradient_props, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_25
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	movabsq	$.L.str.20, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.20, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %r8d
	movq	%rdx, %rdi
	movl	%r8d, %edx
	movb	$0, %al
	callq	g_object_set
.LBB11_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_paint_options_copy_gradient_props, .Lfunc_end11-gimp_paint_options_copy_gradient_props
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4613937818241073152     # double 3
.LCPI12_1:
	.quad	4652007308841189376     # double 1000
.LCPI12_2:
	.quad	4632233691727265792     # double 50
.LCPI12_3:
	.quad	4674736138332667904     # double 32767
.LCPI12_4:
	.quad	4636737291354636288     # double 100
.LCPI12_5:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI12_6:
	.quad	-4582834833314545664    # double -180
.LCPI12_7:
	.quad	4640537203540230144     # double 180
.LCPI12_8:
	.quad	-4597049319638433792    # double -20
.LCPI12_9:
	.quad	4626322717216342016     # double 20
.LCPI12_10:
	.quad	4607182418800017408     # double 1
.LCPI12_11:
	.quad	4666723172467343360     # double 1.0E+4
	.text
	.align	16, 0x90
	.type	gimp_paint_options_class_init,@function
gimp_paint_options_class_init:          # @gimp_paint_options_class_init
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
	subq	$304, %rsp              # imm = 0x130
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_paint_options_get_property, %rsi
	movabsq	$gimp_paint_options_set_property, %rdi
	movabsq	$gimp_paint_options_finalize, %rcx
	movabsq	$gimp_paint_options_dispose, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_info_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movsd	.LCPI12_10, %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI12_11, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI12_9, %xmm2        # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.22, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movsd	.LCPI12_8, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_9, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$487, %ecx              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.23, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movsd	.LCPI12_6, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_7, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$487, %ecx              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.25, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_paint_application_mode_get_type
	movabsq	$.L.str.24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$5, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.27, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.29, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.30, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_5, %xmm2        # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$8, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$9, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.32, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_3, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_4, %xmm2        # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$10, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.18, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	gimp_param_spec_unit
	movl	$13, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.33, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$11, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.34, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_repeat_mode_get_type
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$12, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.20, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$14, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.35, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$15, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.36, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$12, %ecx
	movl	$64, %r8d
	movl	$24, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -172(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	g_param_spec_int
	movl	$16, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.37, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$17, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.38, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$12, %ecx
	movl	$64, %r8d
	movl	$24, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	g_param_spec_int
	movl	$18, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.39, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$19, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.40, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$12, %ecx
	movl	$64, %r8d
	movl	$24, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	g_param_spec_int
	movl	$20, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.41, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$21, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.42, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$12, %ecx
	movl	$64, %r8d
	movl	$48, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	g_param_spec_int
	movl	$22, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.44, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.43, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$23, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.46, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.45, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	$100, %r8d
	movl	$20, %r9d
	movl	$487, %r10d             # imm = 0x1E7
	movq	%rax, %rdx
	movl	$487, (%rsp)            # imm = 0x1E7
	movl	%r10d, -276(%rbp)       # 4-byte Spill
	callq	g_param_spec_int
	movl	$24, %esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.48, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.47, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_2, %xmm2        # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$25, %esi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_paint_options_class_init, .Lfunc_end12-gimp_paint_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_options_dispose,@function
gimp_paint_options_dispose:             # @gimp_paint_options_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 352(%rax)
.LBB13_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paint_options_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_paint_options_dispose, .Lfunc_end13-gimp_paint_options_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_options_finalize,@function
gimp_paint_options_finalize:            # @gimp_paint_options_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	jmp	.LBB14_3
.LBB14_3:                               # %do.body.2
	movl	$24, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	416(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end.3
	jmp	.LBB14_5
.LBB14_5:                               # %do.body.4
	movl	$8, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end.5
	jmp	.LBB14_7
.LBB14_7:                               # %do.body.6
	movl	$16, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	432(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#8:                                 # %do.end.7
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paint_options_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_paint_options_finalize, .Lfunc_end14-gimp_paint_options_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4645040803167600640     # double 360
.LCPI15_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_paint_options_set_property,@function
gimp_paint_options_set_property:        # @gimp_paint_options_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	416(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$24, %r8d
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	ja	.LBB15_26
# BB#30:                                # %entry
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 352(%rdi)
	jmp	.LBB15_29
.LBB15_2:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 360(%rdi)
	jmp	.LBB15_29
.LBB15_3:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 376(%rdi)
	jmp	.LBB15_29
.LBB15_4:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_1, %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movq	-40(%rbp), %rdi
	movsd	%xmm2, 368(%rdi)
	jmp	.LBB15_29
.LBB15_5:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 384(%rdi)
	jmp	.LBB15_29
.LBB15_6:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 392(%rdi)
	jmp	.LBB15_29
.LBB15_7:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-56(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB15_29
.LBB15_8:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-56(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB15_29
.LBB15_9:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 408(%rdi)
	jmp	.LBB15_29
.LBB15_10:                              # %sw.bb.23
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB15_29
.LBB15_11:                              # %sw.bb.25
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB15_29
.LBB15_12:                              # %sw.bb.27
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 20(%rdi)
	jmp	.LBB15_29
.LBB15_13:                              # %sw.bb.29
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 16(%rdi)
	jmp	.LBB15_29
.LBB15_14:                              # %sw.bb.31
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-64(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB15_29
.LBB15_15:                              # %sw.bb.33
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 440(%rdi)
	jmp	.LBB15_29
.LBB15_16:                              # %sw.bb.35
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 444(%rdi)
	jmp	.LBB15_29
.LBB15_17:                              # %sw.bb.37
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 448(%rdi)
	jmp	.LBB15_29
.LBB15_18:                              # %sw.bb.39
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 452(%rdi)
	jmp	.LBB15_29
.LBB15_19:                              # %sw.bb.41
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 456(%rdi)
	jmp	.LBB15_29
.LBB15_20:                              # %sw.bb.43
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 460(%rdi)
	jmp	.LBB15_29
.LBB15_21:                              # %sw.bb.45
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 464(%rdi)
	jmp	.LBB15_29
.LBB15_22:                              # %sw.bb.47
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 468(%rdi)
	jmp	.LBB15_29
.LBB15_23:                              # %sw.bb.49
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-72(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB15_29
.LBB15_24:                              # %sw.bb.51
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-72(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB15_29
.LBB15_25:                              # %sw.bb.53
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-72(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB15_29
.LBB15_26:                              # %sw.default
	jmp	.LBB15_27
.LBB15_27:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %r8d
	movq	-88(%rbp), %rax
	movq	8(%rax), %r9
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movl	$426, %edx              # imm = 0x1AA
	movabsq	$.L.str.51, %rcx
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#28:                                # %do.end
	jmp	.LBB15_29
.LBB15_29:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_paint_options_set_property, .Lfunc_end15-gimp_paint_options_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_1
	.quad	.LBB15_2
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_7
	.quad	.LBB15_8
	.quad	.LBB15_9
	.quad	.LBB15_10
	.quad	.LBB15_11
	.quad	.LBB15_12
	.quad	.LBB15_13
	.quad	.LBB15_14
	.quad	.LBB15_15
	.quad	.LBB15_16
	.quad	.LBB15_17
	.quad	.LBB15_18
	.quad	.LBB15_19
	.quad	.LBB15_20
	.quad	.LBB15_21
	.quad	.LBB15_22
	.quad	.LBB15_23
	.quad	.LBB15_24
	.quad	.LBB15_25

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4645040803167600640     # double 360
.LCPI16_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_paint_options_get_property,@function
gimp_paint_options_get_property:        # @gimp_paint_options_get_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	416(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$24, %r8d
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	ja	.LBB16_26
# BB#30:                                # %entry
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB16_29
.LBB16_2:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	360(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_29
.LBB16_3:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_29
.LBB16_4:                               # %sw.bb.8
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	mulsd	368(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	g_value_set_double
	jmp	.LBB16_29
.LBB16_5:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	384(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_29
.LBB16_6:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	392(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_29
.LBB16_7:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_29
.LBB16_8:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_29
.LBB16_9:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	408(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_29
.LBB16_10:                              # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_29
.LBB16_11:                              # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_29
.LBB16_12:                              # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	20(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_29
.LBB16_13:                              # %sw.bb.18
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_29
.LBB16_14:                              # %sw.bb.19
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_29
.LBB16_15:                              # %sw.bb.20
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	440(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_29
.LBB16_16:                              # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	444(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_29
.LBB16_17:                              # %sw.bb.22
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	448(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_29
.LBB16_18:                              # %sw.bb.23
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	452(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_29
.LBB16_19:                              # %sw.bb.24
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	456(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_29
.LBB16_20:                              # %sw.bb.25
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	460(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_29
.LBB16_21:                              # %sw.bb.26
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	464(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB16_29
.LBB16_22:                              # %sw.bb.27
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	468(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_29
.LBB16_23:                              # %sw.bb.28
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB16_29
.LBB16_24:                              # %sw.bb.29
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB16_29
.LBB16_25:                              # %sw.bb.30
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB16_29
.LBB16_26:                              # %sw.default
	jmp	.LBB16_27
.LBB16_27:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %r8d
	movq	-88(%rbp), %rax
	movq	8(%rax), %r9
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movl	$546, %edx              # imm = 0x222
	movabsq	$.L.str.51, %rcx
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#28:                                # %do.end
	jmp	.LBB16_29
.LBB16_29:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_paint_options_get_property, .Lfunc_end16-gimp_paint_options_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_1
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_4
	.quad	.LBB16_5
	.quad	.LBB16_6
	.quad	.LBB16_7
	.quad	.LBB16_8
	.quad	.LBB16_9
	.quad	.LBB16_10
	.quad	.LBB16_11
	.quad	.LBB16_12
	.quad	.LBB16_13
	.quad	.LBB16_14
	.quad	.LBB16_15
	.quad	.LBB16_16
	.quad	.LBB16_17
	.quad	.LBB16_18
	.quad	.LBB16_19
	.quad	.LBB16_20
	.quad	.LBB16_21
	.quad	.LBB16_22
	.quad	.LBB16_23
	.quad	.LBB16_24
	.quad	.LBB16_25

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.type	gimp_paint_options_get_type.g_define_type_id__volatile,@object # @gimp_paint_options_get_type.g_define_type_id__volatile
	.local	gimp_paint_options_get_type.g_define_type_id__volatile
	.comm	gimp_paint_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaintOptions"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Paint"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_paint_options_new,@object # @__func__.gimp_paint_options_new
.L__func__.gimp_paint_options_new:
	.asciz	"gimp_paint_options_new"
	.size	.L__func__.gimp_paint_options_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PAINT_INFO (paint_info)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"paint-info"
	.size	.L.str.5, 11

	.type	.L__func__.gimp_paint_options_get_fade,@object # @__func__.gimp_paint_options_get_fade
.L__func__.gimp_paint_options_get_fade:
	.asciz	"gimp_paint_options_get_fade"
	.size	.L__func__.gimp_paint_options_get_fade, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_PAINT_OPTIONS (paint_options)"
	.size	.L.str.6, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.7, 22

	.type	.L__func__.gimp_paint_options_get_jitter,@object # @__func__.gimp_paint_options_get_jitter
.L__func__.gimp_paint_options_get_jitter:
	.asciz	"gimp_paint_options_get_jitter"
	.size	.L__func__.gimp_paint_options_get_jitter, 30

	.type	.L__func__.gimp_paint_options_get_gradient_color,@object # @__func__.gimp_paint_options_get_gradient_color
.L__func__.gimp_paint_options_get_gradient_color:
	.asciz	"gimp_paint_options_get_gradient_color"
	.size	.L__func__.gimp_paint_options_get_gradient_color, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color != NULL"
	.size	.L.str.8, 14

	.type	.L__func__.gimp_paint_options_get_brush_mode,@object # @__func__.gimp_paint_options_get_brush_mode
.L__func__.gimp_paint_options_get_brush_mode:
	.asciz	"gimp_paint_options_get_brush_mode"
	.size	.L__func__.gimp_paint_options_get_brush_mode, 34

	.type	.L__func__.gimp_paint_options_set_default_brush_size,@object # @__func__.gimp_paint_options_set_default_brush_size
.L__func__.gimp_paint_options_set_default_brush_size:
	.asciz	"gimp_paint_options_set_default_brush_size"
	.size	.L__func__.gimp_paint_options_set_default_brush_size, 42

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"brush == NULL || GIMP_IS_BRUSH (brush)"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"brush-size"
	.size	.L.str.10, 11

	.type	.L__func__.gimp_paint_options_copy_brush_props,@object # @__func__.gimp_paint_options_copy_brush_props
.L__func__.gimp_paint_options_copy_brush_props:
	.asciz	"gimp_paint_options_copy_brush_props"
	.size	.L__func__.gimp_paint_options_copy_brush_props, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_PAINT_OPTIONS (src)"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_PAINT_OPTIONS (dest)"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"brush-angle"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"brush-aspect-ratio"
	.size	.L.str.14, 19

	.type	.L__func__.gimp_paint_options_copy_dynamics_props,@object # @__func__.gimp_paint_options_copy_dynamics_props
.L__func__.gimp_paint_options_copy_dynamics_props:
	.asciz	"gimp_paint_options_copy_dynamics_props"
	.size	.L__func__.gimp_paint_options_copy_dynamics_props, 39

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dynamics-expanded"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"fade-reverse"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"fade-length"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"fade-unit"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"fade-repeat"
	.size	.L.str.19, 12

	.type	.L__func__.gimp_paint_options_copy_gradient_props,@object # @__func__.gimp_paint_options_copy_gradient_props
.L__func__.gimp_paint_options_copy_gradient_props:
	.asciz	"gimp_paint_options_copy_gradient_props"
	.size	.L__func__.gimp_paint_options_copy_gradient_props, 39

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gradient-reverse"
	.size	.L.str.20, 17

	.type	gimp_paint_options_parent_class,@object # @gimp_paint_options_parent_class
	.local	gimp_paint_options_parent_class
	.comm	gimp_paint_options_parent_class,8,8
	.type	GimpPaintOptions_private_offset,@object # @GimpPaintOptions_private_offset
	.local	GimpPaintOptions_private_offset
	.comm	GimpPaintOptions_private_offset,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Brush Size"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Brush Aspect Ratio"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Brush Angle"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"application-mode"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Every stamp has its own opacity"
	.size	.L.str.25, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"hard"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Ignore fuzziness of the current brush"
	.size	.L.str.27, 38

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"use-jitter"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Scatter brush as you paint"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"jitter-amount"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Distance of scattering"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Distance over which strokes fade out"
	.size	.L.str.32, 37

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Reverse direction of fading"
	.size	.L.str.33, 28

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"How fade is repeated as you paint"
	.size	.L.str.34, 34

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"brush-view-type"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"brush-view-size"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"dynamics-view-type"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"dynamics-view-size"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"pattern-view-type"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"pattern-view-size"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gradient-view-type"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gradient-view-size"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"use-smoothing"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Paint smoother strokes"
	.size	.L.str.44, 23

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"smoothing-quality"
	.size	.L.str.45, 18

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Depth of smoothing"
	.size	.L.str.46, 19

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"smoothing-factor"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Gravity of the pen"
	.size	.L.str.48, 19

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.49, 54

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimppaintoptions.c"
	.size	.L.str.50, 19

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"property"
	.size	.L.str.51, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
