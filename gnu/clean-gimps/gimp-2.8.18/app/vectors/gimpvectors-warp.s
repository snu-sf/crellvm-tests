	.text
	.file	"gimpvectors-warp.bc"
	.globl	gimp_vectors_warp_point
	.align	16, 0x90
	.type	gimp_vectors_warp_point,@function
gimp_vectors_warp_point:                # @gimp_vectors_warp_point
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -64(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_vectors_stroke_get_length
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_9
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB0_1
.LBB0_9:                                # %for.end
	cmpq	$0, -64(%rbp)
	jne	.LBB0_11
# BB#10:                                # %if.then.5
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB0_12
.LBB0_11:                               # %if.end.8
	movq	-72(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_stroke_warp_point
.LBB0_12:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_warp_point, .Lfunc_end0-gimp_vectors_warp_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI1_1:
	.quad	4611686018427387904     # double 2
.LCPI1_2:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	gimp_stroke_warp_point,@function
gimp_stroke_warp_point:                 # @gimp_stroke_warp_point
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
	subq	$336, %rsp              # imm = 0x150
	movsd	.LCPI1_0, %xmm3         # xmm3 = mem[0],zero
	leaq	-104(%rbp), %rax
	leaq	-240(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$64, %r8d
	movl	%r8d, %r9d
	leaq	-232(%rbp), %r10
	leaq	-168(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movq	%r9, -304(%rbp)         # 8-byte Spill
	movq	%r10, -312(%rbp)        # 8-byte Spill
	movq	%r11, -320(%rbp)        # 8-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movsd	%xmm3, -336(%rbp)       # 8-byte Spill
	callq	memset
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	-304(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	-304(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	gimp_stroke_get_point_at_dist
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB1_9
.LBB1_2:                                # %if.end
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	leaq	-168(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm2, (%rax)
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	gimp_stroke_get_point_at_dist
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then.9
	jmp	.LBB1_9
.LBB1_4:                                # %if.end.10
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	leaq	-232(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	addsd	-16(%rbp), %xmm0
	callq	gimp_stroke_get_point_at_dist
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.13
	jmp	.LBB1_9
.LBB1_6:                                # %if.end.14
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-160(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	hypot
	movsd	.LCPI1_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -280(%rbp)
	ucomisd	-280(%rbp), %xmm1
	jbe	.LBB1_8
# BB#7:                                 # %if.then.22
	jmp	.LBB1_9
.LBB1_8:                                # %if.end.23
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	divsd	-280(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-280(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB1_9:                                # %return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_stroke_warp_point, .Lfunc_end1-gimp_stroke_warp_point
	.cfi_endproc

	.globl	gimp_vectors_warp_vectors
	.align	16, 0x90
	.type	gimp_vectors_warp_vectors,@function
gimp_vectors_warp_vectors:              # @gimp_vectors_warp_vectors
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_vectors_warp_stroke
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_6
.LBB2_6:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB2_1
.LBB2_7:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vectors_warp_vectors, .Lfunc_end2-gimp_vectors_warp_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_warp_stroke,@function
gimp_vectors_warp_stroke:               # @gimp_vectors_warp_stroke
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_vectors_warp_point
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_1
.LBB3_7:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vectors_warp_stroke, .Lfunc_end3-gimp_vectors_warp_stroke
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
