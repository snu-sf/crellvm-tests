	.text
	.file	"gimpvector.bc"
	.globl	gimp_vector2_new
	.align	16, 0x90
	.type	gimp_vector2_new,@function
gimp_vector2_new:                       # @gimp_vector2_new
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
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vector2_new, .Lfunc_end0-gimp_vector2_new
	.cfi_endproc

	.globl	gimp_vector2_set
	.align	16, 0x90
	.type	gimp_vector2_set,@function
gimp_vector2_set:                       # @gimp_vector2_set
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vector2_set, .Lfunc_end1-gimp_vector2_set
	.cfi_endproc

	.globl	gimp_vector2_length
	.align	16, 0x90
	.type	gimp_vector2_length,@function
gimp_vector2_length:                    # @gimp_vector2_length
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vector2_length, .Lfunc_end2-gimp_vector2_length
	.cfi_endproc

	.globl	gimp_vector2_length_val
	.align	16, 0x90
	.type	gimp_vector2_length_val,@function
gimp_vector2_length_val:                # @gimp_vector2_length_val
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vector2_length_val, .Lfunc_end3-gimp_vector2_length_val
	.cfi_endproc

	.globl	gimp_vector2_mul
	.align	16, 0x90
	.type	gimp_vector2_mul,@function
gimp_vector2_mul:                       # @gimp_vector2_mul
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_vector2_mul, .Lfunc_end4-gimp_vector2_mul
	.cfi_endproc

	.globl	gimp_vector2_mul_val
	.align	16, 0x90
	.type	gimp_vector2_mul_val,@function
gimp_vector2_mul_val:                   # @gimp_vector2_mul_val
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_vector2_mul_val, .Lfunc_end5-gimp_vector2_mul_val
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_vector2_normalize
	.align	16, 0x90
	.type	gimp_vector2_normalize,@function
gimp_vector2_normalize:                 # @gimp_vector2_normalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_vector2_length@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_1
	jp	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %if.then
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	gimp_vector2_zero(%rip), %rcx
	movq	%rcx, (%rax)
	movq	gimp_vector2_zero+8(%rip), %rcx
	movq	%rcx, 8(%rax)
.LBB6_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_vector2_normalize, .Lfunc_end6-gimp_vector2_normalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_vector2_normalize_val
	.align	16, 0x90
	.type	gimp_vector2_normalize_val,@function
gimp_vector2_normalize_val:             # @gimp_vector2_normalize_val
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
	subq	$64, %rsp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_vector2_length_val@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB7_1
	jp	.LBB7_1
	jmp	.LBB7_2
