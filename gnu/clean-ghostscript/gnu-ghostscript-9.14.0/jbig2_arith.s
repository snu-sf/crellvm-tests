	.text
	.file	"jbig2_arith.bc"
	.globl	jbig2_arith_new
	.align	16, 0x90
	.type	jbig2_arith_new,@function
jbig2_arith_new:                        # @jbig2_arith_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$48, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_1
# BB#2:                                 # %if.end
	movq	%r15, 24(%rbx)
	movq	%r14, 40(%rbx)
	movq	%rbx, %rdx
	addq	$12, %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	*(%r15)
	testl	%eax, %eax
	je	.LBB0_4
# BB#3:                                 # %if.then.5
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB0_5
.LBB0_1:                                # %if.then
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB0_7
.LBB0_4:                                # %if.end.8
	movl	$4, 16(%rbx)
	movl	$4, 32(%rbx)
	movl	12(%rbx), %eax
	shrl	$8, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	movl	%eax, (%rbx)
	movq	%rbx, %rdi
	callq	jbig2_arith_bytein
	testl	%eax, %eax
	je	.LBB0_6
.LBB0_5:                                # %if.then.12
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	xorl	%ebx, %ebx
.LBB0_7:                                # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_6:                                # %if.end.14
	shll	$7, (%rbx)
	addl	$-7, 8(%rbx)
	movl	$32768, 4(%rbx)         # imm = 0x8000
	jmp	.LBB0_7
.Lfunc_end0:
	.size	jbig2_arith_new, .Lfunc_end0-jbig2_arith_new
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_arith_bytein,@function
jbig2_arith_bytein:                     # @jbig2_arith_bytein
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	12(%rbx), %rdx
	movl	12(%rbx), %eax
	cmpl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	jb	.LBB1_10
# BB#1:                                 # %if.then
	movl	16(%rbx), %ecx
	cmpl	$1, %ecx
	jne	.LBB1_7
# BB#2:                                 # %if.then.5
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	callq	*(%rdi)
	testl	%eax, %eax
	jne	.LBB1_12
# BB#3:                                 # %if.end
	addl	$4, 32(%rbx)
	movl	12(%rbx), %ecx
	movl	%ecx, %eax
	shrl	$24, %eax
	cmpl	$-1879048192, %ecx      # imm = 0xFFFFFFFF90000000
	jb	.LBB1_5
# BB#4:                                 # %if.then.19
	addl	$65280, (%rbx)          # imm = 0xFF00
	shll	$16, %eax
	orl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	movl	%eax, 12(%rbx)
	movl	$2, %eax
	movl	$8, %ecx
	jmp	.LBB1_6
.LBB1_10:                               # %if.else.57
	movl	$8, 8(%rbx)
	shll	$8, %eax
	movl	%eax, 12(%rbx)
	decl	16(%rbx)
	jne	.LBB1_14
# BB#11:                                # %if.then.66
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	callq	*(%rdi)
	testl	%eax, %eax
	je	.LBB1_13
.LBB1_12:                               # %cleanup.54
	movq	40(%rbx), %rdi
	movl	32(%rbx), %r8d
	movl	$-1, %ebx
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	callq	jbig2_error
	jmp	.LBB1_16
.LBB1_7:                                # %if.else.31
	movl	%eax, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	cmpl	$144, %edx
	jb	.LBB1_9
# BB#8:                                 # %if.then.39
	addl	$65280, (%rbx)          # imm = 0xFF00
	movl	$8, 8(%rbx)
	jmp	.LBB1_15
.LBB1_9:                                # %if.else.43
	decl	%ecx
	movl	%ecx, 16(%rbx)
	shll	$8, %eax
	movl	%eax, 12(%rbx)
	shll	$9, %edx
	addl	%edx, (%rbx)
	movl	$7, 8(%rbx)
	jmp	.LBB1_15
.LBB1_13:                               # %if.end.78
	addl	$4, 32(%rbx)
	movl	$4, 16(%rbx)
	movl	12(%rbx), %eax
.LBB1_14:                               # %if.end.85
	shrl	$16, %eax
	andl	$65280, %eax            # imm = 0xFF00
	addl	%eax, (%rbx)
	jmp	.LBB1_15
.LBB1_5:                                # %if.else
	shll	$9, %eax
	addl	%eax, (%rbx)
	movl	$4, %eax
	movl	$7, %ecx
.LBB1_6:                                # %cleanup.thread
	movl	%ecx, 8(%rbx)
	movl	%eax, 16(%rbx)
.LBB1_15:                               # %cleanup.95
	xorl	%ebx, %ebx
