	.text
	.file	"gsutil.bc"
	.globl	gs_next_ids
	.align	16, 0x90
	.type	gs_next_ids,@function
gs_next_ids:                            # @gs_next_ids
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rcx
	movq	104(%rcx), %rax
	movl	%esi, %edx
	leaq	(%rdx,%rax), %rdx
	movq	%rdx, 104(%rcx)
	retq
.Lfunc_end0:
	.size	gs_next_ids, .Lfunc_end0-gs_next_ids
	.cfi_endproc

	.globl	memflip8x8
	.align	16, 0x90
	.type	memflip8x8,@function
memflip8x8:                             # @memflip8x8
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
.Ltmp4:
	.cfi_offset %rbx, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
.Ltmp7:
	.cfi_offset %rbp, -16
	movl	%ecx, %r9d
	leal	(,%rsi,4), %eax
	movslq	%eax, %rbx
	leaq	(%rdi,%rbx), %r14
	leal	(%rsi,%rsi), %eax
	movzbl	(%rdi), %r8d
	cltq
	movzbl	(%rdi,%rax), %r10d
	shll	$8, %r10d
	orl	%r8d, %r10d
	movzbl	(%rdi,%rbx), %ebx
	shll	$16, %ebx
	leal	(%rbx,%r10), %r11d
	movzbl	(%rax,%r14), %ebx
	shll	$24, %ebx
	leal	(%rbx,%r11), %ebx
	movslq	%esi, %rcx
	leaq	(%r14,%rcx), %r15
	movzbl	(%rdi,%rcx), %ebp
	addq	%rcx, %rdi
	movzbl	(%rax,%rdi), %esi
	shll	$8, %esi
	orl	%ebp, %esi
	movzbl	(%rcx,%r14), %ecx
	shll	$16, %ecx
	leal	(%rcx,%rsi), %edi
	movzbl	(%rax,%r15), %ecx
	shll	$24, %ecx
	orl	%edi, %ecx
	movl	%ebx, %eax
	shrl	$8, %eax
	cmpl	%r11d, %eax
	jne	.LBB1_4
# BB#1:                                 # %entry
	cmpl	%ecx, %ebx
	jne	.LBB1_4
# BB#2:                                 # %if.then
	leal	1(%rbx), %eax
	cmpl	$2, %eax
	movl	%ebx, %ecx
	jb	.LBB1_5
# BB#3:                                 # %if.end
	movb	%r8b, %al
	sarb	$7, %al
	movb	%al, (%rdx)
	movb	%r8b, %cl
	shrb	$6, %cl
	andb	$1, %cl
	negb	%cl
	movslq	%r9d, %rax
	movb	%cl, (%rdx,%rax)
	addl	%r9d, %r9d
	movslq	%r9d, %rcx
	movb	%r8b, %bl
	shrb	$5, %bl
	andb	$1, %bl
	negb	%bl
	movb	%bl, (%rdx,%rcx)
	addq	%rcx, %rdx
	movb	%r8b, %bl
	shrb	$4, %bl
	andb	$1, %bl
	negb	%bl
	movb	%bl, (%rax,%rdx)
	movb	%r8b, %bl
	shrb	$3, %bl
	andb	$1, %bl
	negb	%bl
	movb	%bl, (%rcx,%rdx)
	addq	%rcx, %rdx
	movb	%r8b, %bl
	shrb	$2, %bl
	andb	$1, %bl
	negb	%bl
	movb	%bl, (%rax,%rdx)
	leaq	(%rdx,%rcx), %rsi
	movb	%r8b, %bl
	shrb	%bl
	andb	$1, %bl
	negb	%bl
	movb	%bl, (%rcx,%rdx)
	andb	$1, %r8b
	negb	%r8b
	movb	%r8b, (%rax,%rsi)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end.85
	movl	%ebx, %eax
	shrl	$20, %eax
	xorl	%r10d, %eax
	andl	$3855, %eax             # imm = 0xF0F
	xorl	%eax, %ebx
	shll	$20, %eax
	xorl	%ebx, %eax
	movl	%ecx, %edi
	shrl	$20, %edi
	xorl	%esi, %edi
	andl	$3855, %edi             # imm = 0xF0F
	xorl	%edi, %ecx
	shll	$20, %edi
	xorl	%ecx, %edi
	movl	%eax, %ecx
	shrl	$10, %ecx
	xorl	%eax, %ecx
	andl	$3342387, %ecx          # imm = 0x330033
	xorl	%ecx, %eax
	shll	$10, %ecx
	xorl	%eax, %ecx
	movl	%edi, %eax
	shrl	$10, %eax
	xorl	%edi, %eax
	andl	$3342387, %eax          # imm = 0x330033
	xorl	%eax, %edi
	shll	$10, %eax
	xorl	%edi, %eax
	movl	%eax, %ebx
	shrl	%ebx
	xorl	%ecx, %ebx
	andl	$1431655765, %ebx       # imm = 0x55555555
	xorl	%ebx, %ecx
	addl	%ebx, %ebx
	xorl	%eax, %ebx
