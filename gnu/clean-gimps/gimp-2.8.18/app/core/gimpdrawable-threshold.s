	.text
	.file	"gimpdrawable-threshold.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_drawable_threshold
	.align	16, 0x90
	.type	gimp_drawable_threshold,@function
gimp_drawable_threshold:                # @gimp_drawable_threshold
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L__func__.gimp_drawable_threshold, %rsi
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
	movabsq	$.L__func__.gimp_drawable_threshold, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_threshold, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_21:                               # %if.end.25
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.26
	callq	gimp_threshold_config_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movq	%rax, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movb	$2, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
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
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.8, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movabsq	$.L.str.9, %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %r8d
	movq	-64(%rbp), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.41
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_is_rgb
	leaq	-80(%rbp), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_threshold_config_to_cruft
	movabsq	$.L.str.9, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$threshold, %rcx
	leaq	-80(%rbp), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rax, %rdx
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	gimp_drawable_process
.LBB0_25:                               # %if.end.45
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_26:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_threshold, .Lfunc_end0-gimp_drawable_threshold
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_threshold,@object # @__func__.gimp_drawable_threshold
.L__func__.gimp_drawable_threshold:
	.asciz	"gimp_drawable_threshold"
	.size	.L__func__.gimp_drawable_threshold, 24

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
	.asciz	"low"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"high"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"operation"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp:threshold"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"config"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Threshold"
	.size	.L.str.9, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
