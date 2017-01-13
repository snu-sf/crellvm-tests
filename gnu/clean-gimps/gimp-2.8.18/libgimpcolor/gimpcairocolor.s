	.text
	.file	"gimpcairocolor.bc"
	.globl	gimp_cairo_set_source_rgb
	.align	16, 0x90
	.type	gimp_cairo_set_source_rgb,@function
gimp_cairo_set_source_rgb:              # @gimp_cairo_set_source_rgb
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cairo_set_source_rgb, .Lfunc_end0-gimp_cairo_set_source_rgb
	.cfi_endproc

	.globl	gimp_cairo_set_source_rgba
	.align	16, 0x90
	.type	gimp_cairo_set_source_rgba,@function
gimp_cairo_set_source_rgba:             # @gimp_cairo_set_source_rgba
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm3         # xmm3 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cairo_set_source_rgba, .Lfunc_end1-gimp_cairo_set_source_rgba
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI2_1:
	.quad	4600877379321698714     # double 0.40000000000000002
	.text
	.globl	gimp_cairo_checkerboard_create
	.align	16, 0x90
	.type	gimp_cairo_checkerboard_create,@function
gimp_cairo_checkerboard_create:         # @gimp_cairo_checkerboard_create
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_cairo_checkerboard_create(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_17
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	jle	.LBB2_8
# BB#7:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_cairo_checkerboard_create(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_17
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	movq	-16(%rbp), %rdi
	callq	cairo_get_target@PLT
	movl	$4096, %esi             # imm = 0x1000
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %edx
	shll	$1, %edx
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	callq	cairo_surface_create_similar@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	cairo_create@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.10
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_cairo_set_source_rgb@PLT
	jmp	.LBB2_13
.LBB2_12:                               # %if.else.11
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
.LBB2_13:                               # %if.end.12
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle@PLT
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	callq	cairo_rectangle@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_fill@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.19
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_cairo_set_source_rgb@PLT
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.20
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
.LBB2_16:                               # %if.end.21
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	callq	cairo_rectangle@PLT
	xorps	%xmm1, %xmm1
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	callq	cairo_rectangle@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_fill@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_destroy@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_pattern_create_for_surface@PLT
	movl	$1, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	cairo_pattern_set_extend@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_surface_destroy@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cairo_checkerboard_create, .Lfunc_end2-gimp_cairo_checkerboard_create
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpColor"
	.size	.L.str, 13

	.type	.L__func__.gimp_cairo_checkerboard_create,@object # @__func__.gimp_cairo_checkerboard_create
.L__func__.gimp_cairo_checkerboard_create:
	.asciz	"gimp_cairo_checkerboard_create"
	.size	.L__func__.gimp_cairo_checkerboard_create, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"cr != NULL"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"size > 0"
	.size	.L.str.2, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