.LBB1_16:                               # %cleanup.95
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	jbig2_arith_bytein, .Lfunc_end1-jbig2_arith_bytein
	.cfi_endproc

	.globl	jbig2_arith_decode
	.align	16, 0x90
	.type	jbig2_arith_decode,@function
jbig2_arith_decode:                     # @jbig2_arith_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 32
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movzbl	(%rsi), %ebp
	movl	%ebp, %eax
	andl	$127, %eax
	movl	$-1, %r14d
	cmpl	$46, %eax
	ja	.LBB2_20
# BB#1:                                 # %if.else
	movl	%eax, %r8d
	movzwl	jbig2_arith_Qe(,%r8,4), %ecx
	movl	4(%rbx), %edx
	subl	%ecx, %edx
	movl	%edx, 4(%rbx)
	movl	(%rbx), %eax
	movl	%eax, %edi
	shrl	$16, %edi
	cmpl	%ecx, %edi
	jae	.LBB2_2
# BB#11:                                # %if.else.42
	movl	%ecx, 4(%rbx)
	shrl	$7, %ebp
	cmpl	%ecx, %edx
	jge	.LBB2_13
# BB#12:                                # %if.then.48
	movb	(%rsi), %cl
	xorb	jbig2_arith_Qe+2(,%r8,4), %cl
	jmp	.LBB2_14
.LBB2_2:                                # %if.then.7
	movl	%ecx, %edi
	shll	$16, %edi
	subl	%edi, %eax
	movl	%eax, (%rbx)
	shrl	$7, %ebp
	testb	$-128, %dh
	jne	.LBB2_19
# BB#3:                                 # %if.then.16
	cmpl	%ecx, %edx
	jge	.LBB2_5
# BB#4:                                 # %if.then.22
	xorl	$1, %ebp
	movb	(%rsi), %cl
	xorb	jbig2_arith_Qe+3(,%r8,4), %cl
	jmp	.LBB2_6
.LBB2_13:                               # %if.else.59
	xorl	$1, %ebp
	movb	(%rsi), %cl
	xorb	jbig2_arith_Qe+3(,%r8,4), %cl
.LBB2_14:                               # %if.end.71
	movb	%cl, (%rsi)
	movl	8(%rbx), %eax
	.align	16, 0x90
.LBB2_15:                               # %do.body.i.43
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB2_18
# BB#16:                                # %land.lhs.true.i.46
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%rbx, %rdi
	callq	jbig2_arith_bytein
	testl	%eax, %eax
	js	.LBB2_20
# BB#17:                                # %land.lhs.true.if.end_crit_edge.i.48
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	8(%rbx), %eax
.LBB2_18:                               # %if.end.i.54
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	4(%rbx), %ecx
	addl	%ecx, %ecx
	movl	%ecx, 4(%rbx)
	shll	(%rbx)
	decl	%eax
	movl	%eax, 8(%rbx)
	testb	$-128, %ch
	je	.LBB2_15
	jmp	.LBB2_19
.LBB2_5:                                # %if.else.29
	movb	(%rsi), %cl
	xorb	jbig2_arith_Qe+2(,%r8,4), %cl
.LBB2_6:                                # %if.end.36
	movb	%cl, (%rsi)
	movl	8(%rbx), %eax
	.align	16, 0x90
.LBB2_7:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB2_10
# BB#8:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%rbx, %rdi
	callq	jbig2_arith_bytein
	testl	%eax, %eax
	js	.LBB2_20
# BB#9:                                 # %land.lhs.true.if.end_crit_edge.i
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	8(%rbx), %eax
.LBB2_10:                               # %if.end.i
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	4(%rbx), %ecx
	addl	%ecx, %ecx
	movl	%ecx, 4(%rbx)
	shll	(%rbx)
	decl	%eax
	movl	%eax, 8(%rbx)
	testb	$-128, %ch
	je	.LBB2_7
.LBB2_19:
	movl	%ebp, %r14d
.LBB2_20:                               # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jbig2_arith_decode, .Lfunc_end2-jbig2_arith_decode
	.cfi_endproc

	.globl	jbig2_arith_get_offset
	.align	16, 0x90
	.type	jbig2_arith_get_offset,@function
jbig2_arith_get_offset:                 # @jbig2_arith_get_offset
	.cfi_startproc
# BB#0:                                 # %entry
	movl	32(%rdi), %eax
	retq
.Lfunc_end3:
	.size	jbig2_arith_get_offset, .Lfunc_end3-jbig2_arith_get_offset
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to allocate Jbig2ArithState in jbig2_arith_new"
	.size	.L.str, 54

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"unable to get first word in jbig2_arith_new"
	.size	.L.str.1, 44

	.type	jbig2_arith_Qe,@object  # @jbig2_arith_Qe
	.section	.rodata,"a",@progbits
	.globl	jbig2_arith_Qe
	.align	16
