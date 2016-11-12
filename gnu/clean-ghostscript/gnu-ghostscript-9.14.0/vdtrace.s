	.text
	.file	"vdtrace.bc"
	.globl	vd_impl_moveto
	.align	16, 0x90
	.type	vd_impl_moveto,@function
vd_impl_moveto:                         # @vd_impl_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_1
# BB#2:                                 # %if.end
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	%xmm0, px(%rip)
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	movsd	%xmm1, py(%rip)
	movq	112(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB0_1:                                # %return
	retq
.Lfunc_end0:
	.size	vd_impl_moveto, .Lfunc_end0-vd_impl_moveto
	.cfi_endproc

	.globl	vd_impl_lineto
	.align	16, 0x90
	.type	vd_impl_lineto,@function
vd_impl_lineto:                         # @vd_impl_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB1_1
# BB#2:                                 # %if.end
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	%xmm0, px(%rip)
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	movsd	%xmm1, py(%rip)
	movq	120(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB1_1:                                # %return
	retq
.Lfunc_end1:
	.size	vd_impl_lineto, .Lfunc_end1-vd_impl_lineto
	.cfi_endproc

	.globl	vd_impl_lineto_multi
	.align	16, 0x90
	.type	vd_impl_lineto_multi,@function
vd_impl_lineto_multi:                   # @vd_impl_lineto_multi
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_5
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jle	.LBB2_5
# BB#2:                                 # %for.body.preheader
	addq	$4, %rbx
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	vd_trace1(%rip), %rdi
	addq	$8, %rbx
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%ebp
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-4(%rbx), %xmm0
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	%xmm0, px(%rip)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rbx), %xmm1
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	movsd	%xmm1, py(%rip)
	callq	*120(%rdi)
	testl	%ebp, %ebp
	jne	.LBB2_4
.LBB2_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	vd_impl_lineto_multi, .Lfunc_end2-vd_impl_lineto_multi
	.cfi_endproc

	.globl	vd_impl_curveto
	.align	16, 0x90
	.type	vd_impl_curveto,@function
vd_impl_curveto:                        # @vd_impl_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 32
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB3_4
# BB#1:                                 # %if.end
	movsd	24(%rdi), %xmm10        # xmm10 = mem[0],zero
	movsd	8(%rdi), %xmm8          # xmm8 = mem[0],zero
	movsd	16(%rdi), %xmm11        # xmm11 = mem[0],zero
	movsd	40(%rdi), %xmm9         # xmm9 = mem[0],zero
	movsd	32(%rdi), %xmm6         # xmm6 = mem[0],zero
	movsd	48(%rdi), %xmm7         # xmm7 = mem[0],zero
	subsd	%xmm10, %xmm4
	mulsd	%xmm8, %xmm4
	addsd	%xmm9, %xmm4
	subsd	%xmm6, %xmm5
	mulsd	%xmm11, %xmm5
	addsd	%xmm7, %xmm5
	movq	128(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_3
# BB#2:                                 # %if.then.7
	subsd	%xmm6, %xmm3
	mulsd	%xmm11, %xmm3
	addsd	%xmm7, %xmm3
	subsd	%xmm10, %xmm2
	mulsd	%xmm8, %xmm2
	addsd	%xmm9, %xmm2
	subsd	%xmm6, %xmm1
	mulsd	%xmm11, %xmm1
	addsd	%xmm7, %xmm1
	subsd	%xmm10, %xmm0
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm5, 16(%rsp)         # 8-byte Spill
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	callq	*%rax
	movsd	8(%rsp), %xmm4          # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	16(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
.LBB3_3:                                # %if.end.9
	movsd	%xmm4, px(%rip)
	movsd	%xmm5, py(%rip)
.LBB3_4:                                # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end3:
	.size	vd_impl_curveto, .Lfunc_end3-vd_impl_curveto
	.cfi_endproc

	.globl	vd_impl_bar
	.align	16, 0x90
	.type	vd_impl_bar,@function
vd_impl_bar:                            # @vd_impl_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 48
.Ltmp8:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_1
# BB#2:                                 # %if.end
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movl	%ebx, %esi
	callq	*192(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*96(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*112(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*104(%rdi)
	movq	vd_trace1(%rip), %rdi
	addq	$32, %rsp
	popq	%rbx
	jmpq	*176(%rdi)              # TAILCALL
.LBB4_1:                                # %return
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	vd_impl_bar, .Lfunc_end4-vd_impl_bar
	.cfi_endproc

	.globl	vd_impl_square
	.align	16, 0x90
	.type	vd_impl_square,@function
vd_impl_square:                         # @vd_impl_square
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 48
.Ltmp11:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB5_1
# BB#2:                                 # %if.end
	movl	%esi, %esi
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movl	$1, %esi
	callq	*192(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*96(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	cvtsi2sdl	%ebx, %xmm2
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	subsd	%xmm2, %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	subsd	%xmm2, %xmm1
	callq	*112(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	subsd	%xmm2, %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	addsd	%xmm2, %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	addsd	%xmm2, %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	subsd	%xmm2, %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*104(%rdi)
	movq	vd_trace1(%rip), %rdi
	addq	$32, %rsp
	popq	%rbx
	jmpq	*176(%rdi)              # TAILCALL
.LBB5_1:                                # %return
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	vd_impl_square, .Lfunc_end5-vd_impl_square
	.cfi_endproc

	.globl	vd_impl_rect
	.align	16, 0x90
	.type	vd_impl_rect,@function
vd_impl_rect:                           # @vd_impl_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB6_1
# BB#2:                                 # %if.end
	movl	%esi, %esi
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm3, (%rsp)           # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movl	%ebx, %esi
	callq	*192(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*96(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*112(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*104(%rdi)
	movq	vd_trace1(%rip), %rdi
	addq	$32, %rsp
	popq	%rbx
	jmpq	*176(%rdi)              # TAILCALL
.LBB6_1:                                # %return
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end6:
	.size	vd_impl_rect, .Lfunc_end6-vd_impl_rect
	.cfi_endproc

	.globl	vd_impl_quad
	.align	16, 0x90
	.type	vd_impl_quad,@function
vd_impl_quad:                           # @vd_impl_quad
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 80
.Ltmp17:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB7_1
# BB#2:                                 # %if.end
	movl	%esi, %esi
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	%xmm7, 40(%rsp)         # 8-byte Spill
	movsd	%xmm6, 32(%rsp)         # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movl	%ebx, %esi
	callq	*192(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*96(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*112(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*120(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*104(%rdi)
	movq	vd_trace1(%rip), %rdi
	addq	$64, %rsp
	popq	%rbx
	jmpq	*176(%rdi)              # TAILCALL
.LBB7_1:                                # %return
	addq	$64, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	vd_impl_quad, .Lfunc_end7-vd_impl_quad
	.cfi_endproc

	.globl	vd_impl_curve
	.align	16, 0x90
	.type	vd_impl_curve,@function
vd_impl_curve:                          # @vd_impl_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_4
# BB#1:                                 # %if.end
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	movsd	%xmm7, 56(%rsp)         # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movl	%ebx, %esi
	callq	*192(%rdi)
	movq	vd_trace1(%rip), %rdi
	callq	*96(%rdi)
	movq	vd_trace1(%rip), %rdi
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	callq	*112(%rdi)
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	56(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	vd_trace1(%rip), %rdi
	movsd	24(%rdi), %xmm10        # xmm10 = mem[0],zero
	movsd	8(%rdi), %xmm8          # xmm8 = mem[0],zero
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rdi), %xmm9         # xmm9 = mem[0],zero
	movsd	32(%rdi), %xmm6         # xmm6 = mem[0],zero
	movsd	48(%rdi), %xmm7         # xmm7 = mem[0],zero
	subsd	%xmm10, %xmm4
	mulsd	%xmm8, %xmm4
	addsd	%xmm9, %xmm4
	subsd	%xmm6, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm7, %xmm5
	movq	128(%rdi), %rax
	testq	%rax, %rax
	je	.LBB8_3
# BB#2:                                 # %if.then.7.i
	movsd	24(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm6, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm7, %xmm3
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm10, %xmm2
	mulsd	%xmm8, %xmm2
	addsd	%xmm9, %xmm2
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm6, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm7, %xmm1
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm10, %xmm0
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm5, 56(%rsp)         # 8-byte Spill
	movsd	%xmm4, 48(%rsp)         # 8-byte Spill
	callq	*%rax
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	56(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	vd_trace1(%rip), %rdi
.LBB8_3:                                # %if.end.9.i
	movsd	%xmm4, px(%rip)
	movsd	%xmm5, py(%rip)
	callq	*104(%rdi)
	movq	vd_trace1(%rip), %rdi
	addq	$64, %rsp
	popq	%rbx
	jmpq	*176(%rdi)              # TAILCALL
.LBB8_4:                                # %return
	addq	$64, %rsp
	popq	%rbx
	retq
.Lfunc_end8:
	.size	vd_impl_curve, .Lfunc_end8-vd_impl_curve
	.cfi_endproc

	.globl	vd_impl_circle
	.align	16, 0x90
	.type	vd_impl_circle,@function
vd_impl_circle:                         # @vd_impl_circle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB9_1
# BB#2:                                 # %if.end
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movl	$1, %esi
	callq	*192(%rdi)
	movq	vd_trace1(%rip), %rdi
	movq	144(%rdi), %rax
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	movl	%ebx, %esi
	addq	$16, %rsp
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB9_1:                                # %return
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	vd_impl_circle, .Lfunc_end9-vd_impl_circle
	.cfi_endproc

	.globl	vd_impl_round
	.align	16, 0x90
	.type	vd_impl_round,@function
vd_impl_round:                          # @vd_impl_round
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB10_1
# BB#2:                                 # %if.end
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movl	$1, %esi
	callq	*192(%rdi)
	movq	vd_trace1(%rip), %rdi
	movq	152(%rdi), %rax
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	movl	%ebx, %esi
	addq	$16, %rsp
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB10_1:                               # %return
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end10:
	.size	vd_impl_round, .Lfunc_end10-vd_impl_round
	.cfi_endproc

	.globl	vd_impl_pixel
	.align	16, 0x90
	.type	vd_impl_pixel,@function
vd_impl_pixel:                          # @vd_impl_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB11_1
# BB#2:                                 # %if.end
	movq	160(%rdi), %rcx
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.LBB11_1:                               # %return
	retq
.Lfunc_end11:
	.size	vd_impl_pixel, .Lfunc_end11-vd_impl_pixel
	.cfi_endproc

	.globl	vd_impl_text
	.align	16, 0x90
	.type	vd_impl_text,@function
vd_impl_text:                           # @vd_impl_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	vd_trace1(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB12_1
# BB#2:                                 # %if.end
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	*184(%rdi)
	movq	vd_trace1(%rip), %rdi
	movq	200(%rdi), %rax
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	24(%rdi), %xmm0
	mulsd	8(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	32(%rdi), %xmm1
	mulsd	16(%rdi), %xmm1
	addsd	48(%rdi), %xmm1
	movq	%rbx, %rsi
	addq	$16, %rsp
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB12_1:                               # %return
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end12:
	.size	vd_impl_text, .Lfunc_end12-vd_impl_text
	.cfi_endproc

	.globl	vd_setflag
	.align	16, 0x90
	.type	vd_setflag,@function
vd_setflag:                             # @vd_setflag
	.cfi_startproc
# BB#0:                                 # %entry
	andl	$127, %edi
	movb	%sil, vd_flags(%rdi)
	retq
.Lfunc_end13:
	.size	vd_setflag, .Lfunc_end13-vd_setflag
	.cfi_endproc

	.type	vd_trace0,@object       # @vd_trace0
	.bss
	.globl	vd_trace0
	.align	8
vd_trace0:
	.quad	0
	.size	vd_trace0, 8

	.type	vd_trace1,@object       # @vd_trace1
	.globl	vd_trace1
	.align	8
vd_trace1:
	.quad	0
	.size	vd_trace1, 8

	.type	vd_flags,@object        # @vd_flags
	.globl	vd_flags
	.align	16
vd_flags:
	.zero	128
	.size	vd_flags, 128

	.type	px,@object              # @px
	.local	px
	.comm	px,8,8
	.type	py,@object              # @py
	.local	py
	.comm	py,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
