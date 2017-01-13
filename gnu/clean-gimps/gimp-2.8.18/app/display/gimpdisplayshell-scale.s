	.text
	.file	"gimpdisplayshell-scale.bc"
	.globl	gimp_display_shell_update_scrollbars_and_rulers
	.align	16, 0x90
	.type	gimp_display_shell_update_scrollbars_and_rulers,@function
gimp_display_shell_update_scrollbars_and_rulers: # @gimp_display_shell_update_scrollbars_and_rulers
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_update_scrollbars_and_rulers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_update_scrollbars
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_update_rulers
.LBB0_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_update_scrollbars_and_rulers, .Lfunc_end0-gimp_display_shell_update_scrollbars_and_rulers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_display_shell_scale_update_scrollbars
	.align	16, 0x90
	.type	gimp_display_shell_scale_update_scrollbars,@function
gimp_display_shell_scale_update_scrollbars: # @gimp_display_shell_scale_update_scrollbars
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_update_scrollbars, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_15
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB1_14
# BB#13:                                # %if.then.12
	jmp	.LBB1_15
.LBB1_14:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm0
	callq	gimp_display_shell_scroll_setup_hscrollbar
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	-8(%rbp), %rdi
	cvtsi2sdl	188(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	cvtsi2sdl	296(%rdi), %xmm2
	movq	-8(%rbp), %rdi
	cvtsi2sdl	296(%rdi), %xmm3
	divsd	%xmm0, %xmm3
	movq	%rax, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movb	$3, %al
	callq	g_object_set
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	192(%rax), %xmm0
	callq	gimp_display_shell_scroll_setup_vscrollbar
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	-8(%rbp), %rdi
	cvtsi2sdl	192(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	cvtsi2sdl	300(%rdi), %xmm2
	movq	-8(%rbp), %rdi
	cvtsi2sdl	300(%rdi), %xmm3
	divsd	%xmm0, %xmm3
	movq	%rax, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movb	$3, %al
	callq	g_object_set
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB1_15:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_scale_update_scrollbars, .Lfunc_end1-gimp_display_shell_scale_update_scrollbars
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_scale_update_rulers
	.align	16, 0x90
	.type	gimp_display_shell_scale_update_rulers,@function
gimp_display_shell_scale_update_rulers: # @gimp_display_shell_scale_update_rulers
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
	subq	$160, %rsp
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 128(%rdi)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_23
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movq	-8(%rbp), %rax
	movl	296(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB2_5:                                # %if.end.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -72(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_13
# BB#6:                                 # %if.then.8
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	200(%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	184(%rax), %edi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -56(%rbp)
	movl	-20(%rbp), %edi
	cmpl	-24(%rbp), %edi
	jle	.LBB2_8
# BB#7:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB2_9:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movq	-8(%rbp), %rcx
	movl	184(%rcx), %edi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	300(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	divsd	208(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	movl	184(%rcx), %edi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -80(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB2_11
# BB#10:                                # %cond.true.22
	movl	-20(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB2_12
.LBB2_11:                               # %cond.false.23
	movl	-24(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB2_12:                               # %cond.end.24
	movl	-112(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movq	-8(%rbp), %rcx
	movl	184(%rcx), %edi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB2_20
.LBB2_13:                               # %if.else.29
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB2_15
# BB#14:                                # %cond.true.33
	movl	-20(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB2_16
.LBB2_15:                               # %cond.false.34
	movl	-24(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB2_16:                               # %cond.end.35
	movl	-116(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -64(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB2_18
# BB#17:                                # %cond.true.41
	movl	-20(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB2_19
.LBB2_18:                               # %cond.false.42
	movl	-24(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB2_19:                               # %cond.end.43
	movl	-120(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -88(%rbp)
.LBB2_20:                               # %if.end.46
	cmpq	$0, -16(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.48
	movq	-8(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	200(%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	184(%rax), %edi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -96(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	192(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	200(%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	184(%rax), %edi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB2_22:                               # %if.end.64
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_ruler_set_range
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	184(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_ruler_set_unit
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_ruler_set_range
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	184(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_ruler_set_unit
.LBB2_23:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_scale_update_rulers, .Lfunc_end2-gimp_display_shell_scale_update_rulers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	gimp_display_shell_scale_revert
	.align	16, 0x90
	.type	gimp_display_shell_scale_revert,@function
gimp_display_shell_scale_revert:        # @gimp_display_shell_scale_revert
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
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_revert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	264(%rax), %xmm0
	jbe	.LBB3_14
# BB#13:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.end.13
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movl	$0, 272(%rax)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	276(%rax), %esi
	movq	-16(%rbp), %rax
	movl	280(%rax), %edx
	callq	gimp_display_shell_scale_by_values
	movl	$1, -4(%rbp)
.LBB3_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_scale_revert, .Lfunc_end3-gimp_display_shell_scale_revert
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4547007122018943789     # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_display_shell_scale_by_values
	.align	16, 0x90
	.type	gimp_display_shell_scale_by_values,@function
gimp_display_shell_scale_by_values:     # @gimp_display_shell_scale_by_values
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
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_by_values, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movapd	.LCPI4_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_16
# BB#13:                                # %land.lhs.true.14
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB4_16
# BB#14:                                # %land.lhs.true.17
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jne	.LBB4_16
# BB#15:                                # %if.then.20
	jmp	.LBB4_17
.LBB4_16:                               # %if.end.21
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_handle_zoom_revert
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_pause
	movl	$6, %esi
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom
	xorl	%edx, %edx
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 188(%rdi)
	movl	-24(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 192(%rdi)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_scale_resize
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_resume
.LBB4_17:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_scale_by_values, .Lfunc_end4-gimp_display_shell_scale_by_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	gimp_display_shell_scale_can_revert
	.align	16, 0x90
	.type	gimp_display_shell_scale_can_revert,@function
gimp_display_shell_scale_can_revert:    # @gimp_display_shell_scale_can_revert
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_can_revert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_scale_can_revert, .Lfunc_end5-gimp_display_shell_scale_can_revert
	.cfi_endproc

	.globl	gimp_display_shell_scale_set_dot_for_dot
	.align	16, 0x90
	.type	gimp_display_shell_scale_set_dot_for_dot,@function
gimp_display_shell_scale_set_dot_for_dot: # @gimp_display_shell_scale_set_dot_for_dot
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_set_dot_for_dot, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_14
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	232(%rcx), %eax
	je	.LBB6_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_pause
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 232(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_changed
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	40(%rcx), %rcx
	movl	440(%rcx), %esi
	callq	gimp_display_shell_scale_resize
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_resume
.LBB6_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_scale_set_dot_for_dot, .Lfunc_end6-gimp_display_shell_scale_set_dot_for_dot
	.cfi_endproc

	.globl	gimp_display_shell_scale_resize
	.align	16, 0x90
	.type	gimp_display_shell_scale_resize,@function
gimp_display_shell_scale_resize:        # @gimp_display_shell_scale_resize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_resize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_18
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_pause
	cmpl	$0, -12(%rbp)
	je	.LBB7_17
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB7_16
# BB#14:                                # %land.lhs.true.16
	movq	-48(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	cmpq	-8(%rbp), %rax
	jne	.LBB7_16
# BB#15:                                # %if.then.19
	movq	-48(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	gimp_image_window_shrink_wrap
.LBB7_16:                               # %if.end.20
	jmp	.LBB7_17
.LBB7_17:                               # %if.end.21
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_and_update
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scaled
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_expose_full
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_resume
.LBB7_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_scale_resize, .Lfunc_end7-gimp_display_shell_scale_resize
	.cfi_endproc

	.globl	gimp_display_shell_get_screen_resolution
	.align	16, 0x90
	.type	gimp_display_shell_get_screen_resolution,@function
gimp_display_shell_get_screen_resolution: # @gimp_display_shell_get_screen_resolution
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_screen_resolution, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_19
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 232(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_get_resolution
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.14
	movq	-8(%rbp), %rax
	movsd	216(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	movsd	224(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB8_15:                               # %if.end.15
	cmpq	$0, -16(%rbp)
	je	.LBB8_17
# BB#16:                                # %if.then.17
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB8_17:                               # %if.end.18
	cmpq	$0, -24(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.20
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB8_19:                               # %if.end.21
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_get_screen_resolution, .Lfunc_end8-gimp_display_shell_get_screen_resolution
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4547007122018943789     # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_display_shell_scale
	.align	16, 0x90
	.type	gimp_display_shell_scale,@function
gimp_display_shell_scale:               # @gimp_display_shell_scale
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_36
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_36
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	%xmm0, -48(%rbp)
	cmpl	$6, -12(%rbp)
	je	.LBB9_19
# BB#18:                                # %if.then.19
	movl	-12(%rbp), %edi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.21
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB9_20:                               # %if.end.22
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	movapd	.LCPI9_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB9_36
# BB#21:                                # %if.then.25
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	cmpl	$0, 440(%rax)
	je	.LBB9_26
# BB#22:                                # %if.then.27
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movl	$6, %esi
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scaled
	cmpq	$0, -88(%rbp)
	je	.LBB9_25
# BB#23:                                # %land.lhs.true.32
	movq	-88(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	cmpq	-8(%rbp), %rax
	jne	.LBB9_25
# BB#24:                                # %if.then.35
	xorl	%esi, %esi
	movq	-88(%rbp), %rdi
	callq	gimp_image_window_shrink_wrap
.LBB9_25:                               # %if.end.36
	jmp	.LBB9_35
.LBB9_26:                               # %if.else.37
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-28(%rbp), %ecx
	callq	gimp_display_shell_scale_get_zoom_focus
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_get_image_center_viewport
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	gimp_display_shell_scale_to
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_scale_image_starts_to_fit
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_scale_viewport_coord_almost_centered
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_scale_viewport_coord_almost_centered
	movb	$1, %r9b
	movq	-8(%rbp), %rdi
	cmpl	$0, -92(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movb	%r9b, -145(%rbp)        # 1-byte Spill
	jne	.LBB9_30
# BB#27:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -100(%rbp)
	movb	%cl, -146(%rbp)         # 1-byte Spill
	je	.LBB9_29
# BB#28:                                # %land.rhs
	cmpl	$0, -108(%rbp)
	setne	%al
	movb	%al, -146(%rbp)         # 1-byte Spill
.LBB9_29:                               # %land.end
	movb	-146(%rbp), %al         # 1-byte Reload
	movb	%al, -145(%rbp)         # 1-byte Spill
.LBB9_30:                               # %lor.end
	movb	-145(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movzbl	%al, %esi
	cmpl	$0, -96(%rbp)
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jne	.LBB9_34
# BB#31:                                # %lor.rhs.53
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -104(%rbp)
	movb	%cl, -154(%rbp)         # 1-byte Spill
	je	.LBB9_33
# BB#32:                                # %land.rhs.55
	cmpl	$0, -112(%rbp)
	setne	%al
	movb	%al, -154(%rbp)         # 1-byte Spill
.LBB9_33:                               # %land.end.57
	movb	-154(%rbp), %al         # 1-byte Reload
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB9_34:                               # %lor.end.58
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-152(%rbp), %esi        # 4-byte Reload
	callq	gimp_display_shell_scroll_center_image
.LBB9_35:                               # %if.end.60
	jmp	.LBB9_36
.LBB9_36:                               # %if.end.61
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_scale, .Lfunc_end9-gimp_display_shell_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scale_get_zoom_focus,@function
gimp_display_shell_scale_get_zoom_focus: # @gimp_display_shell_scale_get_zoom_focus
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
	subq	$192, %rsp
	leaq	-52(%rbp), %rax
	leaq	-56(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	callq	gimp_display_shell_scale_get_image_center_viewport
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	callq	gtk_get_current_event
	movb	$1, %r9b
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	movb	%r9b, -137(%rbp)        # 1-byte Spill
	je	.LBB10_3
# BB#1:                                 # %lor.lhs.false
	movq	-72(%rbp), %rdi
	callq	gtk_get_event_widget
	movb	$1, %cl
	movq	-8(%rbp), %rdi
	cmpq	328(%rdi), %rax
	movb	%cl, -137(%rbp)         # 1-byte Spill
	je	.LBB10_3
# BB#2:                                 # %lor.rhs
	movq	-72(%rbp), %rdi
	callq	gtk_get_event_widget
	cmpq	-80(%rbp), %rax
	sete	%cl
	movb	%cl, -137(%rbp)         # 1-byte Spill
.LBB10_3:                               # %lor.end
	movb	-137(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -84(%rbp)
	movq	-8(%rbp), %rdx
	movq	816(%rdx), %rdi
	callq	g_queue_peek_head
	cmpq	$0, %rax
	jne	.LBB10_5
# BB#4:                                 # %if.then
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_pointer
	jmp	.LBB10_8
.LBB10_5:                               # %if.else
	movq	-8(%rbp), %rax
	movq	816(%rax), %rdi
	callq	g_queue_pop_head
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-104(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -96(%rbp)
# BB#6:                                 # %do.body
	movl	$8, %eax
	movl	%eax, %edi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#7:                                 # %do.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -92(%rbp)
	movb	%cl, -138(%rbp)         # 1-byte Spill
	jl	.LBB10_12
# BB#9:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -96(%rbp)
	movb	%cl, -138(%rbp)         # 1-byte Spill
	jl	.LBB10_12
# BB#10:                                # %land.lhs.true.16
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	296(%rdx), %eax
	movb	%cl, -138(%rbp)         # 1-byte Spill
	jge	.LBB10_12
# BB#11:                                # %land.rhs
	movl	-96(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	300(%rcx), %eax
	setl	%dl
	movb	%dl, -138(%rbp)         # 1-byte Spill
.LBB10_12:                              # %land.end
	movb	-138(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, -84(%rbp)
	je	.LBB10_15
# BB#13:                                # %land.lhs.true.20
	cmpl	$0, -88(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.22
	movl	-92(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.23
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	296(%rcx), %edx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-144(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rcx
	movl	300(%rcx), %eax
	cltd
	idivl	%esi
	movl	%eax, -64(%rbp)
.LBB10_16:                              # %if.end.27
	cmpl	$3, -44(%rbp)
	jne	.LBB10_18
# BB#17:                                # %if.then.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	gimp_display_shell_scale_viewport_coord_almost_centered
	xorl	%edx, %edx
	movl	$2, %esi
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	cmovnel	%esi, %edx
	movl	%edx, -48(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.32
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB10_19:                              # %if.end.33
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB10_22
	jmp	.LBB10_33
.LBB10_33:                              # %if.end.33
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB10_20
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.33
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB10_21
	jmp	.LBB10_23
.LBB10_20:                              # %sw.bb
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-64(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_32
.LBB10_21:                              # %sw.bb.34
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_32
.LBB10_22:                              # %sw.bb.35
	jmp	.LBB10_23
.LBB10_23:                              # %sw.default
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_image_is_within_viewport
	leaq	-120(%rbp), %rsi
	leaq	-124(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_scale_image_stops_to_fit
	cmpl	$0, -112(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB10_26
# BB#24:                                # %land.lhs.true.39
	cmpl	$0, -120(%rbp)
	jne	.LBB10_26
# BB#25:                                # %cond.true
	movl	-52(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB10_27
.LBB10_26:                              # %cond.false
	movl	-60(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB10_27:                              # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, -116(%rbp)
	je	.LBB10_30
# BB#28:                                # %land.lhs.true.43
	cmpl	$0, -124(%rbp)
	jne	.LBB10_30
# BB#29:                                # %cond.true.45
	movl	-56(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB10_31
.LBB10_30:                              # %cond.false.46
	movl	-64(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB10_31:                              # %cond.end.47
	movl	-180(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_32:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_scale_get_zoom_focus, .Lfunc_end10-gimp_display_shell_scale_get_zoom_focus
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scale_get_image_center_viewport,@function
gimp_display_shell_scale_get_image_center_viewport: # @gimp_display_shell_scale_get_image_center_viewport
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
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_display_shell_draw_get_scaled_image_size
	cmpq	$0, -16(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	subl	188(%rdx), %ecx
	movl	-28(%rbp), %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, (%rdi)
.LBB11_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then.2
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	subl	192(%rdx), %ecx
	movl	-32(%rbp), %esi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-40(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, (%rdi)
.LBB11_4:                               # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_scale_get_image_center_viewport, .Lfunc_end11-gimp_display_shell_scale_get_image_center_viewport
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scale_to,@function
gimp_display_shell_scale_to:            # @gimp_display_shell_scale_to
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_to, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB12_14
# BB#13:                                # %if.then.12
	jmp	.LBB12_15
.LBB12_14:                              # %if.end.13
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	callq	gimp_display_shell_untransform_xy_f
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_calculate_scale_x_and_y
	xorl	%ecx, %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	callq	gimp_display_shell_scale_by_values
.LBB12_15:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_scale_to, .Lfunc_end12-gimp_display_shell_scale_to
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scale_image_starts_to_fit,@function
gimp_display_shell_scale_image_starts_to_fit: # @gimp_display_shell_scale_image_starts_to_fit
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	leaq	-44(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB13_2:                               # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then.2
	leaq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB13_4:                               # %if.end.3
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB13_6
# BB#5:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB13_11
.LBB13_6:                               # %if.else
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_draw_get_scaled_image_size_for_scale
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_draw_get_scaled_image_size_for_scale
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	296(%rdx), %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jle	.LBB13_8
# BB#7:                                 # %land.rhs
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	296(%rcx), %eax
	setle	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB13_8:                               # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, (%rsi)
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rsi
	cmpl	300(%rsi), %ecx
	movb	%dl, -66(%rbp)          # 1-byte Spill
	jle	.LBB13_10
# BB#9:                                 # %land.rhs.9
	movl	-64(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	300(%rcx), %eax
	setle	%dl
	movb	%dl, -66(%rbp)          # 1-byte Spill
.LBB13_10:                              # %land.end.12
	movb	-66(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
.LBB13_11:                              # %if.end.14
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -67(%rbp)          # 1-byte Spill
	je	.LBB13_13
# BB#12:                                # %land.rhs.16
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%cl
	movb	%cl, -67(%rbp)          # 1-byte Spill
.LBB13_13:                              # %land.end.18
	movb	-67(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_scale_image_starts_to_fit, .Lfunc_end13-gimp_display_shell_scale_image_starts_to_fit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scale_viewport_coord_almost_centered,@function
gimp_display_shell_scale_viewport_coord_almost_centered: # @gimp_display_shell_scale_viewport_coord_almost_centered
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
	xorl	%eax, %eax
	movb	%al, %r9b
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	296(%rcx), %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rcx
	movl	300(%rcx), %eax
	cltd
	idivl	%esi
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	movl	-44(%rbp), %r10d
	subl	$2, %r10d
	cmpl	%r10d, %eax
	movb	%r9b, -53(%rbp)         # 1-byte Spill
	jle	.LBB14_2
# BB#1:                                 # %land.rhs
	movl	-12(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -53(%rbp)          # 1-byte Spill
.LBB14_2:                               # %land.end
	movb	-53(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
	movl	-16(%rbp), %ecx
	movl	-48(%rbp), %esi
	subl	$2, %esi
	cmpl	%esi, %ecx
	movb	%dl, -54(%rbp)          # 1-byte Spill
	jle	.LBB14_4
# BB#3:                                 # %land.rhs.5
	movl	-16(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -54(%rbp)          # 1-byte Spill
.LBB14_4:                               # %land.end.8
	movb	-54(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_6
# BB#5:                                 # %if.then
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB14_6:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB14_8
# BB#7:                                 # %if.then.11
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB14_8:                               # %if.end.12
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -36(%rbp)
	movb	%cl, -55(%rbp)          # 1-byte Spill
	je	.LBB14_10
# BB#9:                                 # %land.rhs.14
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -55(%rbp)          # 1-byte Spill
.LBB14_10:                              # %land.end.16
	movb	-55(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_shell_scale_viewport_coord_almost_centered, .Lfunc_end14-gimp_display_shell_scale_viewport_coord_almost_centered
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_display_shell_scale_fit_in
	.align	16, 0x90
	.type	gimp_display_shell_scale_fit_in,@function
gimp_display_shell_scale_fit_in:        # @gimp_display_shell_scale_fit_in
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_fit_in, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_18
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-8(%rbp), %rdx
	cmpl	$0, 232(%rdx)
	jne	.LBB15_14
# BB#13:                                # %if.then.15
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	movq	-8(%rbp), %rax
	mulsd	216(%rax), %xmm1
	divsd	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -20(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm1
	movq	-8(%rbp), %rax
	mulsd	224(%rax), %xmm1
	divsd	-40(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -24(%rbp)
.LBB15_14:                              # %if.end.22
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_16
# BB#15:                                # %cond.true
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB15_17
.LBB15_16:                              # %cond.false
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB15_17:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$6, %esi
	xorl	%edx, %edx
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_scale
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movl	%edx, %esi
	callq	gimp_display_shell_scroll_center_image
.LBB15_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_display_shell_scale_fit_in, .Lfunc_end15-gimp_display_shell_scale_fit_in
	.cfi_endproc

	.globl	gimp_display_shell_scale_image_is_within_viewport
	.align	16, 0x90
	.type	gimp_display_shell_scale_image_is_within_viewport,@function
gimp_display_shell_scale_image_is_within_viewport: # @gimp_display_shell_scale_image_is_within_viewport
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_image_is_within_viewport, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_25
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB16_14
# BB#13:                                # %if.then.12
	leaq	-44(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB16_14:                              # %if.end.13
	cmpq	$0, -32(%rbp)
	jne	.LBB16_16
# BB#15:                                # %if.then.15
	leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB16_16:                              # %if.end.16
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_draw_get_scaled_image_size
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	296(%rdx), %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jg	.LBB16_19
# BB#17:                                # %land.lhs.true.18
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpl	$0, 188(%rdx)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jg	.LBB16_19
# BB#18:                                # %land.rhs
	movq	-16(%rbp), %rax
	movl	188(%rax), %ecx
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	subl	296(%rax), %edx
	cmpl	%edx, %ecx
	setge	%sil
	movb	%sil, -73(%rbp)         # 1-byte Spill
.LBB16_19:                              # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi)
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rsi
	cmpl	300(%rsi), %ecx
	movb	%dl, -74(%rbp)          # 1-byte Spill
	jg	.LBB16_22
# BB#20:                                # %land.lhs.true.24
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpl	$0, 192(%rdx)
	movb	%cl, -74(%rbp)          # 1-byte Spill
	jg	.LBB16_22
# BB#21:                                # %land.rhs.26
	movq	-16(%rbp), %rax
	movl	192(%rax), %ecx
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	subl	300(%rax), %edx
	cmpl	%edx, %ecx
	setge	%sil
	movb	%sil, -74(%rbp)         # 1-byte Spill
.LBB16_22:                              # %land.end.31
	movb	-74(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, (%rsi)
	movq	-32(%rbp), %rsi
	cmpl	$0, (%rsi)
	movb	%dl, -75(%rbp)          # 1-byte Spill
	je	.LBB16_24
# BB#23:                                # %land.rhs.34
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%cl
	movb	%cl, -75(%rbp)          # 1-byte Spill
.LBB16_24:                              # %land.end.36
	movb	-75(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB16_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_display_shell_scale_image_is_within_viewport, .Lfunc_end16-gimp_display_shell_scale_image_is_within_viewport
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_display_shell_scale_fill
	.align	16, 0x90
	.type	gimp_display_shell_scale_fill,@function
gimp_display_shell_scale_fill:          # @gimp_display_shell_scale_fill
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_fill, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_18
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-8(%rbp), %rdx
	cmpl	$0, 232(%rdx)
	jne	.LBB17_14
# BB#13:                                # %if.then.15
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	movq	-8(%rbp), %rax
	mulsd	216(%rax), %xmm1
	divsd	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -20(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm1
	movq	-8(%rbp), %rax
	mulsd	224(%rax), %xmm1
	divsd	-40(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -24(%rbp)
.LBB17_14:                              # %if.end.22
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_16
# BB#15:                                # %cond.true
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB17_17
.LBB17_16:                              # %cond.false
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB17_17:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$6, %esi
	xorl	%edx, %edx
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_scale
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movl	%edx, %esi
	callq	gimp_display_shell_scroll_center_image
.LBB17_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_display_shell_scale_fill, .Lfunc_end17-gimp_display_shell_scale_fill
	.cfi_endproc

	.globl	gimp_display_shell_scale_handle_zoom_revert
	.align	16, 0x90
	.type	gimp_display_shell_scale_handle_zoom_revert,@function
gimp_display_shell_scale_handle_zoom_revert: # @gimp_display_shell_scale_handle_zoom_revert
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_handle_zoom_revert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_15
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	subl	272(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB18_14
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movq	-8(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 276(%rax)
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 280(%rax)
.LBB18_14:                              # %if.end.16
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 272(%rcx)
.LBB18_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_display_shell_scale_handle_zoom_revert, .Lfunc_end18-gimp_display_shell_scale_handle_zoom_revert
	.cfi_endproc

	.globl	gimp_display_shell_scale_shrink_wrap
	.align	16, 0x90
	.type	gimp_display_shell_scale_shrink_wrap,@function
gimp_display_shell_scale_shrink_wrap:   # @gimp_display_shell_scale_shrink_wrap
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_shrink_wrap, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	gimp_display_shell_scale_resize
.LBB19_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_display_shell_scale_shrink_wrap, .Lfunc_end19-gimp_display_shell_scale_shrink_wrap
	.cfi_endproc

	.globl	gimp_display_shell_calculate_scale_x_and_y
	.align	16, 0x90
	.type	gimp_display_shell_calculate_scale_x_and_y,@function
gimp_display_shell_calculate_scale_x_and_y: # @gimp_display_shell_calculate_scale_x_and_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_calculate_scale_x_and_y, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_28
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.12
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB20_19:                              # %if.end.32
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.36
	jmp	.LBB20_23
.LBB20_22:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_calculate_scale_x_and_y, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_28
.LBB20_23:                              # %if.end.38
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.39
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_screen_resolution
	cmpq	$0, -24(%rbp)
	je	.LBB20_26
# BB#25:                                # %if.then.41
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB20_26:                              # %if.end.42
	cmpq	$0, -32(%rbp)
	je	.LBB20_28
# BB#27:                                # %if.then.44
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB20_28:                              # %if.end.47
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_display_shell_calculate_scale_x_and_y, .Lfunc_end20-gimp_display_shell_calculate_scale_x_and_y
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4604930618986332160     # double 0.75
	.text
	.globl	gimp_display_shell_set_initial_scale
	.align	16, 0x90
	.type	gimp_display_shell_set_initial_scale,@function
gimp_display_shell_set_initial_scale:   # @gimp_display_shell_set_initial_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_initial_scale, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_32
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_screen_get_width
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_screen_get_height
	movl	$6, %esi
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	mulsd	200(%rdi), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	mulsd	208(%rdi), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	40(%rdi), %rdi
	cmpl	$0, 452(%rdi)
	je	.LBB21_23
# BB#13:                                # %if.then.33
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.LBB21_15
# BB#14:                                # %lor.lhs.false
	movl	-64(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB21_22
.LBB21_15:                              # %if.then.38
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	cvtsi2sdl	-64(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	cvtsi2sdl	-60(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jbe	.LBB21_17
# BB#16:                                # %cond.true
	cvtsi2sdl	-72(%rbp), %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB21_18
.LBB21_17:                              # %cond.false
	cvtsi2sdl	-68(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB21_18:                              # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %edi
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step
	xorl	%edi, %edi
	movsd	%xmm0, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_zoom_model_zoom_step
	movl	$6, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_zoom_model_zoom
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-8(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %esi
	cmpl	-68(%rbp), %esi
	jg	.LBB21_20
# BB#19:                                # %lor.lhs.false.67
	cvtsi2sdl	-56(%rbp), %xmm0
	movq	-8(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	cmpl	-72(%rbp), %ecx
	jle	.LBB21_21
.LBB21_20:                              # %if.then.75
	movl	$6, %esi
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom
.LBB21_21:                              # %if.end.77
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-8(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -60(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm0
	movq	-8(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -64(%rbp)
.LBB21_22:                              # %if.end.88
	jmp	.LBB21_28
.LBB21_23:                              # %if.else.89
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB21_25
# BB#24:                                # %if.then.92
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB21_25:                              # %if.end.93
	movl	-64(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB21_27
# BB#26:                                # %if.then.96
	movl	-72(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB21_27:                              # %if.end.97
	jmp	.LBB21_28
.LBB21_28:                              # %if.end.98
	cmpq	$0, -24(%rbp)
	je	.LBB21_30
# BB#29:                                # %if.then.100
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB21_30:                              # %if.end.101
	cmpq	$0, -32(%rbp)
	je	.LBB21_32
# BB#31:                                # %if.then.103
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB21_32:                              # %if.end.104
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_display_shell_set_initial_scale, .Lfunc_end21-gimp_display_shell_set_initial_scale
	.cfi_endproc

	.globl	gimp_display_shell_push_zoom_focus_pointer_pos
	.align	16, 0x90
	.type	gimp_display_shell_push_zoom_focus_pointer_pos,@function
gimp_display_shell_push_zoom_focus_pointer_pos: # @gimp_display_shell_push_zoom_focus_pointer_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	816(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_queue_push_head
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_display_shell_push_zoom_focus_pointer_pos, .Lfunc_end22-gimp_display_shell_push_zoom_focus_pointer_pos
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scale_image_stops_to_fit,@function
gimp_display_shell_scale_image_stops_to_fit: # @gimp_display_shell_scale_image_stops_to_fit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_display_shell_scale_image_starts_to_fit
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_display_shell_scale_image_stops_to_fit, .Lfunc_end23-gimp_display_shell_scale_image_stops_to_fit
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_update_scrollbars_and_rulers,@object # @__func__.gimp_display_shell_update_scrollbars_and_rulers
.L__func__.gimp_display_shell_update_scrollbars_and_rulers:
	.asciz	"gimp_display_shell_update_scrollbars_and_rulers"
	.size	.L__func__.gimp_display_shell_update_scrollbars_and_rulers, 48

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_scale_update_scrollbars,@object # @__func__.gimp_display_shell_scale_update_scrollbars
.L__func__.gimp_display_shell_scale_update_scrollbars:
	.asciz	"gimp_display_shell_scale_update_scrollbars"
	.size	.L__func__.gimp_display_shell_scale_update_scrollbars, 43

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"page-size"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"page-increment"
	.size	.L.str.4, 15

	.type	.L__func__.gimp_display_shell_scale_revert,@object # @__func__.gimp_display_shell_scale_revert
.L__func__.gimp_display_shell_scale_revert:
	.asciz	"gimp_display_shell_scale_revert"
	.size	.L__func__.gimp_display_shell_scale_revert, 32

	.type	.L__func__.gimp_display_shell_scale_can_revert,@object # @__func__.gimp_display_shell_scale_can_revert
.L__func__.gimp_display_shell_scale_can_revert:
	.asciz	"gimp_display_shell_scale_can_revert"
	.size	.L__func__.gimp_display_shell_scale_can_revert, 36

	.type	.L__func__.gimp_display_shell_scale_set_dot_for_dot,@object # @__func__.gimp_display_shell_scale_set_dot_for_dot
.L__func__.gimp_display_shell_scale_set_dot_for_dot:
	.asciz	"gimp_display_shell_scale_set_dot_for_dot"
	.size	.L__func__.gimp_display_shell_scale_set_dot_for_dot, 41

	.type	.L__func__.gimp_display_shell_get_screen_resolution,@object # @__func__.gimp_display_shell_get_screen_resolution
.L__func__.gimp_display_shell_get_screen_resolution:
	.asciz	"gimp_display_shell_get_screen_resolution"
	.size	.L__func__.gimp_display_shell_get_screen_resolution, 41

	.type	.L__func__.gimp_display_shell_scale,@object # @__func__.gimp_display_shell_scale
.L__func__.gimp_display_shell_scale:
	.asciz	"gimp_display_shell_scale"
	.size	.L__func__.gimp_display_shell_scale, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"shell->canvas != NULL"
	.size	.L.str.5, 22

	.type	.L__func__.gimp_display_shell_scale_fit_in,@object # @__func__.gimp_display_shell_scale_fit_in
.L__func__.gimp_display_shell_scale_fit_in:
	.asciz	"gimp_display_shell_scale_fit_in"
	.size	.L__func__.gimp_display_shell_scale_fit_in, 32

	.type	.L__func__.gimp_display_shell_scale_image_is_within_viewport,@object # @__func__.gimp_display_shell_scale_image_is_within_viewport
.L__func__.gimp_display_shell_scale_image_is_within_viewport:
	.asciz	"gimp_display_shell_scale_image_is_within_viewport"
	.size	.L__func__.gimp_display_shell_scale_image_is_within_viewport, 50

	.type	.L__func__.gimp_display_shell_scale_fill,@object # @__func__.gimp_display_shell_scale_fill
.L__func__.gimp_display_shell_scale_fill:
	.asciz	"gimp_display_shell_scale_fill"
	.size	.L__func__.gimp_display_shell_scale_fill, 30

	.type	.L__func__.gimp_display_shell_scale_handle_zoom_revert,@object # @__func__.gimp_display_shell_scale_handle_zoom_revert
.L__func__.gimp_display_shell_scale_handle_zoom_revert:
	.asciz	"gimp_display_shell_scale_handle_zoom_revert"
	.size	.L__func__.gimp_display_shell_scale_handle_zoom_revert, 44

	.type	.L__func__.gimp_display_shell_scale_by_values,@object # @__func__.gimp_display_shell_scale_by_values
.L__func__.gimp_display_shell_scale_by_values:
	.asciz	"gimp_display_shell_scale_by_values"
	.size	.L__func__.gimp_display_shell_scale_by_values, 35

	.type	.L__func__.gimp_display_shell_scale_shrink_wrap,@object # @__func__.gimp_display_shell_scale_shrink_wrap
.L__func__.gimp_display_shell_scale_shrink_wrap:
	.asciz	"gimp_display_shell_scale_shrink_wrap"
	.size	.L__func__.gimp_display_shell_scale_shrink_wrap, 37

	.type	.L__func__.gimp_display_shell_scale_resize,@object # @__func__.gimp_display_shell_scale_resize
.L__func__.gimp_display_shell_scale_resize:
	.asciz	"gimp_display_shell_scale_resize"
	.size	.L__func__.gimp_display_shell_scale_resize, 32

	.type	.L__func__.gimp_display_shell_calculate_scale_x_and_y,@object # @__func__.gimp_display_shell_calculate_scale_x_and_y
.L__func__.gimp_display_shell_calculate_scale_x_and_y:
	.asciz	"gimp_display_shell_calculate_scale_x_and_y"
	.size	.L__func__.gimp_display_shell_calculate_scale_x_and_y, 43

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.6, 22

	.type	.L__func__.gimp_display_shell_set_initial_scale,@object # @__func__.gimp_display_shell_set_initial_scale
.L__func__.gimp_display_shell_set_initial_scale:
	.asciz	"gimp_display_shell_set_initial_scale"
	.size	.L__func__.gimp_display_shell_set_initial_scale, 37

	.type	.L__func__.gimp_display_shell_scale_to,@object # @__func__.gimp_display_shell_scale_to
.L__func__.gimp_display_shell_scale_to:
	.asciz	"gimp_display_shell_scale_to"
	.size	.L__func__.gimp_display_shell_scale_to, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
