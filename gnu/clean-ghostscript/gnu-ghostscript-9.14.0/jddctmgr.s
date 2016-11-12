	.text
	.file	"jddctmgr.bc"
	.globl	jinit_inverse_dct
	.align	16, 0x90
	.type	jinit_inverse_dct,@function
jinit_inverse_dct:                      # @jinit_inverse_dct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$128, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 848(%r15)
	movq	$start_pass, (%r14)
	cmpl	$0, 56(%r15)
	jle	.LBB0_3
# BB#1:                                 # %for.body.lr.ph
	movq	304(%r15), %r12
	addq	$88, %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, (%r12)
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rax, %rdi
	callq	memset
	movl	$-1, 88(%r14,%rbx,4)
	incq	%rbx
	movslq	56(%r15), %rax
	addq	$96, %r12
	cmpq	%rax, %rbx
	jl	.LBB0_2
.LBB0_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	jinit_inverse_dct, .Lfunc_end0-jinit_inverse_dct
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass,@function
start_pass:                             # @start_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -48
.Ltmp15:
	.cfi_offset %r12, -40
.Ltmp16:
	.cfi_offset %r13, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	cmpl	$0, 56(%r15)
	jle	.LBB1_12
# BB#1:                                 # %for.body.lr.ph
	movq	848(%r15), %r14
	movq	304(%r15), %rbx
	addq	$36, %rbx
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r13
	movl	(%rbx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	addl	4(%rbx), %ecx
	cmpl	$2056, %ecx             # imm = 0x808
	jne	.LBB1_5
# BB#3:                                 # %sw.bb
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, 96(%r15)
	movl	$jpeg_idct_islow, %eax
	je	.LBB1_7
# BB#4:                                 # %sw.default
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r15), %rax
	movl	$49, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_5:                                # %sw.default.4
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r15), %rcx
	movl	$7, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	4(%rbx), %eax
	movl	%eax, 48(%rcx)
	movq	%r15, %rdi
	callq	*(%rcx)
.LBB1_6:                                # %sw.epilog.17
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %rax
.LBB1_7:                                # %sw.epilog.17
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, 8(%r14,%r12,8)
	cmpl	$0, 16(%rbx)
	je	.LBB1_11
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, 88(%r14,%r12,4)
	je	.LBB1_11
# BB#9:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	44(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB1_11
# BB#10:                                # %vector.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$0, 88(%r14,%r12,4)
	movq	52(%rbx), %rdx
	movq	(%rcx), %xmm0           # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, (%rdx)
	movq	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 16(%rdx)
	movq	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 32(%rdx)
	movq	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 48(%rdx)
	movq	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 64(%rdx)
	movq	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 80(%rdx)
	movq	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 96(%rdx)
	movq	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 112(%rdx)
	movq	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 128(%rdx)
	movq	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 144(%rdx)
	movq	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 160(%rdx)
	movq	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 176(%rdx)
	movq	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 192(%rdx)
	movq	104(%rcx), %xmm0        # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 208(%rdx)
	movq	112(%rcx), %xmm0        # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 224(%rdx)
	movq	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 240(%rdx)
.LBB1_11:                               # %for.inc.42
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%r12
	movslq	56(%r15), %rcx
	addq	$96, %rbx
	cmpq	%rcx, %r12
	jl	.LBB1_2
.LBB1_12:                               # %for.end.44
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	start_pass, .Lfunc_end1-start_pass
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
