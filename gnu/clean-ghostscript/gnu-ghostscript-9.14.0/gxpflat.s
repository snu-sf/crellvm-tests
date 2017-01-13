	.text
	.file	"gxpflat.bc"
	.globl	gx_curve_log2_samples
	.align	16, 0x90
	.type	gx_curve_log2_samples,@function
gx_curve_log2_samples:                  # @gx_curve_log2_samples
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	%ecx, %r8d
	movl	20(%rdx), %r10d
	movl	24(%rdx), %r9d
	movl	%r10d, %eax
	subl	%edi, %eax
	movl	%eax, %r11d
	negl	%r11d
	cmovll	%eax, %r11d
	movl	%r9d, %ecx
	subl	%esi, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	movl	%eax, %ecx
	orl	%r11d, %ecx
	cmpl	$4096, %ecx             # imm = 0x1000
	setl	%cl
	sarl	%cl, %r8d
	testl	%r8d, %r8d
	je	.LBB0_1
# BB#3:                                 # %if.else
	movl	36(%rdx), %r11d
	movl	28(%rdx), %eax
	movl	32(%rdx), %ecx
	movl	40(%rdx), %edx
	subl	%ecx, %esi
	subl	%edx, %ecx
	subl	%eax, %edi
	subl	%r11d, %eax
	subl	%eax, %edi
	movl	%edi, %ebx
	negl	%ebx
	cmovll	%edi, %ebx
	subl	%ecx, %esi
	movl	%esi, %edi
	negl	%edi
	cmovll	%esi, %edi
	subl	%r11d, %eax
	addl	%r10d, %eax
	movl	%eax, %esi
	negl	%esi
	cmovll	%eax, %esi
	subl	%edx, %ecx
	addl	%r9d, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	cmpl	%esi, %ebx
	cmovgel	%ebx, %esi
	cmpl	%edx, %edi
	cmovgel	%edi, %edx
	addl	%esi, %edx
	leal	-1(%r8,%rdx), %eax
	movl	%edx, %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%r8d
	cmpl	$2, %eax
	jb	.LBB0_5
	.align	16, 0x90
.LBB0_4:                                # %for.body.95
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	addl	$3, %eax
	movl	%eax, %edx
	shrl	$2, %edx
	cmpl	$7, %eax
	movl	%edx, %eax
	ja	.LBB0_4
	jmp	.LBB0_5
.LBB0_1:                                # %if.then.12
	cmpl	%eax, %r11d
	cmovgel	%r11d, %eax
	movl	$1, %ecx
	cmpl	$257, %eax              # imm = 0x101
	jl	.LBB0_5
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	sarl	%eax
	cmpl	$256, %eax              # imm = 0x100
	jg	.LBB0_2
.LBB0_5:                                # %if.end.103
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gx_curve_log2_samples, .Lfunc_end0-gx_curve_log2_samples
	.cfi_endproc

	.globl	curve_coeffs_ranged
	.align	16, 0x90
	.type	curve_coeffs_ranged,@function
curve_coeffs_ranged:                    # @curve_coeffs_ranged
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	112(%rsp), %r10
	movq	104(%rsp), %r11
	movq	88(%rsp), %r13
	movq	80(%rsp), %r14
	movq	72(%rsp), %r15
	movl	120(%rsp), %r12d
	movq	96(%rsp), %rbx
	movl	64(%rsp), %ebp
	movl	56(%rsp), %eax
	subl	%esi, %edx
	subl	%edi, %esi
	leal	(%rsi,%rsi,2), %esi
	movl	%esi, (%r13)
	leal	(%rdx,%rdx,2), %edx
	subl	%esi, %edx
	movl	%edx, (%r14)
	subl	%edi, %ecx
	subl	%edx, %ecx
	subl	(%r13), %ecx
	movl	%ecx, (%r15)
	subl	%r9d, %eax
	subl	%r8d, %r9d
	leal	(%r9,%r9,2), %ecx
	movl	%ecx, (%r10)
	leal	(%rax,%rax,2), %eax
	subl	%ecx, %eax
	movl	%eax, (%r11)
	subl	%r8d, %ebp
	subl	%eax, %ebp
	subl	(%r10), %ebp
	movl	%ebp, (%rbx)
	cmpl	$10, %r12d
	jg	.LBB1_7
# BB#1:                                 # %lor.lhs.false
	addl	$357913940, %ebp        # imm = 0x15555554
	cmpl	$715827880, %ebp        # imm = 0x2AAAAAA8
	ja	.LBB1_7
# BB#2:                                 # %lor.lhs.false
	movl	$357913940, %eax        # imm = 0x15555554
	addl	(%r15), %eax
	cmpl	$715827880, %eax        # imm = 0x2AAAAAA8
	ja	.LBB1_7
