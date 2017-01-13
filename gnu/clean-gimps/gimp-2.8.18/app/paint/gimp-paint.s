	.text
	.file	"gimp-paint.bc"
	.globl	gimp_paint_init
	.align	16, 0x90
	.type	gimp_paint_init,@function
gimp_paint_init:                        # @gimp_paint_init
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
	subq	$144, %rsp
	movabsq	$.Lgimp_paint_init.register_funcs, %rax
	movl	$88, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_17
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	callq	gimp_paint_info_get_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movq	-8(%rbp), %rdi
	movq	%rax, 344(%rdi)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gimp_container_freeze
	movl	$0, -100(%rbp)
.LBB0_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-100(%rbp), %rax
	cmpq	$11, %rax
	jae	.LBB0_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$gimp_paint_register, %rsi
	movslq	-100(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_13
.LBB0_16:                               # %for.end
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gimp_container_thaw
.LBB0_17:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paint_init, .Lfunc_end0-gimp_paint_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_register,@function
gimp_paint_register:                    # @gimp_paint_register
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_register, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_34
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.15
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_register, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_34
.LBB1_16:                               # %if.end.17
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.18
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.19
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB1_20
# BB#19:                                # %if.then.23
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_register, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_34
.LBB1_21:                               # %if.end.25
	jmp	.LBB1_22
.LBB1_22:                               # %do.end.26
	jmp	.LBB1_23
.LBB1_23:                               # %do.body.27
	cmpq	$0, -32(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.29
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.30
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_register, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_34
.LBB1_26:                               # %if.end.31
	jmp	.LBB1_27
.LBB1_27:                               # %do.end.32
	jmp	.LBB1_28
.LBB1_28:                               # %do.body.33
	cmpq	$0, -40(%rbp)
	je	.LBB1_30
# BB#29:                                # %if.then.35
	jmp	.LBB1_31
.LBB1_30:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_register, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_34
.LBB1_31:                               # %if.end.37
	jmp	.LBB1_32
.LBB1_32:                               # %do.end.38
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	gimp_paint_info_new
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-16(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_paintbrush_get_type
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_34
# BB#33:                                # %if.then.45
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_paint_info_set_standard
.LBB1_34:                               # %if.end.46
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paint_register, .Lfunc_end1-gimp_paint_register
	.cfi_endproc

	.globl	gimp_paint_exit
	.align	16, 0x90
	.type	gimp_paint_exit,@function
gimp_paint_exit:                        # @gimp_paint_exit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_paint_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_14
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_paint_info_set_standard
	movq	-8(%rbp), %rsi
	cmpq	$0, 344(%rsi)
	je	.LBB2_14
# BB#13:                                # %if.then.12
	movabsq	$g_object_run_dispose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	344(%rsi), %rdi
	movq	%rax, %rsi
	callq	gimp_container_foreach
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 344(%rax)
.LBB2_14:                               # %if.end.16
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_paint_exit, .Lfunc_end2-gimp_paint_exit
	.cfi_endproc

	.type	.Lgimp_paint_init.register_funcs,@object # @gimp_paint_init.register_funcs
	.section	.rodata,"a",@progbits
	.align	16
.Lgimp_paint_init.register_funcs:
	.quad	gimp_dodge_burn_register
	.quad	gimp_smudge_register
	.quad	gimp_convolve_register
	.quad	gimp_perspective_clone_register
	.quad	gimp_heal_register
	.quad	gimp_clone_register
	.quad	gimp_ink_register
	.quad	gimp_airbrush_register
	.quad	gimp_eraser_register
	.quad	gimp_paintbrush_register
	.quad	gimp_pencil_register
	.size	.Lgimp_paint_init.register_funcs, 88

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Paint"
	.size	.L.str, 11

	.type	.L__func__.gimp_paint_init,@object # @__func__.gimp_paint_init
.L__func__.gimp_paint_init:
	.asciz	"gimp_paint_init"
	.size	.L__func__.gimp_paint_init, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"paint infos"
	.size	.L.str.2, 12

	.type	.L__func__.gimp_paint_exit,@object # @__func__.gimp_paint_exit
.L__func__.gimp_paint_exit:
	.asciz	"gimp_paint_exit"
	.size	.L__func__.gimp_paint_exit, 16

	.type	.L__func__.gimp_paint_register,@object # @__func__.gimp_paint_register
.L__func__.gimp_paint_register:
	.asciz	"gimp_paint_register"
	.size	.L__func__.gimp_paint_register, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (paint_type, GIMP_TYPE_PAINT_CORE)"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"g_type_is_a (paint_options_type, GIMP_TYPE_PAINT_OPTIONS)"
	.size	.L.str.4, 58

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"identifier != NULL"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"blurb != NULL"
	.size	.L.str.6, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