.LBB1_5:                                # %store
	movb	%cl, (%rdx)
	movslq	%r9d, %rax
	movb	%bl, (%rdx,%rax)
	leal	(%rax,%rax), %esi
	movslq	%esi, %rsi
	movb	%ch, (%rdx,%rsi)  # NOREX
	addq	%rsi, %rdx
	movb	%bh, (%rax,%rdx)  # NOREX
	movl	%ecx, %edi
	shrl	$16, %edi
	movb	%dil, (%rsi,%rdx)
	addq	%rsi, %rdx
	movl	%ebx, %edi
	shrl	$16, %edi
	movb	%dil, (%rax,%rdx)
	leaq	(%rdx,%rsi), %rdi
	shrl	$24, %ecx
	movb	%cl, (%rsi,%rdx)
	shrl	$24, %ebx
	movb	%bl, (%rax,%rdi)
.LBB1_6:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	memflip8x8, .Lfunc_end1-memflip8x8
	.cfi_endproc

	.globl	get_u32_msb
	.align	16, 0x90
	.type	get_u32_msb,@function
get_u32_msb:                            # @get_u32_msb
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	shlq	$24, %rax
	movzbl	1(%rdi), %ecx
	shlq	$16, %rcx
	orq	%rax, %rcx
	movzbl	2(%rdi), %edx
	shlq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	3(%rdi), %eax
	orq	%rdx, %rax
	retq
.Lfunc_end2:
	.size	get_u32_msb, .Lfunc_end2-get_u32_msb
	.cfi_endproc

	.globl	bytes_compare
	.align	16, 0x90
	.type	bytes_compare,@function
bytes_compare:                          # @bytes_compare
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %r8d
	notl	%r8d
	movl	%esi, %eax
	notl	%eax
	cmpl	%eax, %r8d
	cmoval	%r8d, %eax
	incl	%eax
	.align	16, 0x90
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	je	.LBB3_4
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movzbl	(%rdi), %r8d
	incq	%rdi
	movzbl	(%rdx), %r9d
	incq	%rdx
	incl	%eax
	cmpl	%r9d, %r8d
	je	.LBB3_1
# BB#3:                                 # %cleanup
	movzbl	%r9b, %eax
	movzbl	%r8b, %ecx
	cmpl	%eax, %ecx
	movl	$-1, %ecx
	movl	$1, %eax
	cmovbl	%ecx, %eax
	retq
.LBB3_4:                                # %cleanup.cont
	xorl	%edx, %edx
	cmpl	%ecx, %esi
	movl	$-1, %ecx
	movl	$1, %eax
	cmovbl	%ecx, %eax
	cmovel	%edx, %eax
	retq
.Lfunc_end3:
	.size	bytes_compare, .Lfunc_end3-bytes_compare
	.cfi_endproc

	.globl	string_match
	.align	16, 0x90
	.type	string_match,@function
string_match:                           # @string_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 40
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%ecx, %ecx
	movl	%esi, %ebp
	testq	%r8, %r8
	movl	$string_match_params_default, %r11d
	cmovneq	%r8, %r11
	xorl	%eax, %eax
	xorl	%esi, %esi
	leaq	(%rcx,%rdx), %r9
	leaq	(%rbp,%rdi), %r8
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_11:                               # %if.end.87
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rdx, %rax
	subq	%r9, %rax
	leaq	(%rax,%r8), %rdi
	xorl	%eax, %eax
	movq	%r10, %rsi
.LBB4_1:                                # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
                                        #       Child Loop BB4_4 Depth 3
	movq	%rdx, %rbp
	movq	%rax, %rdx
	movq	%rsi, %r10
	movq	%rdi, %rsi
.LBB4_2:                                # %while.cond.outer52
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_4 Depth 3
	cmpq	%r9, %rbp
	jae	.LBB4_9
# BB#3:                                 # %while.body.lr.ph
                                        #   in Loop: Header=BB4_2 Depth=2
	movl	(%r11), %r14d
	.align	16, 0x90
