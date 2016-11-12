	.text
	.file	"zpdfops.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	zpdfinkpath,@function
zpdfinkpath:                            # @zpdfinkpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 192
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	leaq	624(%r15), %r14
	movq	624(%r15), %r12
	movq	%r14, %rdi
	callq	ref_stack_counttomark
	movl	%eax, %ebx
	movl	$-24, %eax
	testl	%ebx, %ebx
	je	.LBB0_27
# BB#1:                                 # %if.end
	cmpl	$3, %ebx
	movl	$-15, %eax
	jb	.LBB0_27
# BB#2:                                 # %if.end
	movl	%ebx, %ecx
	andl	$1, %ecx
	je	.LBB0_27
# BB#3:                                 # %if.end.6
	leal	-1(%rbx), %r13d
	movq	%r13, %rax
	shlq	$4, %rax
	subq	%rax, %r12
	addq	$16, %r12
	leaq	128(%rsp), %rsi
	movq	%r12, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB0_27
# BB#4:                                 # %if.end.11
	leaq	16(%r12), %rdi
	leaq	120(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB0_27
# BB#5:                                 # %if.end.16
	movq	(%r15), %rdi
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	120(%rsp), %xmm1        # xmm1 = mem[0],zero
	callq	gs_moveto
	testl	%eax, %eax
	js	.LBB0_27
# BB#6:                                 # %if.end.20
	cmpl	$2, %r13d
	je	.LBB0_26
# BB#7:                                 # %if.end.23
	leaq	32(%r12), %rdi
	leaq	112(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB0_27
# BB#8:                                 # %if.end.28
	leaq	48(%r12), %rdi
	leaq	104(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB0_27
# BB#9:                                 # %if.end.33
	cmpl	$4, %r13d
	jne	.LBB0_11
# BB#10:                                # %if.then.35
	movq	(%r15), %rdi
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	104(%rsp), %xmm1        # xmm1 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	jns	.LBB0_26
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.41
	jb	.LBB0_26
# BB#12:                                # %for.body.lr.ph
	movsd	120(%rsp), %xmm1        # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	addsd	%xmm2, %xmm2
	movsd	104(%rsp), %xmm4        # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	addsd	%xmm3, %xmm3
	movsd	112(%rsp), %xmm5        # xmm5 = mem[0],zero
	subsd	%xmm5, %xmm3
	movl	$4, %edi
.LBB0_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm3, 72(%rsp)         # 8-byte Spill
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	cmpl	%r13d, %edi
	jae	.LBB0_17
# BB#14:                                # %if.then.47
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	%edi, %eax
	shlq	$4, %rax
	leaq	(%rax,%r12), %rbp
	movl	%edi, 12(%rsp)          # 4-byte Spill
	movq	%rbp, %rdi
	leaq	96(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB0_27
# BB#15:                                # %if.end.53
                                        #   in Loop: Header=BB0_13 Depth=1
	addq	$16, %rbp
	movq	%rbp, %rdi
	leaq	88(%rsp), %rsi
	callq	real_param
	movsd	72(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	12(%rsp), %ecx          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB0_27
# BB#16:                                # %if.end.53.if.end.65_crit_edge
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	%ecx, %ebp
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	120(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	112(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm4, 24(%rsp)         # 8-byte Spill
	movsd	104(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm4, 56(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm4, 64(%rsp)         # 8-byte Spill
	jmp	.LBB0_18
.LBB0_17:                               # %if.else
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	%edi, %ebp
	movapd	%xmm5, %xmm2
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	addsd	%xmm2, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movsd	%xmm2, 96(%rsp)
	movapd	%xmm4, %xmm2
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	addsd	%xmm2, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	movsd	%xmm2, 88(%rsp)
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	72(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
.LBB0_18:                               # %if.end.65
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movapd	%xmm0, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm4
	movapd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm4, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_20
# BB#19:                                # %call.sqrt
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB0_20:                               # %if.end.65.split
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movsd	24(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	subsd	128(%rsp), %xmm1
	mulsd	%xmm1, %xmm1
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	120(%rsp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_22
# BB#21:                                # %call.sqrt96
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB0_22:                               # %if.end.65.split.split
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm1         # xmm1 = mem[0],zero
	subsd	112(%rsp), %xmm1
	mulsd	%xmm1, %xmm1
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	104(%rsp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_24
# BB#23:                                # %call.sqrt97
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB0_24:                               # %if.end.65.split.split.split
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	16(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm1
	movsd	32(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	addsd	%xmm7, %xmm1
	divsd	%xmm1, %xmm5
	addsd	%xmm7, %xmm0
	divsd	%xmm0, %xmm7
	movsd	48(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm5, %xmm1
	addsd	%xmm0, %xmm1
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm4
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm4
	mulsd	%xmm5, %xmm4
	addsd	%xmm0, %xmm4
	movsd	56(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	subsd	%xmm2, %xmm5
	mulsd	%xmm7, %xmm5
	addsd	%xmm2, %xmm5
	movsd	64(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	subsd	%xmm3, %xmm6
	mulsd	%xmm7, %xmm6
	addsd	%xmm3, %xmm6
	movapd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	addsd	128(%rsp), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm3, %xmm1
	subsd	%xmm4, %xmm1
	addsd	%xmm4, %xmm1
	addsd	120(%rsp), %xmm1
	subsd	%xmm4, %xmm1
	subsd	%xmm5, %xmm2
	addsd	%xmm5, %xmm2
	movsd	112(%rsp), %xmm4        # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm2
	subsd	%xmm5, %xmm2
	subsd	%xmm6, %xmm3
	addsd	%xmm6, %xmm3
	movsd	104(%rsp), %xmm5        # xmm5 = mem[0],zero
	addsd	%xmm5, %xmm3
	subsd	%xmm6, %xmm3
	movq	(%r15), %rdi
	callq	gs_curveto
	testl	%eax, %eax
	movl	%ebp, %edi
	js	.LBB0_27
# BB#25:                                # %if.end.140
                                        #   in Loop: Header=BB0_13 Depth=1
	movsd	128(%rsp), %xmm3        # xmm3 = mem[0],zero
	movq	112(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	96(%rsp), %rcx
	movq	%rcx, 112(%rsp)
	movsd	120(%rsp), %xmm2        # xmm2 = mem[0],zero
	movq	104(%rsp), %rdx
	movq	%rdx, 120(%rsp)
	movq	88(%rsp), %rsi
	movq	%rsi, 104(%rsp)
	addl	$2, %edi
	movd	%rcx, %xmm5
	movd	%rax, %xmm0
	movd	%rsi, %xmm4
	movd	%rdx, %xmm1
	cmpl	%r13d, %edi
	jbe	.LBB0_13
.LBB0_26:                               # %pop
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	ref_stack_pop
	xorl	%eax, %eax
.LBB0_27:                               # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zpdfinkpath, .Lfunc_end0-zpdfinkpath
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0.pdfinkpath"
	.size	.L.str, 13

	.type	zpdfops_op_defs,@object # @zpdfops_op_defs
	.section	.rodata,"a",@progbits
	.globl	zpdfops_op_defs
	.align	16
zpdfops_op_defs:
	.quad	.L.str
	.quad	zpdfinkpath
	.zero	16
	.size	zpdfops_op_defs, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