.LBB7_1:                                # %if.then
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	gimp_vector2_zero(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	gimp_vector2_zero+8(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_vector2_normalize_val, .Lfunc_end7-gimp_vector2_normalize_val
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_vector2_neg
	.align	16, 0x90
	.type	gimp_vector2_neg,@function
gimp_vector2_neg:                       # @gimp_vector2_neg
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
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	(%rdi), %xmm1
	movsd	%xmm1, (%rdi)
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_vector2_neg, .Lfunc_end8-gimp_vector2_neg
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gimp_vector2_neg_val
	.align	16, 0x90
	.type	gimp_vector2_neg_val,@function
gimp_vector2_neg_val:                   # @gimp_vector2_neg_val
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI9_0(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm0
	movlpd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm0
	movlpd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_vector2_neg_val, .Lfunc_end9-gimp_vector2_neg_val
	.cfi_endproc

	.globl	gimp_vector2_add
	.align	16, 0x90
	.type	gimp_vector2_add,@function
gimp_vector2_add:                       # @gimp_vector2_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	addsd	(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	addsd	8(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_vector2_add, .Lfunc_end10-gimp_vector2_add
	.cfi_endproc

	.globl	gimp_vector2_add_val
	.align	16, 0x90
	.type	gimp_vector2_add_val,@function
gimp_vector2_add_val:                   # @gimp_vector2_add_val
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_vector2_add_val, .Lfunc_end11-gimp_vector2_add_val
	.cfi_endproc

	.globl	gimp_vector2_sub
	.align	16, 0x90
	.type	gimp_vector2_sub,@function
gimp_vector2_sub:                       # @gimp_vector2_sub
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	subsd	(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	subsd	8(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_vector2_sub, .Lfunc_end12-gimp_vector2_sub
	.cfi_endproc

	.globl	gimp_vector2_sub_val
	.align	16, 0x90
	.type	gimp_vector2_sub_val,@function
gimp_vector2_sub_val:                   # @gimp_vector2_sub_val
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_vector2_sub_val, .Lfunc_end13-gimp_vector2_sub_val
	.cfi_endproc

	.globl	gimp_vector2_inner_product
	.align	16, 0x90
	.type	gimp_vector2_inner_product,@function
gimp_vector2_inner_product:             # @gimp_vector2_inner_product
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	8(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_vector2_inner_product, .Lfunc_end14-gimp_vector2_inner_product
	.cfi_endproc

	.globl	gimp_vector2_inner_product_val
	.align	16, 0x90
	.type	gimp_vector2_inner_product_val,@function
gimp_vector2_inner_product_val:         # @gimp_vector2_inner_product_val
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_vector2_inner_product_val, .Lfunc_end15-gimp_vector2_inner_product_val
	.cfi_endproc

	.globl	gimp_vector2_cross_product
	.align	16, 0x90
	.type	gimp_vector2_cross_product,@function
gimp_vector2_cross_product:             # @gimp_vector2_cross_product
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movsd	(%rdi), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rdi), %xmm3          # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -48(%rbp)
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rsi), %xmm3          # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_vector2_cross_product, .Lfunc_end16-gimp_vector2_cross_product
	.cfi_endproc

	.globl	gimp_vector2_cross_product_val
	.align	16, 0x90
	.type	gimp_vector2_cross_product_val,@function
gimp_vector2_cross_product_val:         # @gimp_vector2_cross_product_val
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movups	-64(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_vector2_cross_product_val, .Lfunc_end17-gimp_vector2_cross_product_val
	.cfi_endproc

	.globl	gimp_vector2_rotate
	.align	16, 0x90
	.type	gimp_vector2_rotate,@function
gimp_vector2_rotate:                    # @gimp_vector2_rotate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_vector2_rotate, .Lfunc_end18-gimp_vector2_rotate
	.cfi_endproc

	.globl	gimp_vector2_rotate_val
	.align	16, 0x90
	.type	gimp_vector2_rotate_val,@function
gimp_vector2_rotate_val:                # @gimp_vector2_rotate_val
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
	subq	$80, %rsp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -40(%rbp)
	movaps	%xmm2, %xmm0
	callq	cos@PLT
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_vector2_rotate_val, .Lfunc_end19-gimp_vector2_rotate_val
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI20_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gimp_vector2_normal
	.align	16, 0x90
	.type	gimp_vector2_normal,@function
gimp_vector2_normal:                    # @gimp_vector2_normal
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movapd	.LCPI20_0(%rip), %xmm1  # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm0
	movlpd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	leaq	-40(%rbp), %rdi
	callq	gimp_vector2_normalize@PLT
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_vector2_normal, .Lfunc_end20-gimp_vector2_normal
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gimp_vector2_normal_val
	.align	16, 0x90
	.type	gimp_vector2_normal_val,@function
gimp_vector2_normal_val:                # @gimp_vector2_normal_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movapd	.LCPI21_0(%rip), %xmm0  # xmm0 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm0, %xmm1
	movlpd	%xmm1, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	leaq	-48(%rbp), %rdi
	callq	gimp_vector2_normalize@PLT
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_vector2_normal_val, .Lfunc_end21-gimp_vector2_normal_val
	.cfi_endproc

	.globl	gimp_vector3_new
	.align	16, 0x90
	.type	gimp_vector3_new,@function
gimp_vector3_new:                       # @gimp_vector3_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_vector3_new, .Lfunc_end22-gimp_vector3_new
	.cfi_endproc

	.globl	gimp_vector3_set
	.align	16, 0x90
	.type	gimp_vector3_set,@function
gimp_vector3_set:                       # @gimp_vector3_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_vector3_set, .Lfunc_end23-gimp_vector3_set
	.cfi_endproc

	.globl	gimp_vector3_length
	.align	16, 0x90
	.type	gimp_vector3_length,@function
gimp_vector3_length:                    # @gimp_vector3_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_vector3_length, .Lfunc_end24-gimp_vector3_length
	.cfi_endproc

	.globl	gimp_vector3_length_val
	.align	16, 0x90
	.type	gimp_vector3_length_val,@function
gimp_vector3_length_val:                # @gimp_vector3_length_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	leaq	16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt@PLT
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_vector3_length_val, .Lfunc_end25-gimp_vector3_length_val
	.cfi_endproc

	.globl	gimp_vector3_mul
	.align	16, 0x90
	.type	gimp_vector3_mul,@function
gimp_vector3_mul:                       # @gimp_vector3_mul
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_vector3_mul, .Lfunc_end26-gimp_vector3_mul
	.cfi_endproc

	.globl	gimp_vector3_mul_val
	.align	16, 0x90
	.type	gimp_vector3_mul_val,@function
gimp_vector3_mul_val:                   # @gimp_vector3_mul_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movsd	%xmm0, -8(%rbp)
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_vector3_mul_val, .Lfunc_end27-gimp_vector3_mul_val
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_vector3_normalize
	.align	16, 0x90
	.type	gimp_vector3_normalize,@function
gimp_vector3_normalize:                 # @gimp_vector3_normalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_vector3_length@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB28_1
	jp	.LBB28_1
	jmp	.LBB28_2
.LBB28_1:                               # %if.then
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	gimp_vector3_zero(%rip), %rcx
	movq	%rcx, (%rax)
	movq	gimp_vector3_zero+8(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	gimp_vector3_zero+16(%rip), %rcx
	movq	%rcx, 16(%rax)
.LBB28_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_vector3_normalize, .Lfunc_end28-gimp_vector3_normalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_vector3_normalize_val
	.align	16, 0x90
	.type	gimp_vector3_normalize_val,@function
gimp_vector3_normalize_val:             # @gimp_vector3_normalize_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_vector3_length_val@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB29_1
	jp	.LBB29_1
	jmp	.LBB29_2
.LBB29_1:                               # %if.then
	movsd	.LCPI29_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rdx)
	jmp	.LBB29_3
.LBB29_2:                               # %if.else
	movq	gimp_vector3_zero(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	gimp_vector3_zero+8(%rip), %rax
	movq	%rax, 8(%rcx)
	movq	gimp_vector3_zero+16(%rip), %rax
	movq	%rax, 16(%rcx)
.LBB29_3:                               # %return
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_vector3_normalize_val, .Lfunc_end29-gimp_vector3_normalize_val
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_vector3_neg
	.align	16, 0x90
	.type	gimp_vector3_neg,@function
gimp_vector3_neg:                       # @gimp_vector3_neg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	(%rdi), %xmm1
	movsd	%xmm1, (%rdi)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	8(%rdi), %xmm1
	movsd	%xmm1, 8(%rdi)
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_vector3_neg, .Lfunc_end30-gimp_vector3_neg
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_vector3_neg_val
	.align	16, 0x90
	.type	gimp_vector3_neg_val,@function
gimp_vector3_neg_val:                   # @gimp_vector3_neg_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movsd	.LCPI31_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	(%rcx), %xmm1
	movsd	%xmm1, -24(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	8(%rcx), %xmm1
	movsd	%xmm1, -16(%rbp)
	mulsd	16(%rcx), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_vector3_neg_val, .Lfunc_end31-gimp_vector3_neg_val
	.cfi_endproc

	.globl	gimp_vector3_add
	.align	16, 0x90
	.type	gimp_vector3_add,@function
gimp_vector3_add:                       # @gimp_vector3_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	addsd	(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	addsd	8(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	addsd	16(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_vector3_add, .Lfunc_end32-gimp_vector3_add
	.cfi_endproc

	.globl	gimp_vector3_add_val
	.align	16, 0x90
	.type	gimp_vector3_add_val,@function
gimp_vector3_add_val:                   # @gimp_vector3_add_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	40(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	addsd	(%rcx), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	addsd	8(%rcx), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	addsd	16(%rcx), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_vector3_add_val, .Lfunc_end33-gimp_vector3_add_val
	.cfi_endproc

	.globl	gimp_vector3_sub
	.align	16, 0x90
	.type	gimp_vector3_sub,@function
gimp_vector3_sub:                       # @gimp_vector3_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	subsd	(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	subsd	8(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	subsd	16(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_vector3_sub, .Lfunc_end34-gimp_vector3_sub
	.cfi_endproc

	.globl	gimp_vector3_sub_val
	.align	16, 0x90
	.type	gimp_vector3_sub_val,@function
gimp_vector3_sub_val:                   # @gimp_vector3_sub_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	40(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%rcx), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%rcx), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rcx), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_vector3_sub_val, .Lfunc_end35-gimp_vector3_sub_val
	.cfi_endproc

	.globl	gimp_vector3_inner_product
	.align	16, 0x90
	.type	gimp_vector3_inner_product,@function
gimp_vector3_inner_product:             # @gimp_vector3_inner_product
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	8(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_vector3_inner_product, .Lfunc_end36-gimp_vector3_inner_product
	.cfi_endproc

	.globl	gimp_vector3_inner_product_val
	.align	16, 0x90
	.type	gimp_vector3_inner_product_val,@function
gimp_vector3_inner_product_val:         # @gimp_vector3_inner_product_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	leaq	40(%rbp), %rax
	leaq	16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_vector3_inner_product_val, .Lfunc_end37-gimp_vector3_inner_product_val
	.cfi_endproc

	.globl	gimp_vector3_cross_product
	.align	16, 0x90
	.type	gimp_vector3_cross_product,@function
gimp_vector3_cross_product:             # @gimp_vector3_cross_product
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	16(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	8(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	16(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	8(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	mulsd	(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rdi)
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rdi)
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_vector3_cross_product, .Lfunc_end38-gimp_vector3_cross_product
	.cfi_endproc

	.globl	gimp_vector3_cross_product_val
	.align	16, 0x90
	.type	gimp_vector3_cross_product_val,@function
gimp_vector3_cross_product_val:         # @gimp_vector3_cross_product_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	40(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	mulsd	16(%rcx), %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	(%rcx), %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	16(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	8(%rcx), %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_vector3_cross_product_val, .Lfunc_end39-gimp_vector3_cross_product_val
	.cfi_endproc

	.globl	gimp_vector3_rotate
	.align	16, 0x90
	.type	gimp_vector3_rotate,@function
gimp_vector3_rotate:                    # @gimp_vector3_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	mulsd	-80(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, (%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-80(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	mulsd	-72(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-40(%rbp), %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 8(%rdi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	mulsd	-40(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-72(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 16(%rdi)
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_vector3_rotate, .Lfunc_end40-gimp_vector3_rotate
	.cfi_endproc

	.globl	gimp_vector3_rotate_val
	.align	16, 0x90
	.type	gimp_vector3_rotate_val,@function
gimp_vector3_rotate_val:                # @gimp_vector3_rotate_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	cos@PLT
	movq	-112(%rbp), %rax        # 8-byte Reload
	mulsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-112(%rbp), %rax        # 8-byte Reload
	mulsd	8(%rax), %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	-112(%rbp), %rax        # 8-byte Reload
	mulsd	8(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-112(%rbp), %rax        # 8-byte Reload
	mulsd	(%rax), %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	mulsd	-72(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	movq	-112(%rbp), %rax        # 8-byte Reload
	mulsd	16(%rax), %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	-112(%rbp), %rax        # 8-byte Reload
	mulsd	16(%rax), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-72(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	mulsd	-64(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-32(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	mulsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-64(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_vector3_rotate_val, .Lfunc_end41-gimp_vector3_rotate_val
	.cfi_endproc

	.globl	gimp_vector_2d_to_3d
	.align	16, 0x90
	.type	gimp_vector_2d_to_3d,@function
gimp_vector_2d_to_3d:                   # @gimp_vector_2d_to_3d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movq	%r10, -32(%rbp)
	movq	%rax, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB42_1
	jp	.LBB42_1
	jmp	.LBB42_2
.LBB42_1:                               # %if.then
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	16(%rax), %xmm0
	movq	-32(%rbp), %rax
	divsd	16(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB42_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB42_3
	jp	.LBB42_3
	jmp	.LBB42_4
.LBB42_3:                               # %if.then.5
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movl	-20(%rbp), %ecx
	subl	-4(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	cvtsi2sdl	-12(%rbp), %xmm4
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movl	-24(%rbp), %ecx
	subl	-8(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	cvtsi2sdl	-16(%rbp), %xmm4
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB42_5
.LBB42_4:                               # %if.else
	movl	-20(%rbp), %eax
	subl	-4(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movl	-24(%rbp), %eax
	subl	-8(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
.LBB42_5:                               # %if.end.33
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_vector_2d_to_3d, .Lfunc_end42-gimp_vector_2d_to_3d
	.cfi_endproc

	.globl	gimp_vector_2d_to_3d_val
	.align	16, 0x90
	.type	gimp_vector_2d_to_3d_val,@function
gimp_vector_2d_to_3d_val:               # @gimp_vector_2d_to_3d_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
.Ltmp132:
	.cfi_offset %rbx, -24
	movq	%rdi, %rax
	leaq	48(%rbp), %r10
	leaq	24(%rbp), %r11
	movl	16(%rbp), %ebx
	xorps	%xmm0, %xmm0
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%ebx, -32(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	(%r11), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	movq	%r11, -96(%rbp)         # 8-byte Spill
	jne	.LBB43_1
	jp	.LBB43_1
	jmp	.LBB43_2
.LBB43_1:                               # %if.then
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rcx         # 8-byte Reload
	subsd	16(%rcx), %xmm0
	divsd	16(%rcx), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB43_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB43_3
	jp	.LBB43_3
	jmp	.LBB43_4
.LBB43_3:                               # %if.then.5
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movl	-28(%rbp), %ecx
	subl	-12(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	cvtsi2sdl	-20(%rbp), %xmm4
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movl	-32(%rbp), %ecx
	subl	-16(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	cvtsi2sdl	-24(%rbp), %xmm4
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB43_5
.LBB43_4:                               # %if.else
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-32(%rbp), %eax
	subl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB43_5:                               # %if.end.33
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-80(%rbp), %rax         # 8-byte Reload
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_vector_2d_to_3d_val, .Lfunc_end43-gimp_vector_2d_to_3d_val
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_vector_3d_to_2d
	.align	16, 0x90
	.type	gimp_vector_3d_to_2d,@function
gimp_vector_3d_to_2d:                   # @gimp_vector_3d_to_2d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	leaq	-80(%rbp), %r11
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	%r10, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%r11, %rdi
	callq	gimp_vector3_sub@PLT
	leaq	-80(%rbp), %rdi
	callq	gimp_vector3_normalize@PLT
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB44_1
	jp	.LBB44_1
	jmp	.LBB44_2
.LBB44_1:                               # %if.then
	movsd	.LCPI44_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	16(%rax), %xmm0
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB44_3
.LBB44_2:                               # %if.else
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB44_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_vector_3d_to_2d, .Lfunc_end44-gimp_vector_3d_to_2d
	.cfi_endproc

	.type	gimp_vector2_zero,@object # @gimp_vector2_zero
	.section	.rodata,"a",@progbits
	.align	8
gimp_vector2_zero:
	.zero	16
	.size	gimp_vector2_zero, 16

	.type	gimp_vector3_zero,@object # @gimp_vector3_zero
	.align	8
gimp_vector3_zero:
	.zero	24
	.size	gimp_vector3_zero, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
