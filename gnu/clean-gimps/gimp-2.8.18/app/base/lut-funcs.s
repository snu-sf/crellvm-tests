	.text
	.file	"lut-funcs.bc"
	.globl	brightness_contrast_lut_setup
	.align	16, 0x90
	.type	brightness_contrast_lut_setup,@function
brightness_contrast_lut_setup:          # @brightness_contrast_lut_setup
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.brightness_contrast_lut_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movabsq	$brightness_contrast_lut_func, %rax
	leaq	-48(%rbp), %rcx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	gimp_lut_setup
.LBB0_6:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	brightness_contrast_lut_setup, .Lfunc_end0-brightness_contrast_lut_setup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
.LCPI1_2:
	.quad	4605249457297304856     # double 0.78539816339744828
	.text
	.align	16, 0x90
	.type	brightness_contrast_lut_func,@function
brightness_contrast_lut_func:           # @brightness_contrast_lut_func
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB1_4
.LBB1_2:                                # %land.lhs.true
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB1_8
.LBB1_4:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB1_6
# BB#5:                                 # %if.then.4
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
.LBB1_7:                                # %if.end.14
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	tan
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB1_8:                                # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brightness_contrast_lut_func, .Lfunc_end1-brightness_contrast_lut_func
	.cfi_endproc

	.globl	brightness_contrast_lut_new
	.align	16, 0x90
	.type	brightness_contrast_lut_new,@function
brightness_contrast_lut_new:            # @brightness_contrast_lut_new
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	%edi, -20(%rbp)
	callq	gimp_lut_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-20(%rbp), %esi
	callq	brightness_contrast_lut_setup
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	brightness_contrast_lut_new, .Lfunc_end2-brightness_contrast_lut_new
	.cfi_endproc

	.globl	invert_lut_new
	.align	16, 0x90
	.type	invert_lut_new,@function
invert_lut_new:                         # @invert_lut_new
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
	movl	%edi, -4(%rbp)
	callq	gimp_lut_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	invert_lut_setup
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	invert_lut_new, .Lfunc_end3-invert_lut_new
	.cfi_endproc

	.align	16, 0x90
	.type	invert_lut_setup,@function
invert_lut_setup:                       # @invert_lut_setup
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.invert_lut_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movabsq	$invert_lut_func, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %ecx
	callq	gimp_lut_setup_exact
.LBB4_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	invert_lut_setup, .Lfunc_end4-invert_lut_setup
	.cfi_endproc

	.globl	add_lut_new
	.align	16, 0x90
	.type	add_lut_new,@function
add_lut_new:                            # @add_lut_new
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	callq	gimp_lut_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %esi
	callq	add_lut_setup
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	add_lut_new, .Lfunc_end5-add_lut_new
	.cfi_endproc

	.align	16, 0x90
	.type	add_lut_setup,@function
add_lut_setup:                          # @add_lut_setup
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.add_lut_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movabsq	$add_lut_func, %rax
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	callq	gimp_lut_setup
.LBB6_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	add_lut_setup, .Lfunc_end6-add_lut_setup
	.cfi_endproc

	.globl	intersect_lut_new
	.align	16, 0x90
	.type	intersect_lut_new,@function
intersect_lut_new:                      # @intersect_lut_new
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	callq	gimp_lut_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %esi
	callq	intersect_lut_setup
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	intersect_lut_new, .Lfunc_end7-intersect_lut_new
	.cfi_endproc

	.align	16, 0x90
	.type	intersect_lut_setup,@function
intersect_lut_setup:                    # @intersect_lut_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.intersect_lut_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_6
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movabsq	$intersect_lut_func, %rax
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	callq	gimp_lut_setup_exact
.LBB8_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	intersect_lut_setup, .Lfunc_end8-intersect_lut_setup
	.cfi_endproc

	.globl	threshold_lut_new
	.align	16, 0x90
	.type	threshold_lut_new,@function
threshold_lut_new:                      # @threshold_lut_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	callq	gimp_lut_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %esi
	callq	threshold_lut_setup
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	threshold_lut_new, .Lfunc_end9-threshold_lut_new
	.cfi_endproc

	.align	16, 0x90
	.type	threshold_lut_setup,@function
threshold_lut_setup:                    # @threshold_lut_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.threshold_lut_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_6
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movabsq	$threshold_lut_func, %rax
	leaq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	callq	gimp_lut_setup_exact
