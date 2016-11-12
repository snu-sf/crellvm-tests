	.text
	.file	"gimpdrawable-colorize.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
.LCPI0_1:
	.quad	4645040803167600640     # double 360
	.text
	.globl	gimp_drawable_colorize
	.align	16, 0x90
	.type	gimp_drawable_colorize,@function
gimp_drawable_colorize:                 # @gimp_drawable_colorize
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
	subq	$6304, %rsp             # imm = 0x18A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_colorize, %rsi
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
	movabsq	$.L__func__.gimp_drawable_colorize, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -6256(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-6256(%rbp), %rdi       # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_colorize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_21:                               # %if.end.25
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.26
	callq	gimp_colorize_config_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movq	%rax, %rdi
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	movb	$3, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -6264(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-6264(%rbp), %rdi       # 8-byte Reload
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
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.9, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r9
	movq	%r9, -6272(%rbp)        # 8-byte Spill
	movq	%rcx, -6280(%rbp)       # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %r8d
	movq	-80(%rbp), %rcx
	movq	-6280(%rbp), %rdi       # 8-byte Reload
	movq	-6272(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.41
	leaq	-6248(%rbp), %rdi
	callq	colorize_init
	leaq	-6248(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_colorize_config_to_cruft
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	%r8, -6288(%rbp)        # 8-byte Spill
	movq	%rcx, -6296(%rbp)       # 8-byte Spill
	callq	g_dpgettext
	movabsq	$colorize, %rcx
	leaq	-6248(%rbp), %rdx
	movq	-6296(%rbp), %rdi       # 8-byte Reload
	movq	-6288(%rbp), %rsi       # 8-byte Reload
	movq	%rdx, -6304(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-6304(%rbp), %r8        # 8-byte Reload
	callq	gimp_drawable_process
.LBB0_25:                               # %if.end.44
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_26:                               # %return
	addq	$6304, %rsp             # imm = 0x18A0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_colorize, .Lfunc_end0-gimp_drawable_colorize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_colorize,@object # @__func__.gimp_drawable_colorize
.L__func__.gimp_drawable_colorize:
	.asciz	"gimp_drawable_colorize"
	.size	.L__func__.gimp_drawable_colorize, 23

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
	.asciz	"hue"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"saturation"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"lightness"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"operation"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp:colorize"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"config"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Colorize"
	.size	.L.str.10, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
