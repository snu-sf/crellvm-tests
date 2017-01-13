	.text
	.file	"gimp-gradients.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4604930618986332160     # double 0.75
.LCPI0_2:
	.quad	4602678819172646912     # double 0.5
.LCPI0_3:
	.quad	4598175219545276416     # double 0.25
	.text
	.globl	gimp_gradients_init
	.align	16, 0x90
	.type	gimp_gradients_init,@function
gimp_gradients_init:                    # @gimp_gradients_init
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_gradients_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gradients_add_gradient
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$3, 64(%rax)
	movq	-8(%rbp), %rax
	movq	584(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_gradient
	movabsq	$.L.str.4, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gradients_add_gradient
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movsd	%xmm2, (%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movsd	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 64(%rax)
	callq	gimp_gradient_segment_new
	movabsq	$.L.str.6, %rdi
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_2, %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, 120(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	120(%rdx), %rdx
	movq	%rax, 112(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movsd	%xmm2, (%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movsd	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movl	$3, 24(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	120(%rax), %rax
	movl	$3, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gradients_add_gradient
	movabsq	$.L.str.8, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$3, 64(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 108(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gradients_add_gradient
	movabsq	$.L.str.10, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$3, 64(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$2, 108(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gradients_add_gradient
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$2, 64(%rax)
.LBB0_13:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradients_init, .Lfunc_end0-gimp_gradients_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradients_add_gradient,@function
gimp_gradients_add_gradient:            # @gimp_gradients_add_gradient
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_get_user_context
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_gradient_new
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_data_make_internal
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	-32(%rbp), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-32(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradients_add_gradient, .Lfunc_end1-gimp_gradients_add_gradient
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_gradients_init,@object # @__func__.gimp_gradients_init
.L__func__.gimp_gradients_init:
	.asciz	"gimp_gradients_init"
	.size	.L__func__.gimp_gradients_init, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FG to BG (RGB)"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-gradient-fg-bg-rgb"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"FG to BG (Hardedge)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-gradient-fg-bg-rgb-hardedge"
	.size	.L.str.5, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"FG to BG (HSV counter-clockwise)"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-gradient-fg-bg-hsv-ccw"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"FG to BG (HSV clockwise hue)"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-gradient-fg-bg-hsv-cw"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"FG to Transparent"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-gradient-fg-transparent"
	.size	.L.str.11, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