.LBB4_4:                                # %while.body
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rbp), %bl
	movzbl	%bl, %eax
	cmpl	%r14d, %eax
	je	.LBB4_5
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB4_4 Depth=3
	cmpl	4(%r11), %eax
	jne	.LBB4_12
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB4_4 Depth=3
	xorl	%eax, %eax
	cmpq	%rsi, %r8
	jne	.LBB4_8
	jmp	.LBB4_27
	.align	16, 0x90
.LBB4_12:                               # %if.else.17
                                        #   in Loop: Header=BB4_4 Depth=3
	cmpl	8(%r11), %eax
	jne	.LBB4_15
# BB#13:                                # %if.then.21
                                        #   in Loop: Header=BB4_4 Depth=3
	incq	%rbp
	movl	$1, %eax
	cmpq	%r9, %rbp
	je	.LBB4_27
# BB#14:                                # %if.end.26
                                        #   in Loop: Header=BB4_4 Depth=3
	movb	(%rbp), %bl
.LBB4_15:                               # %if.end.29
                                        #   in Loop: Header=BB4_4 Depth=3
	xorl	%eax, %eax
	cmpq	%rsi, %r8
	je	.LBB4_27
# BB#16:                                # %if.end.33
                                        #   in Loop: Header=BB4_4 Depth=3
	movzbl	(%rsi), %r15d
	movzbl	%bl, %edi
	cmpl	%edi, %r15d
	je	.LBB4_8
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_4 Depth=3
	movb	%r15b, %cl
	xorb	%bl, %cl
	movzbl	%cl, %ecx
	cmpl	$32, %ecx
	jne	.LBB4_20
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_4 Depth=3
	movl	12(%r11), %ecx
	testl	%ecx, %ecx
	je	.LBB4_20
# BB#19:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB4_4 Depth=3
	andb	$-33, %bl
	movb	%bl, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	cmpl	$26, %ecx
	jb	.LBB4_8
.LBB4_20:                               # %lor.lhs.false.52
                                        #   in Loop: Header=BB4_4 Depth=3
	cmpl	$0, 16(%r11)
	je	.LBB4_25
# BB#21:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB4_4 Depth=3
	movzbl	%bl, %ebx
	cmpl	$47, %ebx
	jne	.LBB4_22
# BB#24:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB4_4 Depth=3
	movzbl	%r15b, %ecx
	cmpl	$92, %ecx
	je	.LBB4_8
	jmp	.LBB4_25
.LBB4_22:                               # %land.lhs.true.54
                                        #   in Loop: Header=BB4_4 Depth=3
	cmpl	$92, %ebx
	jne	.LBB4_25
# BB#23:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB4_4 Depth=3
	movzbl	%r15b, %ecx
	cmpl	$47, %ecx
	jne	.LBB4_25
	.align	16, 0x90
.LBB4_8:                                # %while.cond.backedge
                                        #   in Loop: Header=BB4_4 Depth=3
	incq	%rsi
	incq	%rbp
	cmpq	%r9, %rbp
	jb	.LBB4_4
	jmp	.LBB4_9
.LBB4_25:                               # %cleanup
                                        #   in Loop: Header=BB4_2 Depth=2
	incq	%r10
	testq	%rdx, %rdx
	movq	%rdx, %rbp
	movq	%r10, %rsi
	jne	.LBB4_2
	jmp	.LBB4_27
	.align	16, 0x90
.LBB4_9:                                # %while.end
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	%r8, %rsi
	jae	.LBB4_26
# BB#10:                                # %while.end
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rdx, %rdx
	jne	.LBB4_11
	jmp	.LBB4_26
	.align	16, 0x90
.LBB4_5:                                # %if.then.6
                                        #   in Loop: Header=BB4_1 Depth=1
	incq	%rbp
	movq	%rbp, %rax
	movq	%rbp, %rdx
	movq	%rsi, %rdi
	jmp	.LBB4_1
.LBB4_26:                               # %cleanup.90.loopexit124
	cmpq	%r8, %rsi
	setae	%al
	movzbl	%al, %eax
.LBB4_27:                               # %cleanup.90
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	string_match, .Lfunc_end4-string_match
	.cfi_endproc

	.globl	uid_equal
	.align	16, 0x90
	.type	uid_equal,@function
uid_equal:                              # @uid_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	(%rsi), %rcx
	jne	.LBB5_3
# BB#1:                                 # %if.end
	movl	$1, %eax
	testq	%rcx, %rcx
	jns	.LBB5_3
