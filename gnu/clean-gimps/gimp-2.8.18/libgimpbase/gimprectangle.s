	.text
	.file	"gimprectangle.bc"
	.globl	gimp_rectangle_intersect
	.align	16, 0x90
	.type	gimp_rectangle_intersect,@function
gimp_rectangle_intersect:               # @gimp_rectangle_intersect
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%r15d, -52(%rbp)
	movl	%r14d, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	jle	.LBB0_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB0_3:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB0_5
# BB#4:                                 # %cond.true.2
	movl	-32(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false.3
	movl	-48(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB0_6:                                # %cond.end.4
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# BB#7:                                 # %cond.true.8
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false.10
	movl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB0_9:                                # %cond.end.12
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_11
# BB#10:                                # %cond.true.17
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               # %cond.false.19
	movl	-48(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB0_12:                               # %cond.end.21
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then
	movl	-92(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_14:                               # %if.end
	cmpq	$0, -72(%rbp)
	je	.LBB0_16
# BB#15:                                # %if.then.25
	movl	-96(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_16:                               # %if.end.26
	cmpq	$0, -80(%rbp)
	je	.LBB0_18
# BB#17:                                # %if.then.28
	movl	-100(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_18:                               # %if.end.29
	cmpq	$0, -88(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.31
	movl	-104(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_20:                               # %if.end.32
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -100(%rbp)
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jle	.LBB0_22
# BB#21:                                # %land.rhs
	cmpl	$0, -104(%rbp)
	setg	%al
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB0_22:                               # %land.end
	movb	-121(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rectangle_intersect, .Lfunc_end0-gimp_rectangle_intersect
	.cfi_endproc

	.globl	gimp_rectangle_union
	.align	16, 0x90
	.type	gimp_rectangle_union,@function
gimp_rectangle_union:                   # @gimp_rectangle_union
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%r15d, -52(%rbp)
	movl	%r14d, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	jge	.LBB1_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_3:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB1_5
# BB#4:                                 # %cond.true.2
	movl	-32(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false.3
	movl	-48(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_6:                                # %cond.end.4
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB1_8
# BB#7:                                 # %cond.true.8
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false.10
	movl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_9:                                # %cond.end.12
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB1_11
# BB#10:                                # %cond.true.17
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.19
	movl	-48(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_12:                               # %cond.end.21
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then
	movl	-92(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_14:                               # %if.end
	cmpq	$0, -72(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.25
	movl	-96(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_16:                               # %if.end.26
	cmpq	$0, -80(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.28
	movl	-100(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_18:                               # %if.end.29
	cmpq	$0, -88(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.31
	movl	-104(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_20:                               # %if.end.32
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rectangle_union, .Lfunc_end1-gimp_rectangle_union
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
