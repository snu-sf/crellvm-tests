	.text
	.file	"gimpchannel-combine.bc"
	.globl	gimp_channel_combine_rect
	.align	16, 0x90
	.type	gimp_channel_combine_rect,@function
gimp_channel_combine_rect:              # @gimp_channel_combine_rect
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -164(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_combine_rect, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_60
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	-56(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%edi, -172(%rbp)        # 4-byte Spill
	movl	%esi, -176(%rbp)        # 4-byte Spill
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-48(%rbp), %rsi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdi
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %r9
	movl	-172(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-176(%rbp), %r10d       # 4-byte Reload
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%r10d, %esi
	movl	-180(%rbp), %edx        # 4-byte Reload
	movl	-184(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-228(%rbp), %ebx        # 4-byte Reload
	movq	%r8, -240(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	%r9, -248(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-196(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-224(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-216(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-240(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB0_14
# BB#13:                                # %if.then.19
	jmp	.LBB0_60
.LBB0_14:                               # %if.end.20
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	movl	$1, %ecx
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	cmpl	$0, -52(%rbp)
	je	.LBB0_16
# BB#15:                                # %lor.lhs.false
	cmpl	$2, -52(%rbp)
	jne	.LBB0_17
.LBB0_16:                               # %if.then.26
	movb	$-1, -137(%rbp)
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.27
	movb	$0, -137(%rbp)
.LBB0_18:                               # %if.end.28
	leaq	-136(%rbp), %rdi
	leaq	-137(%rbp), %rsi
	callq	color_region
	movq	-48(%rbp), %rsi
	cmpl	$0, 140(%rsi)
	je	.LBB0_30
# BB#19:                                # %land.lhs.true.30
	cmpl	$0, -52(%rbp)
	jne	.LBB0_30
# BB#20:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	cmpl	$0, 136(%rax)
	jne	.LBB0_30
# BB#21:                                # %if.then.34
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	144(%rcx), %eax
	jge	.LBB0_23
# BB#22:                                # %if.then.36
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 144(%rcx)
.LBB0_23:                               # %if.end.38
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	148(%rcx), %eax
	jge	.LBB0_25
# BB#24:                                # %if.then.40
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 148(%rcx)
.LBB0_25:                               # %if.end.42
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	152(%rcx), %eax
	jle	.LBB0_27
# BB#26:                                # %if.then.44
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 152(%rcx)
.LBB0_27:                               # %if.end.47
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	156(%rcx), %eax
	jle	.LBB0_29
# BB#28:                                # %if.then.50
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 156(%rcx)
.LBB0_29:                               # %if.end.53
	jmp	.LBB0_35
.LBB0_30:                               # %if.else.54
	cmpl	$2, -52(%rbp)
	je	.LBB0_32
# BB#31:                                # %lor.lhs.false.56
	movq	-48(%rbp), %rax
	cmpl	$0, 136(%rax)
	je	.LBB0_33
.LBB0_32:                               # %if.then.59
	movq	-48(%rbp), %rax
	movl	$0, 136(%rax)
	movl	-56(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 144(%rax)
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 148(%rax)
	movl	-56(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 152(%rax)
	movl	-60(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 156(%rax)
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.67
	movq	-48(%rbp), %rax
	movl	$0, 140(%rax)
.LBB0_34:                               # %if.end.69
	jmp	.LBB0_35
.LBB0_35:                               # %if.end.70
	movq	-48(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-264(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_37
# BB#36:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB0_41
.LBB0_37:                               # %cond.false
	movq	-48(%rbp), %rax
	cmpl	$0, 144(%rax)
	jge	.LBB0_39
# BB#38:                                # %cond.true.81
	xorl	%eax, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB0_40
.LBB0_39:                               # %cond.false.82
	movq	-48(%rbp), %rax
	movl	144(%rax), %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
.LBB0_40:                               # %cond.end
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB0_41:                               # %cond.end.84
	movl	-284(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, 144(%rcx)
	movq	-48(%rbp), %rcx
	movl	148(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-292(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB0_43
# BB#42:                                # %cond.true.92
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB0_47
.LBB0_43:                               # %cond.false.96
	movq	-48(%rbp), %rax
	cmpl	$0, 148(%rax)
	jge	.LBB0_45
# BB#44:                                # %cond.true.99
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB0_46
.LBB0_45:                               # %cond.false.100
	movq	-48(%rbp), %rax
	movl	148(%rax), %ecx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
.LBB0_46:                               # %cond.end.102
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB0_47:                               # %cond.end.104
	movl	-316(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, 148(%rcx)
	movq	-48(%rbp), %rcx
	movl	152(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-324(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB0_49
# BB#48:                                # %cond.true.112
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB0_53
.LBB0_49:                               # %cond.false.116
	movq	-48(%rbp), %rax
	cmpl	$0, 152(%rax)
	jge	.LBB0_51
# BB#50:                                # %cond.true.119
	xorl	%eax, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB0_52
.LBB0_51:                               # %cond.false.120
	movq	-48(%rbp), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
.LBB0_52:                               # %cond.end.122
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB0_53:                               # %cond.end.124
	movl	-348(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movq	-48(%rbp), %rcx
	movl	156(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-356(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB0_55
# BB#54:                                # %cond.true.132
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB0_59
.LBB0_55:                               # %cond.false.136
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	jge	.LBB0_57
# BB#56:                                # %cond.true.139
	xorl	%eax, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB0_58
.LBB0_57:                               # %cond.false.140
	movq	-48(%rbp), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
.LBB0_58:                               # %cond.end.142
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB0_59:                               # %cond.end.144
	movl	-380(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, 156(%rcx)
	movq	-48(%rbp), %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_drawable_update
.LBB0_60:                               # %return
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_channel_combine_rect, .Lfunc_end0-gimp_channel_combine_rect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_channel_combine_ellipse
	.align	16, 0x90
	.type	gimp_channel_combine_ellipse,@function
gimp_channel_combine_ellipse:           # @gimp_channel_combine_ellipse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	16(%rbp), %eax
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movl	-32(%rbp), %eax
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movl	%eax, (%rsp)
	callq	gimp_channel_combine_ellipse_rect
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_channel_combine_ellipse, .Lfunc_end1-gimp_channel_combine_ellipse
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4611686018427387904     # double 2
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_4:
	.quad	4607182418800017408     # double 1
.LCPI2_5:
	.quad	4562254508917369340     # double 0.001
.LCPI2_7:
	.quad	-4620693217682128896    # double -0.5
.LCPI2_8:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_2:
	.long	1056964608              # float 0.5
.LCPI2_3:
	.long	1148846080              # float 1000
.LCPI2_6:
	.long	3212836864              # float -1
	.text
	.globl	gimp_channel_combine_ellipse_rect
	.align	16, 0x90
	.type	gimp_channel_combine_ellipse_rect,@function
gimp_channel_combine_ellipse_rect:      # @gimp_channel_combine_ellipse_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$616, %rsp              # imm = 0x268
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movl	16(%rbp), %eax
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movl	%eax, -92(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -228(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -228(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_combine_ellipse_rect, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_129
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB2_16
# BB#14:                                # %land.lhs.true.13
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB2_16
# BB#15:                                # %if.then.15
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_combine_ellipse_rect, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_129
.LBB2_17:                               # %if.end.17
	jmp	.LBB2_18
.LBB2_18:                               # %do.end.18
	jmp	.LBB2_19
.LBB2_19:                               # %do.body.19
	cmpl	$3, -52(%rbp)
	je	.LBB2_21
# BB#20:                                # %if.then.21
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_combine_ellipse_rect, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_129
.LBB2_22:                               # %if.end.23
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.24
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB2_25
# BB#24:                                # %cond.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB2_26
.LBB2_25:                               # %cond.false
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -320(%rbp)       # 8-byte Spill
.LBB2_26:                               # %cond.end
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB2_28
# BB#27:                                # %cond.true.33
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB2_29
.LBB2_28:                               # %cond.false.34
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -328(%rbp)       # 8-byte Spill
.LBB2_29:                               # %cond.end.37
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	-56(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%edi, -332(%rbp)        # 4-byte Spill
	movl	%esi, -336(%rbp)        # 4-byte Spill
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-48(%rbp), %rsi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-188(%rbp), %rsi
	leaq	-192(%rbp), %rdi
	leaq	-196(%rbp), %r8
	leaq	-200(%rbp), %r9
	movl	-332(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-336(%rbp), %r10d       # 4-byte Reload
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movl	%r10d, %esi
	movl	-340(%rbp), %edx        # 4-byte Reload
	movl	-344(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-388(%rbp), %ebx        # 4-byte Reload
	movq	%r8, -400(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	%r9, -408(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-356(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-384(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-376(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-400(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	-408(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB2_31
# BB#30:                                # %if.then.48
	jmp	.LBB2_129
.LBB2_31:                               # %if.end.49
	cvtsi2sdl	-56(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-160(%rbp), %rdi
	movl	$1, %ecx
	movl	-188(%rbp), %edx
	movl	-192(%rbp), %r8d
	movl	-196(%rbp), %r9d
	movl	-200(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-160(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -208(%rbp)
.LBB2_32:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_34 Depth 2
                                        #       Child Loop BB2_53 Depth 3
	cmpq	$0, -208(%rbp)
	je	.LBB2_111
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-120(%rbp), %ecx
	movl	%ecx, -244(%rbp)
.LBB2_34:                               # %for.cond.61
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_53 Depth 3
	movl	-244(%rbp), %eax
	movl	-120(%rbp), %ecx
	addl	-112(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_109
# BB#35:                                # %for.body.67
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-124(%rbp), %eax
	movl	%eax, -248(%rbp)
	cvtsi2sdl	-244(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	addsd	-88(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB2_38
# BB#36:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB2_34 Depth=2
	cvtsi2sdl	-244(%rbp), %xmm0
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-88(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_38
# BB#37:                                # %if.then.82
                                        #   in Loop: Header=BB2_34 Depth=2
	xorl	%edx, %edx
	movl	$255, %r8d
	movq	-240(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-116(%rbp), %ecx
	callq	gimp_channel_combine_span
	jmp	.LBB2_108
.LBB2_38:                               # %if.end.84
                                        #   in Loop: Header=BB2_34 Depth=2
	cvtsi2sdl	-244(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	addsd	-88(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_40
# BB#39:                                # %if.then.90
                                        #   in Loop: Header=BB2_34 Depth=2
	cvtsi2sdl	-60(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	jmp	.LBB2_41
.LBB2_40:                               # %if.else.93
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
.LBB2_41:                               # %if.end.97
                                        #   in Loop: Header=BB2_34 Depth=2
	cmpl	$0, -92(%rbp)
	jne	.LBB2_49
# BB#42:                                # %if.then.99
                                        #   in Loop: Header=BB2_34 Depth=2
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movss	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movsd	-168(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-168(%rbp), %xmm4       # xmm4 = mem[0],zero
	cvtsi2ssl	-244(%rbp), %xmm5
	addss	%xmm2, %xmm5
	cvtss2sd	%xmm5, %xmm5
	subsd	-256(%rbp), %xmm5
	cvtsi2ssl	-244(%rbp), %xmm6
	addss	%xmm2, %xmm6
	cvtss2sd	%xmm6, %xmm2
	subsd	-256(%rbp), %xmm2
	mulsd	%xmm2, %xmm5
	mulsd	%xmm5, %xmm4
	divsd	-176(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -440(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -264(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-264(%rbp), %xmm0
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -268(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	-440(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	addsd	-264(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -272(%rbp)
	movq	-240(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-268(%rbp), %eax
	subl	-248(%rbp), %eax
	cmpl	$0, %eax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movl	%esi, -452(%rbp)        # 4-byte Spill
	jle	.LBB2_44
# BB#43:                                # %cond.true.129
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-268(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB2_45
.LBB2_44:                               # %cond.false.131
                                        #   in Loop: Header=BB2_34 Depth=2
	xorl	%eax, %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB2_45
.LBB2_45:                               # %cond.end.132
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-456(%rbp), %eax        # 4-byte Reload
	movl	-272(%rbp), %ecx
	subl	-248(%rbp), %ecx
	cmpl	-116(%rbp), %ecx
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jge	.LBB2_47
# BB#46:                                # %cond.true.138
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-272(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB2_48
.LBB2_47:                               # %cond.false.140
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-116(%rbp), %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB2_48:                               # %cond.end.142
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-464(%rbp), %eax        # 4-byte Reload
	movl	$255, %r8d
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movl	-452(%rbp), %esi        # 4-byte Reload
	movl	-460(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_channel_combine_span
	jmp	.LBB2_107
.LBB2_49:                               # %if.else.144
                                        #   in Loop: Header=BB2_34 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-244(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	subsd	-256(%rbp), %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB2_51
# BB#50:                                # %cond.true.151
                                        #   in Loop: Header=BB2_34 Depth=2
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-244(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	subsd	-256(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	jmp	.LBB2_52
.LBB2_51:                               # %cond.false.156
                                        #   in Loop: Header=BB2_34 Depth=2
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-244(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	subsd	-256(%rbp), %xmm1
	movsd	%xmm1, -472(%rbp)       # 8-byte Spill
.LBB2_52:                               # %cond.end.160
                                        #   in Loop: Header=BB2_34 Depth=2
	movsd	-472(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -276(%rbp)
	movl	$-1, -280(%rbp)
	movl	-248(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-248(%rbp), %eax
	movl	%eax, -288(%rbp)
.LBB2_53:                               # %for.cond.167
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-288(%rbp), %eax
	movl	-248(%rbp), %ecx
	addl	-116(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_100
# BB#54:                                # %for.body.172
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	$2, %eax
	movl	-288(%rbp), %ecx
	movl	-56(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -480(%rbp)        # 4-byte Spill
	cltd
	movl	-476(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-480(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jge	.LBB2_56
# BB#55:                                # %if.then.183
                                        #   in Loop: Header=BB2_53 Depth=3
	cvtsi2sdl	-56(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	jmp	.LBB2_57
.LBB2_56:                               # %if.else.186
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
.LBB2_57:                               # %if.end.190
                                        #   in Loop: Header=BB2_53 Depth=3
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-288(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	subsd	-184(%rbp), %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB2_59
# BB#58:                                # %cond.true.196
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-288(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	subsd	-184(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	jmp	.LBB2_60
.LBB2_59:                               # %cond.false.201
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-288(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	subsd	-184(%rbp), %xmm1
	movsd	%xmm1, -488(%rbp)       # 8-byte Spill
.LBB2_60:                               # %cond.end.205
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	-488(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -292(%rbp)
	cvtss2sd	-276(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_62
# BB#61:                                # %if.then.211
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-292(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movss	-276(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	mulss	-276(%rbp), %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	-176(%rbp), %xmm3
	subsd	%xmm3, %xmm0
	movsd	%xmm2, -496(%rbp)       # 8-byte Spill
	movsd	%xmm1, -504(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-496(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-504(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -296(%rbp)
	jmp	.LBB2_63
.LBB2_62:                               # %if.else.221
                                        #   in Loop: Header=BB2_53 Depth=3
	movss	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -296(%rbp)
.LBB2_63:                               # %if.end.222
                                        #   in Loop: Header=BB2_53 Depth=3
	cvtss2sd	-292(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_65
# BB#64:                                # %if.then.226
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-276(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movss	-292(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	mulss	-292(%rbp), %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	-168(%rbp), %xmm3
	subsd	%xmm3, %xmm0
	movsd	%xmm2, -512(%rbp)       # 8-byte Spill
	movsd	%xmm1, -520(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-520(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -300(%rbp)
	jmp	.LBB2_66
.LBB2_65:                               # %if.else.236
                                        #   in Loop: Header=BB2_53 Depth=3
	movss	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -300(%rbp)
.LBB2_66:                               # %if.end.237
                                        #   in Loop: Header=BB2_53 Depth=3
	cvtss2sd	-296(%rbp), %xmm0
	cvtss2sd	-300(%rbp), %xmm1
	callq	hypot
	movsd	.LCPI2_5, %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -304(%rbp)
	cvtss2sd	-304(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_68
# BB#67:                                # %if.then.245
                                        #   in Loop: Header=BB2_53 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -308(%rbp)
	jmp	.LBB2_69
.LBB2_68:                               # %if.else.246
                                        #   in Loop: Header=BB2_53 Depth=3
	movss	-296(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-300(%rbp), %xmm0
	divss	-304(%rbp), %xmm0
	movss	%xmm0, -308(%rbp)
.LBB2_69:                               # %if.end.249
                                        #   in Loop: Header=BB2_53 Depth=3
	xorps	%xmm0, %xmm0
	cvtss2sd	-296(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_71
# BB#70:                                # %if.then.253
                                        #   in Loop: Header=BB2_53 Depth=3
	movss	.LCPI2_6, %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	-308(%rbp), %xmm0
	movss	%xmm0, -308(%rbp)
.LBB2_71:                               # %if.end.255
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	.LCPI2_7, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-308(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_73
# BB#72:                                # %if.then.259
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	$255, -312(%rbp)
	jmp	.LBB2_77
.LBB2_73:                               # %if.else.260
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-308(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_75
# BB#74:                                # %if.then.264
                                        #   in Loop: Header=BB2_53 Depth=3
	movsd	.LCPI2_8, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	cvtss2sd	-308(%rbp), %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -312(%rbp)
	jmp	.LBB2_76
.LBB2_75:                               # %if.else.270
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	$0, -312(%rbp)
.LBB2_76:                               # %if.end.271
                                        #   in Loop: Header=BB2_53 Depth=3
	jmp	.LBB2_77
.LBB2_77:                               # %if.end.272
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-280(%rbp), %eax
	cmpl	-312(%rbp), %eax
	je	.LBB2_87
# BB#78:                                # %if.then.275
                                        #   in Loop: Header=BB2_53 Depth=3
	cmpl	$-1, -280(%rbp)
	je	.LBB2_86
# BB#79:                                # %if.then.278
                                        #   in Loop: Header=BB2_53 Depth=3
	movq	-240(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-284(%rbp), %eax
	subl	-248(%rbp), %eax
	cmpl	$0, %eax
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movl	%esi, -532(%rbp)        # 4-byte Spill
	jle	.LBB2_81
# BB#80:                                # %cond.true.282
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-284(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB2_82
.LBB2_81:                               # %cond.false.284
                                        #   in Loop: Header=BB2_53 Depth=3
	xorl	%eax, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB2_82
.LBB2_82:                               # %cond.end.285
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	-288(%rbp), %ecx
	subl	-248(%rbp), %ecx
	cmpl	-116(%rbp), %ecx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jge	.LBB2_84
# BB#83:                                # %cond.true.291
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-288(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
	jmp	.LBB2_85
.LBB2_84:                               # %cond.false.293
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-116(%rbp), %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
.LBB2_85:                               # %cond.end.295
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	-280(%rbp), %r8d
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movl	-532(%rbp), %esi        # 4-byte Reload
	movl	-540(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_channel_combine_span
.LBB2_86:                               # %if.end.297
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-288(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-312(%rbp), %eax
	movl	%eax, -280(%rbp)
.LBB2_87:                               # %if.end.298
                                        #   in Loop: Header=BB2_53 Depth=3
	cvtsi2sdl	-288(%rbp), %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	-80(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB2_96
# BB#88:                                # %land.lhs.true.304
                                        #   in Loop: Header=BB2_53 Depth=3
	cvtsi2sdl	-288(%rbp), %xmm0
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-80(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_96
# BB#89:                                # %if.then.311
                                        #   in Loop: Header=BB2_53 Depth=3
	movq	-240(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-284(%rbp), %eax
	subl	-248(%rbp), %eax
	cmpl	$0, %eax
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movl	%esi, -556(%rbp)        # 4-byte Spill
	jle	.LBB2_91
# BB#90:                                # %cond.true.315
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-284(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB2_92
.LBB2_91:                               # %cond.false.317
                                        #   in Loop: Header=BB2_53 Depth=3
	xorl	%eax, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB2_92
.LBB2_92:                               # %cond.end.318
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	-288(%rbp), %ecx
	subl	-248(%rbp), %ecx
	cmpl	-116(%rbp), %ecx
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jge	.LBB2_94
# BB#93:                                # %cond.true.324
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-288(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB2_95
.LBB2_94:                               # %cond.false.326
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-116(%rbp), %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB2_95:                               # %cond.end.328
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-568(%rbp), %eax        # 4-byte Reload
	movl	-280(%rbp), %r8d
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	-556(%rbp), %esi        # 4-byte Reload
	movl	-564(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_channel_combine_span
	movl	-288(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -288(%rbp)
	movl	$255, -312(%rbp)
	movl	$255, -280(%rbp)
.LBB2_96:                               # %if.end.334
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	$2, %eax
	movl	-288(%rbp), %ecx
	movl	-56(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -576(%rbp)        # 4-byte Spill
	cltd
	movl	-572(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-576(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jl	.LBB2_98
# BB#97:                                # %if.then.339
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
.LBB2_98:                               # %if.end.343
                                        #   in Loop: Header=BB2_53 Depth=3
	jmp	.LBB2_99
.LBB2_99:                               # %for.inc
                                        #   in Loop: Header=BB2_53 Depth=3
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB2_53
.LBB2_100:                              # %for.end
                                        #   in Loop: Header=BB2_34 Depth=2
	movq	-240(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-284(%rbp), %eax
	subl	-248(%rbp), %eax
	cmpl	$0, %eax
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movl	%esi, -588(%rbp)        # 4-byte Spill
	jle	.LBB2_102
# BB#101:                               # %cond.true.347
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-284(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB2_103
.LBB2_102:                              # %cond.false.349
                                        #   in Loop: Header=BB2_34 Depth=2
	xorl	%eax, %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB2_103
.LBB2_103:                              # %cond.end.350
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-592(%rbp), %eax        # 4-byte Reload
	movl	-288(%rbp), %ecx
	subl	-248(%rbp), %ecx
	cmpl	-116(%rbp), %ecx
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jge	.LBB2_105
# BB#104:                               # %cond.true.356
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-288(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB2_106
.LBB2_105:                              # %cond.false.358
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-116(%rbp), %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB2_106:                              # %cond.end.360
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	-280(%rbp), %r8d
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	-588(%rbp), %esi        # 4-byte Reload
	movl	-596(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_channel_combine_span
.LBB2_107:                              # %if.end.362
                                        #   in Loop: Header=BB2_34 Depth=2
	jmp	.LBB2_108
.LBB2_108:                              # %for.inc.363
                                        #   in Loop: Header=BB2_34 Depth=2
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	movl	-128(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	jmp	.LBB2_34
.LBB2_109:                              # %for.end.365
                                        #   in Loop: Header=BB2_32 Depth=1
	jmp	.LBB2_110
.LBB2_110:                              # %for.inc.366
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -208(%rbp)
	jmp	.LBB2_32
.LBB2_111:                              # %for.end.368
	movl	-188(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rcx
	cmpl	$0, 140(%rcx)
	je	.LBB2_123
# BB#112:                               # %land.lhs.true.370
	cmpl	$0, -52(%rbp)
	jne	.LBB2_123
# BB#113:                               # %land.lhs.true.373
	movq	-48(%rbp), %rax
	cmpl	$0, 136(%rax)
	jne	.LBB2_123
# BB#114:                               # %if.then.375
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	144(%rcx), %eax
	jge	.LBB2_116
# BB#115:                               # %if.then.378
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 144(%rcx)
.LBB2_116:                              # %if.end.380
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	148(%rcx), %eax
	jge	.LBB2_118
# BB#117:                               # %if.then.383
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 148(%rcx)
.LBB2_118:                              # %if.end.385
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	152(%rcx), %eax
	jle	.LBB2_120
# BB#119:                               # %if.then.389
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 152(%rcx)
.LBB2_120:                              # %if.end.392
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	156(%rcx), %eax
	jle	.LBB2_122
# BB#121:                               # %if.then.396
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 156(%rcx)
.LBB2_122:                              # %if.end.399
	jmp	.LBB2_128
.LBB2_123:                              # %if.else.400
	cmpl	$2, -52(%rbp)
	je	.LBB2_125
# BB#124:                               # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$0, 136(%rax)
	je	.LBB2_126
.LBB2_125:                              # %if.then.405
	movq	-48(%rbp), %rax
	movl	$0, 136(%rax)
	movl	-56(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 144(%rax)
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 148(%rax)
	movl	-56(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 152(%rax)
	movl	-60(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 156(%rax)
	jmp	.LBB2_127
.LBB2_126:                              # %if.else.413
	movq	-48(%rbp), %rax
	movl	$0, 140(%rax)
.LBB2_127:                              # %if.end.415
	jmp	.LBB2_128
.LBB2_128:                              # %if.end.416
	movq	-48(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_drawable_update
.LBB2_129:                              # %return
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_channel_combine_ellipse_rect, .Lfunc_end2-gimp_channel_combine_ellipse_rect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_combine_span,@function
gimp_channel_combine_span:              # @gimp_channel_combine_span
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-20(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jg	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_24
.LBB3_2:                                # %if.end
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	ja	.LBB3_24
# BB#25:                                # %if.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_3:                                # %sw.bb
	cmpl	$255, -24(%rbp)
	jne	.LBB3_5
# BB#4:                                 # %if.then.2
	movl	$255, %esi
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %edx
	subl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, %rdi
	callq	memset
	jmp	.LBB3_12
.LBB3_5:                                # %if.else
	jmp	.LBB3_6
.LBB3_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_11
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB3_6 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -28(%rbp)
	cmpl	$255, -28(%rbp)
	jbe	.LBB3_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$255, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB3_10:                               # %cond.end
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB3_6
.LBB3_11:                               # %while.end
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_24
.LBB3_13:                               # %sw.bb.12
	cmpl	$255, -24(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.15
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %edx
	subl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, %rdi
	callq	memset
	jmp	.LBB3_22
.LBB3_15:                               # %if.else.20
	jmp	.LBB3_16
.LBB3_16:                               # %while.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_21
# BB#17:                                # %while.body.24
                                        #   in Loop: Header=BB3_16 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	subl	-24(%rbp), %edx
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.LBB3_19
# BB#18:                                # %cond.true.32
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false.33
                                        #   in Loop: Header=BB3_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB3_20
.LBB3_20:                               # %cond.end.34
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB3_16
.LBB3_21:                               # %while.end.40
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.41
	jmp	.LBB3_24
.LBB3_23:                               # %sw.bb.42
	jmp	.LBB3_24
.LBB3_24:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_channel_combine_span, .Lfunc_end3-gimp_channel_combine_span
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_3
	.quad	.LBB3_13
	.quad	.LBB3_3
	.quad	.LBB3_23

	.text
	.globl	gimp_channel_combine_mask
	.align	16, 0x90
	.type	gimp_channel_combine_mask,@function
gimp_channel_combine_mask:              # @gimp_channel_combine_mask
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -236(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_combine_mask, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -260(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -260(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_channel_combine_mask, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edi, -268(%rbp)        # 4-byte Spill
	movl	%esi, -272(%rbp)        # 4-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rsi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-48(%rbp), %rsi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-48(%rbp), %rsi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-204(%rbp), %rsi
	leaq	-208(%rbp), %rdi
	leaq	-212(%rbp), %rdx
	leaq	-216(%rbp), %r8
	movl	-268(%rbp), %r9d        # 4-byte Reload
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movl	%r9d, %edi
	movl	-272(%rbp), %r10d       # 4-byte Reload
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movl	%r10d, %esi
	movl	-284(%rbp), %r11d       # 4-byte Reload
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movl	-300(%rbp), %ebx        # 4-byte Reload
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	%ebx, %ecx
	movl	-356(%rbp), %r14d       # 4-byte Reload
	movq	%r8, -368(%rbp)         # 8-byte Spill
	movl	%r14d, %r8d
	movl	%r14d, %r9d
	movl	-316(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-344(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-336(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	-368(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB4_26
# BB#25:                                # %if.then.53
	jmp	.LBB4_32
.LBB4_26:                               # %if.end.54
	movq	-56(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	-204(%rbp), %ecx
	movl	-64(%rbp), %edx
	subl	%edx, %ecx
	movl	-208(%rbp), %edx
	movl	-68(%rbp), %r8d
	subl	%r8d, %edx
	movl	-212(%rbp), %r8d
	movl	-216(%rbp), %r9d
	movq	%rsp, %rsi
	movl	$0, (%rsi)
	leaq	-136(%rbp), %rdi
	movq	%rax, %rsi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-380(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_init
	movq	-48(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	-204(%rbp), %edx
	movl	-208(%rbp), %ecx
	movl	-212(%rbp), %r8d
	movl	-216(%rbp), %r9d
	movq	%rsp, %rsi
	movl	$1, (%rsi)
	leaq	-200(%rbp), %rdi
	movq	%rax, %rsi
	callq	pixel_region_init
	movl	-60(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$3, %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	ja	.LBB4_30
# BB#33:                                # %if.end.54
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_27:                               # %sw.bb
	movabsq	$gimp_channel_combine_sub_region_add, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	leaq	-136(%rbp), %rcx
	leaq	-200(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	pixel_regions_process_parallel
	jmp	.LBB4_31
.LBB4_28:                               # %sw.bb.62
	movabsq	$gimp_channel_combine_sub_region_sub, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	leaq	-136(%rbp), %rcx
	leaq	-200(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	pixel_regions_process_parallel
	jmp	.LBB4_31
.LBB4_29:                               # %sw.bb.63
	movabsq	$gimp_channel_combine_sub_region_intersect, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	leaq	-136(%rbp), %rcx
	leaq	-200(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	pixel_regions_process_parallel
	jmp	.LBB4_31
.LBB4_30:                               # %sw.default
	movabsq	$.L.str.5, %rdi
	movabsq	$.L__func__.gimp_channel_combine_mask, %rsi
	movb	$0, %al
	callq	g_warning
.LBB4_31:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-204(%rbp), %esi
	movl	-208(%rbp), %edx
	movl	-212(%rbp), %ecx
	movl	-216(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_drawable_update
.LBB4_32:                               # %return
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_channel_combine_mask, .Lfunc_end4-gimp_channel_combine_mask
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_27
	.quad	.LBB4_28
	.quad	.LBB4_27
	.quad	.LBB4_29

	.text
	.align	16, 0x90
	.type	gimp_channel_combine_sub_region_add,@function
gimp_channel_combine_sub_region_add:    # @gimp_channel_combine_sub_region_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB5_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -44(%rbp)
.LBB5_3:                                # %for.cond.2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB5_9
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB5_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movl	%edx, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jbe	.LBB5_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	$255, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB5_7:                                # %cond.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_3
.LBB5_9:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
# BB#10:                                # %for.inc.16
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_1
.LBB5_11:                               # %for.end.18
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_channel_combine_sub_region_add, .Lfunc_end5-gimp_channel_combine_sub_region_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_combine_sub_region_sub,@function
gimp_channel_combine_sub_region_sub:    # @gimp_channel_combine_sub_region_sub
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB6_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -44(%rbp)
.LBB6_3:                                # %for.cond.2
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB6_9
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB6_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jle	.LBB6_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
                                        #   in Loop: Header=BB6_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%edx, %esi
	movb	%sil, %dil
	movb	%dil, (%rcx,%rax)
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_8
.LBB6_8:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_3
.LBB6_9:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
# BB#10:                                # %for.inc.22
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_1
.LBB6_11:                               # %for.end.24
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_channel_combine_sub_region_sub, .Lfunc_end6-gimp_channel_combine_sub_region_sub
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_combine_sub_region_intersect,@function
gimp_channel_combine_sub_region_intersect: # @gimp_channel_combine_sub_region_intersect
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB7_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -44(%rbp)
.LBB7_3:                                # %for.cond.2
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB7_9
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB7_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jge	.LBB7_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB7_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false
                                        #   in Loop: Header=BB7_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
.LBB7_7:                                # %cond.end
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-52(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_3
.LBB7_9:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
# BB#10:                                # %for.inc.22
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_1
.LBB7_11:                               # %for.end.24
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_channel_combine_sub_region_intersect, .Lfunc_end7-gimp_channel_combine_sub_region_intersect
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_channel_combine_rect,@object # @__func__.gimp_channel_combine_rect
.L__func__.gimp_channel_combine_rect:
	.asciz	"gimp_channel_combine_rect"
	.size	.L__func__.gimp_channel_combine_rect, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CHANNEL (mask)"
	.size	.L.str.1, 23

	.type	.L__func__.gimp_channel_combine_ellipse_rect,@object # @__func__.gimp_channel_combine_ellipse_rect
.L__func__.gimp_channel_combine_ellipse_rect:
	.asciz	"gimp_channel_combine_ellipse_rect"
	.size	.L__func__.gimp_channel_combine_ellipse_rect, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"a >= 0.0 && b >= 0.0"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"op != GIMP_CHANNEL_OP_INTERSECT"
	.size	.L.str.3, 32

	.type	.L__func__.gimp_channel_combine_mask,@object # @__func__.gimp_channel_combine_mask
.L__func__.gimp_channel_combine_mask:
	.asciz	"gimp_channel_combine_mask"
	.size	.L__func__.gimp_channel_combine_mask, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CHANNEL (add_on)"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s: unknown operation type"
	.size	.L.str.5, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