# BB#2:                                 # %if.end.5
	movq	8(%rdi), %rdi
	movq	8(%rsi), %rsi
	negl	%ecx
	shlq	$3, %rcx
	movabsq	$34359738360, %rdx      # imm = 0x7FFFFFFF8
	andq	%rcx, %rdx
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.LBB5_3:                                # %return
	popq	%rdx
	retq
.Lfunc_end5:
	.size	uid_equal, .Lfunc_end5-uid_equal
	.cfi_endproc

	.globl	uid_copy
	.align	16, 0x90
	.type	uid_copy,@function
uid_copy:                               # @uid_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movq	%rdx, %rcx
	movq	%rsi, %r8
	movq	%rdi, %r14
	movq	(%r14), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jns	.LBB6_3
# BB#1:                                 # %if.then
	negq	%rbx
	movl	$8, %edx
	movq	%r8, %rdi
	movl	%ebx, %esi
	callq	*88(%r8)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB6_3
# BB#2:                                 # %if.end
	movq	8(%r14), %rsi
	shlq	$3, %rbx
	movabsq	$34359738360, %rdx      # imm = 0x7FFFFFFF8
	andq	%rbx, %rdx
	movq	%r15, %rdi
	callq	memcpy
	movq	%r15, 8(%r14)
	xorl	%eax, %eax
.LBB6_3:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	uid_copy, .Lfunc_end6-uid_copy
	.cfi_endproc

	.globl	int_rect_difference
	.align	16, 0x90
	.type	int_rect_difference,@function
int_rect_difference:                    # @int_rect_difference
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movl	(%rdi), %r10d
	movl	4(%rdi), %r11d
	movl	8(%rdi), %r8d
	movl	12(%rdi), %r9d
	xorl	%eax, %eax
	cmpl	4(%rsi), %r11d
	jge	.LBB7_2
# BB#1:                                 # %if.then
	movl	%r10d, (%rdx)
	movl	%r11d, 4(%rdx)
	movl	%r8d, 8(%rdx)
	movl	4(%rsi), %r11d
	cmpl	%r11d, %r9d
	cmovlel	%r9d, %r11d
	movl	%r11d, 12(%rdx)
	movl	%r11d, 4(%rdi)
	movl	$1, %eax
.LBB7_2:                                # %if.end
	movl	12(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.LBB7_4
# BB#3:                                 # %if.then.31
	movq	%rax, %rbx
	shlq	$4, %rbx
	movl	%r10d, (%rdx,%rbx)
	cmpl	%ecx, %r11d
	cmovgel	%r11d, %ecx
	movl	%ecx, 4(%rdx,%rbx)
	movl	%r8d, 8(%rdx,%rbx)
	movl	%r9d, 12(%rdx,%rbx)
	movl	%ecx, 12(%rdi)
	incl	%eax
	movl	%ecx, %r9d
.LBB7_4:                                # %if.end.63
	cmpl	(%rsi), %r10d
	jge	.LBB7_6
# BB#5:                                 # %if.then.67
	movl	%r10d, (%rdx)
	movl	%r11d, 4(%rdx)
	movl	(%rsi), %ecx
	cmpl	%ecx, %r8d
	cmovlel	%r8d, %ecx
	movl	%ecx, 8(%rdx)
	movl	%r9d, 12(%rdx)
	cltq
	movq	%rax, %rcx
	shlq	$4, %rcx
	movl	8(%rdx,%rcx), %r10d
	movl	%r10d, (%rdi)
	incl	%eax
.LBB7_6:                                # %if.end.96
	movl	8(%rsi), %ecx
	cmpl	%ecx, %r8d
	jle	.LBB7_8
# BB#7:                                 # %if.then.100
	cmpl	%ecx, %r10d
	cmovgel	%r10d, %ecx
	cltq
	movq	%rax, %rsi
	shlq	$4, %rsi
	movl	%ecx, (%rdx,%rsi)
	movl	%r11d, 4(%rdx,%rsi)
	movl	%r8d, 8(%rdx,%rsi)
	movl	%r9d, 12(%rdx,%rsi)
	movl	%ecx, 8(%rdi)
	incl	%eax
.LBB7_8:                                # %if.end.133
	popq	%rbx
	retq
.Lfunc_end7:
	.size	int_rect_difference, .Lfunc_end7-int_rect_difference
	.cfi_endproc

	.type	string_match_params_default,@object # @string_match_params_default
	.section	.rodata,"a",@progbits
	.globl	string_match_params_default
	.align	4
string_match_params_default:
	.long	42                      # 0x2a
	.long	63                      # 0x3f
	.long	92                      # 0x5c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	string_match_params_default, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
