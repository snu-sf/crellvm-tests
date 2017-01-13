	.text
	.file	"cmsmtrx.bc"
	.globl	_cmsVEC3init
	.align	16, 0x90
	.type	_cmsVEC3init,@function
_cmsVEC3init:                           # @_cmsVEC3init
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	movsd	%xmm2, 16(%rdi)
	retq
.Lfunc_end0:
	.size	_cmsVEC3init, .Lfunc_end0-_cmsVEC3init
	.cfi_endproc

	.globl	_cmsVEC3minus
	.align	16, 0x90
	.type	_cmsVEC3minus,@function
_cmsVEC3minus:                          # @_cmsVEC3minus
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	subsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rdi)
	retq
.Lfunc_end1:
	.size	_cmsVEC3minus, .Lfunc_end1-_cmsVEC3minus
	.cfi_endproc

	.globl	_cmsVEC3cross
	.align	16, 0x90
	.type	_cmsVEC3cross,@function
_cmsVEC3cross:                          # @_cmsVEC3cross
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	mulsd	16(%rdx), %xmm0
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	16(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi)
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	mulsd	(%rdx), %xmm0
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	mulsd	8(%rdx), %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	8(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rdi)
	retq
.Lfunc_end2:
	.size	_cmsVEC3cross, .Lfunc_end2-_cmsVEC3cross
	.cfi_endproc

	.globl	_cmsVEC3dot
	.align	16, 0x90
	.type	_cmsVEC3dot,@function
_cmsVEC3dot:                            # @_cmsVEC3dot
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	mulsd	(%rsi), %xmm0
	mulsd	8(%rsi), %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	mulsd	16(%rsi), %xmm0
	addsd	%xmm1, %xmm0
	retq
.Lfunc_end3:
	.size	_cmsVEC3dot, .Lfunc_end3-_cmsVEC3dot
	.cfi_endproc

	.globl	_cmsVEC3length
	.align	16, 0x90
	.type	_cmsVEC3length,@function
_cmsVEC3length:                         # @_cmsVEC3length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jp	.LBB4_2
# BB#1:                                 # %entry.split
	popq	%rax
	retq
.LBB4_2:                                # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rax
	jmp	sqrt                    # TAILCALL
.Lfunc_end4:
	.size	_cmsVEC3length, .Lfunc_end4-_cmsVEC3length
	.cfi_endproc

	.globl	_cmsVEC3distance
	.align	16, 0x90
	.type	_cmsVEC3distance,@function
_cmsVEC3distance:                       # @_cmsVEC3distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movsd	(%rdi), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	subsd	(%rsi), %xmm2
	subsd	8(%rsi), %xmm1
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rsi), %xmm0
	mulsd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jp	.LBB5_2
# BB#1:                                 # %entry.split
	popq	%rax
	retq
.LBB5_2:                                # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rax
	jmp	sqrt                    # TAILCALL
.Lfunc_end5:
	.size	_cmsVEC3distance, .Lfunc_end5-_cmsVEC3distance
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_cmsMAT3identity
	.align	16, 0x90
	.type	_cmsMAT3identity,@function
_cmsMAT3identity:                       # @_cmsMAT3identity
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movupd	%xmm0, (%rdi)
	xorps	%xmm1, %xmm1
	movups	%xmm1, 16(%rdi)
	movupd	%xmm0, 32(%rdi)
	movups	%xmm1, 48(%rdi)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 64(%rdi)
	retq
.Lfunc_end6:
	.size	_cmsMAT3identity, .Lfunc_end6-_cmsMAT3identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4535124893482614800     # double 1.5259021896696422E-5
	.text
	.globl	_cmsMAT3isIdentity
	.align	16, 0x90
	.type	_cmsMAT3isIdentity,@function
