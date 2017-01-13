	.text
	.file	"gimpdrawable-color-balance.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_drawable_color_balance
	.align	16, 0x90
	.type	gimp_drawable_color_balance,@function
gimp_drawable_color_balance:            # @gimp_drawable_color_balance
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
	subq	$1008, %rsp             # imm = 0x3F0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movl	%ecx, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_color_balance, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_color_balance, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_20
# BB#19:                                # %if.then.23
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_color_balance, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_21:                               # %if.end.25
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.26
	callq	gimp_color_balance_config_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movq	%rax, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movb	$3, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rdi
	callq	gimp_use_gegl
	cmpl	$0, %eax
	je	.LBB0_24
# BB#23:                                # %if.then.36
	callq	gegl_node_get_type
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.11, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r9
	movq	%r9, -968(%rbp)         # 8-byte Spill
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %r8d
	movq	-96(%rbp), %rcx
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	-968(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.41
	leaq	-944(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_color_balance_config_to_cruft
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	%r8, -984(%rbp)         # 8-byte Spill
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movabsq	$color_balance, %rcx
	leaq	-944(%rbp), %rdx
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	-984(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1000(%rbp), %r8        # 8-byte Reload
	callq	gimp_drawable_process
.LBB0_25:                               # %if.end.44
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_26:                               # %return
	addq	$1008, %rsp             # imm = 0x3F0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_color_balance, .Lfunc_end0-gimp_drawable_color_balance
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_color_balance,@object # @__func__.gimp_drawable_color_balance
.L__func__.gimp_drawable_color_balance:
	.asciz	"gimp_drawable_color_balance"
	.size	.L__func__.gimp_drawable_color_balance, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"! gimp_drawable_is_indexed (drawable)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"range"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"preserve-luminosity"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cyan-red"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"magenta-green"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"yellow-blue"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"operation"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp:color-balance"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"config"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004Color Balance"
	.size	.L.str.12, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