jbig2_arith_Qe:
	.short	22017                   # 0x5601
	.byte	1                       # 0x1
	.byte	129                     # 0x81
	.short	13313                   # 0x3401
	.byte	3                       # 0x3
	.byte	7                       # 0x7
	.short	6145                    # 0x1801
	.byte	1                       # 0x1
	.byte	11                      # 0xb
	.short	2753                    # 0xac1
	.byte	7                       # 0x7
	.byte	15                      # 0xf
	.short	1313                    # 0x521
	.byte	1                       # 0x1
	.byte	25                      # 0x19
	.short	545                     # 0x221
	.byte	35                      # 0x23
	.byte	36                      # 0x24
	.short	22017                   # 0x5601
	.byte	1                       # 0x1
	.byte	128                     # 0x80
	.short	21505                   # 0x5401
	.byte	15                      # 0xf
	.byte	9                       # 0x9
	.short	18433                   # 0x4801
	.byte	1                       # 0x1
	.byte	6                       # 0x6
	.short	14337                   # 0x3801
	.byte	3                       # 0x3
	.byte	7                       # 0x7
	.short	12289                   # 0x3001
	.byte	1                       # 0x1
	.byte	27                      # 0x1b
	.short	9217                    # 0x2401
	.byte	7                       # 0x7
	.byte	25                      # 0x19
	.short	7169                    # 0x1c01
	.byte	1                       # 0x1
	.byte	24                      # 0x18
	.short	5633                    # 0x1601
	.byte	16                      # 0x10
	.byte	24                      # 0x18
	.short	22017                   # 0x5601
	.byte	1                       # 0x1
	.byte	128                     # 0x80
	.short	21505                   # 0x5401
	.byte	31                      # 0x1f
	.byte	1                       # 0x1
	.short	20737                   # 0x5101
	.byte	1                       # 0x1
	.byte	31                      # 0x1f
	.short	18433                   # 0x4801
	.byte	3                       # 0x3
	.byte	1                       # 0x1
	.short	14337                   # 0x3801
	.byte	1                       # 0x1
	.byte	3                       # 0x3
	.short	13313                   # 0x3401
	.byte	7                       # 0x7
	.byte	1                       # 0x1
	.short	12289                   # 0x3001
	.byte	1                       # 0x1
	.byte	7                       # 0x7
	.short	10241                   # 0x2801
	.byte	3                       # 0x3
	.byte	6                       # 0x6
	.short	9217                    # 0x2401
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.short	8705                    # 0x2201
	.byte	15                      # 0xf
	.byte	2                       # 0x2
	.short	7169                    # 0x1c01
	.byte	1                       # 0x1
	.byte	14                      # 0xe
	.short	6145                    # 0x1801
	.byte	3                       # 0x3
	.byte	14                      # 0xe
	.short	5633                    # 0x1601
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.short	5121                    # 0x1401
	.byte	7                       # 0x7
	.byte	2                       # 0x2
	.short	4609                    # 0x1201
	.byte	1                       # 0x1
	.byte	6                       # 0x6
	.short	4353                    # 0x1101
	.byte	3                       # 0x3
	.byte	6                       # 0x6
	.short	2753                    # 0xac1
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.short	2497                    # 0x9c1
	.byte	63                      # 0x3f
	.byte	2                       # 0x2
	.short	2209                    # 0x8a1
	.byte	1                       # 0x1
	.byte	62                      # 0x3e
	.short	1313                    # 0x521
	.byte	3                       # 0x3
	.byte	62                      # 0x3e
	.short	1089                    # 0x441
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.short	673                     # 0x2a1
	.byte	7                       # 0x7
	.byte	2                       # 0x2
	.short	545                     # 0x221
	.byte	1                       # 0x1
	.byte	6                       # 0x6
	.short	321                     # 0x141
	.byte	3                       # 0x3
	.byte	6                       # 0x6
	.short	273                     # 0x111
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.short	133                     # 0x85
	.byte	15                      # 0xf
	.byte	2                       # 0x2
	.short	73                      # 0x49
	.byte	1                       # 0x1
	.byte	14                      # 0xe
	.short	37                      # 0x25
	.byte	3                       # 0x3
	.byte	14                      # 0xe
	.short	21                      # 0x15
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.short	9                       # 0x9
	.byte	7                       # 0x7
	.byte	2                       # 0x2
	.short	5                       # 0x5
	.byte	1                       # 0x1
	.byte	6                       # 0x6
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.byte	6                       # 0x6
	.short	22017                   # 0x5601
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.size	jbig2_arith_Qe, 188

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"end of jbig2 buffer reached at offset %d"
	.size	.L.str.2, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
