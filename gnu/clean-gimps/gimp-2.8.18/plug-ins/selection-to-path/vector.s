	.text
	.file	"vector.bc"
	.globl	make_vector
	.align	16, 0x90
	.type	make_vector,@function
make_vector:                            # @make_vector
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end0:
	.size	make_vector, .Lfunc_end0-make_vector
	.cfi_endproc

	.globl	vector_to_point
	.align	16, 0x90
	.type	vector_to_point,@function
vector_to_point:                        # @vector_to_point
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
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end1:
	.size	vector_to_point, .Lfunc_end1-vector_to_point
	.cfi_endproc

	.globl	magnitude
	.align	16, 0x90
	.type	magnitude,@function
magnitude:                              # @magnitude
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	hypot
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	magnitude, .Lfunc_end2-magnitude
	.cfi_endproc

	.globl	normalize
	.align	16, 0x90
	.type	normalize,@function
normalize:                              # @normalize
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
	subq	$64, %rsp
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	magnitude
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_2
# BB#1:                                 # %cond.true
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movl	$73, %edx
	movabsq	$.L__PRETTY_FUNCTION__.normalize, %rcx
	callq	__assert_fail
.LBB3_3:                                # %cond.end
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	normalize, .Lfunc_end3-normalize
	.cfi_endproc

	.globl	Vadd
	.align	16, 0x90
	.type	Vadd,@function
Vadd:                                   # @Vadd
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
.Lfunc_end4:
	.size	Vadd, .Lfunc_end4-Vadd
	.cfi_endproc

	.globl	Vdot
	.align	16, 0x90
	.type	Vdot,@function
Vdot:                                   # @Vdot
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
.Lfunc_end5:
	.size	Vdot, .Lfunc_end5-Vdot
	.cfi_endproc

	.globl	Vmult_scalar
	.align	16, 0x90
	.type	Vmult_scalar,@function
Vmult_scalar:                           # @Vmult_scalar
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
.Lfunc_end6:
	.size	Vmult_scalar, .Lfunc_end6-Vmult_scalar
	.cfi_endproc

	.globl	Vangle
	.align	16, 0x90
	.type	Vangle,@function
Vangle:                                 # @Vangle
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	normalize
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	normalize
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	Vdot
	callq	my_acosd
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Vangle, .Lfunc_end7-Vangle
	.cfi_endproc

	.globl	Vadd_point
	.align	16, 0x90
	.type	Vadd_point,@function
Vadd_point:                             # @Vadd_point
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
.Lfunc_end8:
	.size	Vadd_point, .Lfunc_end8-Vadd_point
	.cfi_endproc

	.globl	Vsubtract_point
	.align	16, 0x90
	.type	Vsubtract_point,@function
Vsubtract_point:                        # @Vsubtract_point
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
.Lfunc_end9:
	.size	Vsubtract_point, .Lfunc_end9-Vsubtract_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	Vadd_int_point
	.align	16, 0x90
	.type	Vadd_int_point,@function
Vadd_int_point:                         # @Vadd_int_point
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
	xorps	%xmm2, %xmm2
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	-32(%rbp), %xmm1
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jbe	.LBB10_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB10_3:                               # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -40(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	addsd	-24(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	addsd	-24(%rbp), %xmm2
	ucomisd	%xmm0, %xmm2
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	jbe	.LBB10_5
# BB#4:                                 # %cond.true.29
	movl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.30
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cvtsi2sdl	-12(%rbp), %xmm1
	addsd	-24(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_6:                               # %cond.end.38
	movl	-68(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -36(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Vadd_int_point, .Lfunc_end10-Vadd_int_point
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	Vabs
	.align	16, 0x90
	.type	Vabs,@function
Vabs:                                   # @Vabs
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
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI11_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movlpd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	movlpd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Vabs, .Lfunc_end11-Vabs
	.cfi_endproc

	.globl	Psubtract
	.align	16, 0x90
	.type	Psubtract,@function
Psubtract:                              # @Psubtract
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
.Lfunc_end12:
	.size	Psubtract, .Lfunc_end12-Psubtract
	.cfi_endproc

	.globl	IPsubtract
	.align	16, 0x90
	.type	IPsubtract,@function
IPsubtract:                             # @IPsubtract
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-24(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-20(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end13:
	.size	IPsubtract, .Lfunc_end13-IPsubtract
	.cfi_endproc

	.globl	IPsubtractP
	.align	16, 0x90
	.type	IPsubtractP,@function
IPsubtractP:                            # @IPsubtractP
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	IPsubtractP, .Lfunc_end14-IPsubtractP
	.cfi_endproc

	.globl	IPadd
	.align	16, 0x90
	.type	IPadd,@function
IPadd:                                  # @IPadd
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	IPadd, .Lfunc_end15-IPadd
	.cfi_endproc

	.globl	IPmult_scalar
	.align	16, 0x90
	.type	IPmult_scalar,@function
IPmult_scalar:                          # @IPmult_scalar
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
	movl	-16(%rbp), %esi
	imull	-20(%rbp), %esi
	movl	%esi, -32(%rbp)
	movl	-12(%rbp), %esi
	imull	-20(%rbp), %esi
	movl	%esi, -28(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	IPmult_scalar, .Lfunc_end16-IPmult_scalar
	.cfi_endproc

	.globl	IPmult_real
	.align	16, 0x90
	.type	IPmult_real,@function
IPmult_real:                            # @IPmult_real
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
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end17:
	.size	IPmult_real, .Lfunc_end17-IPmult_real
	.cfi_endproc

	.globl	IPequal
	.align	16, 0x90
	.type	IPequal,@function
IPequal:                                # @IPequal
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB18_2
# BB#1:                                 # %land.rhs
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	sete	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB18_2:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	IPequal, .Lfunc_end18-IPequal
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"m > 0.0"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"vector.c"
	.size	.L.str.1, 9

	.type	.L__PRETTY_FUNCTION__.normalize,@object # @__PRETTY_FUNCTION__.normalize
.L__PRETTY_FUNCTION__.normalize:
	.asciz	"vector_type normalize(const vector_type)"
	.size	.L__PRETTY_FUNCTION__.normalize, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
