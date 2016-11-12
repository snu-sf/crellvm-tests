	.text
	.file	"gimppatternselectbutton.bc"
	.globl	gimp_pattern_select_button_get_type
	.align	16, 0x90
	.type	gimp_pattern_select_button_get_type,@function
gimp_pattern_select_button_get_type:    # @gimp_pattern_select_button_get_type
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
	movq	gimp_pattern_select_button_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_pattern_select_button_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gimp_select_button_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$936, %edx              # imm = 0x3A8
	leaq	gimp_pattern_select_button_class_intern_init(%rip), %rdi
	movl	$136, %r8d
	leaq	gimp_pattern_select_button_init(%rip), %rcx
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
	leaq	gimp_pattern_select_button_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_pattern_select_button_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pattern_select_button_get_type, .Lfunc_end0-gimp_pattern_select_button_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_class_intern_init,@function
gimp_pattern_select_button_class_intern_init: # @gimp_pattern_select_button_class_intern_init
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
	movq	%rax, gimp_pattern_select_button_parent_class(%rip)
	cmpl	$0, GimpPatternSelectButton_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpPatternSelectButton_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pattern_select_button_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pattern_select_button_class_intern_init, .Lfunc_end1-gimp_pattern_select_button_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_init,@function
gimp_pattern_select_button_init:        # @gimp_pattern_select_button_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_pattern@PLT
	leaq	-20(%rbp), %r8
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	-16(%rbp), %rsi
	addq	$20, %rsi
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	gimp_pattern_get_pixels@PLT
	movq	-8(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_pattern_select_button_create_inside
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pattern_select_button_init, .Lfunc_end2-gimp_pattern_select_button_init
	.cfi_endproc

	.globl	gimp_pattern_select_button_new
	.align	16, 0x90
	.type	gimp_pattern_select_button_new,@function
gimp_pattern_select_button_new:         # @gimp_pattern_select_button_new
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_pattern_select_button_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	callq	gimp_pattern_select_button_get_type@PLT
	leaq	.L.str.2(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -24(%rbp)
.LBB3_3:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pattern_select_button_new, .Lfunc_end3-gimp_pattern_select_button_new
	.cfi_endproc

	.globl	gimp_pattern_select_button_get_pattern
	.align	16, 0x90
	.type	gimp_pattern_select_button_get_pattern,@function
gimp_pattern_select_button_get_pattern: # @gimp_pattern_select_button_get_pattern
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pattern_select_button_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_pattern_select_button_get_pattern(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pattern_select_button_get_pattern, .Lfunc_end4-gimp_pattern_select_button_get_pattern
	.cfi_endproc

	.globl	gimp_pattern_select_button_set_pattern
	.align	16, 0x90
	.type	gimp_pattern_select_button_set_pattern,@function
gimp_pattern_select_button_set_pattern: # @gimp_pattern_select_button_set_pattern
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pattern_select_button_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_pattern_select_button_set_pattern(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_21
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_patterns_set_popup@PLT
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB5_21
.LBB5_14:                               # %if.else.17
	cmpq	$0, -16(%rbp)
	je	.LBB5_17
# BB#15:                                # %land.lhs.true.25
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_17
# BB#16:                                # %if.then.27
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.29
	callq	gimp_context_get_pattern@PLT
	movq	%rax, -56(%rbp)
.LBB5_18:                               # %if.end.31
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-80(%rbp), %r9
	movq	-56(%rbp), %rdi
	callq	gimp_pattern_get_pixels@PLT
	cmpl	$0, %eax
	je	.LBB5_20
# BB#19:                                # %if.then.34
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movq	-80(%rbp), %r8
	movq	-8(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gimp_pattern_select_button_callback
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
.LBB5_20:                               # %if.end.35
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB5_21:                               # %if.end.36
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pattern_select_button_set_pattern, .Lfunc_end5-gimp_pattern_select_button_set_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_callback,@function
gimp_pattern_select_button_callback:    # @gimp_pattern_select_button_callback
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
	subq	$128, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	-12(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-16(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movl	%ecx, %esi
	callq	g_memdup@PLT
	movq	-64(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_pattern_select_preview_update
	cmpl	$0, -36(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	$0, 128(%rax)
.LBB6_2:                                # %if.end
	xorl	%edx, %edx
	movq	-56(%rbp), %rax
	movl	pattern_button_signals(%rip), %esi
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-20(%rbp), %edi
	movl	-36(%rbp), %r10d
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	g_signal_emit@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pattern_select_button_callback, .Lfunc_end6-gimp_pattern_select_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_class_init,@function
gimp_pattern_select_button_class_init:  # @gimp_pattern_select_button_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp24:
	.cfi_offset %rbx, -48
.Ltmp25:
	.cfi_offset %r12, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movq	gimp_pattern_select_destroy@GOTPCREL(%rip), %rcx
	leaq	gimp_pattern_select_button_get_property(%rip), %rdx
	leaq	gimp_pattern_select_button_set_property(%rip), %r8
	leaq	gimp_pattern_select_button_finalize(%rip), %r9
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%rcx, 832(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 896(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	movl	$235, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$2, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.11(%rip), %rdi
	movl	$1, %edx
	movl	$896, %ecx              # imm = 0x380
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	_gimpui_marshal_VOID__STRING_INT_INT_INT_POINTER_BOOLEAN@GOTPCREL(%rip), %r9
	movl	$4, %esi
	movl	%esi, %r10d
	movl	$6, %esi
	movl	$64, %r8d
	movl	%r8d, %r11d
	movl	$24, %r8d
	movl	%r8d, %ebx
	movl	$68, %r8d
	movl	%r8d, %r14d
	movl	$20, %r8d
	movl	%r8d, %r15d
	movq	-40(%rbp), %r12
	movq	(%r12), %r12
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%r12, %rsi
	movq	%rax, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$4, 8(%rsp)
	movl	$6, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	$24, 32(%rsp)
	movq	$24, 40(%rsp)
	movq	$24, 48(%rsp)
	movq	$68, 56(%rsp)
	movq	$20, 64(%rsp)
	movb	$0, %al
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	%r11, -120(%rbp)        # 8-byte Spill
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	movl	$64, %ecx
	movl	%ecx, %esi
	movl	%eax, pattern_button_signals(%rip)
	movq	-48(%rbp), %rdi
	callq	g_type_class_add_private@PLT
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pattern_select_button_class_init, .Lfunc_end7-gimp_pattern_select_button_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_finalize,@function
gimp_pattern_select_button_finalize:    # @gimp_pattern_select_button_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	gimp_pattern_select_button_parent_class(%rip), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pattern_select_button_finalize, .Lfunc_end8-gimp_pattern_select_button_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_set_property,@function
gimp_pattern_select_button_set_property: # @gimp_pattern_select_button_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_3
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pattern_select_button_set_pattern@PLT
	jmp	.LBB9_6
.LBB9_3:                                # %sw.default
	jmp	.LBB9_4
.LBB9_4:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	movl	$389, %edx              # imm = 0x185
	leaq	.L.str.14(%rip), %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_pattern_select_button_set_property, .Lfunc_end9-gimp_pattern_select_button_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_get_property,@function
gimp_pattern_select_button_get_property: # @gimp_pattern_select_button_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_7
.LBB10_7:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_3
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB10_6
.LBB10_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB10_6
.LBB10_3:                               # %sw.default
	jmp	.LBB10_4
.LBB10_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	movl	$415, %edx              # imm = 0x19F
	leaq	.L.str.14(%rip), %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_pattern_select_button_get_property, .Lfunc_end10-gimp_pattern_select_button_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
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
	leaq	.L.str.3(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_create_inside,@function
gimp_pattern_select_button_create_inside: # @gimp_pattern_select_button_create_inside
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	callq	gtk_widget_push_composite_child@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, -16(%rbp)
	callq	gtk_frame_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	callq	gimp_preview_area_new@PLT
	movl	$768, %esi              # imm = 0x300
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_add_events@PLT
	movl	$20, %ecx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	gimp_pattern_select_preview_resize(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.16(%rip), %rsi
	leaq	gimp_pattern_select_preview_events(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	-40(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	target(%rip), %rdx
	movl	$1, %ecx
	movl	$2, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	gimp_pattern_select_drag_data_received(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start@PLT
	leaq	.L.str.19(%rip), %rsi
	leaq	gimp_pattern_select_button_clicked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_show_all@PLT
	callq	gtk_widget_pop_composite_child@PLT
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_pattern_select_button_create_inside, .Lfunc_end12-gimp_pattern_select_button_create_inside
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_preview_resize,@function
gimp_pattern_select_preview_resize:     # @gimp_pattern_select_preview_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB13_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB13_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	callq	gimp_pattern_select_preview_update
.LBB13_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_pattern_select_preview_resize, .Lfunc_end13-gimp_pattern_select_preview_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_preview_events,@function
gimp_pattern_select_preview_events:     # @gimp_pattern_select_preview_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB14_10
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$4, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_11
.LBB14_11:                              # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB14_5
	jmp	.LBB14_8
.LBB14_2:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	gtk_grab_add@PLT
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	gimp_pattern_select_button_open_popup
.LBB14_4:                               # %if.end
	jmp	.LBB14_9
.LBB14_5:                               # %sw.bb.5
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB14_7
# BB#6:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-24(%rbp), %rdi
	callq	gimp_pattern_select_button_close_popup
.LBB14_7:                               # %if.end.10
	jmp	.LBB14_9
.LBB14_8:                               # %sw.default
	jmp	.LBB14_9
.LBB14_9:                               # %sw.epilog
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.11
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_pattern_select_preview_events, .Lfunc_end14-gimp_pattern_select_preview_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_drag_data_received,@function
gimp_pattern_select_drag_data_received: # @gimp_pattern_select_drag_data_received
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length@PLT
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_format@PLT
	cmpl	$8, %eax
	jne	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jge	.LBB15_3
.LBB15_2:                               # %if.then
	leaq	.L.str.21(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB15_10
.LBB15_3:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_data@PLT
	movslq	-44(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strndup@PLT
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB15_9
# BB#4:                                 # %if.then.6
	leaq	.L.str.22(%rip), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movl	$0, -76(%rbp)
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jl	.LBB15_8
# BB#5:                                 # %land.lhs.true
	movl	-60(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_getpid@PLT
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB15_8
# BB#6:                                 # %land.lhs.true.13
	cmpl	$0, -76(%rbp)
	jle	.LBB15_8
# BB#7:                                 # %if.then.16
	movq	-56(%rbp), %rax
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_pattern_select_button_set_pattern@PLT
.LBB15_8:                               # %if.end.17
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.18
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB15_10:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_pattern_select_drag_data_received, .Lfunc_end15-gimp_pattern_select_drag_data_received
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_clicked,@function
gimp_pattern_select_button_clicked:     # @gimp_pattern_select_button_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_patterns_set_popup@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	leaq	gimp_pattern_select_button_callback(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_pattern_select_new@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, 128(%rcx)
.LBB16_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_pattern_select_button_clicked, .Lfunc_end16-gimp_pattern_select_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_preview_update,@function
gimp_pattern_select_preview_update:     # @gimp_pattern_select_preview_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	-20(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %edi
	subl	$3, %ecx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	ja	.LBB17_5
# BB#8:                                 # %entry
	leaq	.LJTI17_0(%rip), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB17_1:                               # %sw.bb
	movl	$2, -36(%rbp)
	jmp	.LBB17_6
.LBB17_2:                               # %sw.bb.1
	movl	$3, -36(%rbp)
	jmp	.LBB17_6
.LBB17_3:                               # %sw.bb.2
	movl	$0, -36(%rbp)
	jmp	.LBB17_6
.LBB17_4:                               # %sw.bb.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_6
.LBB17_5:                               # %sw.default
	jmp	.LBB17_7
.LBB17_6:                               # %sw.epilog
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %r10d
	imull	-20(%rbp), %r10d
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
.LBB17_7:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_pattern_select_preview_update, .Lfunc_end17-gimp_pattern_select_preview_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI17_0:
	.long	.LBB17_1-.LJTI17_0
	.long	.LBB17_2-.LJTI17_0
	.long	.LBB17_3-.LJTI17_0
	.long	.LBB17_4-.LJTI17_0

	.text
	.align	16, 0x90
	.type	gimp_pattern_select_button_open_popup,@function
gimp_pattern_select_button_open_popup:  # @gimp_pattern_select_button_open_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_pattern_select_button_close_popup
.LBB18_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$20, 16(%rax)
	jg	.LBB18_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$20, 20(%rax)
	jg	.LBB18_5
# BB#4:                                 # %if.then.3
	jmp	.LBB18_18
.LBB18_5:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_screen@PLT
	movl	$1, %edi
	movq	%rax, -48(%rbp)
	callq	gtk_window_new@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$13, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_type_hint@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_preview_area_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	callq	gtk_widget_set_size_request@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin@PLT
	movq	-48(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gdk_screen_get_width@PLT
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_screen_get_height@PLT
	movl	$2, %ecx
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	addl	-12(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %r8d
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-128(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -12(%rbp)
	movl	-56(%rbp), %eax
	addl	-16(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	20(%rsi), %r8d
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB18_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB18_8:                               # %cond.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	cmpl	$0, -16(%rbp)
	jge	.LBB18_10
# BB#9:                                 # %cond.true.39
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB18_11
.LBB18_10:                              # %cond.false.40
	movl	-16(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB18_11:                              # %cond.end.41
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	16(%rcx), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB18_13
# BB#12:                                # %cond.true.46
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	16(%rcx), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB18_14
.LBB18_13:                              # %cond.false.49
	movl	-12(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB18_14:                              # %cond.end.50
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	20(%rcx), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB18_16
# BB#15:                                # %cond.true.55
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	20(%rcx), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB18_17
.LBB18_16:                              # %cond.false.58
	movl	-16(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB18_17:                              # %cond.end.59
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_move@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	32(%rax), %r8
	callq	gimp_pattern_select_preview_update
.LBB18_18:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_pattern_select_button_open_popup, .Lfunc_end18-gimp_pattern_select_button_open_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pattern_select_button_close_popup,@function
gimp_pattern_select_button_close_popup: # @gimp_pattern_select_button_close_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pattern_select_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB19_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_pattern_select_button_close_popup, .Lfunc_end19-gimp_pattern_select_button_close_popup
	.cfi_endproc

	.type	gimp_pattern_select_button_get_type.g_define_type_id__volatile,@object # @gimp_pattern_select_button_get_type.g_define_type_id__volatile
	.local	gimp_pattern_select_button_get_type.g_define_type_id__volatile
	.comm	gimp_pattern_select_button_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPatternSelectButton"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"title"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"pattern-name"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"LibGimp"
	.size	.L.str.3, 8

	.type	.L__func__.gimp_pattern_select_button_get_pattern,@object # @__func__.gimp_pattern_select_button_get_pattern
.L__func__.gimp_pattern_select_button_get_pattern:
	.asciz	"gimp_pattern_select_button_get_pattern"
	.size	.L__func__.gimp_pattern_select_button_get_pattern, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_PATTERN_SELECT_BUTTON (button)"
	.size	.L.str.4, 39

	.type	.L__func__.gimp_pattern_select_button_set_pattern,@object # @__func__.gimp_pattern_select_button_set_pattern
.L__func__.gimp_pattern_select_button_set_pattern:
	.asciz	"gimp_pattern_select_button_set_pattern"
	.size	.L__func__.gimp_pattern_select_button_set_pattern, 39

	.type	gimp_pattern_select_button_parent_class,@object # @gimp_pattern_select_button_parent_class
	.local	gimp_pattern_select_button_parent_class
	.comm	gimp_pattern_select_button_parent_class,8,8
	.type	GimpPatternSelectButton_private_offset,@object # @GimpPatternSelectButton_private_offset
	.local	GimpPatternSelectButton_private_offset
	.comm	GimpPatternSelectButton_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Title"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The title to be used for the pattern selection popup dialog"
	.size	.L.str.6, 60

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-libgimp"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Pattern Selection"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Pattern name"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The name of the currently selected pattern"
	.size	.L.str.10, 43

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"pattern-set"
	.size	.L.str.11, 12

	.type	pattern_button_signals,@object # @pattern_button_signals
	.local	pattern_button_signals
	.comm	pattern_button_signals,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimppatternselectbutton.c"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"size-allocate"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"event"
	.size	.L.str.16, 6

	.type	target,@object          # @target
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
target:
	.quad	.L.str.20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	target, 16

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"drag-data-received"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Browse..."
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"clicked"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"application/x-gimp-pattern-name"
	.size	.L.str.20, 32

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Received invalid pattern data!"
	.size	.L.str.21, 31

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%i:%p:%n"
	.size	.L.str.22, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