.LBB10_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	threshold_lut_setup, .Lfunc_end10-threshold_lut_setup
	.cfi_endproc

	.globl	posterize_lut_setup
	.align	16, 0x90
	.type	posterize_lut_setup,@function
posterize_lut_setup:                    # @posterize_lut_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.posterize_lut_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movabsq	$posterize_lut_func, %rax
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-20(%rbp), %ecx         # 4-byte Reload
	callq	gimp_lut_setup_exact
.LBB11_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	posterize_lut_setup, .Lfunc_end11-posterize_lut_setup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	posterize_lut_func,@function
posterize_lut_func:                     # @posterize_lut_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB12_4
.LBB12_2:                               # %land.lhs.true
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_4
# BB#3:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB12_8
.LBB12_4:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$2, (%rax)
	jge	.LBB12_6
# BB#5:                                 # %if.then.4
	movl	$2, -32(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB12_7:                               # %if.end.5
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	cvtsi2sdl	-32(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB12_8:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	posterize_lut_func, .Lfunc_end12-posterize_lut_func
	.cfi_endproc

	.globl	posterize_lut_new
	.align	16, 0x90
	.type	posterize_lut_new,@function
posterize_lut_new:                      # @posterize_lut_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	callq	gimp_lut_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	posterize_lut_setup
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	posterize_lut_new, .Lfunc_end13-posterize_lut_new
	.cfi_endproc

	.globl	equalize_lut_new
	.align	16, 0x90
	.type	equalize_lut_new,@function
equalize_lut_new:                       # @equalize_lut_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.equalize_lut_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_6
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	callq	gimp_lut_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	equalize_lut_setup
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	equalize_lut_new, .Lfunc_end14-equalize_lut_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	equalize_lut_setup,@function
equalize_lut_setup:                     # @equalize_lut_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$5200, %rsp             # imm = 0x1450
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.equalize_lut_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_19
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB15_8
# BB#7:                                 # %if.then.3
	jmp	.LBB15_9
.LBB15_8:                               # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.equalize_lut_setup, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_19
.LBB15_9:                               # %if.end.5
	jmp	.LBB15_10
.LBB15_10:                              # %do.end.6
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_histogram_get_count
	movsd	%xmm0, -5168(%rbp)
	movl	$0, -28(%rbp)
.LBB15_11:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_13 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB15_18
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB15_11 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -5176(%rbp)
	movl	$0, -24(%rbp)
.LBB15_13:                              # %for.cond.8
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB15_16
# BB#14:                                # %for.body.10
                                        #   in Loop: Header=BB15_13 Depth=2
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_histogram_get_channel
	leaq	-5160(%rbp), %rdi
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -5184(%rbp)
	movsd	-5184(%rbp), %xmm0      # xmm0 = mem[0],zero
	addsd	-5176(%rbp), %xmm0
	movsd	%xmm0, -5176(%rbp)
	mulsd	-5176(%rbp), %xmm1
	divsd	-5168(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	movq	%rdi, -5192(%rbp)       # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movslq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-5192(%rbp), %rcx       # 8-byte Reload
	addq	$8, %rcx
	shlq	$10, %rax
	addq	%rax, %rcx
	movl	%edx, (%rcx,%rdi,4)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB15_13 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_13
.LBB15_16:                              # %for.end
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_17
.LBB15_17:                              # %for.inc.15
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_11
.LBB15_18:                              # %for.end.17
	movabsq	$equalize_lut_func, %rax
	leaq	-5160(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, -5196(%rbp)       # 4-byte Spill
	movq	%rcx, %rdx
	movl	-5196(%rbp), %ecx       # 4-byte Reload
	callq	gimp_lut_setup
.LBB15_19:                              # %return
	addq	$5200, %rsp             # imm = 0x1450
	popq	%rbp
	retq
.Lfunc_end15:
	.size	equalize_lut_setup, .Lfunc_end15-equalize_lut_setup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	invert_lut_func,@function
invert_lut_func:                        # @invert_lut_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB16_4
.LBB16_2:                               # %land.lhs.true
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB16_4
# BB#3:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB16_5
.LBB16_4:                               # %if.end
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB16_5:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end16:
	.size	invert_lut_func, .Lfunc_end16-invert_lut_func
	.cfi_endproc

	.align	16, 0x90
	.type	add_lut_func,@function
add_lut_func:                           # @add_lut_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB17_4
.LBB17_2:                               # %land.lhs.true
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB17_4
# BB#3:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB17_5
.LBB17_4:                               # %if.end
	cvtss2sd	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB17_5:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end17:
	.size	add_lut_func, .Lfunc_end17-add_lut_func
	.cfi_endproc

	.align	16, 0x90
	.type	intersect_lut_func,@function
intersect_lut_func:                     # @intersect_lut_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB18_4
.LBB18_2:                               # %land.lhs.true
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB18_4
# BB#3:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB18_8
.LBB18_4:                               # %if.end
	cvtss2sd	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_6
# BB#5:                                 # %cond.true
	cvtss2sd	-28(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB18_7
.LBB18_6:                               # %cond.false
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB18_7:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB18_8:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end18:
	.size	intersect_lut_func, .Lfunc_end18-intersect_lut_func
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	threshold_lut_func,@function
threshold_lut_func:                     # @threshold_lut_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB19_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB19_4
.LBB19_2:                               # %land.lhs.true
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB19_4
# BB#3:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB19_7
.LBB19_4:                               # %if.end
	cvtss2sd	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_6
# BB#5:                                 # %if.then.5
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.end.6
	movss	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB19_7:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end19:
	.size	threshold_lut_func, .Lfunc_end19-threshold_lut_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	equalize_lut_func,@function
equalize_lut_func:                      # @equalize_lut_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB20_4
.LBB20_2:                               # %land.lhs.true
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB20_4
# BB#3:                                 # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB20_11
.LBB20_4:                               # %if.end
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_6
# BB#5:                                 # %cond.true
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB20_10
.LBB20_6:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB20_8
# BB#7:                                 # %cond.true.9
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB20_9
.LBB20_8:                               # %cond.false.10
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-28(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
.LBB20_9:                               # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB20_10:                              # %cond.end.13
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	shlq	$10, %rdx
	addq	%rdx, %rsi
	cvtsi2sdl	(%rsi,%rcx,4), %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB20_11:                              # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	equalize_lut_func, .Lfunc_end20-equalize_lut_func
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.brightness_contrast_lut_setup,@object # @__func__.brightness_contrast_lut_setup
.L__func__.brightness_contrast_lut_setup:
	.asciz	"brightness_contrast_lut_setup"
	.size	.L__func__.brightness_contrast_lut_setup, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"lut != NULL"
	.size	.L.str.1, 12

	.type	.L__func__.posterize_lut_setup,@object # @__func__.posterize_lut_setup
.L__func__.posterize_lut_setup:
	.asciz	"posterize_lut_setup"
	.size	.L__func__.posterize_lut_setup, 20

	.type	.L__func__.equalize_lut_new,@object # @__func__.equalize_lut_new
.L__func__.equalize_lut_new:
	.asciz	"equalize_lut_new"
	.size	.L__func__.equalize_lut_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"histogram != NULL"
	.size	.L.str.2, 18

	.type	.L__func__.invert_lut_setup,@object # @__func__.invert_lut_setup
.L__func__.invert_lut_setup:
	.asciz	"invert_lut_setup"
	.size	.L__func__.invert_lut_setup, 17

	.type	.L__func__.add_lut_setup,@object # @__func__.add_lut_setup
.L__func__.add_lut_setup:
	.asciz	"add_lut_setup"
	.size	.L__func__.add_lut_setup, 14

	.type	.L__func__.intersect_lut_setup,@object # @__func__.intersect_lut_setup
.L__func__.intersect_lut_setup:
	.asciz	"intersect_lut_setup"
	.size	.L__func__.intersect_lut_setup, 20

	.type	.L__func__.threshold_lut_setup,@object # @__func__.threshold_lut_setup
.L__func__.threshold_lut_setup:
	.asciz	"threshold_lut_setup"
	.size	.L__func__.threshold_lut_setup, 20

	.type	.L__func__.equalize_lut_setup,@object # @__func__.equalize_lut_setup
.L__func__.equalize_lut_setup:
	.asciz	"equalize_lut_setup"
	.size	.L__func__.equalize_lut_setup, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"hist != NULL"
	.size	.L.str.3, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