# BB#3:                                 # %lor.lhs.false.24
	movl	$357913940, %ecx        # imm = 0x15555554
	movl	(%r14), %eax
	addl	%ecx, %eax
	cmpl	$715827880, %eax        # imm = 0x2AAAAAA8
	ja	.LBB1_7
# BB#4:                                 # %lor.lhs.false.28
	addl	(%r11), %ecx
	cmpl	$715827880, %ecx        # imm = 0x2AAAAAA8
	ja	.LBB1_7
# BB#5:                                 # %lor.lhs.false.32
	movl	$357913940, %ecx        # imm = 0x15555554
	movl	(%r13), %eax
	addl	%ecx, %eax
	cmpl	$715827880, %eax        # imm = 0x2AAAAAA8
	ja	.LBB1_7
# BB#6:                                 # %lor.lhs.false.36
	addl	(%r10), %ecx
	cmpl	$715827881, %ecx        # imm = 0x2AAAAAA9
	sbbl	%eax, %eax
	andl	$1, %eax
	jmp	.LBB1_8
.LBB1_7:                                # %cleanup
	xorl	%eax, %eax
.LBB1_8:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	curve_coeffs_ranged, .Lfunc_end1-curve_coeffs_ranged
	.cfi_endproc

	.globl	gx_flattened_iterator__init
	.align	16, 0x90
	.type	gx_flattened_iterator__init,@function
gx_flattened_iterator__init:            # @gx_flattened_iterator__init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	28(%rcx), %ebp
	movl	32(%rcx), %ebx
	movl	36(%rcx), %eax
	movl	40(%rcx), %r15d
	movl	%esi, 128(%rdi)
	movl	%esi, 120(%rdi)
	movl	%esi, (%rdi)
	movl	%edx, 132(%rdi)
	movl	%edx, 124(%rdi)
	movl	%edx, 4(%rdi)
	movl	20(%rcx), %r11d
	movl	%r11d, 8(%rdi)
	movl	24(%rcx), %r9d
	movl	%r9d, 12(%rdi)
	subl	%ebp, %eax
	subl	%esi, %ebp
	leal	(%rbp,%rbp,2), %ebp
	movl	%ebp, 16(%rdi)
	leal	(%rax,%rax,2), %r10d
	subl	%ebp, %r10d
	movl	%r10d, 20(%rdi)
	subl	%esi, %r11d
	subl	%ebp, %r11d
	subl	%r10d, %r11d
	movl	%r11d, 24(%rdi)
	subl	%ebx, %r15d
	subl	%edx, %ebx
	leal	(%rbx,%rbx,2), %r14d
	movl	%r14d, 28(%rdi)
	leal	(%r15,%r15,2), %ebx
	subl	%r14d, %ebx
	movl	%ebx, 32(%rdi)
	subl	%edx, %r9d
	subl	%r14d, %r9d
	subl	%ebx, %r9d
	movl	%r9d, 36(%rdi)
	xorl	%eax, %eax
	cmpl	$10, %r8d
	jg	.LBB2_20
# BB#1:                                 # %lor.lhs.false.i
	leal	357913940(%r9), %ecx
	cmpl	$715827880, %ecx        # imm = 0x2AAAAAA8
	ja	.LBB2_20
# BB#2:                                 # %lor.lhs.false.i
	leal	357913940(%r11), %ecx
	cmpl	$715827880, %ecx        # imm = 0x2AAAAAA8
	ja	.LBB2_20
# BB#3:                                 # %lor.lhs.false.i
	leal	357913940(%r10), %ecx
	cmpl	$715827880, %ecx        # imm = 0x2AAAAAA8
	ja	.LBB2_20
# BB#4:                                 # %lor.lhs.false.i
	leal	357913940(%rbx), %ecx
	cmpl	$715827880, %ecx        # imm = 0x2AAAAAA8
	ja	.LBB2_20
# BB#5:                                 # %lor.lhs.false.i
	leal	357913940(%rbp), %ecx
	cmpl	$715827880, %ecx        # imm = 0x2AAAAAA8
	ja	.LBB2_20
# BB#6:                                 # %lor.lhs.false.i
	leal	357913940(%r14), %ecx
	cmpl	$715827880, %ecx        # imm = 0x2AAAAAA8
	ja	.LBB2_20
# BB#7:                                 # %if.end
	movl	$1, 116(%rdi)
	movl	%r8d, 52(%rdi)
	movl	$1, %eax
	cmpl	$-1, %r8d
	je	.LBB2_20