_cmsMAT3isIdentity:                     # @_cmsMAT3isIdentity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	(%rbx), %xmm0
	callq	fabs
	xorl	%ebp, %ebp
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#1:                                 # %for.cond.1
	xorpd	%xmm0, %xmm0
	subsd	8(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#2:                                 # %for.cond.1.1
	xorpd	%xmm0, %xmm0
	subsd	16(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#3:                                 # %for.cond.1.2
	xorpd	%xmm0, %xmm0
	subsd	24(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#4:                                 # %for.cond.1.1.17
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	32(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#5:                                 # %for.cond.1.1.1
	xorpd	%xmm0, %xmm0
	subsd	40(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#6:                                 # %for.cond.1.2.1
	xorpd	%xmm0, %xmm0
	subsd	48(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#7:                                 # %for.cond.1.2.23
	xorpd	%xmm0, %xmm0
	subsd	56(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#8:                                 # %for.cond.1.1.2
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	64(%rbx), %xmm0
	callq	fabs
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#9:                                 # %for.cond.1.2.2
	movl	$1, %ebp
.LBB7_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_cmsMAT3isIdentity, .Lfunc_end7-_cmsMAT3isIdentity
	.cfi_endproc

	.globl	_cmsMAT3per
	.align	16, 0x90
	.type	_cmsMAT3per,@function
_cmsMAT3per:                            # @_cmsMAT3per
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	movupd	(%rdx), %xmm3
	movapd	%xmm0, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm3, %xmm4
	movupd	24(%rdx), %xmm3
	movapd	%xmm1, %xmm5
	movlhps	%xmm5, %xmm5            # xmm5 = xmm5[0,0]
	mulpd	%xmm3, %xmm5
	addpd	%xmm4, %xmm5
	movupd	48(%rdx), %xmm3
	movapd	%xmm2, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm3, %xmm4
	addpd	%xmm5, %xmm4
	mulsd	16(%rdx), %xmm0
	mulsd	40(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	mulsd	64(%rdx), %xmm2
	addsd	%xmm1, %xmm2
	movupd	%xmm4, (%rdi)
	movsd	%xmm2, 16(%rdi)
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	40(%rsi), %xmm2         # xmm2 = mem[0],zero
	movupd	(%rdx), %xmm3
	movapd	%xmm0, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm3, %xmm4
	movupd	24(%rdx), %xmm3
	movapd	%xmm1, %xmm5
	movlhps	%xmm5, %xmm5            # xmm5 = xmm5[0,0]
	mulpd	%xmm3, %xmm5
	addpd	%xmm4, %xmm5
	movupd	48(%rdx), %xmm3
	movapd	%xmm2, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm3, %xmm4
	addpd	%xmm5, %xmm4
	mulsd	16(%rdx), %xmm0
	mulsd	40(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	mulsd	64(%rdx), %xmm2
	addsd	%xmm1, %xmm2
	movupd	%xmm4, 24(%rdi)
	movsd	%xmm2, 40(%rdi)
	movsd	48(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	64(%rsi), %xmm2         # xmm2 = mem[0],zero
	movupd	(%rdx), %xmm3
	movapd	%xmm0, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm3, %xmm4
	movupd	24(%rdx), %xmm3
	movapd	%xmm1, %xmm5
	movlhps	%xmm5, %xmm5            # xmm5 = xmm5[0,0]
	mulpd	%xmm3, %xmm5
	addpd	%xmm4, %xmm5
	movupd	48(%rdx), %xmm3
	movapd	%xmm2, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm3, %xmm4
	addpd	%xmm5, %xmm4
	mulsd	16(%rdx), %xmm0
	mulsd	40(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	mulsd	64(%rdx), %xmm2
	addsd	%xmm1, %xmm2
	movupd	%xmm4, 48(%rdi)
	movsd	%xmm2, 64(%rdi)
	retq
.Lfunc_end8:
	.size	_cmsMAT3per, .Lfunc_end8-_cmsMAT3per
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	_cmsMAT3inverse
	.align	16, 0x90
	.type	_cmsMAT3inverse,@function
_cmsMAT3inverse:                        # @_cmsMAT3inverse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 96
.Ltmp10:
	.cfi_offset %rbx, -24
.Ltmp11:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	64(%rbx), %xmm1         # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm6
	mulsd	%xmm1, %xmm6
	movsd	40(%rbx), %xmm5         # xmm5 = mem[0],zero
	movsd	56(%rbx), %xmm4         # xmm4 = mem[0],zero
	movapd	%xmm5, %xmm2
	mulsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm6
	movsd	%xmm6, 8(%rsp)          # 8-byte Spill
	movsd	24(%rbx), %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	48(%rbx), %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm5
	subsd	%xmm1, %xmm5
	movapd	%xmm5, 16(%rsp)         # 16-byte Spill
	mulsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, 48(%rsp)         # 16-byte Spill
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	mulsd	%xmm6, %xmm0
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm5, %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	callq	fabs
	xorl	%eax, %eax
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB9_2
# BB#1:                                 # %if.end
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	movsd	%xmm0, (%r14)
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	mulsd	56(%rbx), %xmm1
	mulsd	64(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 8(%r14)
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	mulsd	40(%rbx), %xmm0
	mulsd	32(%rbx), %xmm1
	subsd	%xmm1, %xmm0
	unpcklpd	16(%rsp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	movapd	%xmm3, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	divpd	%xmm1, %xmm0
	movupd	%xmm0, 16(%r14)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm2         # xmm2 = mem[0],zero
	mulsd	64(%rbx), %xmm0
	mulsd	48(%rbx), %xmm2
	subsd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 32(%r14)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	16(%rbx), %xmm2         # xmm2 = mem[0],zero
	mulsd	24(%rbx), %xmm2
	mulsd	40(%rbx), %xmm0
	subsd	%xmm0, %xmm2
	unpcklpd	48(%rsp), %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	divpd	%xmm1, %xmm2
	movupd	%xmm2, 40(%r14)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	mulsd	48(%rbx), %xmm1
	mulsd	56(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 56(%r14)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	mulsd	32(%rbx), %xmm0
	mulsd	24(%rbx), %xmm1
	subsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, 64(%r14)
	movl	$1, %eax
.LBB9_2:                                # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	_cmsMAT3inverse, .Lfunc_end9-_cmsMAT3inverse
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	_cmsMAT3solve
	.align	16, 0x90
	.type	_cmsMAT3solve,@function
_cmsMAT3solve:                          # @_cmsMAT3solve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 208
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	leaq	112(%rsp), %rdi
	movl	$72, %edx
	callq	memmove
	movsd	144(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, 104(%rsp)        # 8-byte Spill
	movsd	176(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, 96(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	movsd	152(%rsp), %xmm5        # xmm5 = mem[0],zero
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	movsd	168(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm3, 40(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm0
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm4
	movsd	%xmm4, 72(%rsp)         # 8-byte Spill
	movsd	136(%rsp), %xmm6        # xmm6 = mem[0],zero
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	%xmm6, %xmm0
	movsd	160(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, 88(%rsp)         # 8-byte Spill
	mulsd	%xmm2, %xmm5
	subsd	%xmm0, %xmm5
	movsd	%xmm5, 64(%rsp)         # 8-byte Spill
	mulsd	%xmm6, %xmm3
	movapd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm3
	movsd	%xmm3, 80(%rsp)         # 8-byte Spill
	movsd	112(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	120(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movapd	%xmm4, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm5, %xmm1
	addsd	%xmm0, %xmm1
	movsd	128(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movapd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	fabs
	xorl	%eax, %eax
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB10_2
# BB#1:                                 # %if.end
	movsd	72(%rsp), %xmm8         # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	8(%rsp), %xmm7          # 8-byte Reload
                                        # xmm7 = mem[0],zero
	divsd	%xmm7, %xmm8
	movsd	40(%rsp), %xmm10        # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movapd	%xmm10, %xmm0
	movsd	56(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	mulsd	%xmm6, %xmm0
	movsd	96(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm1
	movsd	24(%rsp), %xmm12        # 8-byte Reload
                                        # xmm12 = mem[0],zero
	mulsd	%xmm12, %xmm1
	subsd	%xmm1, %xmm0
	divsd	%xmm7, %xmm0
	movsd	32(%rsp), %xmm11        # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movapd	%xmm11, %xmm1
	mulsd	%xmm12, %xmm1
	movsd	104(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm2
	mulsd	%xmm6, %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm7, %xmm1
	movsd	64(%rsp), %xmm9         # 8-byte Reload
                                        # xmm9 = mem[0],zero
	divsd	%xmm7, %xmm9
	movsd	16(%rsp), %xmm13        # 8-byte Reload
                                        # xmm13 = mem[0],zero
	mulsd	%xmm13, %xmm4
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm2
	mulsd	%xmm6, %xmm2
	subsd	%xmm2, %xmm4
	divsd	%xmm7, %xmm4
	movsd	48(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm6
	mulsd	%xmm13, %xmm11
	subsd	%xmm11, %xmm6
	divsd	%xmm7, %xmm6
	movsd	80(%rsp), %xmm11        # 8-byte Reload
                                        # xmm11 = mem[0],zero
	divsd	%xmm7, %xmm11
	mulsd	%xmm12, %xmm5
	mulsd	%xmm13, %xmm10
	subsd	%xmm10, %xmm5
	divsd	%xmm7, %xmm5
	mulsd	%xmm13, %xmm3
	mulsd	%xmm12, %xmm2
	subsd	%xmm2, %xmm3
	divsd	%xmm7, %xmm3
	mulsd	(%rbx), %xmm8
	mulsd	8(%rbx), %xmm0
	addsd	%xmm8, %xmm0
	mulsd	16(%rbx), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r14)
	mulsd	(%rbx), %xmm9
	mulsd	8(%rbx), %xmm4
	addsd	%xmm9, %xmm4
	mulsd	16(%rbx), %xmm6
	addsd	%xmm4, %xmm6
	movsd	%xmm6, 8(%r14)
	mulsd	(%rbx), %xmm11
	mulsd	8(%rbx), %xmm5
	addsd	%xmm11, %xmm5
	mulsd	16(%rbx), %xmm3
	addsd	%xmm5, %xmm3
	movsd	%xmm3, 16(%r14)
	movl	$1, %eax
.LBB10_2:                               # %cleanup
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	_cmsMAT3solve, .Lfunc_end10-_cmsMAT3solve
	.cfi_endproc

	.globl	_cmsMAT3eval
	.align	16, 0x90
	.type	_cmsMAT3eval,@function
_cmsMAT3eval:                           # @_cmsMAT3eval
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	mulsd	(%rdx), %xmm0
	mulsd	8(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	mulsd	16(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi)
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rsi), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rdx), %xmm0
	mulsd	8(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	mulsd	16(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	48(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsi), %xmm1         # xmm1 = mem[0],zero
	mulsd	(%rdx), %xmm0
	mulsd	8(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	movsd	64(%rsi), %xmm0         # xmm0 = mem[0],zero
	mulsd	16(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rdi)
	retq
.Lfunc_end11:
	.size	_cmsMAT3eval, .Lfunc_end11-_cmsMAT3eval
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
