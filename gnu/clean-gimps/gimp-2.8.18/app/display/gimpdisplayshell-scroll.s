	.text
	.file	"gimpdisplayshell-scroll.bc"
	.globl	gimp_display_shell_scroll_center_image_coordinate
	.align	16, 0x90
	.type	gimp_display_shell_scroll_center_image_coordinate,@function
gimp_display_shell_scroll_center_image_coordinate: # @gimp_display_shell_scroll_center_image_coordinate
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
	subq	$64, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	200(%rdi), %xmm0
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	208(%rdi), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	296(%rdi), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	-48(%rbp), %esi         # 4-byte Reload
	subl	%eax, %esi
	movq	-8(%rbp), %rdi
	subl	188(%rdi), %esi
	movl	%esi, -36(%rbp)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	300(%rdi), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-52(%rbp), %esi         # 4-byte Reload
	subl	%eax, %esi
	movq	-8(%rbp), %rdi
	subl	192(%rdi), %esi
	movl	%esi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_display_shell_scroll
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_scroll_center_image_coordinate, .Lfunc_end0-gimp_display_shell_scroll_center_image_coordinate
	.cfi_endproc

	.globl	gimp_display_shell_scroll
	.align	16, 0x90
	.type	gimp_display_shell_scroll,@function
gimp_display_shell_scroll:              # @gimp_display_shell_scroll
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_18
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	cmpl	$0, -12(%rbp)
	jne	.LBB1_15
