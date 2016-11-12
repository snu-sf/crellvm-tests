	.text
	.file	"gimpdisplayshell-icon.bc"
	.globl	gimp_display_shell_icon_update
	.align	16, 0x90
	.type	gimp_display_shell_icon_update,@function
gimp_display_shell_icon_update:         # @gimp_display_shell_icon_update
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
	subq	$48, %rsp
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
	movabsq	$.L__func__.gimp_display_shell_icon_update, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_icon_update_stop
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB0_14
# BB#13:                                # %if.then.13
	movl	$300, %edi              # imm = 0x12C
	movl	$1000, %esi             # imm = 0x3E8
	movabsq	$gimp_display_shell_icon_update_idle, %rdx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rcx
	callq	g_timeout_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 556(%rcx)
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_display_shell_icon_update_idle
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB0_15:                               # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_icon_update, .Lfunc_end0-gimp_display_shell_icon_update
	.cfi_endproc

	.globl	gimp_display_shell_icon_update_stop
	.align	16, 0x90
	.type	gimp_display_shell_icon_update_stop,@function
gimp_display_shell_icon_update_stop:    # @gimp_display_shell_icon_update_stop
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
	subq	$48, %rsp
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
	movabsq	$.L__func__.gimp_display_shell_icon_update_stop, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_14
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 556(%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	556(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 556(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_14:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_icon_update_stop, .Lfunc_end1-gimp_display_shell_icon_update_stop
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_icon_update_idle,@function
gimp_display_shell_icon_update_idle:    # @gimp_display_shell_icon_update_idle
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 556(%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB2_17
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB2_9
# BB#2:                                 # %if.then.9
	movq	-16(%rbp), %rax
	cmpl	$1, 552(%rax)
	jle	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	552(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	552(%rcx), %xmm1
	divsd	-56(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_7
# BB#6:                                 # %cond.true.18
	movq	-16(%rbp), %rax
	cvtsi2sdl	552(%rax), %xmm0
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false.22
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end.23
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_16
.LBB2_9:                                # %if.else
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	552(%rax), %xmm1
	mulsd	-56(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_11
# BB#10:                                # %cond.true.30
	movq	-16(%rbp), %rax
	cvtsi2sdl	552(%rax), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB2_12
.LBB2_11:                               # %cond.false.34
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB2_12
.LBB2_12:                               # %cond.end.35
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$1, 552(%rcx)
	jle	.LBB2_14
# BB#13:                                # %cond.true.41
	movq	-16(%rbp), %rax
	movl	552(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB2_15
.LBB2_14:                               # %cond.false.43
	movl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB2_15
.LBB2_15:                               # %cond.end.44
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
.LBB2_16:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_get_pixbuf
	movq	%rax, -32(%rbp)
.LBB2_17:                               # %if.end.50
	movabsq	$.L.str.2, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_icon_update_idle, .Lfunc_end2-gimp_display_shell_icon_update_idle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_icon_update,@object # @__func__.gimp_display_shell_icon_update
.L__func__.gimp_display_shell_icon_update:
	.asciz	"gimp_display_shell_icon_update"
	.size	.L__func__.gimp_display_shell_icon_update, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_icon_update_stop,@object # @__func__.gimp_display_shell_icon_update_stop
.L__func__.gimp_display_shell_icon_update_stop:
	.asciz	"gimp_display_shell_icon_update_stop"
	.size	.L__func__.gimp_display_shell_icon_update_stop, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"icon"
	.size	.L.str.2, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
