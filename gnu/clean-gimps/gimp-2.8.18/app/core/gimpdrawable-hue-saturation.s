	.text
	.file	"gimpdrawable-hue-saturation.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
.LCPI0_1:
	.quad	4640537203540230144     # double 180
	.text
	.globl	gimp_drawable_hue_saturation
	.align	16, 0x90
	.type	gimp_drawable_hue_saturation,@function
gimp_drawable_hue_saturation:           # @gimp_drawable_hue_saturation
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
	subq	$18768, %rsp            # imm = 0x4950
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_hue_saturation, %rsi
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
	movabsq	$.L__func__.gimp_drawable_hue_saturation, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -18704(%rbp)      # 8-byte Spill
	callq	gimp_item_get_type
	movq	-18704(%rbp), %rdi      # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_hue_saturation, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_26
.LBB0_21:                               # %if.end.25
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.26
	callq	gimp_hue_saturation_config_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movq	%rax, %rdi
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	movb	$3, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	%rcx, -18712(%rbp)      # 8-byte Spill
	callq	gimp_item_get_type
	movq	-18712(%rbp), %rdi      # 8-byte Reload
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
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.10, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movabsq	$.L.str.11, %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, -18720(%rbp)      # 8-byte Spill
	movq	%rcx, -18728(%rbp)      # 8-byte Spill
	callq	gettext
	movl	$1, %r8d
	movq	-88(%rbp), %rcx
	movq	-18728(%rbp), %rdi      # 8-byte Reload
	movq	-18720(%rbp), %rsi      # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.41
	leaq	-18696(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gimp_hue_saturation_config_to_cruft
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -18736(%rbp)      # 8-byte Spill
	movq	%rsi, -18744(%rbp)      # 8-byte Spill
	callq	gettext
	movabsq	$hue_saturation, %rsi
	leaq	-18696(%rbp), %rdi
	movq	-18744(%rbp), %rcx      # 8-byte Reload
	movq	%rdi, -18752(%rbp)      # 8-byte Spill
	movq	%rcx, %rdi
	movq	-18736(%rbp), %rdx      # 8-byte Reload
	movq	%rsi, -18760(%rbp)      # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	-18760(%rbp), %rcx      # 8-byte Reload
	movq	-18752(%rbp), %r8       # 8-byte Reload
	callq	gimp_drawable_process
.LBB0_25:                               # %if.end.44
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_26:                               # %return
	addq	$18768, %rsp            # imm = 0x4950
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_hue_saturation, .Lfunc_end0-gimp_drawable_hue_saturation
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_hue_saturation,@object # @__func__.gimp_drawable_hue_saturation
.L__func__.gimp_drawable_hue_saturation:
	.asciz	"gimp_drawable_hue_saturation"
	.size	.L__func__.gimp_drawable_hue_saturation, 29

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
	.asciz	"hue"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"saturation"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lightness"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"operation"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp:hue-saturation"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"config"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Hue-Saturation"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Hue_Saturation"
	.size	.L.str.12, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
