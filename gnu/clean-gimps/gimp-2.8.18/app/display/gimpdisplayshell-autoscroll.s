	.text
	.file	"gimpdisplayshell-autoscroll.bc"
	.globl	gimp_display_shell_autoscroll_start
	.align	16, 0x90
	.type	gimp_display_shell_autoscroll_start,@function
gimp_display_shell_autoscroll_start:    # @gimp_display_shell_autoscroll_start
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_autoscroll_start, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 760(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.12
	jmp	.LBB0_15
.LBB0_14:                               # %if.end.13
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_device_info_get_by_device
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_get_time
	movl	$20, %edi
	movabsq	$gimp_display_shell_autoscroll_timeout, %rsi
	movq	-32(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	callq	g_timeout_add
	movq	-32(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 760(%rdx)
.LBB0_15:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_autoscroll_start, .Lfunc_end0-gimp_display_shell_autoscroll_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	gimp_display_shell_autoscroll_timeout,@function
gimp_display_shell_autoscroll_timeout:  # @gimp_display_shell_autoscroll_timeout
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	leaq	-96(%rbp), %rdx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_device_info_get_device_coords
	xorps	%xmm0, %xmm0
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	cvttsd2si	-96(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_4
# BB#3:                                 # %if.then.8
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -164(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.13
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB1_7
# BB#6:                                 # %if.then.16
	cvttsd2si	-88(%rbp), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB1_10
.LBB1_7:                                # %if.else.19
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_9
# BB#8:                                 # %if.then.24
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -168(%rbp)
.LBB1_9:                                # %if.end.30
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.31
	cmpl	$0, -164(%rbp)
	jne	.LBB1_12
# BB#11:                                # %lor.lhs.false
	cmpl	$0, -168(%rbp)
	je	.LBB1_15
.LBB1_12:                               # %if.then.33
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -184(%rbp)
	cvtsi2sdl	-164(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, -188(%rbp)
	cvtsi2sdl	-168(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -192(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	addl	$20, %edx
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rdi
	movl	-188(%rbp), %esi
	movl	-192(%rbp), %edx
	callq	gimp_display_shell_scroll_unoverscrollify
	movq	-24(%rbp), %rdi
	movl	-188(%rbp), %esi
	movl	-192(%rbp), %edx
	callq	gimp_display_shell_scroll
	leaq	-96(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_untransform_coords
	movq	-184(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_snap_to
	cmpl	$0, %eax
	je	.LBB1_14
# BB#13:                                # %if.then.43
	leaq	-196(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	leaq	-204(%rbp), %rcx
	leaq	-208(%rbp), %r8
	movq	-184(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_snap_offsets
	leaq	-160(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	movl	-204(%rbp), %r8d
	movl	-208(%rbp), %r9d
	callq	gimp_display_shell_snap_coords
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB1_14:                               # %if.end.48
	leaq	-160(%rbp), %rsi
	movq	-176(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-176(%rbp), %r8
	callq	tool_manager_motion_active
	movl	$1, -4(%rbp)
	jmp	.LBB1_18
.LBB1_15:                               # %if.else.51
	jmp	.LBB1_16
.LBB1_16:                               # %do.body
	movl	$32, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#17:                                # %do.end
	movq	-24(%rbp), %rax
	movq	$0, 760(%rax)
	movl	$0, -4(%rbp)
.LBB1_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_autoscroll_timeout, .Lfunc_end1-gimp_display_shell_autoscroll_timeout
	.cfi_endproc

	.globl	gimp_display_shell_autoscroll_stop
	.align	16, 0x90
	.type	gimp_display_shell_autoscroll_stop,@function
gimp_display_shell_autoscroll_stop:     # @gimp_display_shell_autoscroll_stop
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
	subq	$48, %rsp
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
	movabsq	$.L__func__.gimp_display_shell_autoscroll_stop, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_19
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 760(%rax)
	jne	.LBB2_14
# BB#13:                                # %if.then.12
	jmp	.LBB2_19
.LBB2_14:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB2_16
# BB#15:                                # %if.then.16
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 24(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB2_16:                               # %if.end.20
	jmp	.LBB2_17
.LBB2_17:                               # %do.body.21
	movl	$32, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#18:                                # %do.end.22
	movq	-8(%rbp), %rax
	movq	$0, 760(%rax)
.LBB2_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_autoscroll_stop, .Lfunc_end2-gimp_display_shell_autoscroll_stop
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_autoscroll_start,@object # @__func__.gimp_display_shell_autoscroll_start
.L__func__.gimp_display_shell_autoscroll_start:
	.asciz	"gimp_display_shell_autoscroll_start"
	.size	.L__func__.gimp_display_shell_autoscroll_start, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_autoscroll_stop,@object # @__func__.gimp_display_shell_autoscroll_stop
.L__func__.gimp_display_shell_autoscroll_stop:
	.asciz	"gimp_display_shell_autoscroll_stop"
	.size	.L__func__.gimp_display_shell_autoscroll_stop, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