# BB#13:                                # %land.lhs.true.12
	cmpl	$0, -16(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.14
	jmp	.LBB1_18
.LBB1_15:                               # %if.end.15
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	188(%rax), %ecx
	movl	%ecx, 188(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	192(%rax), %ecx
	movl	%ecx, 192(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_offsets
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	subl	-20(%rbp), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	subl	-24(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB1_17
# BB#16:                                # %lor.lhs.false
	cmpl	$0, -16(%rbp)
	je	.LBB1_18
.LBB1_17:                               # %if.then.24
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 188(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 192(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_pause
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	188(%rcx), %eax
	movl	%eax, 188(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	192(%rcx), %eax
	movl	%eax, 192(%rcx)
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %r8d
	subl	-12(%rbp), %r8d
	subl	-16(%rbp), %edx
	movq	%rax, %rdi
	movl	%r8d, %esi
	callq	gimp_overlay_box_scroll
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_update_scrollbars_and_rulers
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_resume
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scrolled
.LBB1_18:                               # %if.end.35
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_scroll, .Lfunc_end1-gimp_display_shell_scroll
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_display_shell_scroll_clamp_offsets
	.align	16, 0x90
	.type	gimp_display_shell_scroll_clamp_offsets,@function
gimp_display_shell_scroll_clamp_offsets: # @gimp_display_shell_scroll_clamp_offsets
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_clamp_offsets, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_33
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_32
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movq	-8(%rbp), %rdi
	mulsd	200(%rdi), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movq	-8(%rbp), %rdi
	mulsd	208(%rdi), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	296(%rdi), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB2_15
# BB#14:                                # %if.then.30
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -52(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.41
	xorl	%eax, %eax
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	296(%rcx), %xmm1
	cvtsi2sdl	-44(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -68(%rbp)
	subl	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	addl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	296(%rcx), %eax
	movl	%eax, -56(%rbp)
.LBB2_16:                               # %if.end.52
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	jge	.LBB2_18
# BB#17:                                # %if.then.55
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -60(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.67
	xorl	%eax, %eax
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	300(%rcx), %xmm1
	cvtsi2sdl	-48(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -72(%rbp)
	subl	-72(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	addl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	300(%rcx), %eax
	movl	%eax, -64(%rbp)
.LBB2_19:                               # %if.end.80
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$1, %edx
	movl	-52(%rbp), %r8d
	movq	-8(%rbp), %rsi
	cmpl	188(%rsi), %r8d
	cmovll	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_range_set_lower_stepper_sensitivity
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$1, %edx
	movl	-56(%rbp), %r8d
	movq	-8(%rbp), %rsi
	cmpl	188(%rsi), %r8d
	cmovgl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_range_set_upper_stepper_sensitivity
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$1, %edx
	movl	-60(%rbp), %r8d
	movq	-8(%rbp), %rsi
	cmpl	192(%rsi), %r8d
	cmovll	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_range_set_lower_stepper_sensitivity
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$1, %edx
	movl	-64(%rbp), %r8d
	movq	-8(%rbp), %rsi
	cmpl	192(%rsi), %r8d
	cmovgl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_range_set_upper_stepper_sensitivity
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB2_21
# BB#20:                                # %cond.true
	movl	-56(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB2_25
.LBB2_21:                               # %cond.false
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jge	.LBB2_23
# BB#22:                                # %cond.true.110
	movl	-52(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB2_24
.LBB2_23:                               # %cond.false.111
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB2_24:                               # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB2_25:                               # %cond.end.114
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 188(%rcx)
	movq	-8(%rbp), %rcx
	movl	192(%rcx), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB2_27
# BB#26:                                # %cond.true.120
	movl	-64(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB2_31
.LBB2_27:                               # %cond.false.121
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jge	.LBB2_29
# BB#28:                                # %cond.true.125
	movl	-60(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB2_30
.LBB2_29:                               # %cond.false.126
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB2_30:                               # %cond.end.128
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB2_31:                               # %cond.end.130
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 192(%rcx)
	jmp	.LBB2_33
.LBB2_32:                               # %if.else.133
	movq	-8(%rbp), %rax
	movl	$0, 188(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 192(%rax)
.LBB2_33:                               # %if.end.136
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_scroll_clamp_offsets, .Lfunc_end2-gimp_display_shell_scroll_clamp_offsets
	.cfi_endproc

	.globl	gimp_display_shell_scroll_set_offset
	.align	16, 0x90
	.type	gimp_display_shell_scroll_set_offset,@function
gimp_display_shell_scroll_set_offset:   # @gimp_display_shell_scroll_set_offset
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
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
	movabsq	$.L__func__.gimp_display_shell_scroll_set_offset, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB3_15
# BB#13:                                # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jne	.LBB3_15
# BB#14:                                # %if.then.16
	jmp	.LBB3_16
.LBB3_15:                               # %if.end.17
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_handle_zoom_revert
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_pause
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 188(%rdi)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 192(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_and_update
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scrolled
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_expose_full
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_resume
.LBB3_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_scroll_set_offset, .Lfunc_end3-gimp_display_shell_scroll_set_offset
	.cfi_endproc

	.globl	gimp_display_shell_scroll_clamp_and_update
	.align	16, 0x90
	.type	gimp_display_shell_scroll_clamp_and_update,@function
gimp_display_shell_scroll_clamp_and_update: # @gimp_display_shell_scroll_clamp_and_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_offsets
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_update_scrollbars_and_rulers
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_scroll_clamp_and_update, .Lfunc_end4-gimp_display_shell_scroll_clamp_and_update
	.cfi_endproc

	.globl	gimp_display_shell_scroll_unoverscrollify
	.align	16, 0x90
	.type	gimp_display_shell_scroll_unoverscrollify,@function
gimp_display_shell_scroll_unoverscrollify: # @gimp_display_shell_scroll_unoverscrollify
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_unoverscrollify, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_62
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB5_14
# BB#13:                                # %if.then.12
	leaq	-44(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_14:                               # %if.end.13
	cmpq	$0, -32(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.15
	leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_16:                               # %if.end.16
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_draw_get_scaled_image_size
	cmpl	$0, -12(%rbp)
	jge	.LBB5_27
# BB#17:                                # %if.then.18
	xorl	%eax, %eax
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%eax, %esi
	subl	188(%rdx), %esi
	cmpl	%esi, %eax
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jge	.LBB5_19
# BB#18:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %cond.false
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	188(%rcx), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB5_20:                               # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB5_22
# BB#21:                                # %cond.true.23
	movl	-12(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB5_26
.LBB5_22:                               # %cond.false.24
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edx
	subl	188(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB5_24
# BB#23:                                # %cond.true.28
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false.29
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	188(%rcx), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB5_25:                               # %cond.end.32
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB5_26:                               # %cond.end.34
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB5_39
.LBB5_27:                               # %if.else.36
	cmpl	$0, -12(%rbp)
	jle	.LBB5_38
# BB#28:                                # %if.then.38
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	296(%rdx), %ecx
	movl	%ecx, -76(%rbp)
	movl	-12(%rbp), %ecx
	movl	-76(%rbp), %esi
	movq	-8(%rbp), %rdx
	subl	188(%rdx), %esi
	cmpl	%esi, %eax
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jle	.LBB5_30
# BB#29:                                # %cond.true.44
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB5_31
.LBB5_30:                               # %cond.false.45
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	188(%rcx), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB5_31:                               # %cond.end.48
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_33
# BB#32:                                # %cond.true.51
	movl	-12(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB5_37
.LBB5_33:                               # %cond.false.52
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	188(%rdx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_35
# BB#34:                                # %cond.true.56
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB5_36
.LBB5_35:                               # %cond.false.57
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	188(%rcx), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB5_36:                               # %cond.end.60
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_37:                               # %cond.end.62
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB5_38:                               # %if.end.64
	jmp	.LBB5_39
.LBB5_39:                               # %if.end.65
	cmpl	$0, -16(%rbp)
	jge	.LBB5_50
# BB#40:                                # %if.then.67
	xorl	%eax, %eax
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%eax, %esi
	subl	192(%rdx), %esi
	cmpl	%esi, %eax
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jge	.LBB5_42
# BB#41:                                # %cond.true.70
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB5_43
.LBB5_42:                               # %cond.false.71
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	192(%rcx), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB5_43:                               # %cond.end.74
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB5_45
# BB#44:                                # %cond.true.77
	movl	-16(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB5_49
.LBB5_45:                               # %cond.false.78
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %edx
	subl	192(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB5_47
# BB#46:                                # %cond.true.82
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB5_48
.LBB5_47:                               # %cond.false.83
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	192(%rcx), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB5_48:                               # %cond.end.86
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB5_49:                               # %cond.end.88
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB5_62
.LBB5_50:                               # %if.else.90
	cmpl	$0, -16(%rbp)
	jle	.LBB5_61
# BB#51:                                # %if.then.92
	xorl	%eax, %eax
	movl	-40(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	300(%rdx), %ecx
	movl	%ecx, -80(%rbp)
	movl	-16(%rbp), %ecx
	movl	-80(%rbp), %esi
	movq	-8(%rbp), %rdx
	subl	192(%rdx), %esi
	cmpl	%esi, %eax
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jle	.LBB5_53
# BB#52:                                # %cond.true.99
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB5_54
.LBB5_53:                               # %cond.false.100
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	192(%rcx), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB5_54:                               # %cond.end.103
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_56
# BB#55:                                # %cond.true.106
	movl	-16(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB5_60
.LBB5_56:                               # %cond.false.107
	xorl	%eax, %eax
	movl	-80(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	192(%rdx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_58
# BB#57:                                # %cond.true.111
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB5_59
.LBB5_58:                               # %cond.false.112
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	192(%rcx), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB5_59:                               # %cond.end.115
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB5_60:                               # %cond.end.117
	movl	-140(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB5_61:                               # %if.end.119
	jmp	.LBB5_62
.LBB5_62:                               # %if.end.120
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_scroll_unoverscrollify, .Lfunc_end5-gimp_display_shell_scroll_unoverscrollify
	.cfi_endproc

	.globl	gimp_display_shell_scroll_center_image
	.align	16, 0x90
	.type	gimp_display_shell_scroll_center_image,@function
gimp_display_shell_scroll_center_image: # @gimp_display_shell_scroll_center_image
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_center_image, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_22
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB6_16
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB6_16
# BB#14:                                # %lor.lhs.false.15
	cmpl	$0, -16(%rbp)
	jne	.LBB6_17
# BB#15:                                # %land.lhs.true.17
	cmpl	$0, -12(%rbp)
	jne	.LBB6_17
.LBB6_16:                               # %if.then.19
	jmp	.LBB6_22
.LBB6_17:                               # %if.end.20
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_draw_get_scaled_image_size
	cmpl	$0, -12(%rbp)
	je	.LBB6_19
# BB#18:                                # %if.then.22
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	296(%rdx), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
.LBB6_19:                               # %if.end.23
	cmpl	$0, -16(%rbp)
	je	.LBB6_21
# BB#20:                                # %if.then.25
	movl	$2, %eax
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdx
	subl	300(%rdx), %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-64(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -32(%rbp)
.LBB6_21:                               # %if.end.28
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_display_shell_scroll_set_offset
.LBB6_22:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_scroll_center_image, .Lfunc_end6-gimp_display_shell_scroll_center_image
	.cfi_endproc

	.globl	gimp_display_shell_scroll_center_image_on_next_size_allocate
	.align	16, 0x90
	.type	gimp_display_shell_scroll_center_image_on_next_size_allocate,@function
gimp_display_shell_scroll_center_image_on_next_size_allocate: # @gimp_display_shell_scroll_center_image_on_next_size_allocate
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_center_image_on_next_size_allocate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_14
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_display_shell_scroll_center_image_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, (%rdi)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 12(%rdx)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 8(%rdx)
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB7_14:                               # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_scroll_center_image_on_next_size_allocate, .Lfunc_end7-gimp_display_shell_scroll_center_image_on_next_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scroll_center_image_callback,@function
gimp_display_shell_scroll_center_image_callback: # @gimp_display_shell_scroll_center_image_callback
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
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %esi
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %edx
	callq	gimp_display_shell_scroll_center_image
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$gimp_display_shell_scroll_center_image_callback, %rdi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %r9
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_scroll_center_image_callback, .Lfunc_end8-gimp_display_shell_scroll_center_image_callback
	.cfi_endproc

	.globl	gimp_display_shell_scroll_get_scaled_viewport
	.align	16, 0x90
	.type	gimp_display_shell_scroll_get_scaled_viewport,@function
gimp_display_shell_scroll_get_scaled_viewport: # @gimp_display_shell_scroll_get_scaled_viewport
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_get_scaled_viewport, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	296(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB9_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_scroll_get_scaled_viewport, .Lfunc_end9-gimp_display_shell_scroll_get_scaled_viewport
	.cfi_endproc

	.globl	gimp_display_shell_scroll_get_viewport
	.align	16, 0x90
	.type	gimp_display_shell_scroll_get_viewport,@function
gimp_display_shell_scroll_get_viewport: # @gimp_display_shell_scroll_get_viewport
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_get_viewport, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	200(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	192(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	208(%rax), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	200(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	208(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_scroll_get_viewport, .Lfunc_end10-gimp_display_shell_scroll_get_viewport
	.cfi_endproc

	.globl	gimp_display_shell_scroll_get_disp_offset
	.align	16, 0x90
	.type	gimp_display_shell_scroll_get_disp_offset,@function
gimp_display_shell_scroll_get_disp_offset: # @gimp_display_shell_scroll_get_disp_offset
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_get_disp_offset, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_22
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB11_17
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	jge	.LBB11_15
# BB#14:                                # %if.then.14
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	188(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.16
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB11_16:                              # %if.end.17
	jmp	.LBB11_17
.LBB11_17:                              # %if.end.18
	cmpq	$0, -24(%rbp)
	je	.LBB11_22
# BB#18:                                # %if.then.20
	movq	-8(%rbp), %rax
	cmpl	$0, 192(%rax)
	jge	.LBB11_20
# BB#19:                                # %if.then.22
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	192(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.25
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB11_21:                              # %if.end.26
	jmp	.LBB11_22
.LBB11_22:                              # %if.end.27
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_scroll_get_disp_offset, .Lfunc_end11-gimp_display_shell_scroll_get_disp_offset
	.cfi_endproc

	.globl	gimp_display_shell_scroll_get_render_start_offset
	.align	16, 0x90
	.type	gimp_display_shell_scroll_get_render_start_offset,@function
gimp_display_shell_scroll_get_render_start_offset: # @gimp_display_shell_scroll_get_render_start_offset
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_get_render_start_offset, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_19
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	cmpl	188(%rcx), %eax
	jle	.LBB12_14
# BB#13:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB12_15
.LBB12_14:                              # %cond.false
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB12_15:                              # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rdx
	cmpl	192(%rdx), %ecx
	jle	.LBB12_17
# BB#16:                                # %cond.true.16
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB12_18
.LBB12_17:                              # %cond.false.17
	movq	-8(%rbp), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB12_18:                              # %cond.end.19
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB12_19:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_scroll_get_render_start_offset, .Lfunc_end12-gimp_display_shell_scroll_get_render_start_offset
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_scroll_setup_hscrollbar
	.align	16, 0x90
	.type	gimp_display_shell_scroll_setup_hscrollbar,@function
gimp_display_shell_scroll_setup_hscrollbar: # @gimp_display_shell_scroll_setup_hscrollbar
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_setup_hscrollbar, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_34
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB13_14
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB13_15
.LBB13_14:                              # %if.then.15
	jmp	.LBB13_34
.LBB13_15:                              # %if.end.16
	leaq	-20(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_draw_get_scaled_image_size
	movq	-8(%rbp), %rdx
	movl	296(%rdx), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB13_23
# BB#16:                                # %if.then.18
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB13_18
# BB#17:                                # %cond.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB13_19
.LBB13_18:                              # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB13_19
.LBB13_19:                              # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_21
# BB#20:                                # %cond.true.24
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB13_22
.LBB13_21:                              # %cond.false.28
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB13_22:                              # %cond.end.30
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB13_30
.LBB13_23:                              # %if.else.32
	movl	$2, %eax
	xorl	%ecx, %ecx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movl	296(%rdx), %esi
	subl	-20(%rbp), %esi
	subl	%esi, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_25
# BB#24:                                # %cond.true.38
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB13_26
.LBB13_25:                              # %cond.false.39
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movl	296(%rdx), %esi
	subl	-20(%rbp), %esi
	subl	%esi, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-100(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB13_26:                              # %cond.end.45
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$2, %eax
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	296(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	296(%rcx), %esi
	subl	-20(%rbp), %esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -108(%rbp)        # 4-byte Spill
	cltd
	movl	-104(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-108(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cvtsi2sdl	%edi, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_28
# BB#27:                                # %cond.true.57
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB13_29
.LBB13_28:                              # %cond.false.61
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	296(%rdx), %esi
	subl	-20(%rbp), %esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-124(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB13_29:                              # %cond.end.67
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB13_30:                              # %if.end.69
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	200(%rcx), %xmm3        # xmm3 = mem[0],zero
	ucomisd	%xmm0, %xmm3
	movsd	%xmm2, -136(%rbp)       # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jbe	.LBB13_32
# BB#31:                                # %cond.true.72
	movq	-8(%rbp), %rax
	movsd	200(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB13_33
.LBB13_32:                              # %cond.false.74
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB13_33
.LBB13_33:                              # %cond.end.75
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movb	$3, %al
	callq	g_object_set
.LBB13_34:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_scroll_setup_hscrollbar, .Lfunc_end13-gimp_display_shell_scroll_setup_hscrollbar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_scroll_setup_vscrollbar
	.align	16, 0x90
	.type	gimp_display_shell_scroll_setup_vscrollbar,@function
gimp_display_shell_scroll_setup_vscrollbar: # @gimp_display_shell_scroll_setup_vscrollbar
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scroll_setup_vscrollbar, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_34
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB14_14
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB14_15
.LBB14_14:                              # %if.then.15
	jmp	.LBB14_34
.LBB14_15:                              # %if.end.16
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_draw_get_scaled_image_size
	movq	-8(%rbp), %rdx
	movl	300(%rdx), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB14_23
# BB#16:                                # %if.then.18
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB14_18
# BB#17:                                # %cond.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB14_19
.LBB14_18:                              # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB14_19
.LBB14_19:                              # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_21
# BB#20:                                # %cond.true.24
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB14_22
.LBB14_21:                              # %cond.false.28
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB14_22:                              # %cond.end.30
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB14_30
.LBB14_23:                              # %if.else.32
	movl	$2, %eax
	xorl	%ecx, %ecx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movl	300(%rdx), %esi
	subl	-20(%rbp), %esi
	subl	%esi, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_25
# BB#24:                                # %cond.true.38
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB14_26
.LBB14_25:                              # %cond.false.39
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movl	300(%rdx), %esi
	subl	-20(%rbp), %esi
	subl	%esi, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-100(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB14_26:                              # %cond.end.45
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$2, %eax
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	300(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	300(%rcx), %esi
	subl	-20(%rbp), %esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -108(%rbp)        # 4-byte Spill
	cltd
	movl	-104(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-108(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cvtsi2sdl	%edi, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_28
# BB#27:                                # %cond.true.57
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB14_29
.LBB14_28:                              # %cond.false.61
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	300(%rdx), %esi
	subl	-20(%rbp), %esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-124(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB14_29:                              # %cond.end.67
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB14_30:                              # %if.end.69
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	208(%rcx), %xmm3        # xmm3 = mem[0],zero
	ucomisd	%xmm0, %xmm3
	movsd	%xmm2, -136(%rbp)       # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	jbe	.LBB14_32
# BB#31:                                # %cond.true.72
	movq	-8(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB14_33
.LBB14_32:                              # %cond.false.74
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB14_33
.LBB14_33:                              # %cond.end.75
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movb	$3, %al
	callq	g_object_set
.LBB14_34:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_shell_scroll_setup_vscrollbar, .Lfunc_end14-gimp_display_shell_scroll_setup_vscrollbar
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_scroll,@object # @__func__.gimp_display_shell_scroll
.L__func__.gimp_display_shell_scroll:
	.asciz	"gimp_display_shell_scroll"
	.size	.L__func__.gimp_display_shell_scroll, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_scroll_set_offset,@object # @__func__.gimp_display_shell_scroll_set_offset
.L__func__.gimp_display_shell_scroll_set_offset:
	.asciz	"gimp_display_shell_scroll_set_offset"
	.size	.L__func__.gimp_display_shell_scroll_set_offset, 37

	.type	.L__func__.gimp_display_shell_scroll_clamp_offsets,@object # @__func__.gimp_display_shell_scroll_clamp_offsets
.L__func__.gimp_display_shell_scroll_clamp_offsets:
	.asciz	"gimp_display_shell_scroll_clamp_offsets"
	.size	.L__func__.gimp_display_shell_scroll_clamp_offsets, 40

	.type	.L__func__.gimp_display_shell_scroll_unoverscrollify,@object # @__func__.gimp_display_shell_scroll_unoverscrollify
.L__func__.gimp_display_shell_scroll_unoverscrollify:
	.asciz	"gimp_display_shell_scroll_unoverscrollify"
	.size	.L__func__.gimp_display_shell_scroll_unoverscrollify, 42

	.type	.L__func__.gimp_display_shell_scroll_center_image,@object # @__func__.gimp_display_shell_scroll_center_image
.L__func__.gimp_display_shell_scroll_center_image:
	.asciz	"gimp_display_shell_scroll_center_image"
	.size	.L__func__.gimp_display_shell_scroll_center_image, 39

	.type	.L__func__.gimp_display_shell_scroll_center_image_on_next_size_allocate,@object # @__func__.gimp_display_shell_scroll_center_image_on_next_size_allocate
.L__func__.gimp_display_shell_scroll_center_image_on_next_size_allocate:
	.asciz	"gimp_display_shell_scroll_center_image_on_next_size_allocate"
	.size	.L__func__.gimp_display_shell_scroll_center_image_on_next_size_allocate, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"size-allocate"
	.size	.L.str.2, 14

	.type	.L__func__.gimp_display_shell_scroll_get_scaled_viewport,@object # @__func__.gimp_display_shell_scroll_get_scaled_viewport
.L__func__.gimp_display_shell_scroll_get_scaled_viewport:
	.asciz	"gimp_display_shell_scroll_get_scaled_viewport"
	.size	.L__func__.gimp_display_shell_scroll_get_scaled_viewport, 46

	.type	.L__func__.gimp_display_shell_scroll_get_viewport,@object # @__func__.gimp_display_shell_scroll_get_viewport
.L__func__.gimp_display_shell_scroll_get_viewport:
	.asciz	"gimp_display_shell_scroll_get_viewport"
	.size	.L__func__.gimp_display_shell_scroll_get_viewport, 39

	.type	.L__func__.gimp_display_shell_scroll_get_disp_offset,@object # @__func__.gimp_display_shell_scroll_get_disp_offset
.L__func__.gimp_display_shell_scroll_get_disp_offset:
	.asciz	"gimp_display_shell_scroll_get_disp_offset"
	.size	.L__func__.gimp_display_shell_scroll_get_disp_offset, 42

	.type	.L__func__.gimp_display_shell_scroll_get_render_start_offset,@object # @__func__.gimp_display_shell_scroll_get_render_start_offset
.L__func__.gimp_display_shell_scroll_get_render_start_offset:
	.asciz	"gimp_display_shell_scroll_get_render_start_offset"
	.size	.L__func__.gimp_display_shell_scroll_get_render_start_offset, 50

	.type	.L__func__.gimp_display_shell_scroll_setup_hscrollbar,@object # @__func__.gimp_display_shell_scroll_setup_hscrollbar
.L__func__.gimp_display_shell_scroll_setup_hscrollbar:
	.asciz	"gimp_display_shell_scroll_setup_hscrollbar"
	.size	.L__func__.gimp_display_shell_scroll_setup_hscrollbar, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"lower"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"upper"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"step-increment"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_display_shell_scroll_setup_vscrollbar,@object # @__func__.gimp_display_shell_scroll_setup_vscrollbar
.L__func__.gimp_display_shell_scroll_setup_vscrollbar:
	.asciz	"gimp_display_shell_scroll_setup_vscrollbar"
	.size	.L__func__.gimp_display_shell_scroll_setup_vscrollbar, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
