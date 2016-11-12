	.text
	.file	"zrelbit.bc"
	.globl	zeq
	.align	16, 0x90
	.type	zeq,@function
zeq:                                    # @zeq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
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
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rsi
	movzbl	-15(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB0_2
# BB#1:                                 # %do.body
	movl	$-7, %eax
	testb	$32, (%rsi)
	jne	.LBB0_3
	jmp	.LBB0_6
.LBB0_2:                                # %sw.default
	movq	632(%r14), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB0_6
.LBB0_3:                                # %sw.epilog
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB0_5
# BB#4:                                 # %do.body.16
	movl	$-7, %eax
	testb	$32, (%rbx)
	je	.LBB0_6
.LBB0_5:                                # %sw.epilog.30
	movq	8(%r14), %rdi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB0_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zeq, .Lfunc_end0-zeq
	.cfi_endproc

	.globl	zne
	.align	16, 0x90
	.type	zne,@function
zne:                                    # @zne
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rsi
	movzbl	-15(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB1_2
# BB#1:                                 # %do.body.i
	movl	$-7, %eax
	testb	$32, (%rsi)
	jne	.LBB1_3
	jmp	.LBB1_6
.LBB1_2:                                # %sw.default.i
	movq	632(%r14), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB1_6
.LBB1_3:                                # %sw.epilog.i
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB1_5
# BB#4:                                 # %do.body.16.i
	movl	$-7, %eax
	testb	$32, (%rbx)
	je	.LBB1_6
.LBB1_5:                                # %if.then
	movq	8(%r14), %rdi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	movq	624(%r14), %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, 624(%r14)
	xorb	$1, -8(%rax)
	xorl	%eax, %eax
.LBB1_6:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zne, .Lfunc_end1-zne
	.cfi_endproc

	.globl	zge
	.align	16, 0x90
	.type	zge,@function
zge:                                    # @zge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rsi
	movq	%rbx, %rdi
	callq	obj_le
	testl	%eax, %eax
	js	.LBB2_2
# BB#1:                                 # %if.end
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB2_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	zge, .Lfunc_end2-zge
	.cfi_endproc

	.align	16, 0x90
	.type	obj_le,@function
obj_le:                                 # @obj_le
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 16
	movzbl	1(%rdi), %eax
	cmpl	$18, %eax
	je	.LBB3_16
# BB#1:                                 # %entry
	cmpl	$16, %eax
	jne	.LBB3_2
# BB#12:                                # %sw.bb.17
	movzbl	1(%rsi), %eax
	cmpl	$11, %eax
	jne	.LBB3_13
# BB#15:                                # %sw.bb.29
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtsi2sdq	8(%rsi), %xmm1
	jmp	.LBB3_10
.LBB3_16:                               # %do.body
	movl	$-7, %eax
	testb	$32, (%rdi)
	je	.LBB3_8
# BB#17:                                # %do.end
	movzwl	(%rsi), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$4640, %ecx             # imm = 0x1220
	jne	.LBB3_18
# BB#20:                                # %if.end.58
	movq	8(%rdi), %rax
	movl	4(%rdi), %r8d
	movq	8(%rsi), %rdx
	movl	4(%rsi), %ecx
	movq	%rax, %rdi
	movl	%r8d, %esi
	callq	bytes_compare
	testl	%eax, %eax
	jmp	.LBB3_6
.LBB3_2:                                # %entry
	cmpl	$11, %eax
	jne	.LBB3_21
# BB#3:                                 # %sw.bb
	movzbl	1(%rsi), %eax
	cmpl	$16, %eax
	jne	.LBB3_4
# BB#9:                                 # %sw.bb.9
	cvtsi2sdq	8(%rdi), %xmm0
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
.LBB3_10:                               # %return
	ucomisd	%xmm0, %xmm1
	setae	%al
	jmp	.LBB3_7
.LBB3_13:                               # %sw.bb.17
	cmpl	$16, %eax
	jne	.LBB3_19
# BB#14:                                # %sw.bb.22
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	8(%rdi), %xmm0
	setae	%al
	jmp	.LBB3_7
.LBB3_21:                               # %sw.default.68
	popq	%rax
	jmp	check_type_failed       # TAILCALL
.LBB3_18:                               # %if.then.50
	movzbl	1(%rsi), %ecx
	cmpl	$18, %ecx
	je	.LBB3_8
	jmp	.LBB3_19
.LBB3_4:                                # %sw.bb
	cmpl	$11, %eax
	jne	.LBB3_19
# BB#5:                                 # %sw.bb.5
	movq	8(%rdi), %rax
	cmpq	8(%rsi), %rax
.LBB3_6:                                # %return
	setle	%al
.LBB3_7:                                # %return
	movzbl	%al, %eax
.LBB3_8:                                # %return
	popq	%rdx
	retq
.LBB3_19:                               # %sw.default
	movq	%rsi, %rdi
	popq	%rax
	jmp	check_type_failed       # TAILCALL
.Lfunc_end3:
	.size	obj_le, .Lfunc_end3-obj_le
	.cfi_endproc

	.globl	zgt
	.align	16, 0x90
	.type	zgt,@function
zgt:                                    # @zgt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	movq	%rbx, %rsi
	callq	obj_le
	testl	%eax, %eax
	js	.LBB4_2
# BB#1:                                 # %if.end
	xorl	$1, %eax
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB4_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	zgt, .Lfunc_end4-zgt
	.cfi_endproc

	.globl	zle
	.align	16, 0x90
	.type	zle,@function
zle:                                    # @zle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	movq	%rbx, %rsi
	callq	obj_le
	testl	%eax, %eax
	js	.LBB5_2
# BB#1:                                 # %if.end
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB5_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	zle, .Lfunc_end5-zle
	.cfi_endproc

	.globl	zlt
	.align	16, 0x90
	.type	zlt,@function
zlt:                                    # @zlt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rsi
	movq	%rbx, %rdi
	callq	obj_le
	testl	%eax, %eax
	js	.LBB6_2
# BB#1:                                 # %if.end
	xorl	$1, %eax
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB6_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zlt, .Lfunc_end6-zlt
	.cfi_endproc

	.globl	zand
	.align	16, 0x90
	.type	zand,@function
zand:                                   # @zand
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB7_1
# BB#4:                                 # %sw.bb.14
	leaq	-16(%rax), %rcx
	movzbl	-15(%rax), %edx
	cmpl	$11, %edx
	jne	.LBB7_7
# BB#5:                                 # %if.end.25
	movq	8(%rax), %rdx
	andq	%rdx, -8(%rax)
	jmp	.LBB7_6
.LBB7_1:                                # %entry
	cmpl	$1, %ecx
	jne	.LBB7_8
# BB#2:                                 # %sw.bb
	leaq	-16(%rax), %rcx
	movzbl	-15(%rax), %edx
	cmpl	$1, %edx
	jne	.LBB7_7
# BB#3:                                 # %if.end
	movw	8(%rax), %dx
	andw	%dx, -8(%rax)
.LBB7_6:                                # %cleanup
	movq	%rcx, 624(%rdi)
	xorl	%eax, %eax
	retq
.LBB7_7:                                # %if.then.22
	movq	%rcx, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB7_8:                                # %sw.default
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end7:
	.size	zand, .Lfunc_end7-zand
	.cfi_endproc

	.globl	znot
	.align	16, 0x90
	.type	znot,@function
znot:                                   # @znot
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB8_1
# BB#4:                                 # %sw.bb.4
	notq	8(%rdi)
	xorl	%eax, %eax
	retq
.LBB8_1:                                # %entry
	cmpl	$1, %eax
	jne	.LBB8_3
# BB#2:                                 # %sw.bb
	cmpw	$0, 8(%rdi)
	sete	%al
	movzbl	%al, %eax
	movw	%ax, 8(%rdi)
	xorl	%eax, %eax
	retq
.LBB8_3:                                # %sw.default
	jmp	check_type_failed       # TAILCALL
.Lfunc_end8:
	.size	znot, .Lfunc_end8-znot
	.cfi_endproc

	.globl	zor
	.align	16, 0x90
	.type	zor,@function
zor:                                    # @zor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB9_1
# BB#4:                                 # %sw.bb.14
	leaq	-16(%rax), %rcx
	movzbl	-15(%rax), %edx
	cmpl	$11, %edx
	jne	.LBB9_7
# BB#5:                                 # %if.end.25
	movq	8(%rax), %rdx
	orq	%rdx, -8(%rax)
	jmp	.LBB9_6
.LBB9_1:                                # %entry
	cmpl	$1, %ecx
	jne	.LBB9_8
# BB#2:                                 # %sw.bb
	leaq	-16(%rax), %rcx
	movzbl	-15(%rax), %edx
	cmpl	$1, %edx
	jne	.LBB9_7
# BB#3:                                 # %if.end
	movw	8(%rax), %dx
	orw	%dx, -8(%rax)
.LBB9_6:                                # %cleanup
	movq	%rcx, 624(%rdi)
	xorl	%eax, %eax
	retq
.LBB9_7:                                # %if.then.22
	movq	%rcx, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB9_8:                                # %sw.default
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end9:
	.size	zor, .Lfunc_end9-zor
	.cfi_endproc

	.globl	zxor
	.align	16, 0x90
	.type	zxor,@function
zxor:                                   # @zxor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_1
# BB#4:                                 # %sw.bb.14
	leaq	-16(%rax), %rcx
	movzbl	-15(%rax), %edx
	cmpl	$11, %edx
	jne	.LBB10_7
# BB#5:                                 # %if.end.25
	movq	8(%rax), %rdx
	xorq	%rdx, -8(%rax)
	jmp	.LBB10_6
.LBB10_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB10_8
# BB#2:                                 # %sw.bb
	leaq	-16(%rax), %rcx
	movzbl	-15(%rax), %edx
	cmpl	$1, %edx
	jne	.LBB10_7
# BB#3:                                 # %if.end
	movw	8(%rax), %dx
	xorw	%dx, -8(%rax)
.LBB10_6:                               # %cleanup
	movq	%rcx, 624(%rdi)
	xorl	%eax, %eax
	retq
.LBB10_7:                               # %if.then.22
	movq	%rcx, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB10_8:                               # %sw.default
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end10:
	.size	zxor, .Lfunc_end10-zxor
	.cfi_endproc

	.globl	zbitshift
	.align	16, 0x90
	.type	zbitshift,@function
zbitshift:                              # @zbitshift
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 48
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r12, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB11_3
# BB#1:                                 # %if.end
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB11_2
# BB#4:                                 # %if.end.12
	movq	8(%rbx), %rax
	addq	$63, %rax
	cmpq	$127, %rax
	jb	.LBB11_6
# BB#5:                                 # %if.then.22
	movq	$0, -8(%rbx)
	jmp	.LBB11_17
.LBB11_2:                               # %if.then.9
	addq	$-16, %rbx
.LBB11_3:                               # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB11_6:                               # %if.else
	movq	8(%r14), %rdi
	callq	gs_currentcpsimode
	movq	8(%rbx), %r15
	testl	%eax, %eax
	je	.LBB11_9
# BB#7:                                 # %if.else
	leaq	31(%r15), %rax
	cmpq	$63, %rax
	jb	.LBB11_9
# BB#8:                                 # %if.then.40
	movq	$0, -8(%rbx)
	jmp	.LBB11_17
.LBB11_9:                               # %if.else.44
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	movq	8(%r14), %rdi
	callq	gs_currentcpsimode
	movq	-8(%rbx), %rdx
	testl	%r15d, %r15d
	js	.LBB11_10
# BB#13:                                # %if.else.76
	testl	%eax, %eax
	je	.LBB11_15
# BB#14:                                # %if.then.81
	movb	%r15b, %cl
	shll	%cl, %edx
	movslq	%edx, %rax
	movq	%rax, -8(%rbx)
	jmp	.LBB11_17
.LBB11_10:                              # %if.then.50
	testl	%eax, %eax
	je	.LBB11_12
# BB#11:                                # %if.then.55
	andq	%r12, %rdx
	negl	%r15d
	andl	%r15d, %r12d
	movb	%r12b, %cl
	shrq	%cl, %rdx
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.91
	andl	%r12d, %r15d
	movb	%r15b, %cl
	shlq	%cl, %rdx
	jmp	.LBB11_16
.LBB11_12:                              # %if.else.65
	negl	%r15d
	andl	%r15d, %r12d
	movb	%r12b, %cl
	sarq	%cl, %rdx
.LBB11_16:                              # %cleanup
	movq	%rdx, -8(%rbx)
.LBB11_17:                              # %cleanup
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	zbitshift, .Lfunc_end11-zbitshift
	.cfi_endproc

	.align	16, 0x90
	.type	zmax,@function
zmax:                                   # @zmax
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	obj_le
	testl	%eax, %eax
	js	.LBB12_4
# BB#1:                                 # %if.end
	je	.LBB12_3
# BB#2:                                 # %if.then.1
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
.LBB12_3:                               # %if.end.3
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB12_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	zmax, .Lfunc_end12-zmax
	.cfi_endproc

	.align	16, 0x90
	.type	zmin,@function
zmin:                                   # @zmin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	obj_le
	testl	%eax, %eax
	js	.LBB13_4
# BB#1:                                 # %if.end
	jne	.LBB13_3
# BB#2:                                 # %if.then.1
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
.LBB13_3:                               # %if.end.3
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB13_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	zmin, .Lfunc_end13-zmin
	.cfi_endproc

	.align	16, 0x90
	.type	zidenteq,@function
zidenteq:                               # @zidenteq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 32
.Ltmp55:
	.cfi_offset %rbx, -24
.Ltmp56:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rsi
	movzbl	-15(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB14_2
# BB#1:                                 # %do.body
	movl	$-7, %eax
	testb	$32, (%rsi)
	jne	.LBB14_3
	jmp	.LBB14_6
.LBB14_2:                               # %sw.default
	movq	632(%r14), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB14_6
.LBB14_3:                               # %sw.epilog
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB14_5
# BB#4:                                 # %do.body.16
	movl	$-7, %eax
	testb	$32, (%rbx)
	je	.LBB14_6
.LBB14_5:                               # %sw.epilog.30
	movq	8(%r14), %rdi
	movq	%rbx, %rdx
	callq	obj_ident_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB14_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	zidenteq, .Lfunc_end14-zidenteq
	.cfi_endproc

	.align	16, 0x90
	.type	zidentne,@function
zidentne:                               # @zidentne
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -24
.Ltmp61:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rsi
	movzbl	-15(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB15_2
# BB#1:                                 # %do.body.i
	movl	$-7, %eax
	testb	$32, (%rsi)
	jne	.LBB15_3
	jmp	.LBB15_6
.LBB15_2:                               # %sw.default.i
	movq	632(%r14), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB15_6
.LBB15_3:                               # %sw.epilog.i
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB15_5
# BB#4:                                 # %do.body.16.i
	movl	$-7, %eax
	testb	$32, (%rbx)
	je	.LBB15_6
.LBB15_5:                               # %if.then
	movq	8(%r14), %rdi
	movq	%rbx, %rdx
	callq	obj_ident_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	movq	624(%r14), %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, 624(%r14)
	xorb	$1, -8(%rax)
	xorl	%eax, %eax
.LBB15_6:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	zidentne, .Lfunc_end15-zidentne
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2and"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2bitshift"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2eq"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2ge"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2gt"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2le"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2lt"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2.max"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2.min"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2ne"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1not"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"2or"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2xor"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2.identeq"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"2.identne"
	.size	.L.str.14, 10

	.type	zrelbit_op_defs,@object # @zrelbit_op_defs
	.section	.rodata,"a",@progbits
	.globl	zrelbit_op_defs
	.align	16
zrelbit_op_defs:
	.quad	.L.str
	.quad	zand
	.quad	.L.str.1
	.quad	zbitshift
	.quad	.L.str.2
	.quad	zeq
	.quad	.L.str.3
	.quad	zge
	.quad	.L.str.4
	.quad	zgt
	.quad	.L.str.5
	.quad	zle
	.quad	.L.str.6
	.quad	zlt
	.quad	.L.str.7
	.quad	zmax
	.quad	.L.str.8
	.quad	zmin
	.quad	.L.str.9
	.quad	zne
	.quad	.L.str.10
	.quad	znot
	.quad	.L.str.11
	.quad	zor
	.quad	.L.str.12
	.quad	zxor
	.quad	.L.str.13
	.quad	zidenteq
	.quad	.L.str.14
	.quad	zidentne
	.zero	16
	.size	zrelbit_op_defs, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
