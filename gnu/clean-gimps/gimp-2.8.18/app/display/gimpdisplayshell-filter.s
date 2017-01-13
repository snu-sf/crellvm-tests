	.text
	.file	"gimpdisplayshell-filter.bc"
	.globl	gimp_display_shell_filter_set
	.align	16, 0x90
	.type	gimp_display_shell_filter_set,@function
gimp_display_shell_filter_set:          # @gimp_display_shell_filter_set
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_filter_set, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_32
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_display_stack_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_filter_set, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_32
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	640(%rcx), %rax
	jne	.LBB0_27
# BB#26:                                # %if.then.41
	jmp	.LBB0_32
.LBB0_27:                               # %if.end.42
	movq	-8(%rbp), %rax
	cmpq	$0, 640(%rax)
	je	.LBB0_29
# BB#28:                                # %if.then.45
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_display_shell_filter_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	640(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	640(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB0_29:                               # %if.end.49
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 640(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 640(%rax)
	je	.LBB0_31
# BB#30:                                # %if.then.53
	movq	-8(%rbp), %rax
	movq	640(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_display_shell_filter_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	640(%rdx), %rdx
	movq	-8(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_31:                               # %if.end.58
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_display_shell_filter_changed
.LBB0_32:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_filter_set, .Lfunc_end0-gimp_display_shell_filter_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_filter_changed,@function
gimp_display_shell_filter_changed:      # @gimp_display_shell_filter_changed
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 648(%rsi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	648(%rax), %edi
	callq	g_source_remove
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB1_2:                                # %if.end
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_display_shell_filter_changed_idle, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	callq	g_idle_add_full
	movq	-16(%rbp), %rcx
	movl	%eax, 648(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_filter_changed, .Lfunc_end1-gimp_display_shell_filter_changed
	.cfi_endproc

	.globl	gimp_display_shell_filter_new
	.align	16, 0x90
	.type	gimp_display_shell_filter_new,@function
gimp_display_shell_filter_new:          # @gimp_display_shell_filter_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_filter_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_29
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_config_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_filter_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_29
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_28
# BB#25:                                # %if.then.40
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_type_from_name
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_display_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB2_27
# BB#26:                                # %if.then.47
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %r8
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -88(%rbp)
	callq	gimp_color_display_stack_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_color_display_stack_add
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_29
.LBB2_27:                               # %if.end.52
	jmp	.LBB2_28
.LBB2_28:                               # %if.end.53
	movq	$0, -8(%rbp)
.LBB2_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_filter_new, .Lfunc_end2-gimp_display_shell_filter_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_filter_changed_idle,@function
gimp_display_shell_filter_changed_idle: # @gimp_display_shell_filter_changed_idle
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_expose_full
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	$0, 648(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_filter_changed_idle, .Lfunc_end3-gimp_display_shell_filter_changed_idle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_filter_set,@object # @__func__.gimp_display_shell_filter_set
.L__func__.gimp_display_shell_filter_set:
	.asciz	"gimp_display_shell_filter_set"
	.size	.L__func__.gimp_display_shell_filter_set, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"stack == NULL || GIMP_IS_COLOR_DISPLAY_STACK (stack)"
	.size	.L.str.2, 53

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"changed"
	.size	.L.str.3, 8

	.type	.L__func__.gimp_display_shell_filter_new,@object # @__func__.gimp_display_shell_filter_new
.L__func__.gimp_display_shell_filter_new:
	.asciz	"gimp_display_shell_filter_new"
	.size	.L__func__.gimp_display_shell_filter_new, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_COLOR_CONFIG (config)"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"color-config"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color-managed"
	.size	.L.str.6, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