# BB#8:                                 # %if.end.18
	leal	(%r8,%r8), %eax
	leal	(%r8,%r8,2), %ecx
	movl	%ecx, -8(%rsp)          # 4-byte Spill
	movl	$1, %edx
	movl	$1, %r12d
	shll	%cl, %r12d
	decl	%r12d
	movl	%r12d, 56(%rdi)
	movb	%r8b, %cl
	shll	%cl, %edx
	movl	%edx, 48(%rdi)
	leal	(%r10,%r10), %r13d
	movl	%r13d, -4(%rsp)         # 4-byte Spill
	leal	(%rbx,%rbx), %esi
	movl	%ebp, %r15d
	movb	%r8b, %cl
	sarl	%cl, %r15d
	movl	%r14d, %edx
	movb	%r8b, %cl
	sarl	%cl, %edx
	movl	%edx, -20(%rsp)         # 4-byte Spill
	movb	%al, %cl
	shll	%cl, %ebp
	movb	%al, %cl
	shll	%cl, %r14d
	movb	%al, %cl
	sarl	%cl, %r13d
	movl	%r13d, -16(%rsp)        # 4-byte Spill
	movl	%esi, %edx
	movb	%al, %cl
	sarl	%cl, %edx
	movl	%edx, -12(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	sarl	%eax
	addl	%r15d, %eax
	movl	%edx, %r15d
	sarl	%r15d
	addl	-20(%rsp), %r15d        # 4-byte Folded Reload
	movb	%r8b, %cl
	shll	%cl, -4(%rsp)           # 4-byte Folded Spill
	movb	%r8b, %cl
	shll	%cl, %esi
	movb	%r8b, %cl
	shll	%cl, %r10d
	andl	%r12d, %ebp
	andl	%r12d, %r10d
	addl	%ebp, %r10d
	movl	$0, 88(%rdi)
	movl	$0, 84(%rdi)
	movb	%r8b, %cl
	shll	%cl, %ebx
	leal	(%r11,%r11), %r8d
	andl	%r12d, %r14d
	andl	%r12d, %ebx
	addl	%r14d, %ebx
	leal	(%r9,%r9), %r14d
	movl	%r13d, 68(%rdi)
	movl	%edx, 72(%rdi)
	movl	-4(%rsp), %ecx          # 4-byte Reload
	andl	%r12d, %ecx
	movl	%ecx, -4(%rsp)          # 4-byte Spill
	movl	%ecx, 100(%rdi)
	andl	%r12d, %esi
	movl	%esi, 104(%rdi)
	movl	%esi, %r13d
	movl	%eax, 60(%rdi)
	movl	%r15d, 64(%rdi)
	movl	%r10d, 92(%rdi)
	movl	%ebx, 96(%rdi)
	cmpl	%r12d, %r10d
	jbe	.LBB2_10
# BB#9:                                 # %if.then.85
	incl	%eax
	movl	%eax, 60(%rdi)
	andl	%r12d, %r10d
	movl	%r10d, 92(%rdi)
.LBB2_10:                               # %if.end.90
	cmpl	%r12d, %ebx
	jbe	.LBB2_12
# BB#11:                                # %if.then.94
	incl	%r15d
	movl	%r15d, 64(%rdi)
	andl	%r12d, %ebx
	movl	%ebx, 96(%rdi)
.LBB2_12:                               # %if.end.100
	movl	%r12d, %ebp
	andl	%r11d, %ebp
	movl	-8(%rsp), %ecx          # 4-byte Reload
	sarl	%cl, %r11d
	addl	%r11d, %eax
	movl	%eax, 60(%rdi)
	movl	%r9d, %edx
	movl	%ecx, %esi
	sarl	%cl, %edx
	addl	%r15d, %edx
	movl	%edx, 64(%rdi)
	addl	%ebp, %r10d
	movl	%r10d, 92(%rdi)
	andl	%r12d, %r9d
	addl	%ebx, %r9d
	movl	%r9d, 96(%rdi)
	cmpl	%r12d, %r10d
	jbe	.LBB2_14
# BB#13:                                # %if.then.122
	incl	%eax
	movl	%eax, 60(%rdi)
	andl	%r12d, %r10d
	movl	%r10d, 92(%rdi)
.LBB2_14:                               # %if.end.128
	leal	(%r8,%r8,2), %ebx
	leal	(%r14,%r14,2), %eax
	cmpl	%r12d, %r9d
	jbe	.LBB2_16
# BB#15:                                # %if.then.132
	incl	%edx
	movl	%edx, 64(%rdi)
	andl	%r12d, %r9d
	movl	%r9d, 96(%rdi)
.LBB2_16:                               # %if.end.138
	movl	%r12d, %edx
	andl	%ebx, %edx
	movl	%esi, %ecx
	sarl	%cl, %ebx
	movl	%ebx, 76(%rdi)
	movl	-16(%rsp), %ebp         # 4-byte Reload
	addl	%ebx, %ebp
	movl	%ebp, 68(%rdi)
	movl	%r12d, %esi
	andl	%eax, %esi
	sarl	%cl, %eax
	movl	%eax, 80(%rdi)
	movl	-12(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, 72(%rdi)
	movl	%edx, 108(%rdi)
	movl	-4(%rsp), %eax          # 4-byte Reload
	addl	%edx, %eax
	movl	%eax, 100(%rdi)
	movl	%esi, 112(%rdi)
	addl	%esi, %r13d
	movl	%r13d, 104(%rdi)
	movl	%r13d, %edx
	cmpl	%r12d, %eax
	jbe	.LBB2_18
# BB#17:                                # %if.then.156
	incl	%ebp
	movl	%ebp, 68(%rdi)
	andl	%r12d, %eax
	movl	%eax, 100(%rdi)
.LBB2_18:                               # %if.end.162
	movl	$1, %eax
	cmpl	%r12d, %edx
	jbe	.LBB2_20
# BB#19:                                # %if.then.166
	incl	%ecx
	movl	%ecx, 72(%rdi)
	andl	%r12d, %edx
	movl	%edx, 104(%rdi)
.LBB2_20:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_flattened_iterator__init, .Lfunc_end2-gx_flattened_iterator__init
	.cfi_endproc

	.globl	gx_check_fixed_diff_overflow
	.align	16, 0x90
	.type	gx_check_fixed_diff_overflow,@function
gx_check_fixed_diff_overflow:           # @gx_check_fixed_diff_overflow
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gx_check_fixed_diff_overflow, .Lfunc_end3-gx_check_fixed_diff_overflow
	.cfi_endproc

	.globl	gx_check_fixed_sum_overflow
	.align	16, 0x90
	.type	gx_check_fixed_sum_overflow,@function
gx_check_fixed_sum_overflow:            # @gx_check_fixed_sum_overflow
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gx_check_fixed_sum_overflow, .Lfunc_end4-gx_check_fixed_sum_overflow
	.cfi_endproc

	.globl	gx_flattened_iterator__init_line
	.align	16, 0x90
	.type	gx_flattened_iterator__init_line,@function
gx_flattened_iterator__init_line:       # @gx_flattened_iterator__init_line
	.cfi_startproc
# BB#0:                                 # %if.end
	movl	%esi, 128(%rdi)
	movl	%esi, 120(%rdi)
	movl	%esi, (%rdi)
	movl	%edx, 132(%rdi)
	movl	%edx, 124(%rdi)
	movl	%edx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	movl	%r8d, 12(%rdi)
	movl	$0, 52(%rdi)
	movl	$1, 48(%rdi)
	movl	$0, 116(%rdi)
	movl	$1, %eax
	retq
.Lfunc_end5:
	.size	gx_flattened_iterator__init_line, .Lfunc_end5-gx_flattened_iterator__init_line
	.cfi_endproc

	.globl	gx_flattened_iterator__next
	.align	16, 0x90
	.type	gx_flattened_iterator__next,@function
gx_flattened_iterator__next:            # @gx_flattened_iterator__next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movl	48(%rdi), %ecx
	movl	$-28, %eax
	testl	%ecx, %ecx
	je	.LBB6_23
# BB#1:                                 # %if.end
	movl	128(%rdi), %r11d
	movl	132(%rdi), %r10d
	movl	%r11d, 120(%rdi)
	movl	%r10d, 124(%rdi)
	movl	52(%rdi), %eax
	decl	%ecx
	movl	%ecx, 48(%rdi)
	cmpl	$1, %eax
	ja	.LBB6_4
# BB#2:                                 # %if.then.4
	testl	%ecx, %ecx
	je	.LBB6_22
# BB#3:                                 # %if.end.9
	movl	24(%rdi), %eax
	movl	36(%rdi), %ecx
	sarl	%eax
	addl	20(%rdi), %eax
	sarl	%eax
	addl	16(%rdi), %eax
	sarl	%eax
	addl	%r11d, %eax
	sarl	%ecx
	addl	32(%rdi), %ecx
	sarl	%ecx
	addl	28(%rdi), %ecx
	sarl	%ecx
	addl	%r10d, %ecx
	movl	%eax, 128(%rdi)
	movl	%ecx, 132(%rdi)
	movl	$1, %eax
	jmp	.LBB6_23
.LBB6_4:                                # %if.else
	testl	%ecx, %ecx
	je	.LBB6_22
# BB#5:                                 # %if.end.33
	movl	92(%rdi), %ecx
	movl	84(%rdi), %edx
	addl	%ecx, %edx
	movl	%edx, 84(%rdi)
	movl	56(%rdi), %esi
	movl	60(%rdi), %eax
	cmpl	%esi, %edx
	movl	%eax, %r8d
	jbe	.LBB6_7
# BB#6:                                 # %if.then.36
	andl	%esi, %edx
	movl	%edx, 84(%rdi)
	leal	1(%rax), %r8d
.LBB6_7:                                # %if.end.44
	movl	96(%rdi), %edx
	movl	88(%rdi), %ebp
	addl	%edx, %ebp
	movl	%ebp, 88(%rdi)
	movl	64(%rdi), %ebx
	cmpl	%esi, %ebp
	movl	%ebx, %r9d
	jbe	.LBB6_9
# BB#8:                                 # %if.then.48
	andl	%esi, %ebp
	movl	%ebp, 88(%rdi)
	leal	1(%rbx), %r9d
.LBB6_9:                                # %if.end.57
	movl	100(%rdi), %ebp
	addl	%ebp, %ecx
	movl	%ecx, 92(%rdi)
	movl	68(%rdi), %r14d
	cmpl	%esi, %ecx
	jbe	.LBB6_11
# BB#10:                                # %if.then.62
	andl	%esi, %ecx
	movl	%ecx, 92(%rdi)
	leal	1(%r14,%rax), %eax
	jmp	.LBB6_12
.LBB6_22:                               # %last
	movl	8(%rdi), %eax
	movl	%eax, 128(%rdi)
	movl	12(%rdi), %eax
	movl	%eax, 132(%rdi)
	xorl	%eax, %eax
	jmp	.LBB6_23
.LBB6_11:                               # %if.else.69
	addl	%r14d, %eax
.LBB6_12:                               # %if.end.73
	movl	%eax, 60(%rdi)
	movl	104(%rdi), %ecx
	addl	%ecx, %edx
	movl	%edx, 96(%rdi)
	movl	72(%rdi), %eax
	cmpl	%esi, %edx
	jbe	.LBB6_14
# BB#13:                                # %if.then.78
	andl	%esi, %edx
	movl	%edx, 96(%rdi)
	leal	1(%rax,%rbx), %ebx
	jmp	.LBB6_15
.LBB6_14:                               # %if.else.85
	addl	%eax, %ebx
.LBB6_15:                               # %if.end.89
	movl	%ebx, 64(%rdi)
	addl	108(%rdi), %ebp
	movl	%ebp, 100(%rdi)
	movl	76(%rdi), %edx
	cmpl	%esi, %ebp
	jbe	.LBB6_17
# BB#16:                                # %if.then.94
	andl	%esi, %ebp
	movl	%ebp, 100(%rdi)
	leal	1(%rdx,%r14), %r14d
	jmp	.LBB6_18
.LBB6_17:                               # %if.else.101
	addl	%edx, %r14d
.LBB6_18:                               # %if.end.105
	addl	%r11d, %r8d
	addl	%r10d, %r9d
	movl	%r14d, 68(%rdi)
	addl	112(%rdi), %ecx
	movl	%ecx, 104(%rdi)
	movl	80(%rdi), %edx
	cmpl	%esi, %ecx
	jbe	.LBB6_20
# BB#19:                                # %if.then.110
	andl	%esi, %ecx
	movl	%ecx, 104(%rdi)
	leal	1(%rdx,%rax), %eax
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.117
	addl	%edx, %eax
.LBB6_21:                               # %do.end.124
	movl	%eax, 72(%rdi)
	movl	%r8d, 40(%rdi)
	movl	%r8d, 128(%rdi)
	movl	%r9d, 44(%rdi)
	movl	%r9d, 132(%rdi)
	movl	$1, %eax
.LBB6_23:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_flattened_iterator__next, .Lfunc_end6-gx_flattened_iterator__next
	.cfi_endproc

	.globl	gx_flattened_iterator__prev
	.align	16, 0x90
	.type	gx_flattened_iterator__prev,@function
gx_flattened_iterator__prev:            # @gx_flattened_iterator__prev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 32
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	48(%rbx), %eax
	movl	52(%rbx), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	$-28, %ebp
	cmpl	%edx, %eax
	jae	.LBB7_7
# BB#1:                                 # %if.end
	movl	120(%rbx), %edx
	movl	%edx, 128(%rbx)
	movl	124(%rbx), %edx
	movl	%edx, 132(%rbx)
	cmpl	$1, %ecx
	ja	.LBB7_3
# BB#2:                                 # %if.then.3
	incl	%eax
	movl	%eax, 48(%rbx)
	movl	(%rbx), %eax
	movl	%eax, 120(%rbx)
	movl	4(%rbx), %eax
	movl	%eax, 124(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB7_7
.LBB7_3:                                # %if.end.7
	movq	%rbx, %rdi
	callq	gx_flattened_iterator__unaccum
	movl	48(%rbx), %eax
	incl	%eax
	movl	%eax, 48(%rbx)
	movb	52(%rbx), %cl
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	movl	40(%rbx), %esi
	movl	%esi, 120(%rbx)
	movl	44(%rbx), %ecx
	movl	%ecx, 124(%rbx)
	cmpl	%edx, %eax
	jne	.LBB7_6
# BB#4:                                 # %if.then.19
	cmpl	(%rbx), %esi
	jne	.LBB7_7
# BB#5:                                 # %lor.lhs.false
	cmpl	4(%rbx), %ecx
	jne	.LBB7_7
.LBB7_6:                                # %if.end.30
	cmpl	%edx, %eax
	setne	%al
	movzbl	%al, %ebp
.LBB7_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_flattened_iterator__prev, .Lfunc_end7-gx_flattened_iterator__prev
	.cfi_endproc

	.align	16, 0x90
	.type	gx_flattened_iterator__unaccum,@function
gx_flattened_iterator__unaccum:         # @gx_flattened_iterator__unaccum
	.cfi_startproc
# BB#0:                                 # %entry
	movl	76(%rdi), %r8d
	movl	100(%rdi), %eax
	movl	108(%rdi), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	jae	.LBB8_2
# BB#1:                                 # %if.then
	incl	%eax
	subl	%ecx, %eax
	addl	56(%rdi), %eax
	movl	%eax, 100(%rdi)
	notl	%r8d
	addl	68(%rdi), %r8d
	movl	%r8d, 68(%rdi)
	movl	%eax, %edx
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	%edx, 100(%rdi)
	movl	68(%rdi), %eax
	subl	%r8d, %eax
	movl	%eax, 68(%rdi)
	movl	%eax, %r8d
.LBB8_3:                                # %if.end
	movl	80(%rdi), %r9d
	movl	104(%rdi), %eax
	movl	112(%rdi), %ecx
	movl	%eax, %esi
	subl	%ecx, %esi
	jae	.LBB8_5
# BB#4:                                 # %if.then.13
	incl	%eax
	subl	%ecx, %eax
	addl	56(%rdi), %eax
	movl	%eax, 104(%rdi)
	notl	%r9d
	addl	72(%rdi), %r9d
	movl	%r9d, 72(%rdi)
	movl	%eax, %esi
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.22
	movl	%esi, 104(%rdi)
	movl	72(%rdi), %eax
	subl	%r9d, %eax
	movl	%eax, 72(%rdi)
	movl	%eax, %r9d
.LBB8_6:                                # %if.end.29
	movl	92(%rdi), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	jae	.LBB8_8
# BB#7:                                 # %if.then.32
	incl	%eax
	subl	%edx, %eax
	addl	56(%rdi), %eax
	movl	%eax, 92(%rdi)
	notl	%r8d
	addl	60(%rdi), %r8d
	movl	%r8d, 60(%rdi)
	movl	%eax, %ecx
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.42
	movl	%ecx, 92(%rdi)
	movl	60(%rdi), %eax
	subl	%r8d, %eax
	movl	%eax, 60(%rdi)
	movl	%eax, %r8d
.LBB8_9:                                # %if.end.49
	movl	96(%rdi), %eax
	movl	%eax, %edx
	subl	%esi, %edx
	jae	.LBB8_11
# BB#10:                                # %if.then.52
	incl	%eax
	subl	%esi, %eax
	addl	56(%rdi), %eax
	movl	%eax, 96(%rdi)
	notl	%r9d
	addl	64(%rdi), %r9d
	movl	%r9d, 64(%rdi)
	movl	%eax, %edx
	jmp	.LBB8_12
.LBB8_11:                               # %if.else.62
	movl	%edx, 96(%rdi)
	movl	64(%rdi), %eax
	subl	%r9d, %eax
	movl	%eax, 64(%rdi)
	movl	%eax, %r9d
.LBB8_12:                               # %if.end.69
	movl	84(%rdi), %eax
	movl	%eax, %esi
	subl	%ecx, %esi
	jae	.LBB8_14
# BB#13:                                # %if.then.72
	incl	%eax
	subl	%ecx, %eax
	addl	56(%rdi), %eax
	movl	%eax, 84(%rdi)
	notl	%r8d
	addl	%r8d, 40(%rdi)
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.82
	movl	%esi, 84(%rdi)
	subl	%r8d, 40(%rdi)
.LBB8_15:                               # %if.end.89
	movl	88(%rdi), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	jae	.LBB8_17
# BB#16:                                # %if.then.92
	incl	%eax
	subl	%edx, %eax
	addl	56(%rdi), %eax
	movl	%eax, 88(%rdi)
	notl	%r9d
	addl	%r9d, 44(%rdi)
	retq
.LBB8_17:                               # %if.else.102
	movl	%ecx, 88(%rdi)
	subl	%r9d, 44(%rdi)
	retq
.Lfunc_end8:
	.size	gx_flattened_iterator__unaccum, .Lfunc_end8-gx_flattened_iterator__unaccum
	.cfi_endproc

	.globl	gx_flattened_iterator__switch_to_backscan
	.align	16, 0x90
	.type	gx_flattened_iterator__switch_to_backscan,@function
gx_flattened_iterator__switch_to_backscan: # @gx_flattened_iterator__switch_to_backscan
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	je	.LBB9_3
# BB#1:                                 # %if.then
	cmpl	$0, 48(%rdi)
	je	.LBB9_3
# BB#2:                                 # %land.lhs.true
	cmpl	$1, 52(%rdi)
	jne	.LBB9_4
.LBB9_3:                                # %if.end.3
	retq
.LBB9_4:                                # %if.then.2
	jmp	gx_flattened_iterator__unaccum # TAILCALL
.Lfunc_end9:
	.size	gx_flattened_iterator__switch_to_backscan, .Lfunc_end9-gx_flattened_iterator__switch_to_backscan
	.cfi_endproc

	.globl	gx_subdivide_curve
	.align	16, 0x90
	.type	gx_subdivide_curve,@function
gx_subdivide_curve:                     # @gx_subdivide_curve
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$552, %rsp              # imm = 0x228
.Ltmp37:
	.cfi_def_cfa_offset 560
	movl	%ecx, %eax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movq	%rdi, %rsi
	leaq	8(%rsp), %rdi
	leaq	144(%rsp), %r9
	movl	%eax, %r8d
	callq	gx_subdivide_curve_rec
	addq	$552, %rsp              # imm = 0x228
	retq
.Lfunc_end10:
	.size	gx_subdivide_curve, .Lfunc_end10-gx_subdivide_curve
	.cfi_endproc

	.align	16, 0x90
	.type	gx_subdivide_curve_rec,@function
gx_subdivide_curve_rec:                 # @gx_subdivide_curve_rec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 160
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movl	%r8d, %ebp
	movq	%rcx, %r12
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	.align	16, 0x90
.LBB11_1:                               # %top
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movl	112(%rbx), %esi
	movl	116(%rbx), %edx
	movq	%r14, %rdi
	movq	%r12, %rcx
	movl	%r15d, %r8d
	callq	gx_flattened_iterator__init
	testl	%eax, %eax
	jne	.LBB11_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	112(%rbx), %ebp
	movl	116(%rbx), %edi
	movl	28(%r12), %ecx
	movl	32(%r12), %eax
	movl	%ecx, %r10d
	sarl	%r10d
	movl	36(%r12), %r8d
	movl	%r8d, %edx
	orl	%ecx, %edx
	movl	%eax, %r11d
	sarl	%r11d
	movl	40(%r12), %r9d
	movl	%r9d, %esi
	orl	%eax, %esi
	orl	%ebp, %ecx
	sarl	%ebp
	addl	%r10d, %ebp
	andl	$1, %ecx
	addl	%ebp, %ecx
	movl	%ecx, 84(%rsp)
	orl	%edi, %eax
	sarl	%edi
	addl	%r11d, %edi
	andl	$1, %eax
	addl	%edi, %eax
	movl	%eax, 88(%rsp)
	movl	20(%r12), %edi
	movl	%edi, %ebp
	orl	%r8d, %edi
	movq	%rbx, %r13
	movl	%r8d, %ebx
	sarl	%ebx
	leal	(%rbx,%r10), %r8d
	andl	$1, %edx
	addl	%r8d, %edx
	sarl	%ebp
	addl	%ebx, %ebp
	andl	$1, %edi
	addl	%ebp, %edi
	movl	%edi, 36(%r12)
	movl	24(%r12), %ebp
	movl	%ebp, %r8d
	orl	%r9d, %ebp
	movl	%r9d, %ebx
	sarl	%ebx
	leal	(%rbx,%r11), %r9d
	andl	$1, %esi
	addl	%r9d, %esi
	sarl	%r8d
	addl	%ebx, %r8d
	andl	$1, %ebp
	addl	%r8d, %ebp
	movl	%ebp, 40(%r12)
	movl	%edx, %r8d
	movl	%edi, %ebx
	orl	%edx, %edi
	orl	%ecx, %edx
	sarl	%ecx
	sarl	%r8d
	leal	(%rcx,%r8), %ecx
	andl	$1, %edx
	addl	%ecx, %edx
	movl	%esi, %r9d
	movl	%ebp, %ecx
	orl	%esi, %ebp
	orl	%eax, %esi
	sarl	%eax
	sarl	%r9d
	leal	(%rax,%r9), %eax
	andl	$1, %esi
	addl	%eax, %esi
	sarl	%ebx
	addl	%r8d, %ebx
	andl	$1, %edi
	addl	%ebx, %edi
	sarl	%ecx
	addl	%r9d, %ecx
	movl	%edx, 92(%rsp)
	movl	%esi, 96(%rsp)
	movl	%edi, 28(%r12)
	andl	$1, %ebp
	addl	%ecx, %ebp
	movl	%edi, %eax
	orl	%edx, %edi
	sarl	%edx
	sarl	%eax
	addl	%edx, %eax
	andl	$1, %edi
	addl	%eax, %edi
	movl	%ebp, 32(%r12)
	movl	%edi, 76(%rsp)
	movl	%ebp, %eax
	orl	%esi, %ebp
	sarl	%esi
	sarl	%eax
	addl	%esi, %eax
	andl	$1, %ebp
	addl	%eax, %ebp
	movl	%ebp, 80(%rsp)
	decl	%r15d
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r13, %rbx
	movl	%r15d, %edx
	leaq	56(%rsp), %rcx
	movl	48(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %r8d
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gx_subdivide_curve_rec
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	$1, %ecx
	orl	%ecx, %ebp
	testl	%eax, %eax
	jns	.LBB11_1
	jmp	.LBB11_16
.LBB11_3:                               # %if.else
	cmpl	$-1, %r15d
	je	.LBB11_15
# BB#4:                                 # %for.cond.preheader
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	400(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	8(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rax, %rbx
	movq	%rax, %r12
	movq	%r14, %rdi
	movl	48(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB11_5
.LBB11_14:                              # %cleanup.49
                                        #   in Loop: Header=BB11_5 Depth=1
	orl	$1, %r13d
	subq	%rbp, %rbx
	movq	%r12, %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, %rdi
	leaq	(%rbx,%r15), %rbx
	movq	%r15, %r12
	.align	16, 0x90
.LBB11_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rbp
	movq	%rdi, %rbx
	callq	gx_flattened_iterator__next
	movq	%rbx, %rdi
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_16
# BB#6:                                 # %if.end.24
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	128(%rdi), %eax
	movl	%eax, (%rbp)
	movl	132(%rdi), %eax
	movl	%eax, 4(%rbp)
	leaq	8(%rbp), %rbx
	cmpq	32(%rsp), %rbx          # 8-byte Folded Reload
	je	.LBB11_8
# BB#7:                                 # %if.end.24
                                        #   in Loop: Header=BB11_5 Depth=1
	testl	%r15d, %r15d
	jne	.LBB11_5
.LBB11_8:                               # %if.then.29
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	%rdi, %r14
	addq	$-8, %rbp
	testl	%r15d, %r15d
	cmoveq	%rbx, %rbp
	movq	%rbp, %rdx
	subq	%r12, %rdx
	shrq	$3, %rdx
	testb	$1, %r13b
	jne	.LBB11_9
# BB#10:                                # %if.else.i
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	(%r12), %esi
	movl	4(%r12), %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %ecx
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	js	.LBB11_16
# BB#11:                                # %if.end.i
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	48(%rsp), %rdx          # 8-byte Reload
	decl	%edx
	movl	%r13d, %ecx
	orl	$1, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB11_12
.LBB11_9:                               # %if.then.i
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movl	%r13d, %ecx
.LBB11_12:                              # %generate_segments.exit
                                        #   in Loop: Header=BB11_5 Depth=1
	callq	gx_path_add_lines_notes
	movl	%eax, %ecx
	sarl	$31, %eax
	testl	%r15d, %r15d
	sete	%dl
	andl	%ecx, %eax
	testl	%ecx, %ecx
	js	.LBB11_16
# BB#13:                                # %generate_segments.exit
                                        #   in Loop: Header=BB11_5 Depth=1
	testb	%dl, %dl
	je	.LBB11_14
	jmp	.LBB11_16
.LBB11_15:                              # %if.then.9
	movl	28(%r12), %esi
	movl	32(%r12), %edx
	movl	36(%r12), %ecx
	movl	40(%r12), %r8d
	movl	20(%r12), %r9d
	movl	24(%r12), %eax
	movl	48(%rsp), %edi          # 4-byte Reload
	movl	%edi, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	callq	gx_path_add_curve_notes
.LBB11_16:                              # %cleanup.54
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gx_subdivide_curve_rec, .Lfunc_end11-gx_subdivide_curve_rec
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
