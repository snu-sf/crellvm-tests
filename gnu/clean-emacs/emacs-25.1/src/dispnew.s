	.text
	.file	"dispnew.bc"
	.globl	rotate_matrix
	.align	16, 0x90
	.type	rotate_matrix,@function
rotate_matrix:                          # @rotate_matrix
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, %edx
	callq	reverse_rows
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%eax, %esi
	callq	reverse_rows
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	reverse_rows
	jmp	.LBB0_5
.LBB0_2:                                # %if.else
	cmpl	$0, -20(%rbp)
	jle	.LBB0_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%eax, %esi
	callq	reverse_rows
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	callq	reverse_rows
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	reverse_rows
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	rotate_matrix, .Lfunc_end0-rotate_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	reverse_rows,@function
reverse_rows:                           # @reverse_rows
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -20(%rbp)
	movl	-16(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -24(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	leaq	-280(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movq	-8(%rbp), %rdi
	shlq	$8, %rsi
	addq	8(%rdi), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	memcpy
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$8, %rcx
	addq	8(%rdx), %rcx
	movslq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	shlq	$8, %rdx
	addq	8(%rsi), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$8, %rcx
	addq	8(%rdx), %rcx
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end1:
	.size	reverse_rows, .Lfunc_end1-reverse_rows
	.cfi_endproc

	.globl	increment_matrix_positions
	.align	16, 0x90
	.type	increment_matrix_positions,@function
increment_matrix_positions:             # @increment_matrix_positions
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	increment_row_positions
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	increment_matrix_positions, .Lfunc_end2-increment_matrix_positions
	.cfi_endproc

	.align	16, 0x90
	.type	increment_row_positions,@function
increment_row_positions:                # @increment_row_positions
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	176(%rsi), %rdx
	movq	%rdx, 176(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	184(%rsi), %rdx
	movq	%rdx, 184(%rsi)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	192(%rsi), %rdx
	movq	%rdx, 192(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	200(%rsi), %rdx
	movq	%rdx, 200(%rsi)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	80(%rsi), %rdx
	movq	%rdx, 80(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	88(%rsi), %rdx
	movq	%rdx, 88(%rsi)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	128(%rsi), %rdx
	movq	%rdx, 128(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	136(%rsi), %rdx
	movq	%rdx, 136(%rsi)
	movq	-8(%rbp), %rdx
	movq	236(%rdx), %rdx
	shrq	$10, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_16
.LBB3_2:                                # %if.end
	movl	$0, -28(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	cmpl	$3, -28(%rbp)
	jge	.LBB3_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$0, -32(%rbp)
.LBB3_5:                                # %for.cond.21
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movswl	32(%rdx,%rcx,2), %esi
	cmpl	%esi, %eax
	jge	.LBB3_11
# BB#6:                                 # %for.body.24
                                        #   in Loop: Header=BB3_5 Depth=2
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$48, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	movq	8(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB3_7
	jmp	.LBB3_9
.LBB3_7:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_5 Depth=2
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	imulq	$48, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	cmpq	$0, (%rax)
	jle	.LBB3_9
# BB#8:                                 # %if.then.38
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	imulq	$48, %rcx, %rcx
	addq	(%rsi,%rdx,8), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
.LBB3_9:                                # %if.end.46
                                        #   in Loop: Header=BB3_5 Depth=2
	jmp	.LBB3_10
.LBB3_10:                               # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_5
.LBB3_11:                               # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %for.inc.47
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_3
.LBB3_13:                               # %for.end.49
	movq	-8(%rbp), %rax
	movswl	34(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB3_16
# BB#14:                                # %land.lhs.true.55
	movq	-8(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB3_16
# BB#15:                                # %if.then.61
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
.LBB3_16:                               # %if.end.66
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	increment_row_positions, .Lfunc_end3-increment_row_positions
	.cfi_endproc

	.globl	clear_glyph_matrix_rows
	.align	16, 0x90
	.type	clear_glyph_matrix_rows,@function
clear_glyph_matrix_rows:                # @clear_glyph_matrix_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	clear_glyph_matrix_rows, .Lfunc_end4-clear_glyph_matrix_rows
	.cfi_endproc

	.globl	clear_glyph_matrix
	.align	16, 0x90
	.type	clear_glyph_matrix,@function
clear_glyph_matrix:                     # @clear_glyph_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	callq	clear_glyph_matrix_rows
	movq	-8(%rbp), %rax
	movb	72(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 72(%rax)
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	clear_glyph_matrix, .Lfunc_end5-clear_glyph_matrix
	.cfi_endproc

	.globl	shift_glyph_matrix
	.align	16, 0x90
	.type	shift_glyph_matrix,@function
shift_glyph_matrix:                     # @shift_glyph_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	80(%rsi), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_1
	jmp	.LBB6_15
.LBB6_1:                                # %cond.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_30
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_30
# BB#3:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_30
# BB#4:                                 # %land.lhs.true.9
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_30
# BB#5:                                 # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_6
	jmp	.LBB6_11
.LBB6_6:                                # %cond.true.16
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_13
# BB#7:                                 # %land.lhs.true.21
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_13
# BB#8:                                 # %land.lhs.true.27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_13
# BB#9:                                 # %land.lhs.true.35
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_13
# BB#10:                                # %land.lhs.true.40
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB6_12
	jmp	.LBB6_13
.LBB6_11:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_12
	jmp	.LBB6_13
.LBB6_12:                               # %cond.true.45
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false.49
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB6_14:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB6_16
	jmp	.LBB6_30
.LBB6_15:                               # %cond.false.54
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_16
	jmp	.LBB6_30
.LBB6_16:                               # %cond.true.55
	movq	-8(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB6_18
# BB#17:                                # %cond.true.57
	movq	-8(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB6_29
.LBB6_18:                               # %cond.false.59
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_21
# BB#19:                                # %land.lhs.true.60
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_21
# BB#20:                                # %cond.true.63
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB6_22
	jmp	.LBB6_27
.LBB6_21:                               # %cond.false.67
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_22
	jmp	.LBB6_27
.LBB6_22:                               # %cond.true.68
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_25
# BB#23:                                # %land.lhs.true.71
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_25
# BB#24:                                # %cond.true.75
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %cond.false.79
	xorl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB6_26
.LBB6_26:                               # %cond.end.80
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false.82
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB6_28:                               # %cond.end.86
	movl	-88(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB6_29:                               # %cond.end.89
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB6_31
.LBB6_30:                               # %cond.false.91
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB6_31
.LBB6_31:                               # %cond.end.92
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	260(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	244(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	260(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	40(%rcx), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%edx, -104(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-104(%rbp), %edx        # 4-byte Reload
	addl	260(%rax), %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	cmpl	%edx, %esi
	jne	.LBB6_33
# BB#32:                                # %land.lhs.true.107
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_35
.LBB6_33:                               # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB6_35
# BB#34:                                # %lor.lhs.false.118
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB6_36
.LBB6_35:                               # %cond.true.124
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB6_37
.LBB6_36:                               # %cond.false.125
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB6_37:                               # %cond.end.128
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jne	.LBB6_40
# BB#38:                                # %lor.lhs.false.136
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB6_41
# BB#39:                                # %land.lhs.true.141
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB6_41
.LBB6_40:                               # %cond.true.147
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_46
	jmp	.LBB6_50
.LBB6_41:                               # %cond.false.148
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_43
# BB#42:                                # %cond.true.151
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB6_46
	jmp	.LBB6_50
.LBB6_43:                               # %cond.false.158
	movl	$213, %edi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_45
# BB#44:                                # %cond.true.162
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_46
	jmp	.LBB6_50
.LBB6_45:                               # %cond.false.163
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_46
	jmp	.LBB6_50
.LBB6_46:                               # %cond.true.164
	movq	-8(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB6_48
# BB#47:                                # %cond.true.166
	movq	-8(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB6_49
.LBB6_48:                               # %cond.false.168
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB6_49:                               # %cond.end.171
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB6_51
.LBB6_50:                               # %cond.false.173
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB6_51
.LBB6_51:                               # %cond.end.174
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	-120(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_52
	jmp	.LBB6_57
.LBB6_52:                               # %cond.true.179
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_79
# BB#53:                                # %land.lhs.true.184
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB6_79
# BB#54:                                # %land.lhs.true.190
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_79
# BB#55:                                # %land.lhs.true.198
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_79
# BB#56:                                # %land.lhs.true.204
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB6_58
	jmp	.LBB6_79
.LBB6_57:                               # %cond.false.210
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_58
	jmp	.LBB6_79
.LBB6_58:                               # %cond.true.211
	movq	-8(%rbp), %rax
	cmpl	$0, 444(%rax)
	jl	.LBB6_60
# BB#59:                                # %cond.true.213
	movq	-8(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB6_78
.LBB6_60:                               # %cond.false.215
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_63
# BB#61:                                # %land.lhs.true.218
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_63
# BB#62:                                # %cond.true.222
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB6_64
	jmp	.LBB6_69
.LBB6_63:                               # %cond.false.229
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_64
	jmp	.LBB6_69
.LBB6_64:                               # %cond.true.230
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB6_67
# BB#65:                                # %land.lhs.true.233
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_67
# BB#66:                                # %cond.true.237
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB6_68
.LBB6_67:                               # %cond.false.246
	xorl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB6_68
.LBB6_68:                               # %cond.end.247
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB6_77
.LBB6_69:                               # %cond.false.249
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movb	%al, -185(%rbp)         # 1-byte Spill
	je	.LBB6_76
# BB#70:                                # %lor.lhs.false.253
	movq	-8(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -185(%rbp)         # 1-byte Spill
	je	.LBB6_76
# BB#71:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jle	.LBB6_75
# BB#72:                                # %land.lhs.true.257
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-216(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -201(%rbp)         # 1-byte Spill
	je	.LBB6_75
# BB#73:                                # %land.lhs.true.260
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-224(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -201(%rbp)         # 1-byte Spill
	jne	.LBB6_75
# BB#74:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -201(%rbp)         # 1-byte Spill
.LBB6_75:                               # %land.end
	movb	-201(%rbp), %al         # 1-byte Reload
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB6_76:                               # %lor.end
	movb	-185(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB6_77:                               # %cond.end.268
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB6_78:                               # %cond.end.271
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB6_80
.LBB6_79:                               # %cond.false.273
	xorl	%eax, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB6_80
.LBB6_80:                               # %cond.end.274
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB6_81:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB6_90
# BB#82:                                # %for.body
                                        #   in Loop: Header=BB6_81 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	addl	48(%rax), %edx
	movl	%edx, 48(%rax)
	movq	-48(%rbp), %rax
	movl	60(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-48(%rbp), %rax
	movl	48(%rax), %edx
	cmpl	-32(%rbp), %edx
	jge	.LBB6_84
# BB#83:                                # %if.then
                                        #   in Loop: Header=BB6_81 Depth=1
	movl	-32(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	48(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	72(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 72(%rcx)
.LBB6_84:                               # %if.end
                                        #   in Loop: Header=BB6_81 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	60(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jle	.LBB6_86
# BB#85:                                # %if.then.291
                                        #   in Loop: Header=BB6_81 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	60(%rax), %ecx
	subl	-36(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	72(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 72(%rax)
.LBB6_86:                               # %if.end.298
                                        #   in Loop: Header=BB6_81 Depth=1
	movq	-48(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$8, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB6_88
# BB#87:                                # %if.then.303
                                        #   in Loop: Header=BB6_81 Depth=1
	movq	-48(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	orq	$512, %rcx              # imm = 0x200
	movq	%rcx, 236(%rax)
.LBB6_88:                               # %if.end.306
                                        #   in Loop: Header=BB6_81 Depth=1
	jmp	.LBB6_89
.LBB6_89:                               # %for.inc
                                        #   in Loop: Header=BB6_81 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_81
.LBB6_90:                               # %for.end
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	shift_glyph_matrix, .Lfunc_end6-shift_glyph_matrix
	.cfi_endproc

	.globl	clear_current_matrices
	.align	16, 0x90
	.type	clear_current_matrices,@function
clear_current_matrices:                 # @clear_current_matrices
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 200(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	clear_glyph_matrix
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	clear_window_matrices
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clear_current_matrices, .Lfunc_end7-clear_current_matrices
	.cfi_endproc

	.align	16, 0x90
	.type	clear_window_matrices,@function
clear_window_matrices:                  # @clear_window_matrices
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB8_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB8_3
	jmp	.LBB8_4
.LBB8_3:                                # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movb	-9(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	clear_window_matrices
	jmp	.LBB8_8
.LBB8_4:                                # %if.else
                                        #   in Loop: Header=BB8_1 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	clear_glyph_matrix
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.6
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	clear_glyph_matrix
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-8193, %cx             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%cx, 468(%rax)
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.7
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB8_11:                               # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB8_1
.LBB8_12:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	clear_window_matrices, .Lfunc_end8-clear_window_matrices
	.cfi_endproc

	.globl	clear_desired_matrices
	.align	16, 0x90
	.type	clear_desired_matrices,@function
clear_desired_matrices:                 # @clear_desired_matrices
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 192(%rdi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	clear_glyph_matrix
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movl	$1, %esi
	movq	%rax, %rdi
	callq	clear_window_matrices
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	clear_desired_matrices, .Lfunc_end9-clear_desired_matrices
	.cfi_endproc

	.globl	clear_glyph_row
	.align	16, 0x90
	.type	clear_glyph_row,@function
clear_glyph_row:                        # @clear_glyph_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	$224, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$32, %rdi
	callq	memset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	clear_glyph_row, .Lfunc_end10-clear_glyph_row
	.cfi_endproc

	.globl	blank_row
	.align	16, 0x90
	.type	blank_row,@function
blank_row:                              # @blank_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	80(%rsi), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB11_1
	jmp	.LBB11_15
.LBB11_1:                               # %cond.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB11_30
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB11_30
# BB#3:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB11_30
# BB#4:                                 # %land.lhs.true.9
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_30
# BB#5:                                 # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB11_6
	jmp	.LBB11_11
.LBB11_6:                               # %cond.true.16
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB11_13
# BB#7:                                 # %land.lhs.true.21
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB11_13
# BB#8:                                 # %land.lhs.true.27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB11_13
# BB#9:                                 # %land.lhs.true.35
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_13
# BB#10:                                # %land.lhs.true.40
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB11_12
	jmp	.LBB11_13
.LBB11_11:                              # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_12
	jmp	.LBB11_13
.LBB11_12:                              # %cond.true.45
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false.49
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB11_14:                              # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB11_16
	jmp	.LBB11_30
.LBB11_15:                              # %cond.false.54
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_16
	jmp	.LBB11_30
.LBB11_16:                              # %cond.true.55
	movq	-8(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB11_18
# BB#17:                                # %cond.true.57
	movq	-8(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB11_29
.LBB11_18:                              # %cond.false.59
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB11_21
# BB#19:                                # %land.lhs.true.60
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_21
# BB#20:                                # %cond.true.63
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB11_22
	jmp	.LBB11_27
.LBB11_21:                              # %cond.false.67
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_22
	jmp	.LBB11_27
.LBB11_22:                              # %cond.true.68
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB11_25
# BB#23:                                # %land.lhs.true.71
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_25
# BB#24:                                # %cond.true.75
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB11_26
.LBB11_25:                              # %cond.false.79
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB11_26
.LBB11_26:                              # %cond.end.80
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB11_28
.LBB11_27:                              # %cond.false.82
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB11_28:                              # %cond.end.86
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB11_29:                              # %cond.end.89
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB11_31
.LBB11_30:                              # %cond.false.91
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB11_31
.LBB11_31:                              # %cond.end.92
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movl	260(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	244(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	260(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	40(%rcx), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, -84(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%edx, -88(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	-88(%rbp), %edx         # 4-byte Reload
	addl	260(%rax), %edx
	movl	-84(%rbp), %esi         # 4-byte Reload
	cmpl	%edx, %esi
	jne	.LBB11_33
# BB#32:                                # %land.lhs.true.107
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_35
.LBB11_33:                              # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB11_35
# BB#34:                                # %lor.lhs.false.118
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB11_36
.LBB11_35:                              # %cond.true.124
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB11_37
.LBB11_36:                              # %cond.false.125
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB11_37:                              # %cond.end.128
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	-80(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jne	.LBB11_40
# BB#38:                                # %lor.lhs.false.136
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB11_41
# BB#39:                                # %land.lhs.true.141
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB11_41
.LBB11_40:                              # %cond.true.147
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_46
	jmp	.LBB11_50
.LBB11_41:                              # %cond.false.148
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_43
# BB#42:                                # %cond.true.151
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB11_46
	jmp	.LBB11_50
.LBB11_43:                              # %cond.false.158
	movl	$213, %edi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_45
# BB#44:                                # %cond.true.162
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_46
	jmp	.LBB11_50
.LBB11_45:                              # %cond.false.163
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_46
	jmp	.LBB11_50
.LBB11_46:                              # %cond.true.164
	movq	-8(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB11_48
# BB#47:                                # %cond.true.166
	movq	-8(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB11_49
.LBB11_48:                              # %cond.false.168
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB11_49:                              # %cond.end.171
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB11_51
.LBB11_50:                              # %cond.false.173
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB11_51
.LBB11_51:                              # %cond.end.174
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	-104(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB11_52
	jmp	.LBB11_57
.LBB11_52:                              # %cond.true.179
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB11_79
# BB#53:                                # %land.lhs.true.184
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB11_79
# BB#54:                                # %land.lhs.true.190
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB11_79
# BB#55:                                # %land.lhs.true.198
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_79
# BB#56:                                # %land.lhs.true.204
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB11_58
	jmp	.LBB11_79
.LBB11_57:                              # %cond.false.210
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_58
	jmp	.LBB11_79
.LBB11_58:                              # %cond.true.211
	movq	-8(%rbp), %rax
	cmpl	$0, 444(%rax)
	jl	.LBB11_60
# BB#59:                                # %cond.true.213
	movq	-8(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB11_78
.LBB11_60:                              # %cond.false.215
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB11_63
# BB#61:                                # %land.lhs.true.218
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_63
# BB#62:                                # %cond.true.222
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB11_64
	jmp	.LBB11_69
.LBB11_63:                              # %cond.false.229
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_64
	jmp	.LBB11_69
.LBB11_64:                              # %cond.true.230
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB11_67
# BB#65:                                # %land.lhs.true.233
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_67
# BB#66:                                # %cond.true.237
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -152(%rbp)        # 4-byte Spill
	jmp	.LBB11_68
.LBB11_67:                              # %cond.false.246
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB11_68
.LBB11_68:                              # %cond.end.247
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB11_77
.LBB11_69:                              # %cond.false.249
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	je	.LBB11_76
# BB#70:                                # %lor.lhs.false.253
	movq	-8(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -169(%rbp)         # 1-byte Spill
	je	.LBB11_76
# BB#71:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jle	.LBB11_75
# BB#72:                                # %land.lhs.true.257
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-200(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -185(%rbp)         # 1-byte Spill
	je	.LBB11_75
# BB#73:                                # %land.lhs.true.260
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-208(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -185(%rbp)         # 1-byte Spill
	jne	.LBB11_75
# BB#74:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-216(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB11_75:                              # %land.end
	movb	-185(%rbp), %al         # 1-byte Reload
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB11_76:                              # %lor.end
	movb	-169(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB11_77:                              # %cond.end.268
	movl	-156(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB11_78:                              # %cond.end.271
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB11_80
.LBB11_79:                              # %cond.false.273
	xorl	%eax, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB11_80
.LBB11_80:                              # %cond.end.274
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	clear_glyph_row
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 48(%rdi)
	movq	-16(%rbp), %rdi
	movl	$0, 64(%rdi)
	movq	-16(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movl	368(%rdi), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 68(%rdi)
	movq	-16(%rbp), %rdi
	movl	%eax, 60(%rdi)
	movq	-16(%rbp), %rdi
	movl	60(%rdi), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 72(%rdi)
	movq	-16(%rbp), %rdi
	movl	48(%rdi), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB11_82
# BB#81:                                # %if.then
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	72(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 72(%rcx)
.LBB11_82:                              # %if.end
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	60(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jle	.LBB11_84
# BB#83:                                # %if.then.293
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	60(%rax), %ecx
	subl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	72(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 72(%rax)
.LBB11_84:                              # %if.end.300
	movq	-16(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	orq	$1024, %rcx             # imm = 0x400
	movq	%rcx, 236(%rax)
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	blank_row, .Lfunc_end11-blank_row
	.cfi_endproc

	.globl	prepare_desired_row
	.align	16, 0x90
	.type	prepare_desired_row,@function
prepare_desired_row:                    # @prepare_desired_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$10, %rsi
	andq	$1, %rsi
	testq	$1, %rsi
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -18(%rbp)
	movq	-16(%rbp), %rdi
	callq	clear_glyph_row
	movq	-16(%rbp), %rax
	movq	236(%rax), %rdi
	andq	$-1025, %rdi            # imm = 0xFFFFFFFFFFFFFBFF
	orq	$1024, %rdi             # imm = 0x400
	movq	%rdi, 236(%rax)
	movb	-18(%rbp), %cl
	movq	-16(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %edi
	movq	236(%rax), %rsi
	shlq	$34, %rdi
	movabsq	$-17179869185, %r8      # imm = 0xFFFFFFFBFFFFFFFF
	andq	%r8, %rsi
	orq	%rdi, %rsi
	movq	%rsi, 236(%rax)
.LBB12_2:                               # %if.end
	testb	$1, -17(%rbp)
	je	.LBB12_8
# BB#3:                                 # %if.then.15
	movq	-8(%rbp), %rax
	cmpl	$0, 428(%rax)
	jle	.LBB12_5
# BB#4:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB12_5:                               # %if.end.19
	movq	-8(%rbp), %rax
	cmpl	$0, 432(%rax)
	jle	.LBB12_7
# BB#6:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB12_7:                               # %if.end.26
	jmp	.LBB12_15
.LBB12_8:                               # %if.else
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movl	68(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 428(%rax)
	jle	.LBB12_11
# BB#9:                                 # %land.lhs.true
	movl	$48, %eax
	movl	%eax, %ecx
	movslq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_11
# BB#10:                                # %if.then.36
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-24(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB12_11:                              # %if.end.41
	movq	-8(%rbp), %rax
	cmpl	$0, 432(%rax)
	jle	.LBB12_14
# BB#12:                                # %land.lhs.true.45
	movl	$48, %eax
	movl	%eax, %ecx
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_14
# BB#13:                                # %if.then.57
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movslq	-28(%rbp), %rsi
	subq	%rsi, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rdx
	movq	-16(%rbp), %rcx
	movq	%rdx, 16(%rcx)
.LBB12_14:                              # %if.end.64
	jmp	.LBB12_15
.LBB12_15:                              # %if.end.65
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	prepare_desired_row, .Lfunc_end12-prepare_desired_row
	.cfi_endproc

	.globl	adjust_frame_glyphs
	.align	16, 0x90
	.type	adjust_frame_glyphs,@function
adjust_frame_glyphs:                    # @adjust_frame_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	adjust_frame_glyphs_for_window_redisplay
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	adjust_frame_glyphs_for_frame_redisplay
.LBB13_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	adjust_decode_mode_spec_buffer
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-2, %rax
	orq	$1, %rax
	movq	%rax, 208(%rdi)
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	adjust_frame_glyphs, .Lfunc_end13-adjust_frame_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_frame_glyphs_for_window_redisplay,@function
adjust_frame_glyphs_for_window_redisplay: # @adjust_frame_glyphs_for_window_redisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	allocate_matrices_for_window_redisplay
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	adjust_frame_glyphs_for_window_redisplay, .Lfunc_end14-adjust_frame_glyphs_for_window_redisplay
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_frame_glyphs_for_frame_redisplay,@function
adjust_frame_glyphs_for_frame_redisplay: # @adjust_frame_glyphs_for_frame_redisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 376(%rdi)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_19
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	216(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 184(%rax)
	jne	.LBB15_4
# BB#3:                                 # %if.then.2
	callq	new_glyph_pool
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx)
	callq	new_glyph_pool
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB15_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	jne	.LBB15_6
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	new_glyph_matrix
	movq	-8(%rbp), %rdi
	movq	%rax, 192(%rdi)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	new_glyph_matrix
	movq	-8(%rbp), %rdi
	movq	%rax, 200(%rdi)
.LBB15_6:                               # %if.end.13
	xorl	%esi, %esi
	movl	$1, %ecx
	leaq	-24(%rbp), %r8
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-28(%rbp), %edx
	callq	allocate_matrices_for_frame_redisplay
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc_glyph_pool
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rsi
	movq	176(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc_glyph_pool
	testb	$1, -17(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
	jne	.LBB15_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	je	.LBB15_19
.LBB15_8:                               # %if.then.21
	xorl	%eax, %eax
	leaq	-24(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	movl	-28(%rbp), %edx
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	allocate_matrices_for_frame_redisplay
	movq	%rax, -48(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	280(%rax), %ecx
	jne	.LBB15_10
# BB#9:                                 # %lor.lhs.false.26
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	je	.LBB15_11
.LBB15_10:                              # %if.then.29
	jmp	.LBB15_19
.LBB15_11:                              # %if.end.30
	testb	$1, display_completed
	je	.LBB15_17
# BB#12:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$13, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB15_17
# BB#13:                                # %land.lhs.true.32
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	36(%rcx), %eax
	jne	.LBB15_17
# BB#14:                                # %land.lhs.true.36
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	40(%rcx), %eax
	jne	.LBB15_17
# BB#15:                                # %land.lhs.true.40
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	showing_window_margins_p
	testb	$1, %al
	jne	.LBB15_17
# BB#16:                                # %if.then.44
	movq	-8(%rbp), %rdi
	callq	save_current_matrix
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rsi
	movq	-16(%rbp), %r8
	movl	%ecx, %edx
	callq	adjust_glyph_matrix
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-16(%rbp), %r8
	movl	%ecx, %edx
	callq	adjust_glyph_matrix
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	restore_current_matrix
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	fake_current_matrices
	jmp	.LBB15_18
.LBB15_17:                              # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rsi
	movq	-16(%rbp), %r8
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	adjust_glyph_matrix
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movq	200(%rsi), %rsi
	movq	-16(%rbp), %r8
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	adjust_glyph_matrix
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdi             # imm = 0x2000
	movq	%rdi, 208(%rsi)
.LBB15_18:                              # %if.end.54
	jmp	.LBB15_19
.LBB15_19:                              # %if.end.55
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	adjust_frame_glyphs_for_frame_redisplay, .Lfunc_end15-adjust_frame_glyphs_for_frame_redisplay
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_decode_mode_spec_buffer,@function
adjust_decode_mode_spec_buffer:         # @adjust_decode_mode_spec_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	272(%rdi), %eax
	shll	$2, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rsi
	movq	%rax, 232(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	adjust_decode_mode_spec_buffer, .Lfunc_end16-adjust_decode_mode_spec_buffer
	.cfi_endproc

	.globl	free_glyphs
	.align	16, 0x90
	.type	free_glyphs,@function
free_glyphs:                            # @free_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB17_9
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB17_9
# BB#2:                                 # %if.then
	callq	block_input
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-2, %rcx
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	free_window_matrices
.LBB17_4:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB17_6
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	free_glyph_matrix
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	free_glyph_matrix
	movq	-8(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 192(%rax)
.LBB17_6:                               # %if.end.12
	movq	-8(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB17_8
# BB#7:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	free_glyph_pool
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	free_glyph_pool
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 184(%rax)
.LBB17_8:                               # %if.end.18
	callq	unblock_input
.LBB17_9:                               # %if.end.19
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	free_glyphs, .Lfunc_end17-free_glyphs
	.cfi_endproc

	.globl	free_window_matrices
	.align	16, 0x90
	.type	free_window_matrices,@function
free_window_matrices:                   # @free_window_matrices
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB18_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB18_3
	jmp	.LBB18_4
.LBB18_3:                               # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	free_window_matrices
	jmp	.LBB18_5
.LBB18_4:                               # %if.else
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	free_glyph_matrix
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	free_glyph_matrix
	movq	-8(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 192(%rax)
.LBB18_5:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB18_8:                               # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB18_1
.LBB18_9:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	free_window_matrices, .Lfunc_end18-free_window_matrices
	.cfi_endproc

	.align	16, 0x90
	.type	free_glyph_matrix,@function
free_glyph_matrix:                      # @free_glyph_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB19_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB19_7
# BB#2:                                 # %if.then.1
	movl	$0, -12(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jge	.LBB19_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB19_3
.LBB19_6:                               # %for.end
	jmp	.LBB19_7
.LBB19_7:                               # %if.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB19_8:                               # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	free_glyph_matrix, .Lfunc_end19-free_glyph_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	free_glyph_pool,@function
free_glyph_pool:                        # @free_glyph_pool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB20_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	free_glyph_pool, .Lfunc_end20-free_glyph_pool
	.cfi_endproc

	.globl	check_glyph_memory
	.align	16, 0x90
	.type	check_glyph_memory,@function
check_glyph_memory:                     # @check_glyph_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	Vframe_list, %rax
	movq	%rax, -8(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB21_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB21_1 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB21_3:                               # %land.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_4
	jmp	.LBB21_6
.LBB21_4:                               # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	free_glyphs
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_1
.LBB21_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	check_glyph_memory, .Lfunc_end21-check_glyph_memory
	.cfi_endproc

	.globl	spec_glyph_lookup_face
	.align	16, 0x90
	.type	spec_glyph_lookup_face,@function
spec_glyph_lookup_face:                 # @spec_glyph_lookup_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	GLYPH_FACE
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB22_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	merge_faces
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
.LBB22_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	spec_glyph_lookup_face, .Lfunc_end22-spec_glyph_lookup_face
	.cfi_endproc

	.globl	fill_up_frame_row_with_spaces
	.align	16, 0x90
	.type	fill_up_frame_row_with_spaces,@function
fill_up_frame_row_with_spaces:          # @fill_up_frame_row_with_spaces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movswl	34(%rdi), %esi
	movl	%esi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB23_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movabsq	$space_glyph, %rax
	movl	$48, %ecx
	movl	%ecx, %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -16(%rbp)
	movslq	%ecx, %rdi
	imulq	$48, %rdi, %rdi
	addq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB23_1
.LBB23_3:                               # %while.end
	movl	-16(%rbp), %eax
	movw	%ax, %cx
	movq	-8(%rbp), %rdx
	movw	%cx, 34(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	fill_up_frame_row_with_spaces, .Lfunc_end23-fill_up_frame_row_with_spaces
	.cfi_endproc

	.globl	mirrored_line_dance
	.align	16, 0x90
	.type	mirrored_line_dance,@function
mirrored_line_dance:                    # @mirrored_line_dance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-12(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -48(%rbp)
	movq	$16384, -64(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
# BB#1:                                 # %do.body
	movslq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	shrq	$8, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB24_3
# BB#2:                                 # %if.then
	movslq	-16(%rbp), %rax
	shlq	$8, %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movslq	-16(%rbp), %rax
	shlq	$8, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movslq	-16(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -40(%rbp)
	movb	$1, -73(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	shlq	$8, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	$0, -52(%rbp)
.LBB24_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB24_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	addq	-48(%rbp), %rcx
	movq	236(%rcx), %rcx
	shrq	$10, %rcx
	andq	$1, %rcx
	movb	%cl, %sil
	andb	$1, %sil
	movb	%sil, -74(%rbp)
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	addq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdi
	movq	-24(%rbp), %r8
	movslq	(%r8,%rdi,4), %rdi
	shlq	$8, %rdi
	addq	-40(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movb	-74(%rbp), %r9b
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	addq	-48(%rbp), %rcx
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movl	%eax, %edx
	movq	236(%rcx), %rsi
	shlq	$10, %rdx
	andq	$-1025, %rsi            # imm = 0xFFFFFFFFFFFFFBFF
	orq	%rdx, %rsi
	movq	%rsi, 236(%rcx)
	movslq	-52(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	movq	-32(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	jne	.LBB24_9
# BB#8:                                 # %if.then.29
                                        #   in Loop: Header=BB24_6 Depth=1
	movslq	-52(%rbp), %rax
	shlq	$8, %rax
	addq	-48(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
.LBB24_9:                               # %if.end.35
                                        #   in Loop: Header=BB24_6 Depth=1
	jmp	.LBB24_10
.LBB24_10:                              # %for.inc
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB24_6
.LBB24_11:                              # %for.end
	cmpq	$0, frame_matrix_frame
	je	.LBB24_13
# BB#12:                                # %if.then.37
	movq	frame_matrix_frame, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	callq	mirror_line_dance
.LBB24_13:                              # %if.end.39
	jmp	.LBB24_14
.LBB24_14:                              # %do.body.40
	testb	$1, -73(%rbp)
	je	.LBB24_16
# BB#15:                                # %if.then.42
	xorl	%edi, %edi
	movb	$0, -73(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB24_16:                              # %if.end.45
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.46
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	mirrored_line_dance, .Lfunc_end24-mirrored_line_dance
	.cfi_endproc

	.align	16, 0x90
	.type	mirror_line_dance,@function
mirror_line_dance:                      # @mirror_line_dance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
.LBB25_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_10 Depth 2
	cmpq	$0, -8(%rbp)
	je	.LBB25_43
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB25_3
	jmp	.LBB25_4
.LBB25_3:                               # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	callq	mirror_line_dance
	jmp	.LBB25_39
.LBB25_4:                               # %if.else
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -40(%rbp)
	movb	$0, -45(%rbp)
	movq	$16384, -64(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
# BB#5:                                 # %do.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	shrq	$8, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB25_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$8, %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$8, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	jmp	.LBB25_8
.LBB25_7:                               # %if.else.12
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movslq	24(%rcx), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -56(%rbp)
	movb	$1, -73(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB25_8:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_9
.LBB25_9:                               # %do.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movslq	24(%rdx), %rdx
	shlq	$8, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	$0, -44(%rbp)
.LBB25_10:                              # %for.cond
                                        #   Parent Loop BB25_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB25_32
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB25_10 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -80(%rbp)
	movslq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	movq	-40(%rbp), %rdx
	subl	32(%rdx), %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rdx
	subl	32(%rdx), %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jl	.LBB25_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB25_10 Depth=2
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	40(%rcx), %eax
	setl	%dl
	movb	%dl, -133(%rbp)         # 1-byte Spill
.LBB25_13:                              # %land.end
                                        #   in Loop: Header=BB25_10 Depth=2
	movb	-133(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movb	%al, -93(%rbp)
	cmpl	$0, -88(%rbp)
	movb	%dl, -134(%rbp)         # 1-byte Spill
	jl	.LBB25_15
# BB#14:                                # %land.rhs.31
                                        #   in Loop: Header=BB25_10 Depth=2
	movl	-88(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	40(%rcx), %eax
	setl	%dl
	movb	%dl, -134(%rbp)         # 1-byte Spill
.LBB25_15:                              # %land.end.35
                                        #   in Loop: Header=BB25_10 Depth=2
	movb	-134(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -94(%rbp)
	testb	$1, -93(%rbp)
	je	.LBB25_20
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_10 Depth=2
	testb	$1, -94(%rbp)
	je	.LBB25_20
# BB#17:                                # %if.then.41
                                        #   in Loop: Header=BB25_10 Depth=2
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movslq	-88(%rbp), %rcx
	movq	-40(%rbp), %rsi
	shlq	$8, %rcx
	addq	8(%rsi), %rcx
	movq	236(%rcx), %rcx
	shrq	$10, %rcx
	andq	$1, %rcx
	movb	%cl, %dil
	andb	$1, %dil
	movb	%dil, -95(%rbp)
	movslq	-88(%rbp), %rcx
	movq	-40(%rbp), %rsi
	shlq	$8, %rcx
	addq	8(%rsi), %rcx
	movslq	-92(%rbp), %rsi
	shlq	$8, %rsi
	addq	-56(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movb	-95(%rbp), %r8b
	movslq	-88(%rbp), %rcx
	movq	-40(%rbp), %rdx
	shlq	$8, %rcx
	addq	8(%rdx), %rcx
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, %edx
	movq	236(%rcx), %rsi
	shlq	$10, %rdx
	andq	$-1025, %rsi            # imm = 0xFFFFFFFFFFFFFBFF
	orq	%rdx, %rsi
	movq	%rsi, 236(%rcx)
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	movq	-32(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	jne	.LBB25_19
# BB#18:                                # %if.then.64
                                        #   in Loop: Header=BB25_10 Depth=2
	movslq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
.LBB25_19:                              # %if.end.71
                                        #   in Loop: Header=BB25_10 Depth=2
	jmp	.LBB25_30
.LBB25_20:                              # %if.else.72
                                        #   in Loop: Header=BB25_10 Depth=2
	testb	$1, -94(%rbp)
	je	.LBB25_26
# BB#21:                                # %if.then.74
                                        #   in Loop: Header=BB25_10 Depth=2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	frame_row_to_window
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB25_25
# BB#22:                                # %if.then.79
                                        #   in Loop: Header=BB25_10 Depth=2
	movq	-120(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	-84(%rbp), %ecx
	movq	-128(%rbp), %rax
	subl	32(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-88(%rbp), %rdx
	shlq	$8, %rdx
	addq	%rdx, %rax
	movq	-128(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-132(%rbp), %rsi
	shlq	$8, %rsi
	addq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	copy_row_except_pointers
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rdx
	movslq	(%rdx,%rax,4), %rax
	movq	-32(%rbp), %rdx
	cmpb	$0, (%rdx,%rax)
	jne	.LBB25_24
# BB#23:                                # %if.then.92
                                        #   in Loop: Header=BB25_10 Depth=2
	movslq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
.LBB25_24:                              # %if.end.99
                                        #   in Loop: Header=BB25_10 Depth=2
	jmp	.LBB25_25
.LBB25_25:                              # %if.end.100
                                        #   in Loop: Header=BB25_10 Depth=2
	movb	$1, -45(%rbp)
	jmp	.LBB25_29
.LBB25_26:                              # %if.else.101
                                        #   in Loop: Header=BB25_10 Depth=2
	testb	$1, -93(%rbp)
	je	.LBB25_28
# BB#27:                                # %if.then.103
                                        #   in Loop: Header=BB25_10 Depth=2
	movb	$1, -45(%rbp)
.LBB25_28:                              # %if.end.104
                                        #   in Loop: Header=BB25_10 Depth=2
	jmp	.LBB25_29
.LBB25_29:                              # %if.end.105
                                        #   in Loop: Header=BB25_10 Depth=2
	jmp	.LBB25_30
.LBB25_30:                              # %if.end.106
                                        #   in Loop: Header=BB25_10 Depth=2
	jmp	.LBB25_31
.LBB25_31:                              # %for.inc
                                        #   in Loop: Header=BB25_10 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB25_10
.LBB25_32:                              # %for.end
                                        #   in Loop: Header=BB25_1 Depth=1
	testb	$1, -45(%rbp)
	je	.LBB25_34
# BB#33:                                # %if.then.108
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	sync_window_with_frame_matrix_rows
.LBB25_34:                              # %if.end.109
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_35
.LBB25_35:                              # %do.body.110
                                        #   in Loop: Header=BB25_1 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB25_37
# BB#36:                                # %if.then.112
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%edi, %edi
	movb	$0, -73(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB25_37:                              # %if.end.115
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_38
.LBB25_38:                              # %do.end.116
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_39
.LBB25_39:                              # %if.end.117
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_41
# BB#40:                                # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB25_42
.LBB25_41:                              # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB25_42:                              # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB25_1
.LBB25_43:                              # %while.end
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	mirror_line_dance, .Lfunc_end25-mirror_line_dance
	.cfi_endproc

	.globl	redraw_frame
	.align	16, 0x90
	.type	redraw_frame,@function
redraw_frame:                           # @redraw_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	update_begin
	movq	-8(%rbp), %rdi
	callq	clear_frame
	movq	-8(%rbp), %rdi
	callq	clear_current_matrices
	movq	-8(%rbp), %rdi
	callq	update_end
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	mark_window_display_accurate
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	XWINDOW
	movl	$1, %esi
	movq	%rax, %rdi
	callq	set_window_update_flags
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	movq	%rdi, 208(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	redraw_frame, .Lfunc_end26-redraw_frame
	.cfi_endproc

	.align	16, 0x90
	.type	set_window_update_flags,@function
set_window_update_flags:                # @set_window_update_flags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
.LBB27_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB27_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB27_3
	jmp	.LBB27_4
.LBB27_3:                               # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movb	-9(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	set_window_update_flags
	jmp	.LBB27_5
.LBB27_4:                               # %if.else
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-9(%rbp), %eax
	movw	%ax, %cx
	movb	%cl, %dl
	movq	-8(%rbp), %rsi
	andl	$1, %eax
	movw	%ax, %cx
	movw	468(%rsi), %di
	shlw	$10, %cx
	andw	$-1025, %di             # imm = 0xFFFFFFFFFFFFFBFF
	orw	%cx, %di
	movw	%di, 468(%rsi)
	movb	%dl, -10(%rbp)          # 1-byte Spill
.LBB27_5:                               # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB27_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB27_8
.LBB27_7:                               # %cond.false
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB27_8:                               # %cond.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB27_1
.LBB27_9:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	set_window_update_flags, .Lfunc_end27-set_window_update_flags
	.cfi_endproc

	.globl	Fredraw_frame
	.align	16, 0x90
	.type	Fredraw_frame,@function
Fredraw_frame:                          # @Fredraw_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, %rdi
	callq	redraw_frame
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fredraw_frame, .Lfunc_end28-Fredraw_frame
	.cfi_endproc

	.globl	Fredraw_display
	.align	16, 0x90
	.type	Fredraw_display,@function
Fredraw_display:                        # @Fredraw_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	Vframe_list, %rax
	movq	%rax, -8(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB29_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB29_1 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB29_3:                               # %land.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB29_4
	jmp	.LBB29_8
.LBB29_4:                               # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB29_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	redraw_frame
.LBB29_6:                               # %if.end
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_7
.LBB29_7:                               # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB29_1
.LBB29_8:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fredraw_display, .Lfunc_end29-Fredraw_display
	.cfi_endproc

	.globl	update_frame
	.align	16, 0x90
	.type	update_frame,@function
update_frame:                           # @update_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%dl, %al
	movb	%sil, %cl
	movq	%rdi, -8(%rbp)
	andb	$1, %cl
	movb	%cl, -9(%rbp)
	andb	$1, %al
	movb	%al, -10(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	testb	$1, globals+3427
	je	.LBB30_2
# BB#1:                                 # %if.then
	movb	$1, -9(%rbp)
	jmp	.LBB30_6
.LBB30_2:                               # %if.else
	testb	$1, -9(%rbp)
	jne	.LBB30_5
# BB#3:                                 # %land.lhs.true
	callq	detect_input_pending_ignore_squeezables
	testb	$1, %al
	jne	.LBB30_4
	jmp	.LBB30_5
.LBB30_4:                               # %if.then.5
	movb	$1, -11(%rbp)
	jmp	.LBB30_28
.LBB30_5:                               # %if.end
	jmp	.LBB30_6
.LBB30_6:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB30_8
# BB#7:                                 # %if.then.7
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	set_frame_matrix_frame
	movq	-8(%rbp), %rdi
	callq	update_begin
	movq	-24(%rbp), %rdi
	movb	-9(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	update_window_tree
	andb	$1, %al
	movb	%al, -11(%rbp)
	movq	-8(%rbp), %rdi
	callq	update_end
	jmp	.LBB30_27
.LBB30_8:                               # %if.else.11
	movq	-8(%rbp), %rdi
	callq	set_frame_matrix_frame
	movq	-8(%rbp), %rdi
	callq	build_frame_matrix
	movq	-8(%rbp), %rdi
	callq	update_begin
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	movb	-10(%rbp), %dl
	andb	$1, %al
	andb	$1, %dl
	movzbl	%al, %esi
	movzbl	%dl, %edx
	callq	update_frame_1
	andb	$1, %al
	movb	%al, -11(%rbp)
	movq	-8(%rbp), %rdi
	callq	update_end
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %ecx
	cmpl	$1, %ecx
	jne	.LBB30_26
# BB#9:                                 # %if.then.22
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB30_11
# BB#10:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_12
.LBB30_11:                              # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB30_13
.LBB30_12:                              # %cond.false
	callq	emacs_abort
.LBB30_13:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	cmpq	$0, 40(%rax)
	je	.LBB30_19
# BB#14:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB30_16
# BB#15:                                # %lor.lhs.false.43
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_17
.LBB30_16:                              # %cond.true.50
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB30_18
.LBB30_17:                              # %cond.false.54
	callq	emacs_abort
.LBB30_18:                              # %cond.end.55
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rdi
	callq	fflush
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB30_19:                              # %if.end.59
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB30_25
# BB#20:                                # %if.then.66
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB30_22
# BB#21:                                # %lor.lhs.false.73
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_23
.LBB30_22:                              # %cond.true.80
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB30_24
.LBB30_23:                              # %cond.false.84
	callq	emacs_abort
.LBB30_24:                              # %cond.end.85
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rdi
	callq	fflush
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB30_25:                              # %if.end.88
	jmp	.LBB30_26
.LBB30_26:                              # %if.end.89
	jmp	.LBB30_27
.LBB30_27:                              # %if.end.90
	jmp	.LBB30_28
.LBB30_28:                              # %do_pause
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	set_window_update_flags
	movb	-11(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, display_completed
	movb	-11(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	update_frame, .Lfunc_end30-update_frame
	.cfi_endproc

	.align	16, 0x90
	.type	set_frame_matrix_frame,@function
set_frame_matrix_frame:                 # @set_frame_matrix_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, frame_matrix_frame
	popq	%rbp
	retq
.Lfunc_end31:
	.size	set_frame_matrix_frame, .Lfunc_end31-set_frame_matrix_frame
	.cfi_endproc

	.align	16, 0x90
	.type	update_window_tree,@function
update_window_tree:                     # @update_window_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movb	$0, -10(%rbp)
.LBB32_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8(%rbp)
	movb	%cl, -11(%rbp)          # 1-byte Spill
	je	.LBB32_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB32_1 Depth=1
	movb	-10(%rbp), %al
	xorb	$-1, %al
	movb	%al, -11(%rbp)          # 1-byte Spill
.LBB32_3:                               # %land.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movb	-11(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_4
	jmp	.LBB32_13
.LBB32_4:                               # %while.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB32_5
	jmp	.LBB32_6
.LBB32_5:                               # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movb	-9(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %esi
	callq	update_window_tree
	andb	$1, %al
	movzbl	%al, %esi
	movb	-10(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	orl	%esi, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -10(%rbp)
	jmp	.LBB32_9
.LBB32_6:                               # %if.else
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$10, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB32_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	update_window
	andb	$1, %al
	movzbl	%al, %esi
	movb	-10(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	orl	%esi, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, -10(%rbp)
.LBB32_8:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_9
.LBB32_9:                               # %if.end.19
                                        #   in Loop: Header=BB32_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB32_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB32_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB32_12
.LBB32_11:                              # %cond.false
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB32_12:                              # %cond.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB32_1
.LBB32_13:                              # %while.end
	movb	-10(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	update_window_tree, .Lfunc_end32-update_window_tree
	.cfi_endproc

	.align	16, 0x90
	.type	build_frame_matrix,@function
build_frame_matrix:                     # @build_frame_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	356(%rdi), %eax
	movq	-8(%rbp), %rdi
	addl	216(%rdi), %eax
	movl	%eax, -12(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB33_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	clear_glyph_row
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB33_1
.LBB33_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	build_frame_matrix_from_window_tree
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	build_frame_matrix, .Lfunc_end33-build_frame_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	update_frame_1,@function
update_frame_1:                         # @update_frame_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movb	%cl, %al
	movb	%dl, %r8b
	movb	%sil, %r9b
	movl	$2400, %ecx             # imm = 0x960
	movl	%ecx, %r10d
	movq	%rdi, -8(%rbp)
	andb	$1, %r9b
	movb	%r9b, -9(%rbp)
	andb	$1, %r8b
	movb	%r8b, -10(%rbp)
	andb	$1, %al
	movb	%al, -11(%rbp)
	movq	-8(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	globals+3048, %rax
	cqto
	idivq	%r10
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	globals+3048, %rax
	movq	-8(%rbp), %rdi
	movslq	436(%rdi), %rdi
	cmpq	%rdi, %rax
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	calculate_costs
.LBB34_2:                               # %if.end
	cmpl	$0, -44(%rbp)
	jg	.LBB34_4
# BB#3:                                 # %if.then.9
	movl	$1, -44(%rbp)
.LBB34_4:                               # %if.end.10
	testb	$1, -9(%rbp)
	jne	.LBB34_7
# BB#5:                                 # %land.lhs.true
	callq	detect_input_pending_ignore_squeezables
	testb	$1, %al
	jne	.LBB34_6
	jmp	.LBB34_7
.LBB34_6:                               # %if.then.12
	movb	$1, -37(%rbp)
	jmp	.LBB34_96
.LBB34_7:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB34_9
# BB#8:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB34_10
.LBB34_9:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB34_11
.LBB34_10:                              # %cond.false
	callq	emacs_abort
.LBB34_11:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB34_13
# BB#12:                                # %if.then.27
	movb	$1, -10(%rbp)
.LBB34_13:                              # %if.end.28
	movl	$0, -36(%rbp)
.LBB34_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB34_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB34_17
# BB#16:                                # %if.then.35
	jmp	.LBB34_19
.LBB34_17:                              # %if.end.36
                                        #   in Loop: Header=BB34_14 Depth=1
	jmp	.LBB34_18
.LBB34_18:                              # %for.inc
                                        #   in Loop: Header=BB34_14 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB34_14
.LBB34_19:                              # %for.end
	testb	$1, -10(%rbp)
	jne	.LBB34_22
# BB#20:                                # %land.lhs.true.38
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB34_22
# BB#21:                                # %if.then.42
	movq	-8(%rbp), %rdi
	callq	scrolling
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	orl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -9(%rbp)
.LBB34_22:                              # %if.end.49
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB34_24
# BB#23:                                # %if.then.59
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	update_frame_line
.LBB34_24:                              # %if.end.62
	movl	$0, -36(%rbp)
.LBB34_25:                              # %for.cond.63
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	24(%rdx), %esi
	subl	$1, %esi
	cmpl	%esi, %eax
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jge	.LBB34_29
# BB#26:                                # %land.rhs
                                        #   in Loop: Header=BB34_25 Depth=1
	movb	$1, %al
	testb	$1, -9(%rbp)
	movb	%al, -122(%rbp)         # 1-byte Spill
	jne	.LBB34_28
# BB#27:                                # %lor.rhs
                                        #   in Loop: Header=BB34_25 Depth=1
	movb	input_pending, %al
	xorb	$-1, %al
	movb	%al, -122(%rbp)         # 1-byte Spill
.LBB34_28:                              # %lor.end
                                        #   in Loop: Header=BB34_25 Depth=1
	movb	-122(%rbp), %al         # 1-byte Reload
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB34_29:                              # %land.end
                                        #   in Loop: Header=BB34_25 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_30
	jmp	.LBB34_49
.LBB34_30:                              # %for.body.71
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB34_47
# BB#31:                                # %if.then.80
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB34_43
# BB#32:                                # %if.then.88
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB34_34
# BB#33:                                # %lor.lhs.false.96
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB34_35
.LBB34_34:                              # %cond.true.104
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB34_36
.LBB34_35:                              # %cond.false.108
	callq	emacs_abort
.LBB34_36:                              # %cond.end.109
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	32(%rax), %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB34_42
# BB#37:                                # %if.then.112
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-56(%rbp), %rdi
	callq	__fpending
	movq	%rax, -64(%rbp)
	cmpq	$900, -64(%rbp)         # imm = 0x384
	jg	.LBB34_40
# BB#38:                                # %lor.lhs.false.116
                                        #   in Loop: Header=BB34_25 Depth=1
	cmpq	$20, -64(%rbp)
	jle	.LBB34_41
# BB#39:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB34_25 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-44(%rbp)
	cmpl	$0, %edx
	jne	.LBB34_41
.LBB34_40:                              # %if.then.123
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-56(%rbp), %rdi
	callq	fflush
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB34_41:                              # %if.end.125
                                        #   in Loop: Header=BB34_25 Depth=1
	jmp	.LBB34_42
.LBB34_42:                              # %if.end.126
                                        #   in Loop: Header=BB34_25 Depth=1
	jmp	.LBB34_43
.LBB34_43:                              # %if.end.127
                                        #   in Loop: Header=BB34_25 Depth=1
	testb	$1, -9(%rbp)
	jne	.LBB34_46
# BB#44:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB34_25 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-44(%rbp)
	cmpl	$0, %edx
	jne	.LBB34_46
# BB#45:                                # %if.then.134
                                        #   in Loop: Header=BB34_25 Depth=1
	callq	detect_input_pending_ignore_squeezables
	movb	%al, -141(%rbp)         # 1-byte Spill
.LBB34_46:                              # %if.end.136
                                        #   in Loop: Header=BB34_25 Depth=1
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	update_frame_line
.LBB34_47:                              # %if.end.137
                                        #   in Loop: Header=BB34_25 Depth=1
	jmp	.LBB34_48
.LBB34_48:                              # %for.inc.138
                                        #   in Loop: Header=BB34_25 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB34_25
.LBB34_49:                              # %for.end.140
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	cmpl	-36(%rbp), %eax
	movb	%cl, -142(%rbp)         # 1-byte Spill
	jge	.LBB34_51
# BB#50:                                # %land.rhs.143
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	284(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	setl	%sil
	movb	%sil, -142(%rbp)        # 1-byte Spill
.LBB34_51:                              # %land.end.147
	movb	-142(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -37(%rbp)
	testb	$1, -37(%rbp)
	jne	.LBB34_95
# BB#52:                                # %land.lhs.true.150
	testb	$1, -11(%rbp)
	je	.LBB34_95
# BB#53:                                # %if.then.153
	testb	$1, globals+3371
	jne	.LBB34_57
# BB#54:                                # %lor.lhs.false.156
	movq	minibuf_window, %rax
	cmpq	selected_window, %rax
	jne	.LBB34_87
# BB#55:                                # %land.lhs.true.159
	movq	minibuf_window, %rax
	cmpq	echo_area_window, %rax
	jne	.LBB34_87
# BB#56:                                # %land.lhs.true.162
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB34_87
.LBB34_57:                              # %land.lhs.true.166
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB34_58
	jmp	.LBB34_87
.LBB34_58:                              # %land.lhs.true.169
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB34_87
# BB#59:                                # %land.lhs.true.175
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	echo_area_window, %rax
	jne	.LBB34_87
# BB#60:                                # %if.then.179
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movl	252(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-8(%rbp), %rax
	movl	284(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB34_61:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_63 Depth 2
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-76(%rbp), %rdx
	shlq	$8, %rdx
	addq	%rdx, %rcx
	movq	236(%rcx), %rcx
	shrq	$10, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	je	.LBB34_68
# BB#62:                                # %if.then.191
                                        #   in Loop: Header=BB34_61 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-76(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movswl	34(%rax), %edx
	movl	%edx, -72(%rbp)
.LBB34_63:                              # %while.cond
                                        #   Parent Loop BB34_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jge	.LBB34_65
# BB#64:                                # %land.rhs.199
                                        #   in Loop: Header=BB34_63 Depth=2
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$48, %rcx, %rcx
	addq	-96(%rbp), %rcx
	cmpq	$0, (%rcx)
	setl	%dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB34_65:                              # %land.end.204
                                        #   in Loop: Header=BB34_63 Depth=2
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_66
	jmp	.LBB34_67
.LBB34_66:                              # %while.body
                                        #   in Loop: Header=BB34_63 Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB34_63
.LBB34_67:                              # %while.end
                                        #   in Loop: Header=BB34_61 Depth=1
	jmp	.LBB34_68
.LBB34_68:                              # %if.end.206
                                        #   in Loop: Header=BB34_61 Depth=1
	jmp	.LBB34_69
.LBB34_69:                              # %do.cond
                                        #   in Loop: Header=BB34_61 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	movb	%cl, -154(%rbp)         # 1-byte Spill
	jle	.LBB34_71
# BB#70:                                # %land.rhs.209
                                        #   in Loop: Header=BB34_61 Depth=1
	cmpl	$0, -72(%rbp)
	sete	%al
	movb	%al, -154(%rbp)         # 1-byte Spill
.LBB34_71:                              # %land.end.212
                                        #   in Loop: Header=BB34_61 Depth=1
	movb	-154(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_61
# BB#72:                                # %do.end
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	272(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %esi
	cmpl	$1, %esi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%edx, -164(%rbp)        # 4-byte Spill
	jne	.LBB34_74
# BB#73:                                # %cond.true.219
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB34_75
.LBB34_74:                              # %cond.false.220
	xorl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB34_75
.LBB34_75:                              # %cond.end.221
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	-164(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-160(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB34_86
# BB#76:                                # %if.then.226
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	284(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB34_81
# BB#77:                                # %if.then.231
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB34_79
# BB#78:                                # %cond.true.239
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB34_80
.LBB34_79:                              # %cond.false.241
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB34_80
.LBB34_80:                              # %cond.end.242
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB34_85
.LBB34_81:                              # %if.else
	movq	-8(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %edx
	cmpl	$1, %edx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jne	.LBB34_83
# BB#82:                                # %cond.true.253
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB34_84
.LBB34_83:                              # %cond.false.255
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB34_84
.LBB34_84:                              # %cond.end.256
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	-176(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -72(%rbp)
.LBB34_85:                              # %if.end.260
	jmp	.LBB34_86
.LBB34_86:                              # %if.end.261
	movq	-8(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	cursor_to
	jmp	.LBB34_94
.LBB34_87:                              # %if.else.262
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpl	$0, 364(%rax)
	jl	.LBB34_93
# BB#88:                                # %land.lhs.true.266
	movq	-104(%rbp), %rax
	movl	364(%rax), %ecx
	movq	-104(%rbp), %rax
	cmpl	268(%rax), %ecx
	jge	.LBB34_93
# BB#89:                                # %if.then.272
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-104(%rbp), %rcx
	addl	248(%rcx), %edx
	movl	%edx, -108(%rbp)
	movq	-104(%rbp), %rcx
	movl	364(%rcx), %edx
	movq	-104(%rbp), %rcx
	addl	252(%rcx), %edx
	movl	%edx, -112(%rbp)
	movq	-104(%rbp), %rcx
	cmpl	428(%rcx), %eax
	jle	.LBB34_91
# BB#90:                                # %cond.true.281
	xorl	%eax, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB34_92
.LBB34_91:                              # %cond.false.282
	movq	-104(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB34_92:                              # %cond.end.284
	movl	-184(%rbp), %eax        # 4-byte Reload
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-8(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %edx
	callq	cursor_to
.LBB34_93:                              # %if.end.287
	jmp	.LBB34_94
.LBB34_94:                              # %if.end.288
	jmp	.LBB34_95
.LBB34_95:                              # %if.end.289
	jmp	.LBB34_96
.LBB34_96:                              # %do_pause
	movq	-8(%rbp), %rdi
	callq	clear_desired_matrices
	movb	-37(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	update_frame_1, .Lfunc_end34-update_frame_1
	.cfi_endproc

	.globl	update_frame_with_menu
	.align	16, 0x90
	.type	update_frame_with_menu,@function
update_frame_with_menu:                 # @update_frame_with_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	set_frame_matrix_frame
	movq	-8(%rbp), %rdi
	callq	update_begin
	xorl	%edx, %edx
	movb	%dl, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -27(%rbp)          # 1-byte Spill
	jl	.LBB35_2
# BB#1:                                 # %land.rhs
	cmpl	$0, -16(%rbp)
	setge	%al
	movb	%al, -27(%rbp)          # 1-byte Spill
.LBB35_2:                               # %land.end
	movb	-27(%rbp), %al          # 1-byte Reload
	movl	$1, %ecx
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -26(%rbp)
	movq	-8(%rbp), %rdi
	movb	-26(%rbp), %al
	andb	$1, %al
	movl	%ecx, %esi
	movl	%ecx, %edx
	movzbl	%al, %ecx
	callq	update_frame_1
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -26(%rbp)
	jne	.LBB35_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	cursor_to
.LBB35_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	update_end
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	je	.LBB35_6
# BB#5:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB35_7
.LBB35_6:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB35_8
.LBB35_7:                               # %cond.false
	callq	emacs_abort
.LBB35_8:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	cmpq	$0, 40(%rax)
	je	.LBB35_14
# BB#9:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB35_11
# BB#10:                                # %lor.lhs.false.21
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB35_12
.LBB35_11:                              # %cond.true.28
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB35_13
.LBB35_12:                              # %cond.false.32
	callq	emacs_abort
.LBB35_13:                              # %cond.end.33
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rdi
	callq	fflush
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB35_14:                              # %if.end.37
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB35_16
# BB#15:                                # %lor.lhs.false.44
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB35_17
.LBB35_16:                              # %cond.true.51
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB35_18
.LBB35_17:                              # %cond.false.55
	callq	emacs_abort
.LBB35_18:                              # %cond.end.56
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rdi
	callq	fflush
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	set_window_update_flags
	movb	-25(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, display_completed
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	update_frame_with_menu, .Lfunc_end35-update_frame_with_menu
	.cfi_endproc

	.globl	update_single_window
	.align	16, 0x90
	.type	update_single_window,@function
update_single_window:                   # @update_single_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movw	468(%rdi), %ax
	shrw	$10, %ax
	andw	$1, %ax
	testw	$1, %ax
	je	.LBB36_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	%rcx, -16(%rbp)
	callq	set_frame_matrix_frame
	movq	-16(%rbp), %rdi
	callq	update_begin
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	update_window
	movq	-16(%rbp), %rdi
	movb	%al, -17(%rbp)          # 1-byte Spill
	callq	update_end
	movq	-8(%rbp), %rcx
	movw	468(%rcx), %dx
	andw	$-1025, %dx             # imm = 0xFFFFFFFFFFFFFBFF
	movw	%dx, 468(%rcx)
.LBB36_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	update_single_window, .Lfunc_end36-update_single_window
	.cfi_endproc

	.align	16, 0x90
	.type	update_window,@function
update_window:                          # @update_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movb	%sil, %al
	movl	$2400, %esi             # imm = 0x960
	movl	%esi, %ecx
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	globals+3048, %rax
	cqto
	idivq	%rcx
	addq	$1, %rax
	movl	%eax, %esi
	movl	%esi, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
	testb	$1, -9(%rbp)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	callq	detect_input_pending_ignore_squeezables
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB37_2:                               # %if.end
	testb	$1, -9(%rbp)
	jne	.LBB37_5
# BB#3:                                 # %lor.lhs.false
	testb	$1, input_pending
	je	.LBB37_5
# BB#4:                                 # %lor.lhs.false.6
	xorl	%edi, %edi
	movq	globals+2944, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_68
.LBB37_5:                               # %if.then.9
	movb	$0, -77(%rbp)
	movb	$0, -78(%rbp)
	movl	$0, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	window_text_bottom_y
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rdi
	addq	$-256, %rdi
	movq	%rdi, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	236(%rcx), %rcx
	shrq	$20, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	je	.LBB37_7
# BB#6:                                 # %if.then.14
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -48(%rbp)
	jmp	.LBB37_8
.LBB37_7:                               # %if.else
	movq	$0, -72(%rbp)
.LBB37_8:                               # %if.end.15
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	addq	$-256, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB37_25
# BB#9:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB37_25
# BB#10:                                # %if.then.32
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movw	468(%rcx), %dx
	shrw	$11, %dx
	andw	$1, %dx
	testw	$1, %dx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB37_13
# BB#11:                                # %lor.lhs.false.38
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB37_14
# BB#12:                                # %land.lhs.true.43
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB37_14
.LBB37_13:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB37_19
	jmp	.LBB37_23
.LBB37_14:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_16
# BB#15:                                # %cond.true.51
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB37_19
	jmp	.LBB37_23
.LBB37_16:                              # %cond.false.59
	movl	$213, %edi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_18
# BB#17:                                # %cond.true.64
	movb	$1, %al
	testb	$1, %al
	jne	.LBB37_19
	jmp	.LBB37_23
.LBB37_18:                              # %cond.false.65
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB37_19
	jmp	.LBB37_23
.LBB37_19:                              # %cond.true.66
	movq	-8(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB37_21
# BB#20:                                # %cond.true.69
	movq	-8(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB37_22
.LBB37_21:                              # %cond.false.71
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB37_22:                              # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB37_24
.LBB37_23:                              # %cond.false.74
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB37_24
.LBB37_24:                              # %cond.end.75
	movl	-144(%rbp), %eax        # 4-byte Reload
	leaq	-78(%rbp), %rdx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-64(%rbp), %rsi
	movl	%ecx, 48(%rsi)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	8(%r8), %r8
	subq	%r8, %rsi
	sarq	$8, %rsi
	movl	%esi, %eax
	movl	%eax, %esi
	callq	update_window_line
	movb	%al, -145(%rbp)         # 1-byte Spill
.LBB37_25:                              # %if.end.81
	jmp	.LBB37_26
.LBB37_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movb	%cl, -146(%rbp)         # 1-byte Spill
	jae	.LBB37_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB37_26 Depth=1
	movq	-48(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	movb	%al, %cl
	xorb	$-1, %cl
	movb	%cl, -146(%rbp)         # 1-byte Spill
.LBB37_28:                              # %land.end
                                        #   in Loop: Header=BB37_26 Depth=1
	movb	-146(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_29
	jmp	.LBB37_30
.LBB37_29:                              # %while.body
                                        #   in Loop: Header=BB37_26 Depth=1
	movq	-48(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -48(%rbp)
	jmp	.LBB37_26
.LBB37_30:                              # %while.end
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB37_38
# BB#31:                                # %land.lhs.true.92
	movq	-24(%rbp), %rax
	movb	72(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB37_38
# BB#32:                                # %if.then.96
	movq	-8(%rbp), %rdi
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	callq	scrolling_window
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jge	.LBB37_34
# BB#33:                                # %if.then.102
	movb	$0, -25(%rbp)
	jmp	.LBB37_58
.LBB37_34:                              # %if.else.103
	cmpl	$0, -88(%rbp)
	jle	.LBB37_36
# BB#35:                                # %if.then.106
	movb	$1, -9(%rbp)
	movb	$1, -77(%rbp)
.LBB37_36:                              # %if.end.107
	jmp	.LBB37_37
.LBB37_37:                              # %if.end.108
	jmp	.LBB37_38
.LBB37_38:                              # %if.end.109
	jmp	.LBB37_39
.LBB37_39:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_50 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movb	%cl, -147(%rbp)         # 1-byte Spill
	jae	.LBB37_43
# BB#40:                                # %land.rhs.112
                                        #   in Loop: Header=BB37_39 Depth=1
	movb	$1, %al
	testb	$1, -9(%rbp)
	movb	%al, -148(%rbp)         # 1-byte Spill
	jne	.LBB37_42
# BB#41:                                # %lor.rhs
                                        #   in Loop: Header=BB37_39 Depth=1
	movb	input_pending, %al
	xorb	$-1, %al
	movb	%al, -148(%rbp)         # 1-byte Spill
.LBB37_42:                              # %lor.end
                                        #   in Loop: Header=BB37_39 Depth=1
	movb	-148(%rbp), %al         # 1-byte Reload
	movb	%al, -147(%rbp)         # 1-byte Spill
.LBB37_43:                              # %land.end.117
                                        #   in Loop: Header=BB37_39 Depth=1
	movb	-147(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_44
	jmp	.LBB37_57
.LBB37_44:                              # %for.body
                                        #   in Loop: Header=BB37_39 Depth=1
	movq	-48(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB37_55
# BB#45:                                # %if.then.123
                                        #   in Loop: Header=BB37_39 Depth=1
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$8, %rax
	movl	%eax, %edx
	movl	%edx, -92(%rbp)
	testb	$1, -9(%rbp)
	jne	.LBB37_48
# BB#46:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB37_39 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	cltd
	idivl	-32(%rbp)
	cmpl	$0, %edx
	jne	.LBB37_48
# BB#47:                                # %if.then.134
                                        #   in Loop: Header=BB37_39 Depth=1
	callq	detect_input_pending_ignore_squeezables
	movb	%al, -149(%rbp)         # 1-byte Spill
.LBB37_48:                              # %if.end.136
                                        #   in Loop: Header=BB37_39 Depth=1
	leaq	-78(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	update_window_line
	andb	$1, %al
	movzbl	%al, %esi
	movb	-77(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	orl	%esi, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, -77(%rbp)
	movq	-48(%rbp), %rdx
	movl	48(%rdx), %ecx
	movq	-48(%rbp), %rdx
	addl	60(%rdx), %ecx
	cmpl	-76(%rbp), %ecx
	jl	.LBB37_54
# BB#49:                                # %if.then.147
                                        #   in Loop: Header=BB37_39 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
.LBB37_50:                              # %for.cond.149
                                        #   Parent Loop BB37_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB37_53
# BB#51:                                # %for.body.154
                                        #   in Loop: Header=BB37_50 Depth=2
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-96(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
# BB#52:                                # %for.inc
                                        #   in Loop: Header=BB37_50 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB37_50
.LBB37_53:                              # %for.end
                                        #   in Loop: Header=BB37_39 Depth=1
	jmp	.LBB37_54
.LBB37_54:                              # %if.end.163
                                        #   in Loop: Header=BB37_39 Depth=1
	jmp	.LBB37_55
.LBB37_55:                              # %if.end.164
                                        #   in Loop: Header=BB37_39 Depth=1
	jmp	.LBB37_56
.LBB37_56:                              # %for.inc.165
                                        #   in Loop: Header=BB37_39 Depth=1
	movq	-48(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -48(%rbp)
	jmp	.LBB37_39
.LBB37_57:                              # %for.end.167
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	setb	%cl
	andb	$1, %cl
	movb	%cl, -25(%rbp)
.LBB37_58:                              # %set_cursor
	cmpq	$0, -72(%rbp)
	je	.LBB37_61
# BB#59:                                # %land.lhs.true.172
	movq	-72(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB37_61
# BB#60:                                # %if.then.179
	xorl	%esi, %esi
	leaq	-78(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rdi
	callq	update_window_line
	movb	%al, -150(%rbp)         # 1-byte Spill
.LBB37_61:                              # %if.end.182
	testb	$1, -25(%rbp)
	jne	.LBB37_67
# BB#62:                                # %land.lhs.true.184
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB37_67
# BB#63:                                # %if.then.190
	testb	$1, -77(%rbp)
	je	.LBB37_66
# BB#64:                                # %land.lhs.true.193
	movq	-40(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB37_66
# BB#65:                                # %if.then.195
	movq	-8(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	redraw_overlapped_rows
	movq	-8(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	redraw_overlapping_rows
.LBB37_66:                              # %if.end.196
	movq	-8(%rbp), %rdi
	callq	set_window_cursor_after_update
.LBB37_67:                              # %if.end.197
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	update_window_fringes
	movq	-40(%rbp), %rdi
	movq	64(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movb	-25(%rbp), %dl
	xorb	$-1, %dl
	movb	-78(%rbp), %r8b
	movzbl	%dl, %esi
	andl	$1, %esi
	movzbl	%r8b, %r9d
	andl	$1, %r9d
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%r9d, %edx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movb	%al, -161(%rbp)         # 1-byte Spill
	callq	*%rcx
	jmp	.LBB37_69
.LBB37_68:                              # %if.else.202
	movb	$1, -25(%rbp)
.LBB37_69:                              # %if.end.203
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rsi
	callq	xwidget_end_redisplay
	movq	-24(%rbp), %rdi
	callq	clear_glyph_matrix
	movb	-25(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	update_window, .Lfunc_end37-update_window
	.cfi_endproc

	.globl	buffer_posn_from_coords
	.align	16, 0x90
	.type	buffer_posn_from_coords,@function
buffer_posn_from_coords:                # @buffer_posn_from_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$5064, %rsp             # imm = 0x13C8
.Ltmp117:
	.cfi_offset %rbx, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r11, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	callq	Fcurrent_buffer
	movq	%rax, -4888(%rbp)
	movq	$0, -4928(%rbp)
	movq	$0, -4952(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	%rax, -4968(%rbp)       # 8-byte Spill
	callq	bidi_shelve_cache
	movq	%rax, -4952(%rbp)
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -4976(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_position
	movq	current_buffer, %rcx
	movq	768(%rcx), %rdx
	movq	-4976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -4904(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -4984(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	current_buffer, %rcx
	movq	776(%rcx), %rdx
	movq	-4984(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	leaq	-4880(%rbp), %rdi
	movq	%rax, -4896(%rbp)
	movq	-16(%rbp), %rsi
	movq	-4904(%rbp), %rdx
	movq	-4896(%rbp), %rcx
	callq	start_display
	leaq	-4880(%rbp), %rdi
	movq	$-1, %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$3, %r9d
	movq	-24(%rbp), %rax
	movl	(%rax), %ebx
	movl	%ebx, -4932(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	callq	move_it_to
	movl	-4932(%rbp), %ecx
	movl	%ecx, -4940(%rbp)
	cmpl	$2, -112(%rbp)
	movl	%eax, -4988(%rbp)       # 4-byte Spill
	jne	.LBB38_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	window_box_width
	subl	-4940(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4940(%rbp)
.LBB38_2:                               # %if.end
	leaq	-4880(%rbp), %rdi
	movl	$1, %ecx
	movl	-2564(%rbp), %eax
	addl	-4940(%rbp), %eax
	movl	%eax, -4940(%rbp)
	movq	current_buffer, %rdx
	movq	768(%rdx), %rsi
	movl	-4940(%rbp), %edx
	callq	move_it_in_display_line
	xorl	%esi, %esi
	movq	-4952(%rbp), %rdi
	callq	bidi_unshelve_cache
	movq	-4888(%rbp), %rdi
	callq	Fset_buffer
	movl	-4940(%rbp), %ecx
	subl	-2476(%rbp), %ecx
	movq	-56(%rbp), %rdi
	movl	%ecx, (%rdi)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	subl	-2448(%rbp), %ecx
	movq	-64(%rbp), %rdi
	movl	%ecx, (%rdi)
	movq	-16(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rdi, -4912(%rbp)
	movq	-4248(%rbp), %rdi
	movq	%rax, -5000(%rbp)       # 8-byte Spill
	callq	STRINGP
	testb	$1, %al
	jne	.LBB38_3
	jmp	.LBB38_4
.LBB38_3:                               # %if.then.18
	movq	-4248(%rbp), %rax
	movq	%rax, -4912(%rbp)
.LBB38_4:                               # %if.end.20
	movl	$48, %eax
	movl	%eax, %edx
	leaq	-4880(%rbp), %rcx
	movq	-40(%rbp), %rsi
	addq	$312, %rcx              # imm = 0x138
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	cmpl	$1, -2776(%rbp)
	jne	.LBB38_11
# BB#5:                                 # %land.lhs.true
	cmpl	$1, -2696(%rbp)
	jle	.LBB38_11
# BB#6:                                 # %land.lhs.true.23
	testb	$1, -2708(%rbp)
	je	.LBB38_11
# BB#7:                                 # %if.then.25
	movl	-2696(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	-4248(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB38_8
	jmp	.LBB38_9
.LBB38_8:                               # %if.then.34
	movq	-4912(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	string_char_to_byte
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
	jmp	.LBB38_10
.LBB38_9:                               # %if.else
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	buf_charpos_to_bytepos
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
.LBB38_10:                              # %if.end.47
	jmp	.LBB38_11
.LBB38_11:                              # %if.end.48
	cmpl	$3, -2776(%rbp)
	jne	.LBB38_20
# BB#12:                                # %if.then.52
	cmpq	$0, -2664(%rbp)
	jl	.LBB38_15
# BB#13:                                # %land.lhs.true.55
	movq	-2664(%rbp), %rax
	movq	-4864(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB38_15
# BB#14:                                # %cond.true
	movq	-2664(%rbp), %rax
	movq	-4864(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -5008(%rbp)       # 8-byte Spill
	jmp	.LBB38_16
.LBB38_15:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5008(%rbp)       # 8-byte Spill
	jmp	.LBB38_16
.LBB38_16:                              # %cond.end
	movq	-5008(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4928(%rbp)
	cmpq	$0, %rax
	je	.LBB38_19
# BB#17:                                # %land.lhs.true.65
	xorl	%edi, %edi
	movq	-4928(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -5016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-5016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_19
# BB#18:                                # %if.then.69
	movq	-4928(%rbp), %rax
	movq	120(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB38_19:                              # %if.end.71
	jmp	.LBB38_20
.LBB38_20:                              # %if.end.72
	movl	-2440(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	%eax, -5020(%rbp)       # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB38_21
	jmp	.LBB38_36
.LBB38_21:                              # %cond.true.76
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	andw	$1, %si
	testw	$1, %si
	movb	%cl, -5021(%rbp)        # 1-byte Spill
	jne	.LBB38_35
# BB#22:                                # %land.lhs.true.77
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movb	%cl, -5021(%rbp)        # 1-byte Spill
	jne	.LBB38_35
# BB#23:                                # %land.lhs.true.81
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	208(%rdx), %rdx
	shrq	$14, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -5021(%rbp)        # 1-byte Spill
	je	.LBB38_35
# BB#24:                                # %land.lhs.true.88
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -5032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-5032(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -5021(%rbp)        # 1-byte Spill
	je	.LBB38_35
# BB#25:                                # %land.rhs
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -5036(%rbp)       # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB38_26
	jmp	.LBB38_31
.LBB38_26:                              # %cond.true.97
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB38_33
# BB#27:                                # %land.lhs.true.102
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB38_33
# BB#28:                                # %land.lhs.true.108
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB38_33
# BB#29:                                # %land.lhs.true.117
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -5048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-5048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_33
# BB#30:                                # %land.lhs.true.123
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB38_32
	jmp	.LBB38_33
.LBB38_31:                              # %cond.false.129
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB38_32
	jmp	.LBB38_33
.LBB38_32:                              # %cond.true.130
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -5052(%rbp)       # 4-byte Spill
	jmp	.LBB38_34
.LBB38_33:                              # %cond.false.134
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -5052(%rbp)       # 4-byte Spill
.LBB38_34:                              # %cond.end.138
	movl	-5052(%rbp), %eax       # 4-byte Reload
	movl	-5036(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	setg	%dl
	movb	%dl, -5021(%rbp)        # 1-byte Spill
.LBB38_35:                              # %land.end
	movb	-5021(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -5056(%rbp)       # 4-byte Spill
	jmp	.LBB38_37
.LBB38_36:                              # %cond.false.142
	xorl	%eax, %eax
	movl	%eax, -5056(%rbp)       # 4-byte Spill
	jmp	.LBB38_37
.LBB38_37:                              # %cond.end.143
	movl	-5056(%rbp), %eax       # 4-byte Reload
	movl	-5020(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -4944(%rbp)
	movl	-4944(%rbp), %eax
	movq	-16(%rbp), %rdx
	movq	192(%rdx), %rdx
	cmpl	24(%rdx), %eax
	jge	.LBB38_46
# BB#38:                                # %land.lhs.true.148
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-4944(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -4920(%rbp)
	movq	-4920(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB38_46
# BB#39:                                # %if.then.155
	movl	-2436(%rbp), %eax
	movq	-4920(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB38_44
# BB#40:                                # %if.then.161
	movq	-4920(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-2436(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -4960(%rbp)
	cmpq	$0, -4928(%rbp)
	je	.LBB38_42
# BB#41:                                # %if.then.167
	movq	-4920(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-4960(%rbp), %rax
	movswl	18(%rax), %edx
	subl	%edx, %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-4960(%rbp), %rax
	movq	32(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-4960(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-4928(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-4928(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB38_43
.LBB38_42:                              # %if.else.186
	movq	-4960(%rbp), %rax
	movswl	16(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-4960(%rbp), %rax
	movswl	18(%rax), %ecx
	movq	-4960(%rbp), %rax
	movswl	20(%rax), %edx
	addl	%edx, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
.LBB38_43:                              # %if.end.192
	jmp	.LBB38_45
.LBB38_44:                              # %if.else.193
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-4920(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
.LBB38_45:                              # %if.end.195
	jmp	.LBB38_47
.LBB38_46:                              # %if.else.196
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
.LBB38_47:                              # %if.end.197
	xorl	%eax, %eax
	movl	-2476(%rbp), %ecx
	addl	-2512(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB38_49
# BB#48:                                # %cond.true.203
	xorl	%eax, %eax
	movl	%eax, -5060(%rbp)       # 4-byte Spill
	jmp	.LBB38_50
.LBB38_49:                              # %cond.false.204
	movl	-2476(%rbp), %eax
	addl	-2512(%rbp), %eax
	movl	%eax, -5060(%rbp)       # 4-byte Spill
.LBB38_50:                              # %cond.end.208
	movl	-5060(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4936(%rbp)
	movl	-4940(%rbp), %eax
	cmpl	-4936(%rbp), %eax
	jle	.LBB38_52
# BB#51:                                # %if.then.212
	movl	-4940(%rbp), %eax
	subl	-4936(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cltd
	idivl	364(%rcx)
	addl	-2436(%rbp), %eax
	movl	%eax, -2436(%rbp)
.LBB38_52:                              # %if.end.218
	movl	-2436(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-2440(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-4912(%rbp), %rax
	addq	$5064, %rsp             # imm = 0x13C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	buffer_posn_from_coords, .Lfunc_end38-buffer_posn_from_coords
	.cfi_endproc

	.globl	mode_line_string
	.align	16, 0x90
	.type	mode_line_string,@function
mode_line_string:                       # @mode_line_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp121:
	.cfi_offset %rbx, -32
.Ltmp122:
	.cfi_offset %r14, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	xorl	%r14d, %r14d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movl	%r14d, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)
	cmpl	$2, -28(%rbp)
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	addq	$-256, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB39_3
.LBB39_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB39_3:                               # %if.end
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	subl	48(%rax), %ecx
	movl	%ecx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	192(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	236(%rdx), %rdx
	shrq	$20, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	je	.LBB39_5
# BB#4:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB39_6
.LBB39_5:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB39_6:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	sarq	$8, %rcx
	movl	%ecx, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB39_26
# BB#7:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB39_26
# BB#8:                                 # %if.then.24
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rcx
	movswl	34(%rcx), %edx
	movslq	%edx, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, -124(%rbp)
.LBB39_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	cmpq	-120(%rbp), %rdx
	movb	%cl, -161(%rbp)         # 1-byte Spill
	jae	.LBB39_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB39_9 Depth=1
	movl	-124(%rbp), %eax
	movq	-112(%rbp), %rcx
	movswl	16(%rcx), %edx
	cmpl	%edx, %eax
	setge	%sil
	movb	%sil, -161(%rbp)        # 1-byte Spill
.LBB39_11:                              # %land.end
                                        #   in Loop: Header=BB39_9 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_12
	jmp	.LBB39_14
.LBB39_12:                              # %for.body
                                        #   in Loop: Header=BB39_9 Depth=1
	movq	-112(%rbp), %rax
	movswl	16(%rax), %ecx
	movl	-124(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -124(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB39_9 Depth=1
	movq	-112(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB39_9
.LBB39_14:                              # %for.end
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	movl	%edi, (%rax)
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jae	.LBB39_24
# BB#15:                                # %if.then.46
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movswl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-112(%rbp), %rax
	movswl	18(%rax), %edx
	movq	-112(%rbp), %rax
	movswl	20(%rax), %esi
	addl	%esi, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-112(%rbp), %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	.LBB39_23
# BB#16:                                # %if.then.57
	movq	-112(%rbp), %rax
	cmpl	$0, 40(%rax)
	jl	.LBB39_19
# BB#17:                                # %land.lhs.true.60
	movq	-112(%rbp), %rax
	movslq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB39_19
# BB#18:                                # %cond.true.68
	movq	-112(%rbp), %rax
	movslq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB39_20
.LBB39_19:                              # %cond.false.76
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB39_20
.LBB39_20:                              # %cond.end.77
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB39_22
# BB#21:                                # %if.then.81
	movq	-144(%rbp), %rax
	movq	120(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB39_22:                              # %if.end.82
	movq	-104(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-112(%rbp), %rax
	movswl	18(%rax), %edx
	subl	%edx, %ecx
	movl	-128(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -128(%rbp)
.LBB39_23:                              # %if.end.88
	jmp	.LBB39_25
.LBB39_24:                              # %if.else.89
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cltd
	idivl	364(%rcx)
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-104(%rbp), %rcx
	movl	60(%rcx), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB39_25:                              # %if.end.94
	jmp	.LBB39_27
.LBB39_26:                              # %if.else.95
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -124(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
.LBB39_27:                              # %if.end.96
	movl	-124(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-128(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-136(%rbp), %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end39:
	.size	mode_line_string, .Lfunc_end39-mode_line_string
	.cfi_endproc

	.globl	marginal_area_string
	.align	16, 0x90
	.type	marginal_area_string,@function
marginal_area_string:                   # @marginal_area_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$224, %rsp
.Ltmp126:
	.cfi_offset %rbx, -32
.Ltmp127:
	.cfi_offset %r14, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	xorl	%r14d, %r14d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	movl	%esi, -136(%rbp)
	movl	%r14d, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)
	cmpl	$7, -28(%rbp)
	jne	.LBB40_2
# BB#1:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB40_6
.LBB40_2:                               # %if.else
	cmpl	$8, -28(%rbp)
	jne	.LBB40_4
# BB#3:                                 # %if.then.2
	movl	$2, -140(%rbp)
	jmp	.LBB40_5
.LBB40_4:                               # %if.else.3
	callq	emacs_abort
.LBB40_5:                               # %if.end
	jmp	.LBB40_6
.LBB40_6:                               # %if.end.4
	movl	$0, -132(%rbp)
.LBB40_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-104(%rbp), %rdx
	movq	236(%rdx), %rdx
	shrq	$10, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -161(%rbp)         # 1-byte Spill
	je	.LBB40_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB40_7 Depth=1
	movl	-132(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	192(%rcx), %rcx
	cmpl	24(%rcx), %eax
	setl	%dl
	movb	%dl, -161(%rbp)         # 1-byte Spill
.LBB40_9:                               # %land.end
                                        #   in Loop: Header=BB40_7 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB40_10
	jmp	.LBB40_15
.LBB40_10:                              # %for.body
                                        #   in Loop: Header=BB40_7 Depth=1
	movl	-136(%rbp), %eax
	movq	-104(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jl	.LBB40_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB40_7 Depth=1
	movl	-136(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-104(%rbp), %rcx
	addl	60(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB40_13
# BB#12:                                # %if.then.12
	jmp	.LBB40_15
.LBB40_13:                              # %if.end.13
                                        #   in Loop: Header=BB40_7 Depth=1
	jmp	.LBB40_14
.LBB40_14:                              # %for.inc
                                        #   in Loop: Header=BB40_7 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movq	-104(%rbp), %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	%rcx, -104(%rbp)
	jmp	.LBB40_7
.LBB40_15:                              # %for.end
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	subl	48(%rax), %ecx
	movl	%ecx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	192(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	236(%rdx), %rdx
	shrq	$20, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	je	.LBB40_17
# BB#16:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB40_18
.LBB40_17:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB40_18:                              # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	sarq	$8, %rcx
	movl	%ecx, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB40_58
# BB#19:                                # %if.then.30
	cmpl	$2, -140(%rbp)
	jne	.LBB40_33
# BB#20:                                # %if.then.33
	movq	-24(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$12, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB40_25
# BB#21:                                # %cond.true.39
	movq	-24(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB40_23
# BB#22:                                # %cond.true.42
	movq	-24(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB40_24
.LBB40_23:                              # %cond.false.44
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB40_24:                              # %cond.end.47
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB40_32
.LBB40_25:                              # %cond.false.49
	movq	-24(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB40_27
# BB#26:                                # %cond.true.53
	movq	-24(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB40_28
.LBB40_27:                              # %cond.false.55
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB40_28:                              # %cond.end.59
	movl	-196(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	cmpl	$0, 424(%rcx)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jl	.LBB40_30
# BB#29:                                # %cond.true.63
	movq	-24(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB40_31
.LBB40_30:                              # %cond.false.65
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB40_31:                              # %cond.end.69
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	-200(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
.LBB40_32:                              # %cond.end.72
	movl	-192(%rbp), %eax        # 4-byte Reload
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	window_box_width
	movl	$1, %esi
	movl	-208(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	callq	window_box_width
	movl	-212(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	jmp	.LBB40_40
.LBB40_33:                              # %if.else.78
	movq	-24(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$12, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB40_38
# BB#34:                                # %cond.true.85
	movq	-24(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB40_36
# BB#35:                                # %cond.true.89
	movq	-24(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	jmp	.LBB40_37
.LBB40_36:                              # %cond.false.91
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
.LBB40_37:                              # %cond.end.95
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB40_39
.LBB40_38:                              # %cond.false.97
	xorl	%eax, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB40_39
.LBB40_39:                              # %cond.end.98
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
.LBB40_40:                              # %if.end.100
	movslq	-140(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movslq	-140(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movswl	32(%rdx,%rcx,2), %esi
	movslq	%esi, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	subl	-124(%rbp), %esi
	movl	%esi, -124(%rbp)
.LBB40_41:                              # %for.cond.106
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	cmpq	-120(%rbp), %rdx
	movb	%cl, -221(%rbp)         # 1-byte Spill
	jae	.LBB40_43
# BB#42:                                # %land.rhs.109
                                        #   in Loop: Header=BB40_41 Depth=1
	movl	-124(%rbp), %eax
	movq	-112(%rbp), %rcx
	movswl	16(%rcx), %edx
	cmpl	%edx, %eax
	setge	%sil
	movb	%sil, -221(%rbp)        # 1-byte Spill
.LBB40_43:                              # %land.end.113
                                        #   in Loop: Header=BB40_41 Depth=1
	movb	-221(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB40_44
	jmp	.LBB40_46
.LBB40_44:                              # %for.body.114
                                        #   in Loop: Header=BB40_41 Depth=1
	movq	-112(%rbp), %rax
	movswl	16(%rax), %ecx
	movl	-124(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -124(%rbp)
# BB#45:                                # %for.inc.118
                                        #   in Loop: Header=BB40_41 Depth=1
	movq	-112(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB40_41
.LBB40_46:                              # %for.end.120
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	movslq	-140(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, (%rax)
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jae	.LBB40_56
# BB#47:                                # %if.then.131
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movswl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-112(%rbp), %rax
	movswl	18(%rax), %edx
	movq	-112(%rbp), %rax
	movswl	20(%rax), %esi
	addl	%esi, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-112(%rbp), %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	.LBB40_55
# BB#48:                                # %if.then.143
	movq	-112(%rbp), %rax
	cmpl	$0, 40(%rax)
	jl	.LBB40_51
# BB#49:                                # %land.lhs.true.146
	movq	-112(%rbp), %rax
	movslq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB40_51
# BB#50:                                # %cond.true.155
	movq	-112(%rbp), %rax
	movslq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB40_52
.LBB40_51:                              # %cond.false.164
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB40_52
.LBB40_52:                              # %cond.end.165
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.LBB40_54
# BB#53:                                # %if.then.169
	movq	-160(%rbp), %rax
	movq	120(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB40_54:                              # %if.end.170
	movq	-104(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-112(%rbp), %rax
	movswl	18(%rax), %edx
	subl	%edx, %ecx
	movl	-128(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	addl	-124(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	addl	-128(%rbp), %ecx
	movl	%ecx, -128(%rbp)
.LBB40_55:                              # %if.end.188
	jmp	.LBB40_57
.LBB40_56:                              # %if.else.189
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cltd
	idivl	364(%rcx)
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-104(%rbp), %rcx
	movl	60(%rcx), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB40_57:                              # %if.end.194
	jmp	.LBB40_59
.LBB40_58:                              # %if.else.195
	movl	$0, -124(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
.LBB40_59:                              # %if.end.196
	movl	-124(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-128(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end40:
	.size	marginal_area_string, .Lfunc_end40-marginal_area_string
	.cfi_endproc

	.globl	do_pending_window_change
	.align	16, 0x90
	.type	do_pending_window_change,@function
do_pending_window_change:               # @do_pending_window_change
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	testb	$1, redisplaying_p
	je	.LBB41_3
# BB#1:                                 # %land.lhs.true
	testb	$1, -1(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	jmp	.LBB41_15
.LBB41_3:                               # %if.end
	jmp	.LBB41_4
.LBB41_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_6 Depth 2
	testb	$1, delayed_size_change
	je	.LBB41_15
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB41_4 Depth=1
	movb	$0, delayed_size_change
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB41_6:                               # %for.cond
                                        #   Parent Loop BB41_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB41_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB41_6 Depth=2
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB41_8:                               # %land.end
                                        #   in Loop: Header=BB41_6 Depth=2
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB41_9
	jmp	.LBB41_14
.LBB41_9:                               # %for.body
                                        #   in Loop: Header=BB41_6 Depth=2
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 300(%rax)
	jne	.LBB41_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB41_6 Depth=2
	movq	-32(%rbp), %rax
	cmpl	$0, 296(%rax)
	je	.LBB41_12
.LBB41_11:                              # %if.then.9
                                        #   in Loop: Header=BB41_6 Depth=2
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	296(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	300(%rcx), %edx
	movb	-1(%rbp), %r8b
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$33, %rcx
	andq	$1, %rcx
	andb	$1, %r8b
	andq	$1, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movb	%r8b, -49(%rbp)         # 1-byte Spill
	movl	%eax, %r8d
	movb	-49(%rbp), %r9b         # 1-byte Reload
	movzbl	%r9b, %r9d
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	change_frame_size
.LBB41_12:                              # %if.end.13
                                        #   in Loop: Header=BB41_6 Depth=2
	jmp	.LBB41_13
.LBB41_13:                              # %for.inc
                                        #   in Loop: Header=BB41_6 Depth=2
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB41_6
.LBB41_14:                              # %for.end
                                        #   in Loop: Header=BB41_4 Depth=1
	jmp	.LBB41_4
.LBB41_15:                              # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	do_pending_window_change, .Lfunc_end41-do_pending_window_change
	.cfi_endproc

	.globl	change_frame_size
	.align	16, 0x90
	.type	change_frame_size,@function
change_frame_size:                      # @change_frame_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp134:
	.cfi_offset %rbx, -32
.Ltmp135:
	.cfi_offset %r14, -24
	movb	%r9b, %al
	movb	%r8b, %r10b
	movb	%cl, %r11b
	movb	16(%rbp), %bl
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	andb	$1, %r11b
	movb	%r11b, -33(%rbp)
	andb	$1, %r10b
	movb	%r10b, -34(%rbp)
	andb	$1, %al
	movb	%al, -35(%rbp)
	andb	$1, %bl
	movb	%bl, -36(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movb	-33(%rbp), %al
	movb	-34(%rbp), %r10b
	movb	-35(%rbp), %r11b
	movb	-36(%rbp), %bl
	andb	$1, %al
	andb	$1, %r10b
	andb	$1, %r11b
	andb	$1, %bl
	movzbl	%al, %ecx
	movzbl	%r10b, %r8d
	movzbl	%r11b, %r9d
	movzbl	%bl, %r14d
	movl	%r14d, (%rsp)
	callq	change_frame_size_1
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end42:
	.size	change_frame_size, .Lfunc_end42-change_frame_size
	.cfi_endproc

	.align	16, 0x90
	.type	change_frame_size_1,@function
change_frame_size_1:                    # @change_frame_size_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp139:
	.cfi_offset %rbx, -24
	movb	%r9b, %al
	movb	%r8b, %r10b
	movb	%cl, %r11b
	movb	16(%rbp), %bl
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	andb	$1, %r11b
	movb	%r11b, -25(%rbp)
	andb	$1, %r10b
	movb	%r10b, -26(%rbp)
	andb	$1, %al
	movb	%al, -27(%rbp)
	andb	$1, %bl
	movb	%bl, -28(%rbp)
	testb	$1, -26(%rbp)
	jne	.LBB43_3
# BB#1:                                 # %lor.lhs.false
	testb	$1, redisplaying_p
	je	.LBB43_4
# BB#2:                                 # %land.lhs.true
	testb	$1, -27(%rbp)
	jne	.LBB43_4
.LBB43_3:                               # %if.then
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 296(%rcx)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 300(%rcx)
	movb	-28(%rbp), %dl
	movq	-16(%rbp), %rcx
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, %esi
	movq	208(%rcx), %rdi
	shlq	$33, %rsi
	movabsq	$-8589934593, %r8       # imm = 0xFFFFFFFDFFFFFFFF
	andq	%r8, %rdi
	orq	%rsi, %rdi
	movq	%rdi, 208(%rcx)
	movb	$1, delayed_size_change
	jmp	.LBB43_20
.LBB43_4:                               # %if.else
	movq	-16(%rbp), %rax
	movl	$0, 300(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 296(%rax)
	movq	-16(%rbp), %rax
	movabsq	$-8589934593, %rcx      # imm = 0xFFFFFFFDFFFFFFFF
	andq	208(%rax), %rcx
	movq	%rcx, 208(%rax)
	testb	$1, -28(%rbp)
	je	.LBB43_12
# BB#5:                                 # %if.then.16
	cmpl	$0, -20(%rbp)
	jg	.LBB43_7
# BB#6:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB43_8
.LBB43_7:                               # %cond.false
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB43_8:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.LBB43_10
# BB#9:                                 # %cond.true.18
	movq	-16(%rbp), %rax
	movl	292(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB43_11
.LBB43_10:                              # %cond.false.19
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB43_11:                              # %cond.end.20
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	jmp	.LBB43_19
.LBB43_12:                              # %if.else.22
	cmpl	$0, -20(%rbp)
	jg	.LBB43_14
# BB#13:                                # %cond.true.24
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB43_15
.LBB43_14:                              # %cond.false.25
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB43_15:                              # %cond.end.26
	movl	-40(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	imull	364(%rcx), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.LBB43_17
# BB#16:                                # %cond.true.29
	movq	-16(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB43_18
.LBB43_17:                              # %cond.false.30
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB43_18:                              # %cond.end.31
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	imull	368(%rcx), %eax
	movl	%eax, -24(%rbp)
.LBB43_19:                              # %if.end
	movl	$252, %edi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movb	-25(%rbp), %cl
	movb	%cl, -45(%rbp)          # 1-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %ecx
	movb	-45(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movzbl	%r8b, %r8d
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB43_20:                              # %if.end.35
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end43:
	.size	change_frame_size_1, .Lfunc_end43-change_frame_size_1
	.cfi_endproc

	.globl	Fopen_termscript
	.align	16, 0x90
	.type	Fopen_termscript,@function
Fopen_termscript:                       # @Fopen_termscript
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB44_1
	jmp	.LBB44_3
.LBB44_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB44_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB44_4
.LBB44_3:                               # %cond.false
	callq	emacs_abort
.LBB44_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB44_6
# BB#5:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB44_6:                               # %if.end
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB44_7
	jmp	.LBB44_9
.LBB44_7:                               # %land.lhs.true.4
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB44_9
# BB#8:                                 # %cond.true.8
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB44_10
.LBB44_9:                               # %cond.false.10
	callq	emacs_abort
.LBB44_10:                              # %cond.end.11
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB44_16
# BB#11:                                # %lor.lhs.false
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB44_12
	jmp	.LBB44_14
.LBB44_12:                              # %land.lhs.true.20
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB44_14
# BB#13:                                # %cond.true.24
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB44_15
.LBB44_14:                              # %cond.false.26
	callq	emacs_abort
.LBB44_15:                              # %cond.end.27
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB44_21
.LBB44_16:                              # %cond.true.35
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB44_17
	jmp	.LBB44_19
.LBB44_17:                              # %land.lhs.true.37
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB44_19
# BB#18:                                # %cond.true.41
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB44_20
.LBB44_19:                              # %cond.false.43
	callq	emacs_abort
.LBB44_20:                              # %cond.end.44
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	376(%rax), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB44_22
.LBB44_21:                              # %cond.false.48
	callq	emacs_abort
.LBB44_22:                              # %cond.end.49
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB44_24
# BB#23:                                # %if.then.52
	callq	block_input
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	fclose
	movq	-16(%rbp), %rdi
	movq	$0, 40(%rdi)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	unblock_input
.LBB44_24:                              # %if.end.56
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_28
# BB#25:                                # %if.then.59
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	emacs_fopen
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB44_27
# BB#26:                                # %if.then.67
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB44_27:                              # %if.end.68
	jmp	.LBB44_28
.LBB44_28:                              # %if.end.69
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fopen_termscript, .Lfunc_end44-Fopen_termscript
	.cfi_endproc

	.globl	Fsend_string_to_terminal
	.align	16, 0x90
	.type	Fsend_string_to_terminal,@function
Fsend_string_to_terminal:               # @Fsend_string_to_terminal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	callq	block_input
	movq	-24(%rbp), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	movq	stdout, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB45_11
.LBB45_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpl	$1, 56(%rax)
	je	.LBB45_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$3, 56(%rax)
	je	.LBB45_5
# BB#4:                                 # %if.then.5
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %esi
	movb	$0, %al
	callq	error
.LBB45_5:                               # %if.else.6
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB45_7
# BB#6:                                 # %if.then.8
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB45_7:                               # %if.end
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB45_9
# BB#8:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	40(%rdi), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	fflush
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB45_9:                               # %if.end.17
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#10:                                # %if.end.19
	jmp	.LBB45_11
.LBB45_11:                              # %if.end.20
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	fflush
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	unblock_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fsend_string_to_terminal, .Lfunc_end45-Fsend_string_to_terminal
	.cfi_endproc

	.globl	Fding
	.align	16, 0x90
	.type	Fding,@function
Fding:                                  # @Fding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_5
# BB#1:                                 # %if.then
	testb	$1, noninteractive
	je	.LBB46_3
# BB#2:                                 # %if.then.1
	movl	$7, %edi
	callq	putchar
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB46_4
.LBB46_3:                               # %if.else
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	ring_bell
.LBB46_4:                               # %if.end
	jmp	.LBB46_6
.LBB46_5:                               # %if.else.3
	callq	bitch_at_user
.LBB46_6:                               # %if.end.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fding, .Lfunc_end46-Fding
	.cfi_endproc

	.globl	bitch_at_user
	.align	16, 0x90
	.type	bitch_at_user,@function
bitch_at_user:                          # @bitch_at_user
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	testb	$1, noninteractive
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	$7, %edi
	callq	putchar
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB47_7
.LBB47_2:                               # %if.else
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_4
# BB#3:                                 # %land.lhs.true
	testb	$1, noninteractive
	je	.LBB47_5
.LBB47_4:                               # %if.then.3
	movl	$981, %edi              # imm = 0x3D5
	movabsq	$.L.str.5, %rax
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	build_string
	movq	%rax, %rdi
	callq	list1
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB47_6
.LBB47_5:                               # %if.else.8
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	ring_bell
.LBB47_6:                               # %if.end
	jmp	.LBB47_7
.LBB47_7:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	bitch_at_user, .Lfunc_end47-bitch_at_user
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	Fsleep_for
	.align	16, 0x90
	.type	Fsleep_for,@function
Fsleep_for:                             # @Fsleep_for
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	xorl	%edi, %edi
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB48_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB48_3
# BB#2:                                 # %cond.true
	jmp	.LBB48_4
.LBB48_3:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB48_4:                               # %cond.end
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
.LBB48_5:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB48_13
# BB#6:                                 # %if.then.9
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	dtotimespec
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	callq	current_timespec
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
.LBB48_7:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -40(%rbp)
	jge	.LBB48_9
# BB#8:                                 # %cond.true.15
                                        #   in Loop: Header=BB48_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB48_10
.LBB48_9:                               # %cond.false.17
                                        #   in Loop: Header=BB48_7 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB48_10
.LBB48_10:                              # %cond.end.18
                                        #   in Loop: Header=BB48_7 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%edx, -140(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	%edx, -144(%rbp)        # 4-byte Spill
	movl	-144(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	current_timespec
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#11:                                # %do.cond
                                        #   in Loop: Header=BB48_7 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	timespec_sign
	cmpl	$0, %eax
	jg	.LBB48_7
# BB#12:                                # %do.end
	jmp	.LBB48_13
.LBB48_13:                              # %if.end.28
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fsleep_for, .Lfunc_end48-Fsleep_for
	.cfi_endproc

	.globl	sit_for
	.align	16, 0x90
	.type	sit_for,@function
sit_for:                                # @sit_for
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	setg	%al
	andb	$1, %al
	movb	%al, -37(%rbp)
	movb	-37(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	swallow_events
	movb	-37(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB49_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_3
.LBB49_2:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB49_26
.LBB49_3:                               # %if.end
	cmpl	$1, -24(%rbp)
	jle	.LBB49_5
# BB#4:                                 # %if.then.7
	movl	$2, %edi
	callq	redisplay_preserve_echo_area
.LBB49_5:                               # %if.end.8
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB49_9
# BB#6:                                 # %if.then.12
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jg	.LBB49_8
# BB#7:                                 # %if.then.15
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB49_26
.LBB49_8:                               # %if.end.17
	movl	$0, -36(%rbp)
	jmp	.LBB49_22
.LBB49_9:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB49_17
# BB#10:                                # %if.then.22
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB49_12
# BB#11:                                # %if.then.26
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB49_26
.LBB49_12:                              # %if.else.28
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	dtotimespec
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	%rcx, -64(%rbp)
	jge	.LBB49_14
# BB#13:                                # %cond.true
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB49_15
.LBB49_14:                              # %cond.false
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB49_15
.LBB49_15:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
# BB#16:                                # %if.end.34
	jmp	.LBB49_21
.LBB49_17:                              # %if.else.35
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_19
# BB#18:                                # %if.then.39
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB49_20
.LBB49_19:                              # %if.else.40
	movl	$711, %edi              # imm = 0x2C7
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB49_20:                              # %if.end.42
	jmp	.LBB49_21
.LBB49_21:                              # %if.end.43
	jmp	.LBB49_22
.LBB49_22:                              # %if.end.44
	callq	gobble_input
	xorl	%edi, %edi
	movl	$1, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movb	-17(%rbp), %r9b
	testb	$1, %r9b
	cmovnel	%edx, %ecx
	movb	-37(%rbp), %r9b
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	%r9b, -101(%rbp)        # 1-byte Spill
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
	movb	-101(%rbp), %r10b       # 1-byte Reload
	andb	$1, %r10b
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movl	-112(%rbp), %edx        # 4-byte Reload
	movzbl	%r10b, %r8d
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	detect_input_pending
	testb	$1, %al
	jne	.LBB49_23
	jmp	.LBB49_24
.LBB49_23:                              # %cond.true.54
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB49_25
.LBB49_24:                              # %cond.false.56
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB49_25:                              # %cond.end.58
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB49_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	sit_for, .Lfunc_end49-sit_for
	.cfi_endproc

	.globl	Fredisplay
	.align	16, 0x90
	.type	Fredisplay,@function
Fredisplay:                             # @Fredisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	swallow_events
	movl	$1, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB50_1
	jmp	.LBB50_3
.LBB50_1:                               # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_3
# BB#2:                                 # %land.lhs.true.2
	testb	$1, globals+3427
	je	.LBB50_4
.LBB50_3:                               # %lor.lhs.false
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_5
.LBB50_4:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB50_9
.LBB50_5:                               # %if.end
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_8
# BB#6:                                 # %land.lhs.true.9
	testb	$1, globals+3427
	jne	.LBB50_8
# BB#7:                                 # %if.then.11
	movl	$798, %edi              # imm = 0x31E
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB50_8:                               # %if.end.14
	movl	$2, %edi
	callq	redisplay_preserve_echo_area
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB50_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Fredisplay, .Lfunc_end50-Fredisplay
	.cfi_endproc

	.globl	Fframe_or_buffer_changed_p
	.align	16, 0x90
	.type	Fframe_or_buffer_changed_p,@function
Fframe_or_buffer_changed_p:             # @Fframe_or_buffer_changed_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB51_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB51_3
# BB#2:                                 # %cond.true
	jmp	.LBB51_4
.LBB51_3:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB51_4:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	Fsymbol_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB51_6
# BB#5:                                 # %if.then.6
	jmp	.LBB51_47
.LBB51_6:                               # %if.end
	jmp	.LBB51_8
.LBB51_7:                               # %if.else
	movq	frame_and_buffer_state, %rax
	movq	%rax, -24(%rbp)
.LBB51_8:                               # %if.end.7
	movq	$0, -64(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB51_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB51_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB51_9 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB51_11:                              # %land.end
                                        #   in Loop: Header=BB51_9 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB51_12
	jmp	.LBB51_22
.LBB51_12:                              # %for.body
                                        #   in Loop: Header=BB51_9 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB51_14
# BB#13:                                # %if.then.15
	jmp	.LBB51_47
.LBB51_14:                              # %if.end.16
                                        #   in Loop: Header=BB51_9 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rsi
	callq	AREF
	cmpq	-40(%rbp), %rax
	je	.LBB51_16
# BB#15:                                # %if.then.20
	jmp	.LBB51_47
.LBB51_16:                              # %if.end.21
                                        #   in Loop: Header=BB51_9 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB51_18
# BB#17:                                # %if.then.25
	jmp	.LBB51_47
.LBB51_18:                              # %if.end.26
                                        #   in Loop: Header=BB51_9 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rsi
	callq	AREF
	movq	-40(%rbp), %rcx
	subq	$5, %rcx
	cmpq	8(%rcx), %rax
	je	.LBB51_20
# BB#19:                                # %if.then.32
	jmp	.LBB51_47
.LBB51_20:                              # %if.end.33
                                        #   in Loop: Header=BB51_9 Depth=1
	jmp	.LBB51_21
.LBB51_21:                              # %for.inc
                                        #   in Loop: Header=BB51_9 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB51_9
.LBB51_22:                              # %for.end
	movq	Vbuffer_alist, %rax
	movq	%rax, -32(%rbp)
.LBB51_23:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jne	.LBB51_25
# BB#24:                                # %land.rhs.40
                                        #   in Loop: Header=BB51_23 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB51_25:                              # %land.end.46
                                        #   in Loop: Header=BB51_23 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB51_26
	jmp	.LBB51_42
.LBB51_26:                              # %for.body.47
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-48(%rbp), %rdi
	callq	XBUFFER
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	8(%rax), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$32, %ecx
	jne	.LBB51_28
# BB#27:                                # %if.then.53
                                        #   in Loop: Header=BB51_23 Depth=1
	jmp	.LBB51_41
.LBB51_28:                              # %if.end.54
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB51_30
# BB#29:                                # %if.then.58
	jmp	.LBB51_47
.LBB51_30:                              # %if.end.59
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rsi
	callq	AREF
	cmpq	-48(%rbp), %rax
	je	.LBB51_32
# BB#31:                                # %if.then.64
	jmp	.LBB51_47
.LBB51_32:                              # %if.end.65
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-128(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB51_34
# BB#33:                                # %if.then.69
	jmp	.LBB51_47
.LBB51_34:                              # %if.end.70
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rsi
	callq	AREF
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	56(%rax), %rcx
	je	.LBB51_36
# BB#35:                                # %if.then.76
	jmp	.LBB51_47
.LBB51_36:                              # %if.end.77
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB51_38
# BB#37:                                # %if.then.81
	jmp	.LBB51_47
.LBB51_38:                              # %if.end.82
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rsi
	callq	AREF
	movq	-48(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	Fbuffer_modified_p
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB51_40
# BB#39:                                # %if.then.88
	jmp	.LBB51_47
.LBB51_40:                              # %if.end.89
                                        #   in Loop: Header=BB51_23 Depth=1
	jmp	.LBB51_41
.LBB51_41:                              # %for.inc.90
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB51_23
.LBB51_42:                              # %for.end.94
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB51_44
# BB#43:                                # %if.then.98
	jmp	.LBB51_47
.LBB51_44:                              # %if.end.99
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	AREF
	movl	$598, %edi              # imm = 0x256
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB51_46
# BB#45:                                # %if.then.104
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_84
.LBB51_46:                              # %if.end.106
	jmp	.LBB51_47
.LBB51_47:                              # %changed
	movq	$1, -56(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB51_48:                              # %for.cond.107
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jne	.LBB51_50
# BB#49:                                # %land.rhs.112
                                        #   in Loop: Header=BB51_48 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB51_50:                              # %land.end.115
                                        #   in Loop: Header=BB51_48 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB51_51
	jmp	.LBB51_53
.LBB51_51:                              # %for.body.116
                                        #   in Loop: Header=BB51_48 Depth=1
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
# BB#52:                                # %for.inc.117
                                        #   in Loop: Header=BB51_48 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB51_48
.LBB51_53:                              # %for.end.121
	movq	Vbuffer_alist, %rax
	movq	%rax, -32(%rbp)
.LBB51_54:                              # %for.cond.122
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -170(%rbp)         # 1-byte Spill
	jne	.LBB51_56
# BB#55:                                # %land.rhs.127
                                        #   in Loop: Header=BB51_54 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -170(%rbp)         # 1-byte Spill
.LBB51_56:                              # %land.end.133
                                        #   in Loop: Header=BB51_54 Depth=1
	movb	-170(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB51_57
	jmp	.LBB51_59
.LBB51_57:                              # %for.body.134
                                        #   in Loop: Header=BB51_54 Depth=1
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
# BB#58:                                # %for.inc.136
                                        #   in Loop: Header=BB51_54 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB51_54
.LBB51_59:                              # %for.end.140
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB51_60
	jmp	.LBB51_62
.LBB51_60:                              # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB51_62
# BB#61:                                # %lor.lhs.false.145
	movq	-56(%rbp), %rax
	addq	$20, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	ASIZE
	movl	$2, %ecx
	movl	%ecx, %edi
	cqto
	idivq	%rdi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB51_66
.LBB51_62:                              # %if.then.150
	movl	$598, %edi              # imm = 0x256
	movq	-56(%rbp), %rax
	addq	$20, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB51_64
# BB#63:                                # %if.then.158
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fset
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB51_65
.LBB51_64:                              # %if.else.160
	movq	-24(%rbp), %rax
	movq	%rax, frame_and_buffer_state
.LBB51_65:                              # %if.end.161
	jmp	.LBB51_66
.LBB51_66:                              # %if.end.162
	movq	$0, -64(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB51_67:                              # %for.cond.163
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -217(%rbp)         # 1-byte Spill
	jne	.LBB51_69
# BB#68:                                # %land.rhs.168
                                        #   in Loop: Header=BB51_67 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -217(%rbp)         # 1-byte Spill
.LBB51_69:                              # %land.end.171
                                        #   in Loop: Header=BB51_67 Depth=1
	movb	-217(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB51_70
	jmp	.LBB51_72
.LBB51_70:                              # %for.body.172
                                        #   in Loop: Header=BB51_67 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	ASET
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdx
	subq	$5, %rdx
	movq	8(%rdx), %rdx
	callq	ASET
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
# BB#71:                                # %for.inc.177
                                        #   in Loop: Header=BB51_67 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB51_67
.LBB51_72:                              # %for.end.181
	movq	Vbuffer_alist, %rax
	movq	%rax, -32(%rbp)
.LBB51_73:                              # %for.cond.182
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -218(%rbp)         # 1-byte Spill
	jne	.LBB51_75
# BB#74:                                # %land.rhs.187
                                        #   in Loop: Header=BB51_73 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -218(%rbp)         # 1-byte Spill
.LBB51_75:                              # %land.end.193
                                        #   in Loop: Header=BB51_73 Depth=1
	movb	-218(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB51_76
	jmp	.LBB51_80
.LBB51_76:                              # %for.body.194
                                        #   in Loop: Header=BB51_73 Depth=1
	movq	-48(%rbp), %rdi
	callq	XBUFFER
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	8(%rax), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$32, %ecx
	jne	.LBB51_78
# BB#77:                                # %if.then.201
                                        #   in Loop: Header=BB51_73 Depth=1
	jmp	.LBB51_79
.LBB51_78:                              # %if.end.202
                                        #   in Loop: Header=BB51_73 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	ASET
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movq	56(%rax), %rdx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	callq	ASET
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	Fbuffer_modified_p
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB51_79:                              # %for.inc.209
                                        #   in Loop: Header=BB51_73 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB51_73
.LBB51_80:                              # %for.end.213
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB51_81:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-280(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB51_83
# BB#82:                                # %while.body
                                        #   in Loop: Header=BB51_81 Depth=1
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB51_81
.LBB51_83:                              # %while.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB51_84:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fframe_or_buffer_changed_p, .Lfunc_end51-Fframe_or_buffer_changed_p
	.cfi_endproc

	.globl	init_display
	.align	16, 0x90
	.type	init_display,@function
init_display:                           # @init_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$1168, %rsp             # imm = 0x490
	movl	space_glyph+24, %eax
	andl	$-8, %eax
	movl	%eax, space_glyph+24
# BB#1:                                 # %do.body
	movl	$32, space_glyph+40
	movl	space_glyph+28, %eax
	andl	$-1048576, %eax         # imm = 0xFFFFFFFFFFF00000
	movl	%eax, space_glyph+28
	movl	space_glyph+24, %eax
	andl	$-129, %eax
	movl	%eax, space_glyph+24
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	movq	$-1, space_glyph
	movb	$0, globals+3402
	movb	$0, globals+3371
	callq	builtin_lisp_symbol
	movq	%rax, globals+1136
	testb	$1, initialized
	je	.LBB52_4
# BB#3:                                 # %if.then
	leaq	-160(%rbp), %rdi
	movabsq	$deliver_window_change_signal, %rsi
	callq	emacs_sigaction_init
	movl	$28, %edi
	leaq	-160(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB52_4:                               # %if.end
	cmpl	$0, daemon_pipe+4
	je	.LBB52_6
# BB#5:                                 # %if.then.6
	jmp	.LBB52_776
.LBB52_6:                               # %if.end.7
	testb	$1, inhibit_window_system
	jne	.LBB52_14
# BB#7:                                 # %land.lhs.true
	testb	$1, display_arg
	jne	.LBB52_14
# BB#8:                                 # %if.then.10
	movabsq	$.L.str.6, %rdi
	callq	getenv
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	movb	%dl, -301(%rbp)         # 1-byte Spill
	je	.LBB52_10
# BB#9:                                 # %land.rhs
	movq	-168(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -301(%rbp)         # 1-byte Spill
.LBB52_10:                              # %land.end
	movb	-301(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, display_arg
	testb	$1, display_arg
	je	.LBB52_13
# BB#11:                                # %land.lhs.true.17
	movq	-168(%rbp), %rdi
	callq	x_display_ok
	testb	$1, %al
	jne	.LBB52_13
# BB#12:                                # %if.then.19
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movq	-168(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movb	$1, inhibit_window_system
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB52_13:                              # %if.end.21
	jmp	.LBB52_14
.LBB52_14:                              # %if.end.22
	testb	$1, inhibit_window_system
	jne	.LBB52_17
# BB#15:                                # %land.lhs.true.24
	testb	$1, display_arg
	je	.LBB52_17
# BB#16:                                # %if.then.27
	movl	$1045, %edi             # imm = 0x415
	callq	builtin_lisp_symbol
	movq	%rax, globals+1136
	movq	$46, globals+2672
	jmp	.LBB52_776
.LBB52_17:                              # %if.end.29
	xorl	%edi, %edi
	callq	isatty
	cmpl	$0, %eax
	jne	.LBB52_19
# BB#18:                                # %if.then.32
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	fatal
.LBB52_19:                              # %if.end.33
	movabsq	$.L.str.9, %rdi
	callq	getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB52_24
# BB#20:                                # %if.then.36
	testb	$1, inhibit_window_system
	jne	.LBB52_22
# BB#21:                                # %if.then.38
	movabsq	$.L.str.10, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB52_23
.LBB52_22:                              # %if.else
	movabsq	$.L.str.11, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB52_23:                              # %if.end.41
	movl	$1, %edi
	callq	exit
.LBB52_24:                              # %if.end.42
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -184(%rbp)
	callq	init_foreground_group
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	callq	init_tty
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB52_26
# BB#25:                                # %if.then.48
	callq	emacs_abort
.LBB52_26:                              # %if.end.49
	movq	-176(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	208(%rax), %rsi
	andq	$7, %rdx
	shlq	$23, %rdx
	andq	$-58720257, %rsi        # imm = 0xFFFFFFFFFC7FFFFF
	orq	%rdx, %rsi
	movq	%rsi, 208(%rax)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 376(%rdx)
	movq	-176(%rbp), %rax
	movl	52(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 52(%rax)
	movq	-184(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB52_28
# BB#27:                                # %if.then.60
	movq	-184(%rbp), %rdi
	callq	create_tty_output
.LBB52_28:                              # %if.end.61
	xorl	%eax, %eax
	movl	$1, %r9d
	movq	selected_frame, %rcx
	movq	-176(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	%rcx, 80(%rdx)
	movq	selected_frame, %rcx
	subq	$5, %rcx
	movq	-176(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	72(%rdx), %rdx
	movl	136(%rdx), %esi
	movq	-176(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	72(%rdx), %rdx
	movl	140(%rdx), %edi
	movq	-184(%rbp), %rdx
	subl	356(%rdx), %edi
	movl	%edi, -320(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-320(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	$0, (%rsp)
	callq	change_frame_size
	movq	initial_terminal, %rdi
	movl	52(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, 52(%rdi)
	cmpl	$0, %eax
	jne	.LBB52_31
# BB#29:                                # %land.lhs.true.72
	movq	initial_terminal, %rax
	cmpq	$0, 360(%rax)
	je	.LBB52_31
# BB#30:                                # %if.then.74
	movq	initial_terminal, %rax
	movq	360(%rax), %rax
	movq	initial_terminal, %rdi
	callq	*%rax
.LBB52_31:                              # %if.end.76
	movl	$955, %edi              # imm = 0x3BB
	callq	builtin_lisp_symbol
	movq	%rax, -224(%rbp)
	movq	selected_frame, %rdi
	callq	Ftty_type
	movl	$3, %esi
	leaq	-224(%rbp), %rdi
	movq	%rax, -216(%rbp)
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-208(%rbp), %rcx
	movq	%rax, -200(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -192(%rbp)
	movq	selected_frame, %rdi
	movq	-192(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movl	$938, %edi              # imm = 0x3AA
	leaq	-264(%rbp), %rcx
	leaq	-248(%rbp), %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -264(%rbp)
	movq	-336(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	movq	-176(%rbp), %rcx
	movq	88(%rcx), %rcx
	cmpq	$0, 8(%rcx)
	movq	%rax, -352(%rbp)        # 8-byte Spill
	je	.LBB52_33
# BB#32:                                # %cond.true
	movq	-176(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	callq	build_string
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB52_34
.LBB52_33:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB52_34:                              # %cond.end
	movq	-360(%rbp), %rax        # 8-byte Reload
	movl	$3, %esi
	leaq	-264(%rbp), %rcx
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-248(%rbp), %rcx
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%rax, 8(%rdx)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -232(%rbp)
	movq	selected_frame, %rdi
	movq	-232(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	selected_frame, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB52_35
	jmp	.LBB52_37
.LBB52_35:                              # %land.lhs.true.117
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB52_37
# BB#36:                                # %cond.true.122
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB52_38
.LBB52_37:                              # %cond.false.124
	callq	emacs_abort
.LBB52_38:                              # %cond.end.125
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-376(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -272(%rbp)
	movq	-272(%rbp), %rsi
	movl	280(%rsi), %eax
	movl	%eax, -276(%rbp)
	movq	-272(%rbp), %rsi
	movl	284(%rsi), %eax
	movl	%eax, -280(%rbp)
	testb	$1, %cl
	jne	.LBB52_39
	jmp	.LBB52_98
.LBB52_39:                              # %cond.true.127
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_40
	jmp	.LBB52_69
.LBB52_40:                              # %cond.true.128
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_42
# BB#41:                                # %cond.true.134
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB52_43
.LBB52_42:                              # %cond.false.152
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB52_43:                              # %cond.end.158
	movl	-380(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_53
# BB#44:                                # %cond.true.162
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_45
	jmp	.LBB52_49
.LBB52_45:                              # %cond.true.163
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-276(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jge	.LBB52_47
# BB#46:                                # %cond.true.173
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB52_48
.LBB52_47:                              # %cond.false.193
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB52_48:                              # %cond.end.199
	movl	-388(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-384(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_61
	jmp	.LBB52_58
.LBB52_49:                              # %cond.false.204
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_51
# BB#50:                                # %cond.true.212
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB52_52
.LBB52_51:                              # %cond.false.222
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB52_52:                              # %cond.end.228
	movl	-392(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-276(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_61
	jmp	.LBB52_58
.LBB52_53:                              # %cond.false.235
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB52_55
# BB#54:                                # %cond.true.240
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_61
	jmp	.LBB52_58
.LBB52_55:                              # %cond.false.246
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_56
	jmp	.LBB52_57
.LBB52_56:                              # %cond.true.247
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-276(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$2, %edx
	cmpl	%edx, %eax
	jle	.LBB52_61
	jmp	.LBB52_58
.LBB52_57:                              # %cond.false.255
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_61
.LBB52_58:                              # %lor.lhs.false
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_60
# BB#59:                                # %land.lhs.true.268
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$2, %eax
	cmpl	$-128, %eax
	jl	.LBB52_61
.LBB52_60:                              # %lor.lhs.false.274
	movl	$127, %eax
	movl	-276(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_65
.LBB52_61:                              # %cond.true.280
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	cmpl	$127, %eax
	jg	.LBB52_63
# BB#62:                                # %cond.true.286
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB52_64
.LBB52_63:                              # %cond.false.292
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB52_64:                              # %cond.end.300
	movl	-396(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_65:                              # %cond.false.302
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	cmpl	$127, %eax
	jg	.LBB52_67
# BB#66:                                # %cond.true.308
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB52_68
.LBB52_67:                              # %cond.false.314
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB52_68:                              # %cond.end.322
	movl	-400(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_69:                              # %cond.false.324
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_71
# BB#70:                                # %cond.true.330
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB52_72
.LBB52_71:                              # %cond.false.346
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB52_72:                              # %cond.end.350
	movl	-404(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_82
# BB#73:                                # %cond.true.354
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_74
	jmp	.LBB52_78
.LBB52_74:                              # %cond.true.355
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jge	.LBB52_76
# BB#75:                                # %cond.true.361
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -412(%rbp)        # 4-byte Spill
	jmp	.LBB52_77
.LBB52_76:                              # %cond.false.377
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB52_77:                              # %cond.end.381
	movl	-412(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-408(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_90
	jmp	.LBB52_87
.LBB52_78:                              # %cond.false.386
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_80
# BB#79:                                # %cond.true.392
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB52_81
.LBB52_80:                              # %cond.false.400
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB52_81:                              # %cond.end.404
	movl	-416(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	cmpl	-276(%rbp), %eax
	jl	.LBB52_90
	jmp	.LBB52_87
.LBB52_82:                              # %cond.false.409
	cmpl	$0, -276(%rbp)
	jge	.LBB52_84
# BB#83:                                # %cond.true.412
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_90
	jmp	.LBB52_87
.LBB52_84:                              # %cond.false.416
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_85
	jmp	.LBB52_86
.LBB52_85:                              # %cond.true.417
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_90
	jmp	.LBB52_87
.LBB52_86:                              # %cond.false.421
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_90
.LBB52_87:                              # %lor.lhs.false.425
	movl	-276(%rbp), %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_89
# BB#88:                                # %land.lhs.true.431
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$-128, %eax
	jl	.LBB52_90
.LBB52_89:                              # %lor.lhs.false.435
	movl	$127, %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_94
.LBB52_90:                              # %cond.true.439
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	cmpl	$127, %eax
	jg	.LBB52_92
# BB#91:                                # %cond.true.445
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB52_93
.LBB52_92:                              # %cond.false.451
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB52_93:                              # %cond.end.459
	movl	-420(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_94:                              # %cond.false.461
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	cmpl	$127, %eax
	jg	.LBB52_96
# BB#95:                                # %cond.true.467
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB52_97
.LBB52_96:                              # %cond.false.473
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$2, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB52_97:                              # %cond.end.481
	movl	-424(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_98:                              # %cond.false.483
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_99
	jmp	.LBB52_158
.LBB52_99:                              # %cond.true.484
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_100
	jmp	.LBB52_129
.LBB52_100:                             # %cond.true.485
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_102
# BB#101:                               # %cond.true.493
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB52_103
.LBB52_102:                             # %cond.false.513
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB52_103:                             # %cond.end.519
	movl	-428(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_113
# BB#104:                               # %cond.true.523
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_105
	jmp	.LBB52_109
.LBB52_105:                             # %cond.true.524
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-276(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jge	.LBB52_107
# BB#106:                               # %cond.true.534
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jmp	.LBB52_108
.LBB52_107:                             # %cond.false.554
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB52_108:                             # %cond.end.560
	movl	-436(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-432(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_121
	jmp	.LBB52_118
.LBB52_109:                             # %cond.false.565
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_111
# BB#110:                               # %cond.true.573
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB52_112
.LBB52_111:                             # %cond.false.583
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB52_112:                             # %cond.end.589
	movl	-440(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-276(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_121
	jmp	.LBB52_118
.LBB52_113:                             # %cond.false.596
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB52_115
# BB#114:                               # %cond.true.601
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_121
	jmp	.LBB52_118
.LBB52_115:                             # %cond.false.607
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_116
	jmp	.LBB52_117
.LBB52_116:                             # %cond.true.608
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-276(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$2, %edx
	cmpl	%edx, %eax
	jle	.LBB52_121
	jmp	.LBB52_118
.LBB52_117:                             # %cond.false.616
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_121
.LBB52_118:                             # %lor.lhs.false.622
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_120
# BB#119:                               # %land.lhs.true.630
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$2, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB52_121
.LBB52_120:                             # %lor.lhs.false.636
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-276(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_125
.LBB52_121:                             # %cond.true.642
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_123
# BB#122:                               # %cond.true.648
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB52_124
.LBB52_123:                             # %cond.false.654
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB52_124:                             # %cond.end.662
	movl	-444(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_125:                             # %cond.false.664
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_127
# BB#126:                               # %cond.true.670
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	jmp	.LBB52_128
.LBB52_127:                             # %cond.false.676
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -448(%rbp)        # 4-byte Spill
.LBB52_128:                             # %cond.end.684
	movl	-448(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_129:                             # %cond.false.686
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_131
# BB#130:                               # %cond.true.692
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB52_132
.LBB52_131:                             # %cond.false.708
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB52_132:                             # %cond.end.712
	movl	-452(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_142
# BB#133:                               # %cond.true.716
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_134
	jmp	.LBB52_138
.LBB52_134:                             # %cond.true.717
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jge	.LBB52_136
# BB#135:                               # %cond.true.723
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB52_137
.LBB52_136:                             # %cond.false.739
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB52_137:                             # %cond.end.743
	movl	-460(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-456(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_150
	jmp	.LBB52_147
.LBB52_138:                             # %cond.false.748
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_140
# BB#139:                               # %cond.true.754
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB52_141
.LBB52_140:                             # %cond.false.762
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB52_141:                             # %cond.end.766
	movl	-464(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	cmpl	-276(%rbp), %eax
	jl	.LBB52_150
	jmp	.LBB52_147
.LBB52_142:                             # %cond.false.771
	cmpl	$0, -276(%rbp)
	jge	.LBB52_144
# BB#143:                               # %cond.true.774
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_150
	jmp	.LBB52_147
.LBB52_144:                             # %cond.false.778
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_145
	jmp	.LBB52_146
.LBB52_145:                             # %cond.true.779
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_150
	jmp	.LBB52_147
.LBB52_146:                             # %cond.false.783
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_150
.LBB52_147:                             # %lor.lhs.false.787
	movl	-276(%rbp), %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_149
# BB#148:                               # %land.lhs.true.793
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB52_150
.LBB52_149:                             # %lor.lhs.false.797
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_154
.LBB52_150:                             # %cond.true.801
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_152
# BB#151:                               # %cond.true.807
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB52_153
.LBB52_152:                             # %cond.false.813
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB52_153:                             # %cond.end.821
	movl	-468(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_154:                             # %cond.false.823
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_156
# BB#155:                               # %cond.true.829
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
	jmp	.LBB52_157
.LBB52_156:                             # %cond.false.835
	movl	-276(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$2, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB52_157:                             # %cond.end.843
	movl	-472(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_158:                             # %cond.false.845
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_159
	jmp	.LBB52_218
.LBB52_159:                             # %cond.true.846
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_160
	jmp	.LBB52_189
.LBB52_160:                             # %cond.true.847
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_162
# BB#161:                               # %cond.true.853
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB52_163
.LBB52_162:                             # %cond.false.869
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB52_163:                             # %cond.end.873
	movl	-476(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_173
# BB#164:                               # %cond.true.877
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_165
	jmp	.LBB52_169
.LBB52_165:                             # %cond.true.878
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jge	.LBB52_167
# BB#166:                               # %cond.true.884
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB52_168
.LBB52_167:                             # %cond.false.900
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB52_168:                             # %cond.end.904
	movl	-484(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-480(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_181
	jmp	.LBB52_178
.LBB52_169:                             # %cond.false.909
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_171
# BB#170:                               # %cond.true.915
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB52_172
.LBB52_171:                             # %cond.false.923
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB52_172:                             # %cond.end.927
	movl	-488(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	cmpl	-276(%rbp), %eax
	jl	.LBB52_181
	jmp	.LBB52_178
.LBB52_173:                             # %cond.false.932
	cmpl	$0, -276(%rbp)
	jge	.LBB52_175
# BB#174:                               # %cond.true.935
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_181
	jmp	.LBB52_178
.LBB52_175:                             # %cond.false.939
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_176
	jmp	.LBB52_177
.LBB52_176:                             # %cond.true.940
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_181
	jmp	.LBB52_178
.LBB52_177:                             # %cond.false.944
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_181
.LBB52_178:                             # %lor.lhs.false.948
	movl	-276(%rbp), %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_180
# BB#179:                               # %land.lhs.true.954
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB52_181
.LBB52_180:                             # %lor.lhs.false.958
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_185
.LBB52_181:                             # %cond.true.962
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_183
# BB#182:                               # %cond.true.966
	movl	-276(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB52_184
.LBB52_183:                             # %cond.false.968
	movl	-276(%rbp), %eax
	addl	$2, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB52_184:                             # %cond.end.972
	movl	-492(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_185:                             # %cond.false.974
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_187
# BB#186:                               # %cond.true.978
	movl	-276(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB52_188
.LBB52_187:                             # %cond.false.980
	movl	-276(%rbp), %eax
	addl	$2, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -496(%rbp)        # 4-byte Spill
.LBB52_188:                             # %cond.end.984
	movl	-496(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_189:                             # %cond.false.986
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_191
# BB#190:                               # %cond.true.992
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB52_192
.LBB52_191:                             # %cond.false.1008
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB52_192:                             # %cond.end.1012
	movl	-500(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_202
# BB#193:                               # %cond.true.1016
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_194
	jmp	.LBB52_198
.LBB52_194:                             # %cond.true.1017
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jge	.LBB52_196
# BB#195:                               # %cond.true.1023
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB52_197
.LBB52_196:                             # %cond.false.1039
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
.LBB52_197:                             # %cond.end.1043
	movl	-508(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-504(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_210
	jmp	.LBB52_207
.LBB52_198:                             # %cond.false.1048
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_200
# BB#199:                               # %cond.true.1054
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB52_201
.LBB52_200:                             # %cond.false.1062
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB52_201:                             # %cond.end.1066
	movl	-512(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	cmpl	-276(%rbp), %eax
	jl	.LBB52_210
	jmp	.LBB52_207
.LBB52_202:                             # %cond.false.1071
	cmpl	$0, -276(%rbp)
	jge	.LBB52_204
# BB#203:                               # %cond.true.1074
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_210
	jmp	.LBB52_207
.LBB52_204:                             # %cond.false.1078
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_205
	jmp	.LBB52_206
.LBB52_205:                             # %cond.true.1079
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_210
	jmp	.LBB52_207
.LBB52_206:                             # %cond.false.1083
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_210
.LBB52_207:                             # %lor.lhs.false.1087
	movl	-276(%rbp), %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_209
# BB#208:                               # %land.lhs.true.1093
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB52_210
.LBB52_209:                             # %lor.lhs.false.1097
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_214
.LBB52_210:                             # %cond.true.1101
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_212
# BB#211:                               # %cond.true.1105
	movl	-276(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB52_213
.LBB52_212:                             # %cond.false.1107
	movl	-276(%rbp), %eax
	addl	$2, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB52_213:                             # %cond.end.1111
	movl	-516(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_214:                             # %cond.false.1113
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_216
# BB#215:                               # %cond.true.1117
	movl	-276(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB52_217
.LBB52_216:                             # %cond.false.1119
	movl	-276(%rbp), %eax
	addl	$2, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB52_217:                             # %cond.end.1123
	movl	-520(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_218:                             # %cond.false.1125
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_219
	jmp	.LBB52_278
.LBB52_219:                             # %cond.true.1126
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_220
	jmp	.LBB52_249
.LBB52_220:                             # %cond.true.1127
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_222
# BB#221:                               # %cond.true.1134
	xorl	%eax, %eax
	movslq	-276(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-276(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB52_223
.LBB52_222:                             # %cond.false.1153
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB52_223:                             # %cond.end.1158
	movq	-528(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB52_233
# BB#224:                               # %cond.true.1162
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_225
	jmp	.LBB52_229
.LBB52_225:                             # %cond.true.1163
	movslq	-276(%rbp), %rax
	movslq	-276(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jge	.LBB52_227
# BB#226:                               # %cond.true.1171
	xorl	%eax, %eax
	movslq	-276(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-276(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB52_228
.LBB52_227:                             # %cond.false.1190
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB52_228:                             # %cond.end.1195
	movq	-544(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB52_241
	jmp	.LBB52_238
.LBB52_229:                             # %cond.false.1200
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_231
# BB#230:                               # %cond.true.1207
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB52_232
.LBB52_231:                             # %cond.false.1216
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB52_232:                             # %cond.end.1221
	movq	-552(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movslq	-276(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB52_241
	jmp	.LBB52_238
.LBB52_233:                             # %cond.false.1227
	movslq	-276(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_235
# BB#234:                               # %cond.true.1231
	movl	$2, %eax
	movl	%eax, %ecx
	movslq	-276(%rbp), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB52_241
	jmp	.LBB52_238
.LBB52_235:                             # %cond.false.1236
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_236
	jmp	.LBB52_237
.LBB52_236:                             # %cond.true.1237
	movslq	-276(%rbp), %rax
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB52_241
	jmp	.LBB52_238
.LBB52_237:                             # %cond.false.1243
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	cmpq	$2, %rax
	jl	.LBB52_241
.LBB52_238:                             # %lor.lhs.false.1248
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_240
# BB#239:                               # %land.lhs.true.1255
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB52_241
.LBB52_240:                             # %lor.lhs.false.1260
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB52_245
.LBB52_241:                             # %cond.true.1265
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_243
# BB#242:                               # %cond.true.1270
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB52_244
.LBB52_243:                             # %cond.false.1273
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB52_244:                             # %cond.end.1278
	movq	-560(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_245:                             # %cond.false.1281
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_247
# BB#246:                               # %cond.true.1286
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB52_248
.LBB52_247:                             # %cond.false.1289
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB52_248:                             # %cond.end.1294
	movq	-568(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_249:                             # %cond.false.1297
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_251
# BB#250:                               # %cond.true.1303
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
	jmp	.LBB52_252
.LBB52_251:                             # %cond.false.1319
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB52_252:                             # %cond.end.1323
	movl	-572(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_262
# BB#253:                               # %cond.true.1327
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_254
	jmp	.LBB52_258
.LBB52_254:                             # %cond.true.1328
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jge	.LBB52_256
# BB#255:                               # %cond.true.1334
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
	jmp	.LBB52_257
.LBB52_256:                             # %cond.false.1350
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
.LBB52_257:                             # %cond.end.1354
	movl	-580(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-576(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_270
	jmp	.LBB52_267
.LBB52_258:                             # %cond.false.1359
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_260
# BB#259:                               # %cond.true.1365
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB52_261
.LBB52_260:                             # %cond.false.1373
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB52_261:                             # %cond.end.1377
	movl	-584(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	cmpl	-276(%rbp), %eax
	jl	.LBB52_270
	jmp	.LBB52_267
.LBB52_262:                             # %cond.false.1382
	cmpl	$0, -276(%rbp)
	jge	.LBB52_264
# BB#263:                               # %cond.true.1385
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_270
	jmp	.LBB52_267
.LBB52_264:                             # %cond.false.1389
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_265
	jmp	.LBB52_266
.LBB52_265:                             # %cond.true.1390
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_270
	jmp	.LBB52_267
.LBB52_266:                             # %cond.false.1394
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_270
.LBB52_267:                             # %lor.lhs.false.1398
	movl	-276(%rbp), %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_269
# BB#268:                               # %land.lhs.true.1404
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB52_270
.LBB52_269:                             # %lor.lhs.false.1409
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB52_274
.LBB52_270:                             # %cond.true.1414
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_272
# BB#271:                               # %cond.true.1419
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB52_273
.LBB52_272:                             # %cond.false.1422
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB52_273:                             # %cond.end.1427
	movq	-592(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_274:                             # %cond.false.1430
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_276
# BB#275:                               # %cond.true.1435
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB52_277
.LBB52_276:                             # %cond.false.1438
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB52_277:                             # %cond.end.1443
	movq	-600(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_278:                             # %cond.false.1446
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_279
	jmp	.LBB52_308
.LBB52_279:                             # %cond.true.1447
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_281
# BB#280:                               # %cond.true.1454
	xorl	%eax, %eax
	movslq	-276(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-276(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB52_282
.LBB52_281:                             # %cond.false.1473
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB52_282:                             # %cond.end.1478
	movq	-608(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB52_292
# BB#283:                               # %cond.true.1482
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_284
	jmp	.LBB52_288
.LBB52_284:                             # %cond.true.1483
	movslq	-276(%rbp), %rax
	movslq	-276(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jge	.LBB52_286
# BB#285:                               # %cond.true.1491
	xorl	%eax, %eax
	movslq	-276(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-276(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB52_287
.LBB52_286:                             # %cond.false.1510
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB52_287:                             # %cond.end.1515
	movq	-624(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB52_300
	jmp	.LBB52_297
.LBB52_288:                             # %cond.false.1520
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_290
# BB#289:                               # %cond.true.1527
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB52_291
.LBB52_290:                             # %cond.false.1536
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB52_291:                             # %cond.end.1541
	movq	-632(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movslq	-276(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB52_300
	jmp	.LBB52_297
.LBB52_292:                             # %cond.false.1547
	movslq	-276(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_294
# BB#293:                               # %cond.true.1551
	movl	$2, %eax
	movl	%eax, %ecx
	movslq	-276(%rbp), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB52_300
	jmp	.LBB52_297
.LBB52_294:                             # %cond.false.1556
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_295
	jmp	.LBB52_296
.LBB52_295:                             # %cond.true.1557
	movslq	-276(%rbp), %rax
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB52_300
	jmp	.LBB52_297
.LBB52_296:                             # %cond.false.1563
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	cmpq	$2, %rax
	jl	.LBB52_300
.LBB52_297:                             # %lor.lhs.false.1568
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_299
# BB#298:                               # %land.lhs.true.1575
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB52_300
.LBB52_299:                             # %lor.lhs.false.1580
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB52_304
.LBB52_300:                             # %cond.true.1585
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_302
# BB#301:                               # %cond.true.1590
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB52_303
.LBB52_302:                             # %cond.false.1593
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB52_303:                             # %cond.end.1598
	movq	-640(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_304:                             # %cond.false.1601
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_306
# BB#305:                               # %cond.true.1606
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB52_307
.LBB52_306:                             # %cond.false.1609
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB52_307:                             # %cond.end.1614
	movq	-648(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_308:                             # %cond.false.1617
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_310
# BB#309:                               # %cond.true.1623
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB52_311
.LBB52_310:                             # %cond.false.1639
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB52_311:                             # %cond.end.1643
	movl	-652(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB52_321
# BB#312:                               # %cond.true.1647
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_313
	jmp	.LBB52_317
.LBB52_313:                             # %cond.true.1648
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jge	.LBB52_315
# BB#314:                               # %cond.true.1654
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-276(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB52_316
.LBB52_315:                             # %cond.false.1670
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB52_316:                             # %cond.end.1674
	movl	-660(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	-656(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_329
	jmp	.LBB52_326
.LBB52_317:                             # %cond.false.1679
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_319
# BB#318:                               # %cond.true.1685
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	jmp	.LBB52_320
.LBB52_319:                             # %cond.false.1693
	movl	-276(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
.LBB52_320:                             # %cond.end.1697
	movl	-664(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	cmpl	-276(%rbp), %eax
	jl	.LBB52_329
	jmp	.LBB52_326
.LBB52_321:                             # %cond.false.1702
	cmpl	$0, -276(%rbp)
	jge	.LBB52_323
# BB#322:                               # %cond.true.1705
	movl	$2, %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_329
	jmp	.LBB52_326
.LBB52_323:                             # %cond.false.1709
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_324
	jmp	.LBB52_325
.LBB52_324:                             # %cond.true.1710
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB52_329
	jmp	.LBB52_326
.LBB52_325:                             # %cond.false.1714
	movl	-276(%rbp), %eax
	addl	$2, %eax
	cmpl	$2, %eax
	jl	.LBB52_329
.LBB52_326:                             # %lor.lhs.false.1718
	movl	-276(%rbp), %eax
	addl	$2, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_328
# BB#327:                               # %land.lhs.true.1724
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB52_329
.LBB52_328:                             # %lor.lhs.false.1729
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-276(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB52_333
.LBB52_329:                             # %cond.true.1734
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_331
# BB#330:                               # %cond.true.1739
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB52_332
.LBB52_331:                             # %cond.false.1742
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB52_332:                             # %cond.end.1747
	movq	-672(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_337
.LBB52_333:                             # %cond.false.1750
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-276(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_335
# BB#334:                               # %cond.true.1755
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB52_336
.LBB52_335:                             # %cond.false.1758
	movslq	-276(%rbp), %rax
	addq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB52_336:                             # %cond.end.1763
	movq	-680(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
.LBB52_337:                             # %lor.lhs.false.1766
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_338
	jmp	.LBB52_423
.LBB52_338:                             # %cond.true.1767
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_339
	jmp	.LBB52_381
.LBB52_339:                             # %cond.true.1768
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_341
# BB#340:                               # %cond.true.1779
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	jmp	.LBB52_342
.LBB52_341:                             # %cond.false.1805
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
.LBB52_342:                             # %cond.end.1814
	movl	-684(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_347
# BB#343:                               # %land.lhs.true.1818
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB52_345
# BB#344:                               # %land.lhs.true.1823
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_373
.LBB52_345:                             # %lor.lhs.false.1828
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB52_347
# BB#346:                               # %land.lhs.true.1833
	xorl	%eax, %eax
	movl	-280(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_373
.LBB52_347:                             # %lor.lhs.false.1838
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB52_359
# BB#348:                               # %cond.true.1843
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB52_353
# BB#349:                               # %cond.true.1848
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-280(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jge	.LBB52_351
# BB#350:                               # %cond.true.1861
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB52_352
.LBB52_351:                             # %cond.false.1874
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
.LBB52_352:                             # %cond.end.1883
	movl	-692(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-688(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_373
	jmp	.LBB52_370
.LBB52_353:                             # %cond.false.1889
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$-1, %eax
	jne	.LBB52_355
# BB#354:                               # %cond.true.1894
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_373
	jmp	.LBB52_370
.LBB52_355:                             # %cond.false.1895
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_357
# BB#356:                               # %cond.true.1906
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jmp	.LBB52_358
.LBB52_357:                             # %cond.false.1932
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
.LBB52_358:                             # %cond.end.1941
	movl	-696(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-280(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_373
	jmp	.LBB52_370
.LBB52_359:                             # %cond.false.1950
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jne	.LBB52_361
# BB#360:                               # %cond.true.1955
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_373
	jmp	.LBB52_370
.LBB52_361:                             # %cond.false.1956
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB52_366
# BB#362:                               # %cond.true.1961
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-280(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -700(%rbp)        # 4-byte Spill
	jge	.LBB52_364
# BB#363:                               # %cond.true.1974
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB52_365
.LBB52_364:                             # %cond.false.2000
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
.LBB52_365:                             # %cond.end.2009
	movl	-704(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-700(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_373
	jmp	.LBB52_370
.LBB52_366:                             # %cond.false.2016
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_368
# BB#367:                               # %cond.true.2027
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB52_369
.LBB52_368:                             # %cond.false.2040
	movl	-284(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB52_369:                             # %cond.end.2049
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-280(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_373
.LBB52_370:                             # %lor.lhs.false.2058
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_372
# BB#371:                               # %land.lhs.true.2068
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$-128, %eax
	jl	.LBB52_373
.LBB52_372:                             # %lor.lhs.false.2076
	movl	$127, %eax
	movl	-280(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	-284(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_377
.LBB52_373:                             # %cond.true.2084
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB52_375
# BB#374:                               # %cond.true.2092
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB52_376
.LBB52_375:                             # %cond.false.2100
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB52_376:                             # %cond.end.2110
	movl	-712(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_377:                             # %cond.false.2112
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB52_379
# BB#378:                               # %cond.true.2120
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB52_380
.LBB52_379:                             # %cond.false.2128
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB52_380:                             # %cond.end.2138
	movl	-716(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_381:                             # %cond.false.2140
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_383
# BB#382:                               # %cond.true.2147
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB52_384
.LBB52_383:                             # %cond.false.2165
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
.LBB52_384:                             # %cond.end.2170
	movl	-720(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_389
# BB#385:                               # %land.lhs.true.2174
	cmpl	$0, -280(%rbp)
	jge	.LBB52_387
# BB#386:                               # %land.lhs.true.2177
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jl	.LBB52_415
.LBB52_387:                             # %lor.lhs.false.2180
	cmpl	$0, -284(%rbp)
	jge	.LBB52_389
# BB#388:                               # %land.lhs.true.2183
	xorl	%eax, %eax
	cmpl	-280(%rbp), %eax
	jl	.LBB52_415
.LBB52_389:                             # %lor.lhs.false.2186
	cmpl	$0, -284(%rbp)
	jge	.LBB52_401
# BB#390:                               # %cond.true.2189
	cmpl	$0, -280(%rbp)
	jge	.LBB52_395
# BB#391:                               # %cond.true.2192
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jge	.LBB52_393
# BB#392:                               # %cond.true.2199
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -728(%rbp)        # 4-byte Spill
	jmp	.LBB52_394
.LBB52_393:                             # %cond.false.2208
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -728(%rbp)        # 4-byte Spill
.LBB52_394:                             # %cond.end.2213
	movl	-728(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-724(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_415
	jmp	.LBB52_412
.LBB52_395:                             # %cond.false.2218
	cmpl	$-1, -284(%rbp)
	jne	.LBB52_397
# BB#396:                               # %cond.true.2221
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_415
	jmp	.LBB52_412
.LBB52_397:                             # %cond.false.2222
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_399
# BB#398:                               # %cond.true.2229
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
	jmp	.LBB52_400
.LBB52_399:                             # %cond.false.2247
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
.LBB52_400:                             # %cond.end.2252
	movl	-732(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_415
	jmp	.LBB52_412
.LBB52_401:                             # %cond.false.2257
	cmpl	$0, -284(%rbp)
	jne	.LBB52_403
# BB#402:                               # %cond.true.2260
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_415
	jmp	.LBB52_412
.LBB52_403:                             # %cond.false.2261
	cmpl	$0, -280(%rbp)
	jge	.LBB52_408
# BB#404:                               # %cond.true.2264
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -736(%rbp)        # 4-byte Spill
	jge	.LBB52_406
# BB#405:                               # %cond.true.2271
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -740(%rbp)        # 4-byte Spill
	jmp	.LBB52_407
.LBB52_406:                             # %cond.false.2289
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -740(%rbp)        # 4-byte Spill
.LBB52_407:                             # %cond.end.2294
	movl	-740(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-736(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_415
	jmp	.LBB52_412
.LBB52_408:                             # %cond.false.2299
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_410
# BB#409:                               # %cond.true.2306
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -744(%rbp)        # 4-byte Spill
	jmp	.LBB52_411
.LBB52_410:                             # %cond.false.2315
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -744(%rbp)        # 4-byte Spill
.LBB52_411:                             # %cond.end.2320
	movl	-744(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_415
.LBB52_412:                             # %lor.lhs.false.2325
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_414
# BB#413:                               # %land.lhs.true.2331
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$-128, %eax
	jl	.LBB52_415
.LBB52_414:                             # %lor.lhs.false.2335
	movl	$127, %eax
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_419
.LBB52_415:                             # %cond.true.2339
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB52_417
# BB#416:                               # %cond.true.2347
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB52_418
.LBB52_417:                             # %cond.false.2355
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB52_418:                             # %cond.end.2365
	movl	-748(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_419:                             # %cond.false.2367
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB52_421
# BB#420:                               # %cond.true.2375
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -752(%rbp)        # 4-byte Spill
	jmp	.LBB52_422
.LBB52_421:                             # %cond.false.2383
	movl	-280(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-284(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -752(%rbp)        # 4-byte Spill
.LBB52_422:                             # %cond.end.2393
	movl	-752(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_423:                             # %cond.false.2395
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_424
	jmp	.LBB52_509
.LBB52_424:                             # %cond.true.2396
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_425
	jmp	.LBB52_467
.LBB52_425:                             # %cond.true.2397
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_427
# BB#426:                               # %cond.true.2408
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
	jmp	.LBB52_428
.LBB52_427:                             # %cond.false.2434
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
.LBB52_428:                             # %cond.end.2443
	movl	-756(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_433
# BB#429:                               # %land.lhs.true.2447
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB52_431
# BB#430:                               # %land.lhs.true.2452
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_459
.LBB52_431:                             # %lor.lhs.false.2457
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB52_433
# BB#432:                               # %land.lhs.true.2462
	xorl	%eax, %eax
	movl	-280(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_459
.LBB52_433:                             # %lor.lhs.false.2467
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB52_445
# BB#434:                               # %cond.true.2472
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB52_439
# BB#435:                               # %cond.true.2477
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-280(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -760(%rbp)        # 4-byte Spill
	jge	.LBB52_437
# BB#436:                               # %cond.true.2490
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -764(%rbp)        # 4-byte Spill
	jmp	.LBB52_438
.LBB52_437:                             # %cond.false.2503
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB52_438:                             # %cond.end.2512
	movl	-764(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-760(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_459
	jmp	.LBB52_456
.LBB52_439:                             # %cond.false.2519
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$-1, %eax
	jne	.LBB52_441
# BB#440:                               # %cond.true.2524
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_459
	jmp	.LBB52_456
.LBB52_441:                             # %cond.false.2525
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_443
# BB#442:                               # %cond.true.2536
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB52_444
.LBB52_443:                             # %cond.false.2562
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
.LBB52_444:                             # %cond.end.2571
	movl	-768(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-280(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_459
	jmp	.LBB52_456
.LBB52_445:                             # %cond.false.2580
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jne	.LBB52_447
# BB#446:                               # %cond.true.2585
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_459
	jmp	.LBB52_456
.LBB52_447:                             # %cond.false.2586
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB52_452
# BB#448:                               # %cond.true.2591
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-280(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -772(%rbp)        # 4-byte Spill
	jge	.LBB52_450
# BB#449:                               # %cond.true.2604
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-280(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -776(%rbp)        # 4-byte Spill
	jmp	.LBB52_451
.LBB52_450:                             # %cond.false.2630
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -776(%rbp)        # 4-byte Spill
.LBB52_451:                             # %cond.end.2639
	movl	-776(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-772(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_459
	jmp	.LBB52_456
.LBB52_452:                             # %cond.false.2646
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_454
# BB#453:                               # %cond.true.2657
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -780(%rbp)        # 4-byte Spill
	jmp	.LBB52_455
.LBB52_454:                             # %cond.false.2670
	movl	-284(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-280(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB52_455:                             # %cond.end.2679
	movl	-780(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-280(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB52_459
.LBB52_456:                             # %lor.lhs.false.2688
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_458
# BB#457:                               # %land.lhs.true.2698
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	%edx, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB52_459
.LBB52_458:                             # %lor.lhs.false.2706
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-280(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	-284(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	imull	%esi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_463
.LBB52_459:                             # %cond.true.2714
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_461
# BB#460:                               # %cond.true.2722
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jmp	.LBB52_462
.LBB52_461:                             # %cond.false.2730
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -784(%rbp)        # 4-byte Spill
.LBB52_462:                             # %cond.end.2740
	movl	-784(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_463:                             # %cond.false.2742
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_465
# BB#464:                               # %cond.true.2750
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
	jmp	.LBB52_466
.LBB52_465:                             # %cond.false.2758
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -788(%rbp)        # 4-byte Spill
.LBB52_466:                             # %cond.end.2768
	movl	-788(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_467:                             # %cond.false.2770
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_469
# BB#468:                               # %cond.true.2777
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -792(%rbp)        # 4-byte Spill
	jmp	.LBB52_470
.LBB52_469:                             # %cond.false.2795
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -792(%rbp)        # 4-byte Spill
.LBB52_470:                             # %cond.end.2800
	movl	-792(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_475
# BB#471:                               # %land.lhs.true.2804
	cmpl	$0, -280(%rbp)
	jge	.LBB52_473
# BB#472:                               # %land.lhs.true.2807
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jl	.LBB52_501
.LBB52_473:                             # %lor.lhs.false.2810
	cmpl	$0, -284(%rbp)
	jge	.LBB52_475
# BB#474:                               # %land.lhs.true.2813
	xorl	%eax, %eax
	cmpl	-280(%rbp), %eax
	jl	.LBB52_501
.LBB52_475:                             # %lor.lhs.false.2816
	cmpl	$0, -284(%rbp)
	jge	.LBB52_487
# BB#476:                               # %cond.true.2819
	cmpl	$0, -280(%rbp)
	jge	.LBB52_481
# BB#477:                               # %cond.true.2822
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -796(%rbp)        # 4-byte Spill
	jge	.LBB52_479
# BB#478:                               # %cond.true.2829
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -800(%rbp)        # 4-byte Spill
	jmp	.LBB52_480
.LBB52_479:                             # %cond.false.2838
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -800(%rbp)        # 4-byte Spill
.LBB52_480:                             # %cond.end.2843
	movl	-800(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-796(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_501
	jmp	.LBB52_498
.LBB52_481:                             # %cond.false.2848
	cmpl	$-1, -284(%rbp)
	jne	.LBB52_483
# BB#482:                               # %cond.true.2851
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_501
	jmp	.LBB52_498
.LBB52_483:                             # %cond.false.2852
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_485
# BB#484:                               # %cond.true.2859
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -804(%rbp)        # 4-byte Spill
	jmp	.LBB52_486
.LBB52_485:                             # %cond.false.2877
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -804(%rbp)        # 4-byte Spill
.LBB52_486:                             # %cond.end.2882
	movl	-804(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_501
	jmp	.LBB52_498
.LBB52_487:                             # %cond.false.2887
	cmpl	$0, -284(%rbp)
	jne	.LBB52_489
# BB#488:                               # %cond.true.2890
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_501
	jmp	.LBB52_498
.LBB52_489:                             # %cond.false.2891
	cmpl	$0, -280(%rbp)
	jge	.LBB52_494
# BB#490:                               # %cond.true.2894
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jge	.LBB52_492
# BB#491:                               # %cond.true.2901
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
	jmp	.LBB52_493
.LBB52_492:                             # %cond.false.2919
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
.LBB52_493:                             # %cond.end.2924
	movl	-812(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-808(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_501
	jmp	.LBB52_498
.LBB52_494:                             # %cond.false.2929
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_496
# BB#495:                               # %cond.true.2936
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB52_497
.LBB52_496:                             # %cond.false.2945
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
.LBB52_497:                             # %cond.end.2950
	movl	-816(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_501
.LBB52_498:                             # %lor.lhs.false.2955
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_500
# BB#499:                               # %land.lhs.true.2961
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB52_501
.LBB52_500:                             # %lor.lhs.false.2965
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_505
.LBB52_501:                             # %cond.true.2969
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_503
# BB#502:                               # %cond.true.2977
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB52_504
.LBB52_503:                             # %cond.false.2985
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB52_504:                             # %cond.end.2995
	movl	-820(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_505:                             # %cond.false.2997
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB52_507
# BB#506:                               # %cond.true.3005
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -824(%rbp)        # 4-byte Spill
	jmp	.LBB52_508
.LBB52_507:                             # %cond.false.3013
	movl	-280(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-284(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -824(%rbp)        # 4-byte Spill
.LBB52_508:                             # %cond.end.3023
	movl	-824(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_509:                             # %cond.false.3025
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_510
	jmp	.LBB52_595
.LBB52_510:                             # %cond.true.3026
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_511
	jmp	.LBB52_553
.LBB52_511:                             # %cond.true.3027
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_513
# BB#512:                               # %cond.true.3034
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jmp	.LBB52_514
.LBB52_513:                             # %cond.false.3052
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
.LBB52_514:                             # %cond.end.3057
	movl	-828(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_519
# BB#515:                               # %land.lhs.true.3061
	cmpl	$0, -280(%rbp)
	jge	.LBB52_517
# BB#516:                               # %land.lhs.true.3064
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jl	.LBB52_545
.LBB52_517:                             # %lor.lhs.false.3067
	cmpl	$0, -284(%rbp)
	jge	.LBB52_519
# BB#518:                               # %land.lhs.true.3070
	xorl	%eax, %eax
	cmpl	-280(%rbp), %eax
	jl	.LBB52_545
.LBB52_519:                             # %lor.lhs.false.3073
	cmpl	$0, -284(%rbp)
	jge	.LBB52_531
# BB#520:                               # %cond.true.3076
	cmpl	$0, -280(%rbp)
	jge	.LBB52_525
# BB#521:                               # %cond.true.3079
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -832(%rbp)        # 4-byte Spill
	jge	.LBB52_523
# BB#522:                               # %cond.true.3086
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
	jmp	.LBB52_524
.LBB52_523:                             # %cond.false.3095
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
.LBB52_524:                             # %cond.end.3100
	movl	-836(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-832(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_545
	jmp	.LBB52_542
.LBB52_525:                             # %cond.false.3105
	cmpl	$-1, -284(%rbp)
	jne	.LBB52_527
# BB#526:                               # %cond.true.3108
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_545
	jmp	.LBB52_542
.LBB52_527:                             # %cond.false.3109
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_529
# BB#528:                               # %cond.true.3116
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
	jmp	.LBB52_530
.LBB52_529:                             # %cond.false.3134
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
.LBB52_530:                             # %cond.end.3139
	movl	-840(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_545
	jmp	.LBB52_542
.LBB52_531:                             # %cond.false.3144
	cmpl	$0, -284(%rbp)
	jne	.LBB52_533
# BB#532:                               # %cond.true.3147
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_545
	jmp	.LBB52_542
.LBB52_533:                             # %cond.false.3148
	cmpl	$0, -280(%rbp)
	jge	.LBB52_538
# BB#534:                               # %cond.true.3151
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -844(%rbp)        # 4-byte Spill
	jge	.LBB52_536
# BB#535:                               # %cond.true.3158
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -848(%rbp)        # 4-byte Spill
	jmp	.LBB52_537
.LBB52_536:                             # %cond.false.3176
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -848(%rbp)        # 4-byte Spill
.LBB52_537:                             # %cond.end.3181
	movl	-848(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-844(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_545
	jmp	.LBB52_542
.LBB52_538:                             # %cond.false.3186
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_540
# BB#539:                               # %cond.true.3193
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)        # 4-byte Spill
	jmp	.LBB52_541
.LBB52_540:                             # %cond.false.3202
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -852(%rbp)        # 4-byte Spill
.LBB52_541:                             # %cond.end.3207
	movl	-852(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_545
.LBB52_542:                             # %lor.lhs.false.3212
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_544
# BB#543:                               # %land.lhs.true.3218
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB52_545
.LBB52_544:                             # %lor.lhs.false.3222
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_549
.LBB52_545:                             # %cond.true.3226
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_547
# BB#546:                               # %cond.true.3230
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jmp	.LBB52_548
.LBB52_547:                             # %cond.false.3232
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -856(%rbp)        # 4-byte Spill
.LBB52_548:                             # %cond.end.3236
	movl	-856(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_549:                             # %cond.false.3238
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_551
# BB#550:                               # %cond.true.3242
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	movl	%eax, -860(%rbp)        # 4-byte Spill
	jmp	.LBB52_552
.LBB52_551:                             # %cond.false.3244
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -860(%rbp)        # 4-byte Spill
.LBB52_552:                             # %cond.end.3248
	movl	-860(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_553:                             # %cond.false.3250
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_555
# BB#554:                               # %cond.true.3257
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -864(%rbp)        # 4-byte Spill
	jmp	.LBB52_556
.LBB52_555:                             # %cond.false.3275
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -864(%rbp)        # 4-byte Spill
.LBB52_556:                             # %cond.end.3280
	movl	-864(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_561
# BB#557:                               # %land.lhs.true.3284
	cmpl	$0, -280(%rbp)
	jge	.LBB52_559
# BB#558:                               # %land.lhs.true.3287
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jl	.LBB52_587
.LBB52_559:                             # %lor.lhs.false.3290
	cmpl	$0, -284(%rbp)
	jge	.LBB52_561
# BB#560:                               # %land.lhs.true.3293
	xorl	%eax, %eax
	cmpl	-280(%rbp), %eax
	jl	.LBB52_587
.LBB52_561:                             # %lor.lhs.false.3296
	cmpl	$0, -284(%rbp)
	jge	.LBB52_573
# BB#562:                               # %cond.true.3299
	cmpl	$0, -280(%rbp)
	jge	.LBB52_567
# BB#563:                               # %cond.true.3302
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jge	.LBB52_565
# BB#564:                               # %cond.true.3309
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
	jmp	.LBB52_566
.LBB52_565:                             # %cond.false.3318
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
.LBB52_566:                             # %cond.end.3323
	movl	-872(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-868(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_587
	jmp	.LBB52_584
.LBB52_567:                             # %cond.false.3328
	cmpl	$-1, -284(%rbp)
	jne	.LBB52_569
# BB#568:                               # %cond.true.3331
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_587
	jmp	.LBB52_584
.LBB52_569:                             # %cond.false.3332
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_571
# BB#570:                               # %cond.true.3339
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
	jmp	.LBB52_572
.LBB52_571:                             # %cond.false.3357
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
.LBB52_572:                             # %cond.end.3362
	movl	-876(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_587
	jmp	.LBB52_584
.LBB52_573:                             # %cond.false.3367
	cmpl	$0, -284(%rbp)
	jne	.LBB52_575
# BB#574:                               # %cond.true.3370
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_587
	jmp	.LBB52_584
.LBB52_575:                             # %cond.false.3371
	cmpl	$0, -280(%rbp)
	jge	.LBB52_580
# BB#576:                               # %cond.true.3374
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -880(%rbp)        # 4-byte Spill
	jge	.LBB52_578
# BB#577:                               # %cond.true.3381
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -884(%rbp)        # 4-byte Spill
	jmp	.LBB52_579
.LBB52_578:                             # %cond.false.3399
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -884(%rbp)        # 4-byte Spill
.LBB52_579:                             # %cond.end.3404
	movl	-884(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-880(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_587
	jmp	.LBB52_584
.LBB52_580:                             # %cond.false.3409
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_582
# BB#581:                               # %cond.true.3416
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -888(%rbp)        # 4-byte Spill
	jmp	.LBB52_583
.LBB52_582:                             # %cond.false.3425
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -888(%rbp)        # 4-byte Spill
.LBB52_583:                             # %cond.end.3430
	movl	-888(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_587
.LBB52_584:                             # %lor.lhs.false.3435
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_586
# BB#585:                               # %land.lhs.true.3441
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB52_587
.LBB52_586:                             # %lor.lhs.false.3445
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB52_591
.LBB52_587:                             # %cond.true.3449
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_589
# BB#588:                               # %cond.true.3453
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	movl	%eax, -892(%rbp)        # 4-byte Spill
	jmp	.LBB52_590
.LBB52_589:                             # %cond.false.3455
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -892(%rbp)        # 4-byte Spill
.LBB52_590:                             # %cond.end.3459
	movl	-892(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_591:                             # %cond.false.3461
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB52_593
# BB#592:                               # %cond.true.3465
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
	jmp	.LBB52_594
.LBB52_593:                             # %cond.false.3467
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -896(%rbp)        # 4-byte Spill
.LBB52_594:                             # %cond.end.3471
	movl	-896(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_595:                             # %cond.false.3473
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_596
	jmp	.LBB52_681
.LBB52_596:                             # %cond.true.3474
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_597
	jmp	.LBB52_639
.LBB52_597:                             # %cond.true.3475
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_599
# BB#598:                               # %cond.true.3484
	xorl	%eax, %eax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-284(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-280(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB52_600
.LBB52_599:                             # %cond.false.3507
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB52_600:                             # %cond.end.3514
	movq	-904(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB52_605
# BB#601:                               # %land.lhs.true.3518
	movslq	-280(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_603
# BB#602:                               # %land.lhs.true.3522
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-284(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB52_631
.LBB52_603:                             # %lor.lhs.false.3526
	movslq	-284(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_605
# BB#604:                               # %land.lhs.true.3530
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-280(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB52_631
.LBB52_605:                             # %lor.lhs.false.3534
	movslq	-284(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_617
# BB#606:                               # %cond.true.3538
	movslq	-280(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_611
# BB#607:                               # %cond.true.3542
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jge	.LBB52_609
# BB#608:                               # %cond.true.3552
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB52_610
.LBB52_609:                             # %cond.false.3563
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB52_610:                             # %cond.end.3570
	movq	-920(%rbp), %rax        # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-912(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB52_631
	jmp	.LBB52_628
.LBB52_611:                             # %cond.false.3576
	movslq	-284(%rbp), %rax
	cmpq	$-1, %rax
	jne	.LBB52_613
# BB#612:                               # %cond.true.3580
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_631
	jmp	.LBB52_628
.LBB52_613:                             # %cond.false.3581
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_615
# BB#614:                               # %cond.true.3590
	xorl	%eax, %eax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-284(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-280(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB52_616
.LBB52_615:                             # %cond.false.3613
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB52_616:                             # %cond.end.3620
	movq	-928(%rbp), %rax        # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-280(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB52_631
	jmp	.LBB52_628
.LBB52_617:                             # %cond.false.3627
	movslq	-284(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB52_619
# BB#618:                               # %cond.true.3631
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_631
	jmp	.LBB52_628
.LBB52_619:                             # %cond.false.3632
	movslq	-280(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_624
# BB#620:                               # %cond.true.3636
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jge	.LBB52_622
# BB#621:                               # %cond.true.3646
	xorl	%eax, %eax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-284(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-280(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB52_623
.LBB52_622:                             # %cond.false.3669
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB52_623:                             # %cond.end.3676
	movq	-944(%rbp), %rax        # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-936(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB52_631
	jmp	.LBB52_628
.LBB52_624:                             # %cond.false.3682
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_626
# BB#625:                               # %cond.true.3691
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB52_627
.LBB52_626:                             # %cond.false.3702
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB52_627:                             # %cond.end.3709
	movq	-952(%rbp), %rax        # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-280(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB52_631
.LBB52_628:                             # %lor.lhs.false.3716
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_630
# BB#629:                               # %land.lhs.true.3724
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB52_631
.LBB52_630:                             # %lor.lhs.false.3730
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB52_635
.LBB52_631:                             # %cond.true.3736
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_633
# BB#632:                               # %cond.true.3742
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB52_634
.LBB52_633:                             # %cond.false.3746
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
.LBB52_634:                             # %cond.end.3752
	movq	-960(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_635:                             # %cond.false.3755
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_637
# BB#636:                               # %cond.true.3761
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB52_638
.LBB52_637:                             # %cond.false.3765
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB52_638:                             # %cond.end.3771
	movq	-968(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_639:                             # %cond.false.3774
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_641
# BB#640:                               # %cond.true.3781
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -972(%rbp)        # 4-byte Spill
	jmp	.LBB52_642
.LBB52_641:                             # %cond.false.3799
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -972(%rbp)        # 4-byte Spill
.LBB52_642:                             # %cond.end.3804
	movl	-972(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_647
# BB#643:                               # %land.lhs.true.3808
	cmpl	$0, -280(%rbp)
	jge	.LBB52_645
# BB#644:                               # %land.lhs.true.3811
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jl	.LBB52_673
.LBB52_645:                             # %lor.lhs.false.3814
	cmpl	$0, -284(%rbp)
	jge	.LBB52_647
# BB#646:                               # %land.lhs.true.3817
	xorl	%eax, %eax
	cmpl	-280(%rbp), %eax
	jl	.LBB52_673
.LBB52_647:                             # %lor.lhs.false.3820
	cmpl	$0, -284(%rbp)
	jge	.LBB52_659
# BB#648:                               # %cond.true.3823
	cmpl	$0, -280(%rbp)
	jge	.LBB52_653
# BB#649:                               # %cond.true.3826
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -976(%rbp)        # 4-byte Spill
	jge	.LBB52_651
# BB#650:                               # %cond.true.3833
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -980(%rbp)        # 4-byte Spill
	jmp	.LBB52_652
.LBB52_651:                             # %cond.false.3842
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -980(%rbp)        # 4-byte Spill
.LBB52_652:                             # %cond.end.3847
	movl	-980(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-976(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_673
	jmp	.LBB52_670
.LBB52_653:                             # %cond.false.3852
	cmpl	$-1, -284(%rbp)
	jne	.LBB52_655
# BB#654:                               # %cond.true.3855
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_673
	jmp	.LBB52_670
.LBB52_655:                             # %cond.false.3856
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_657
# BB#656:                               # %cond.true.3863
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -984(%rbp)        # 4-byte Spill
	jmp	.LBB52_658
.LBB52_657:                             # %cond.false.3881
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -984(%rbp)        # 4-byte Spill
.LBB52_658:                             # %cond.end.3886
	movl	-984(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_673
	jmp	.LBB52_670
.LBB52_659:                             # %cond.false.3891
	cmpl	$0, -284(%rbp)
	jne	.LBB52_661
# BB#660:                               # %cond.true.3894
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_673
	jmp	.LBB52_670
.LBB52_661:                             # %cond.false.3895
	cmpl	$0, -280(%rbp)
	jge	.LBB52_666
# BB#662:                               # %cond.true.3898
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -988(%rbp)        # 4-byte Spill
	jge	.LBB52_664
# BB#663:                               # %cond.true.3905
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -992(%rbp)        # 4-byte Spill
	jmp	.LBB52_665
.LBB52_664:                             # %cond.false.3923
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -992(%rbp)        # 4-byte Spill
.LBB52_665:                             # %cond.end.3928
	movl	-992(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-988(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_673
	jmp	.LBB52_670
.LBB52_666:                             # %cond.false.3933
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_668
# BB#667:                               # %cond.true.3940
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -996(%rbp)        # 4-byte Spill
	jmp	.LBB52_669
.LBB52_668:                             # %cond.false.3949
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -996(%rbp)        # 4-byte Spill
.LBB52_669:                             # %cond.end.3954
	movl	-996(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_673
.LBB52_670:                             # %lor.lhs.false.3959
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_672
# BB#671:                               # %land.lhs.true.3965
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB52_673
.LBB52_672:                             # %lor.lhs.false.3970
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB52_677
.LBB52_673:                             # %cond.true.3975
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_675
# BB#674:                               # %cond.true.3981
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB52_676
.LBB52_675:                             # %cond.false.3985
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB52_676:                             # %cond.end.3991
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_677:                             # %cond.false.3994
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_679
# BB#678:                               # %cond.true.4000
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB52_680
.LBB52_679:                             # %cond.false.4004
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB52_680:                             # %cond.end.4010
	movq	-1016(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_681:                             # %cond.false.4013
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_682
	jmp	.LBB52_724
.LBB52_682:                             # %cond.true.4014
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_684
# BB#683:                               # %cond.true.4023
	xorl	%eax, %eax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-284(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-280(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB52_685
.LBB52_684:                             # %cond.false.4046
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB52_685:                             # %cond.end.4053
	movq	-1024(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB52_690
# BB#686:                               # %land.lhs.true.4057
	movslq	-280(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_688
# BB#687:                               # %land.lhs.true.4061
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-284(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB52_716
.LBB52_688:                             # %lor.lhs.false.4065
	movslq	-284(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_690
# BB#689:                               # %land.lhs.true.4069
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-280(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB52_716
.LBB52_690:                             # %lor.lhs.false.4073
	movslq	-284(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_702
# BB#691:                               # %cond.true.4077
	movslq	-280(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_696
# BB#692:                               # %cond.true.4081
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jge	.LBB52_694
# BB#693:                               # %cond.true.4091
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB52_695
.LBB52_694:                             # %cond.false.4102
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB52_695:                             # %cond.end.4109
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB52_716
	jmp	.LBB52_713
.LBB52_696:                             # %cond.false.4115
	movslq	-284(%rbp), %rax
	cmpq	$-1, %rax
	jne	.LBB52_698
# BB#697:                               # %cond.true.4119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_716
	jmp	.LBB52_713
.LBB52_698:                             # %cond.false.4120
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_700
# BB#699:                               # %cond.true.4129
	xorl	%eax, %eax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-284(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-280(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB52_701
.LBB52_700:                             # %cond.false.4152
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB52_701:                             # %cond.end.4159
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-280(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB52_716
	jmp	.LBB52_713
.LBB52_702:                             # %cond.false.4166
	movslq	-284(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB52_704
# BB#703:                               # %cond.true.4170
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_716
	jmp	.LBB52_713
.LBB52_704:                             # %cond.false.4171
	movslq	-280(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB52_709
# BB#705:                               # %cond.true.4175
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jge	.LBB52_707
# BB#706:                               # %cond.true.4185
	xorl	%eax, %eax
	movslq	-284(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-280(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-284(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-280(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB52_708
.LBB52_707:                             # %cond.false.4208
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB52_708:                             # %cond.end.4215
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB52_716
	jmp	.LBB52_713
.LBB52_709:                             # %cond.false.4221
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_711
# BB#710:                               # %cond.true.4230
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB52_712
.LBB52_711:                             # %cond.false.4241
	movslq	-284(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-280(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB52_712:                             # %cond.end.4248
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movslq	-284(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-280(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB52_716
.LBB52_713:                             # %lor.lhs.false.4255
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB52_715
# BB#714:                               # %land.lhs.true.4263
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB52_716
.LBB52_715:                             # %lor.lhs.false.4269
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB52_720
.LBB52_716:                             # %cond.true.4275
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_718
# BB#717:                               # %cond.true.4281
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB52_719
.LBB52_718:                             # %cond.false.4285
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB52_719:                             # %cond.end.4291
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_720:                             # %cond.false.4294
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_722
# BB#721:                               # %cond.true.4300
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB52_723
.LBB52_722:                             # %cond.false.4304
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB52_723:                             # %cond.end.4310
	movq	-1088(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_724:                             # %cond.false.4313
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_726
# BB#725:                               # %cond.true.4320
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB52_727
.LBB52_726:                             # %cond.false.4338
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
.LBB52_727:                             # %cond.end.4343
	movl	-1092(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB52_732
# BB#728:                               # %land.lhs.true.4347
	cmpl	$0, -280(%rbp)
	jge	.LBB52_730
# BB#729:                               # %land.lhs.true.4350
	xorl	%eax, %eax
	cmpl	-284(%rbp), %eax
	jl	.LBB52_758
.LBB52_730:                             # %lor.lhs.false.4353
	cmpl	$0, -284(%rbp)
	jge	.LBB52_732
# BB#731:                               # %land.lhs.true.4356
	xorl	%eax, %eax
	cmpl	-280(%rbp), %eax
	jl	.LBB52_758
.LBB52_732:                             # %lor.lhs.false.4359
	cmpl	$0, -284(%rbp)
	jge	.LBB52_744
# BB#733:                               # %cond.true.4362
	cmpl	$0, -280(%rbp)
	jge	.LBB52_738
# BB#734:                               # %cond.true.4365
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	jge	.LBB52_736
# BB#735:                               # %cond.true.4372
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	jmp	.LBB52_737
.LBB52_736:                             # %cond.false.4381
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
.LBB52_737:                             # %cond.end.4386
	movl	-1100(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-1096(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_758
	jmp	.LBB52_755
.LBB52_738:                             # %cond.false.4391
	cmpl	$-1, -284(%rbp)
	jne	.LBB52_740
# BB#739:                               # %cond.true.4394
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_758
	jmp	.LBB52_755
.LBB52_740:                             # %cond.false.4395
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_742
# BB#741:                               # %cond.true.4402
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1104(%rbp)       # 4-byte Spill
	jmp	.LBB52_743
.LBB52_742:                             # %cond.false.4420
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1104(%rbp)       # 4-byte Spill
.LBB52_743:                             # %cond.end.4425
	movl	-1104(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_758
	jmp	.LBB52_755
.LBB52_744:                             # %cond.false.4430
	cmpl	$0, -284(%rbp)
	jne	.LBB52_746
# BB#745:                               # %cond.true.4433
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB52_758
	jmp	.LBB52_755
.LBB52_746:                             # %cond.false.4434
	cmpl	$0, -280(%rbp)
	jge	.LBB52_751
# BB#747:                               # %cond.true.4437
	movl	-280(%rbp), %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jge	.LBB52_749
# BB#748:                               # %cond.true.4444
	xorl	%eax, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -284(%rbp), %ecx
	addl	-280(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	jmp	.LBB52_750
.LBB52_749:                             # %cond.false.4462
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1112(%rbp)       # 4-byte Spill
.LBB52_750:                             # %cond.end.4467
	movl	-1112(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	movl	-1108(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB52_758
	jmp	.LBB52_755
.LBB52_751:                             # %cond.false.4472
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_753
# BB#752:                               # %cond.true.4479
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	jmp	.LBB52_754
.LBB52_753:                             # %cond.false.4488
	imull	$0, -284(%rbp), %eax
	addl	-280(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1116(%rbp)       # 4-byte Spill
.LBB52_754:                             # %cond.end.4493
	movl	-1116(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-284(%rbp)
	cmpl	-280(%rbp), %eax
	jl	.LBB52_758
.LBB52_755:                             # %lor.lhs.false.4498
	movl	-280(%rbp), %eax
	imull	-284(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_757
# BB#756:                               # %land.lhs.true.4504
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB52_758
.LBB52_757:                             # %lor.lhs.false.4509
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-280(%rbp), %ecx
	imull	-284(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB52_762
.LBB52_758:                             # %cond.true.4514
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_760
# BB#759:                               # %cond.true.4520
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB52_761
.LBB52_760:                             # %cond.false.4524
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB52_761:                             # %cond.end.4530
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -284(%rbp)
	testb	$1, %cl
	jne	.LBB52_767
	jmp	.LBB52_766
.LBB52_762:                             # %cond.false.4533
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-280(%rbp), %rcx
	movslq	-284(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB52_764
# BB#763:                               # %cond.true.4539
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB52_765
.LBB52_764:                             # %cond.false.4543
	movslq	-280(%rbp), %rax
	movslq	-284(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB52_765:                             # %cond.end.4549
	movq	-1136(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -284(%rbp)
	testb	$1, %dl
	jne	.LBB52_767
.LBB52_766:                             # %lor.lhs.false.4552
	movabsq	$192153584101141162, %rax # imm = 0x2AAAAAAAAAAAAAA
	movslq	-284(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB52_768
.LBB52_767:                             # %if.then.4556
	movabsq	$.L.str.12, %rdi
	movl	-276(%rbp), %esi
	movl	-280(%rbp), %edx
	movb	$0, %al
	callq	fatal
.LBB52_768:                             # %if.end.4557
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	calculate_costs
	testb	$1, initialized
	je	.LBB52_776
# BB#769:                               # %land.lhs.true.4561
	testb	$1, noninteractive
	jne	.LBB52_776
# BB#770:                               # %land.lhs.true.4563
	xorl	%edi, %edi
	movq	globals+1136, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_776
# BB#771:                               # %if.then.4567
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB52_772
	jmp	.LBB52_774
.LBB52_772:                             # %land.lhs.true.4571
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB52_774
# BB#773:                               # %cond.true.4576
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB52_775
.LBB52_774:                             # %cond.false.4578
	callq	emacs_abort
.LBB52_775:                             # %cond.end.4579
	movabsq	$.L.str.13, %rdi
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rcx
	movq	$-2, 480(%rcx)
	movq	-296(%rbp), %rcx
	movq	$-3, 472(%rcx)
	callq	intern
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB52_776:                             # %if.end.4583
	addq	$1168, %rsp             # imm = 0x490
	popq	%rbp
	retq
.Lfunc_end52:
	.size	init_display, .Lfunc_end52-init_display
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_window_change_signal,@function
deliver_window_change_signal:           # @deliver_window_change_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$handle_window_change_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_process_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	deliver_window_change_signal, .Lfunc_end53-deliver_window_change_signal
	.cfi_endproc

	.globl	Finternal_show_cursor
	.align	16, 0x90
	.type	Finternal_show_cursor,@function
Finternal_show_cursor:                  # @Finternal_show_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	testb	$1, redisplaying_p
	jne	.LBB54_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	sete	%dl
	movq	-8(%rbp), %rdi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movb	%dl, -33(%rbp)          # 1-byte Spill
	callq	decode_any_window
	movb	-33(%rbp), %dl          # 1-byte Reload
	movzbl	%dl, %esi
	movw	%si, %r8w
	movw	468(%rax), %r9w
	shlw	$8, %r8w
	andw	$-257, %r9w             # imm = 0xFFFFFFFFFFFFFEFF
	orw	%r8w, %r9w
	movw	%r9w, 468(%rax)
.LBB54_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	Finternal_show_cursor, .Lfunc_end54-Finternal_show_cursor
	.cfi_endproc

	.globl	Finternal_show_cursor_p
	.align	16, 0x90
	.type	Finternal_show_cursor_p,@function
Finternal_show_cursor_p:                # @Finternal_show_cursor_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_window
	movw	468(%rax), %cx
	shrw	$8, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB55_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB55_3
.LBB55_2:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB55_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Finternal_show_cursor_p, .Lfunc_end55-Finternal_show_cursor_p
	.cfi_endproc

	.globl	syms_of_display
	.align	16, 0x90
	.type	syms_of_display,@function
syms_of_display:                        # @syms_of_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	movabsq	$Sredraw_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sredraw_display, %rdi
	callq	defsubr
	movabsq	$Sframe_or_buffer_changed_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sopen_termscript, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sding, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sredisplay, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssleep_for, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssend_string_to_terminal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_show_cursor, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_show_cursor_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movl	$82, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$frame_and_buffer_state, %rdi
	movq	%rax, frame_and_buffer_state
	callq	staticpro
# BB#1:                                 # %do.body
	movabsq	$syms_of_display.i_fwd, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$globals, %rax
	addq	$3048, %rax             # imm = 0xBE8
	movq	%rax, %rdx
	callq	defvar_int
# BB#2:                                 # %do.end
	jmp	.LBB56_3
.LBB56_3:                               # %do.body.2
	movabsq	$syms_of_display.b_fwd, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$globals, %rax
	addq	$3402, %rax             # imm = 0xD4A
	movq	%rax, %rdx
	callq	defvar_bool
# BB#4:                                 # %do.end.3
	jmp	.LBB56_5
.LBB56_5:                               # %do.body.4
	movabsq	$syms_of_display.b_fwd.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$globals, %rax
	addq	$3436, %rax             # imm = 0xD6C
	movq	%rax, %rdx
	callq	defvar_bool
# BB#6:                                 # %do.end.5
	jmp	.LBB56_7
.LBB56_7:                               # %do.body.6
	movabsq	$syms_of_display.b_fwd.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$globals, %rax
	addq	$3416, %rax             # imm = 0xD58
	movq	%rax, %rdx
	callq	defvar_bool
# BB#8:                                 # %do.end.7
	jmp	.LBB56_9
.LBB56_9:                               # %do.body.8
	movabsq	$syms_of_display.o_fwd, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$globals, %rax
	addq	$1136, %rax             # imm = 0x470
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.9
	jmp	.LBB56_11
.LBB56_11:                              # %do.body.10
	movabsq	$syms_of_display.ko_fwd, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$136, %edx
	callq	defvar_kboard
# BB#12:                                # %do.end.11
	jmp	.LBB56_13
.LBB56_13:                              # %do.body.12
	movabsq	$syms_of_display.o_fwd.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$globals, %rax
	addq	$2672, %rax             # imm = 0xA70
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.13
	jmp	.LBB56_15
.LBB56_15:                              # %do.body.14
	movabsq	$syms_of_display.b_fwd.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$globals, %rax
	addq	$3371, %rax             # imm = 0xD2B
	movq	%rax, %rdx
	callq	defvar_bool
# BB#16:                                # %do.end.15
	jmp	.LBB56_17
.LBB56_17:                              # %do.body.16
	movabsq	$syms_of_display.o_fwd.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$globals, %rax
	addq	$944, %rax              # imm = 0x3B0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+944
# BB#19:                                # %do.body.19
	movabsq	$syms_of_display.o_fwd.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$globals, %rax
	addq	$2200, %rax             # imm = 0x898
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2200
# BB#21:                                # %do.body.22
	movabsq	$syms_of_display.b_fwd.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$globals, %rax
	addq	$3427, %rax             # imm = 0xD63
	movq	%rax, %rdx
	callq	defvar_bool
# BB#22:                                # %do.end.23
	xorl	%edi, %edi
	movb	$1, globals+3427
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+1136
	callq	builtin_lisp_symbol
	movq	%rax, globals+2672
	popq	%rbp
	retq
.Lfunc_end56:
	.size	syms_of_display, .Lfunc_end56-syms_of_display
	.cfi_endproc

	.align	16, 0x90
	.type	new_glyph_pool,@function
new_glyph_pool:                         # @new_glyph_pool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$24, %eax
	movl	%eax, %edi
	callq	xzalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	new_glyph_pool, .Lfunc_end57-new_glyph_pool
	.cfi_endproc

	.align	16, 0x90
	.type	new_glyph_matrix,@function
new_glyph_matrix:                       # @new_glyph_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$104, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xzalloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	new_glyph_matrix, .Lfunc_end58-new_glyph_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_matrices_for_frame_redisplay,@function
allocate_matrices_for_frame_redisplay:  # @allocate_matrices_for_frame_redisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movb	%cl, %r9b
	movq	-112(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	movb	%r9b, -113(%rbp)        # 1-byte Spill
	je	.LBB59_4
# BB#1:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	WINDOWP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -114(%rbp)         # 1-byte Spill
	jne	.LBB59_2
	jmp	.LBB59_3
.LBB59_2:                               # %land.rhs.7
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	32(%rax), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movb	%cl, %dl
	movb	%dl, -114(%rbp)         # 1-byte Spill
.LBB59_3:                               # %land.end
	movb	-114(%rbp), %al         # 1-byte Reload
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB59_4:                               # %land.end.11
	movb	-113(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -89(%rbp)
.LBB59_5:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB59_6
	jmp	.LBB59_7
.LBB59_6:                               # %if.then
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movb	-25(%rbp), %cl
	movq	-40(%rbp), %r8
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	allocate_matrices_for_frame_redisplay
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB59_19
.LBB59_7:                               # %if.else
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, 200(%rax)
	jne	.LBB59_9
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-48(%rbp), %rax
	movq	184(%rax), %rdi
	callq	new_glyph_matrix
	movq	-88(%rbp), %rdi
	movq	%rax, 200(%rdi)
	movq	-48(%rbp), %rax
	movq	176(%rax), %rdi
	callq	new_glyph_matrix
	movq	-88(%rbp), %rdi
	movq	%rax, 192(%rdi)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, (%rax)
.LBB59_9:                               # %if.end
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-88(%rbp), %rdi
	callq	required_matrix_width
	movl	%eax, -80(%rbp)
	movq	-88(%rbp), %rdi
	callq	required_matrix_height
	movl	%eax, -76(%rbp)
	movl	-20(%rbp), %eax
	movq	-88(%rbp), %rdi
	movq	200(%rdi), %rdi
	cmpl	28(%rdi), %eax
	jne	.LBB59_15
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-24(%rbp), %eax
	movq	-88(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	32(%rcx), %eax
	jne	.LBB59_15
# BB#11:                                # %lor.lhs.false.29
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-80(%rbp), %eax
	movq	-88(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	36(%rcx), %eax
	jne	.LBB59_15
# BB#12:                                # %lor.lhs.false.33
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-76(%rbp), %eax
	movq	-88(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	40(%rcx), %eax
	jne	.LBB59_15
# BB#13:                                # %lor.lhs.false.37
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-88(%rbp), %rdi
	movl	-80(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	428(%rax), %edx
	callq	margin_glyphs_to_reserve
	movq	-88(%rbp), %rdi
	movq	200(%rdi), %rdi
	cmpl	64(%rdi), %eax
	jne	.LBB59_15
# BB#14:                                # %lor.lhs.false.42
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-88(%rbp), %rdi
	movl	-80(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	432(%rax), %edx
	callq	margin_glyphs_to_reserve
	movq	-88(%rbp), %rdi
	movq	200(%rdi), %rdi
	cmpl	68(%rdi), %eax
	je	.LBB59_16
.LBB59_15:                              # %if.then.47
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, (%rax)
.LBB59_16:                              # %if.end.49
                                        #   in Loop: Header=BB59_5 Depth=1
	testb	$1, -25(%rbp)
	jne	.LBB59_18
# BB#17:                                # %if.then.51
                                        #   in Loop: Header=BB59_5 Depth=1
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	200(%rax), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-80(%rbp), %r8
	callq	adjust_glyph_matrix
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	192(%rax), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-80(%rbp), %r8
	callq	adjust_glyph_matrix
.LBB59_18:                              # %if.end.54
                                        #   in Loop: Header=BB59_5 Depth=1
	jmp	.LBB59_19
.LBB59_19:                              # %if.end.55
                                        #   in Loop: Header=BB59_5 Depth=1
	testb	$1, -89(%rbp)
	je	.LBB59_21
# BB#20:                                # %if.then.57
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-80(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB59_22
.LBB59_21:                              # %if.else.59
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-76(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB59_22:                              # %if.end.62
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB59_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB59_25
.LBB59_24:                              # %cond.false
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB59_25:                              # %cond.end
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB59_27
# BB#26:                                # %cond.true.68
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB59_28
.LBB59_27:                              # %cond.false.69
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB59_28:                              # %cond.end.71
                                        #   in Loop: Header=BB59_5 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -16(%rbp)
# BB#29:                                # %do.cond
                                        #   in Loop: Header=BB59_5 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB59_5
# BB#30:                                # %do.end
	testb	$1, -89(%rbp)
	je	.LBB59_32
# BB#31:                                # %if.then.76
	movl	-20(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB59_33
.LBB59_32:                              # %if.else.80
	movl	-60(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-24(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB59_33:                              # %if.end.84
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	allocate_matrices_for_frame_redisplay, .Lfunc_end59-allocate_matrices_for_frame_redisplay
	.cfi_endproc

	.align	16, 0x90
	.type	realloc_glyph_pool,@function
realloc_glyph_pool:                     # @realloc_glyph_pool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              # imm = 0x200
	movb	$1, %al
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, (%rsi)
	movb	%al, -41(%rbp)          # 1-byte Spill
	je	.LBB60_3
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rdx
	cmpl	16(%rdx), %ecx
	movb	%al, -41(%rbp)          # 1-byte Spill
	jne	.LBB60_3
# BB#2:                                 # %lor.rhs
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	20(%rcx), %eax
	setne	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB60_3:                               # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, %dl
	jne	.LBB60_4
	jmp	.LBB60_89
.LBB60_4:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_5
	jmp	.LBB60_47
.LBB60_5:                               # %cond.true.3
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_7
# BB#6:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB60_8
.LBB60_7:                               # %cond.false
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB60_8:                               # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_13
# BB#9:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB60_11
# BB#10:                                # %land.lhs.true.57
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_39
.LBB60_11:                              # %lor.lhs.false.63
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB60_13
# BB#12:                                # %land.lhs.true.69
	xorl	%eax, %eax
	movl	-4(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_39
.LBB60_13:                              # %lor.lhs.false.75
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB60_25
# BB#14:                                # %cond.true.81
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB60_19
# BB#15:                                # %cond.true.87
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-4(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jge	.LBB60_17
# BB#16:                                # %cond.true.103
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB60_18
.LBB60_17:                              # %cond.false.118
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB60_18:                              # %cond.end.129
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_39
	jmp	.LBB60_36
.LBB60_19:                              # %cond.false.136
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$-1, %eax
	jne	.LBB60_21
# BB#20:                                # %cond.true.142
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_39
	jmp	.LBB60_36
.LBB60_21:                              # %cond.false.143
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_23
# BB#22:                                # %cond.true.156
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB60_24
.LBB60_23:                              # %cond.false.186
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB60_24:                              # %cond.end.197
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-4(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_39
	jmp	.LBB60_36
.LBB60_25:                              # %cond.false.208
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jne	.LBB60_27
# BB#26:                                # %cond.true.214
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_39
	jmp	.LBB60_36
.LBB60_27:                              # %cond.false.215
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB60_32
# BB#28:                                # %cond.true.221
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movl	-4(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jge	.LBB60_30
# BB#29:                                # %cond.true.237
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB60_31
.LBB60_30:                              # %cond.false.267
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB60_31:                              # %cond.end.278
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_39
	jmp	.LBB60_36
.LBB60_32:                              # %cond.false.286
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_34
# BB#33:                                # %cond.true.299
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB60_35
.LBB60_34:                              # %cond.false.314
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB60_35:                              # %cond.end.325
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-4(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_39
.LBB60_36:                              # %lor.lhs.false.336
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_38
# BB#37:                                # %land.lhs.true.348
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$-128, %eax
	jl	.LBB60_39
.LBB60_38:                              # %lor.lhs.false.358
	movl	$127, %eax
	movl	-4(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	-8(%rbp), %esi
	movb	%sil, %dl
	movsbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_43
.LBB60_39:                              # %cond.true.368
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB60_41
# BB#40:                                # %cond.true.378
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB60_42
.LBB60_41:                              # %cond.false.388
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB60_42:                              # %cond.end.400
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_43:                              # %cond.false.403
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB60_45
# BB#44:                                # %cond.true.413
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB60_46
.LBB60_45:                              # %cond.false.423
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB60_46:                              # %cond.end.435
	movl	-80(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_47:                              # %cond.false.438
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_49
# BB#48:                                # %cond.true.447
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB60_50
.LBB60_49:                              # %cond.false.469
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB60_50:                              # %cond.end.476
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_55
# BB#51:                                # %land.lhs.true.480
	cmpl	$0, -4(%rbp)
	jge	.LBB60_53
# BB#52:                                # %land.lhs.true.484
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB60_81
.LBB60_53:                              # %lor.lhs.false.488
	cmpl	$0, -8(%rbp)
	jge	.LBB60_55
# BB#54:                                # %land.lhs.true.492
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB60_81
.LBB60_55:                              # %lor.lhs.false.496
	cmpl	$0, -8(%rbp)
	jge	.LBB60_67
# BB#56:                                # %cond.true.500
	cmpl	$0, -4(%rbp)
	jge	.LBB60_61
# BB#57:                                # %cond.true.504
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jge	.LBB60_59
# BB#58:                                # %cond.true.514
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB60_60
.LBB60_59:                              # %cond.false.525
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB60_60:                              # %cond.end.532
	movl	-92(%rbp), %eax         # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_81
	jmp	.LBB60_78
.LBB60_61:                              # %cond.false.538
	cmpl	$-1, -8(%rbp)
	jne	.LBB60_63
# BB#62:                                # %cond.true.542
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_81
	jmp	.LBB60_78
.LBB60_63:                              # %cond.false.543
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_65
# BB#64:                                # %cond.true.552
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB60_66
.LBB60_65:                              # %cond.false.574
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB60_66:                              # %cond.end.581
	movl	-96(%rbp), %eax         # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_81
	jmp	.LBB60_78
.LBB60_67:                              # %cond.false.588
	cmpl	$0, -8(%rbp)
	jne	.LBB60_69
# BB#68:                                # %cond.true.592
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_81
	jmp	.LBB60_78
.LBB60_69:                              # %cond.false.593
	cmpl	$0, -4(%rbp)
	jge	.LBB60_74
# BB#70:                                # %cond.true.597
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jge	.LBB60_72
# BB#71:                                # %cond.true.607
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB60_73
.LBB60_72:                              # %cond.false.629
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB60_73:                              # %cond.end.636
	movl	-104(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_81
	jmp	.LBB60_78
.LBB60_74:                              # %cond.false.642
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_76
# BB#75:                                # %cond.true.651
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB60_77
.LBB60_76:                              # %cond.false.662
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB60_77:                              # %cond.end.669
	movl	-108(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_81
.LBB60_78:                              # %lor.lhs.false.676
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_80
# BB#79:                                # %land.lhs.true.684
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$-128, %eax
	jl	.LBB60_81
.LBB60_80:                              # %lor.lhs.false.690
	movl	$127, %eax
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_85
.LBB60_81:                              # %cond.true.696
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB60_83
# BB#82:                                # %cond.true.706
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB60_84
.LBB60_83:                              # %cond.false.716
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB60_84:                              # %cond.end.728
	movl	-112(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_85:                              # %cond.false.731
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	cmpl	$127, %eax
	jg	.LBB60_87
# BB#86:                                # %cond.true.741
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB60_88
.LBB60_87:                              # %cond.false.751
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	-8(%rbp), %edx
	movb	%dl, %cl
	movzbl	%cl, %edx
	imull	%edx, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB60_88:                              # %cond.end.763
	movl	-116(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_89:                              # %cond.false.766
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_90
	jmp	.LBB60_175
.LBB60_90:                              # %cond.true.767
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_91
	jmp	.LBB60_133
.LBB60_91:                              # %cond.true.768
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_93
# BB#92:                                # %cond.true.781
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB60_94
.LBB60_93:                              # %cond.false.811
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB60_94:                              # %cond.end.822
	movl	-120(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_99
# BB#95:                                # %land.lhs.true.826
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB60_97
# BB#96:                                # %land.lhs.true.832
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_125
.LBB60_97:                              # %lor.lhs.false.838
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB60_99
# BB#98:                                # %land.lhs.true.844
	xorl	%eax, %eax
	movl	-4(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_125
.LBB60_99:                              # %lor.lhs.false.850
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB60_111
# BB#100:                               # %cond.true.856
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB60_105
# BB#101:                               # %cond.true.862
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-4(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jge	.LBB60_103
# BB#102:                               # %cond.true.878
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB60_104
.LBB60_103:                             # %cond.false.893
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB60_104:                             # %cond.end.904
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_125
	jmp	.LBB60_122
.LBB60_105:                             # %cond.false.912
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$-1, %eax
	jne	.LBB60_107
# BB#106:                               # %cond.true.918
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_125
	jmp	.LBB60_122
.LBB60_107:                             # %cond.false.919
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_109
# BB#108:                               # %cond.true.932
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB60_110
.LBB60_109:                             # %cond.false.962
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB60_110:                             # %cond.end.973
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-4(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_125
	jmp	.LBB60_122
.LBB60_111:                             # %cond.false.984
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jne	.LBB60_113
# BB#112:                               # %cond.true.990
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_125
	jmp	.LBB60_122
.LBB60_113:                             # %cond.false.991
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB60_118
# BB#114:                               # %cond.true.997
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movl	-4(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jge	.LBB60_116
# BB#115:                               # %cond.true.1013
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movl	-4(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB60_117
.LBB60_116:                             # %cond.false.1043
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB60_117:                             # %cond.end.1054
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-136(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_125
	jmp	.LBB60_122
.LBB60_118:                             # %cond.false.1062
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_120
# BB#119:                               # %cond.true.1075
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB60_121
.LBB60_120:                             # %cond.false.1090
	movl	-8(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movl	-4(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB60_121:                             # %cond.end.1101
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	-8(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-4(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB60_125
.LBB60_122:                             # %lor.lhs.false.1112
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_124
# BB#123:                               # %land.lhs.true.1124
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	imull	%edx, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB60_125
.LBB60_124:                             # %lor.lhs.false.1134
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-4(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	-8(%rbp), %esi
	movw	%si, %dx
	movswl	%dx, %esi
	imull	%esi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_129
.LBB60_125:                             # %cond.true.1144
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB60_127
# BB#126:                               # %cond.true.1154
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB60_128
.LBB60_127:                             # %cond.false.1164
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB60_128:                             # %cond.end.1176
	movl	-148(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_129:                             # %cond.false.1179
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB60_131
# BB#130:                               # %cond.true.1189
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB60_132
.LBB60_131:                             # %cond.false.1199
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB60_132:                             # %cond.end.1211
	movl	-152(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_133:                             # %cond.false.1214
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_135
# BB#134:                               # %cond.true.1223
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB60_136
.LBB60_135:                             # %cond.false.1245
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB60_136:                             # %cond.end.1252
	movl	-156(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_141
# BB#137:                               # %land.lhs.true.1256
	cmpl	$0, -4(%rbp)
	jge	.LBB60_139
# BB#138:                               # %land.lhs.true.1260
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB60_167
.LBB60_139:                             # %lor.lhs.false.1264
	cmpl	$0, -8(%rbp)
	jge	.LBB60_141
# BB#140:                               # %land.lhs.true.1268
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB60_167
.LBB60_141:                             # %lor.lhs.false.1272
	cmpl	$0, -8(%rbp)
	jge	.LBB60_153
# BB#142:                               # %cond.true.1276
	cmpl	$0, -4(%rbp)
	jge	.LBB60_147
# BB#143:                               # %cond.true.1280
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jge	.LBB60_145
# BB#144:                               # %cond.true.1290
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB60_146
.LBB60_145:                             # %cond.false.1301
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB60_146:                             # %cond.end.1308
	movl	-164(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-160(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_167
	jmp	.LBB60_164
.LBB60_147:                             # %cond.false.1314
	cmpl	$-1, -8(%rbp)
	jne	.LBB60_149
# BB#148:                               # %cond.true.1318
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_167
	jmp	.LBB60_164
.LBB60_149:                             # %cond.false.1319
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_151
# BB#150:                               # %cond.true.1328
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB60_152
.LBB60_151:                             # %cond.false.1350
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB60_152:                             # %cond.end.1357
	movl	-168(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_167
	jmp	.LBB60_164
.LBB60_153:                             # %cond.false.1364
	cmpl	$0, -8(%rbp)
	jne	.LBB60_155
# BB#154:                               # %cond.true.1368
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_167
	jmp	.LBB60_164
.LBB60_155:                             # %cond.false.1369
	cmpl	$0, -4(%rbp)
	jge	.LBB60_160
# BB#156:                               # %cond.true.1373
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jge	.LBB60_158
# BB#157:                               # %cond.true.1383
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB60_159
.LBB60_158:                             # %cond.false.1405
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB60_159:                             # %cond.end.1412
	movl	-176(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_167
	jmp	.LBB60_164
.LBB60_160:                             # %cond.false.1418
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_162
# BB#161:                               # %cond.true.1427
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB60_163
.LBB60_162:                             # %cond.false.1438
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB60_163:                             # %cond.end.1445
	movl	-180(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_167
.LBB60_164:                             # %lor.lhs.false.1452
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_166
# BB#165:                               # %land.lhs.true.1460
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB60_167
.LBB60_166:                             # %lor.lhs.false.1466
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_171
.LBB60_167:                             # %cond.true.1472
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB60_169
# BB#168:                               # %cond.true.1482
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB60_170
.LBB60_169:                             # %cond.false.1492
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB60_170:                             # %cond.end.1504
	movl	-184(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_171:                             # %cond.false.1507
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB60_173
# BB#172:                               # %cond.true.1517
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB60_174
.LBB60_173:                             # %cond.false.1527
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	-8(%rbp), %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	imull	%edx, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB60_174:                             # %cond.end.1539
	movl	-188(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_175:                             # %cond.false.1542
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_176
	jmp	.LBB60_261
.LBB60_176:                             # %cond.true.1543
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_177
	jmp	.LBB60_219
.LBB60_177:                             # %cond.true.1544
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_179
# BB#178:                               # %cond.true.1553
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB60_180
.LBB60_179:                             # %cond.false.1575
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB60_180:                             # %cond.end.1582
	movl	-192(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_185
# BB#181:                               # %land.lhs.true.1586
	cmpl	$0, -4(%rbp)
	jge	.LBB60_183
# BB#182:                               # %land.lhs.true.1590
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB60_211
.LBB60_183:                             # %lor.lhs.false.1594
	cmpl	$0, -8(%rbp)
	jge	.LBB60_185
# BB#184:                               # %land.lhs.true.1598
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB60_211
.LBB60_185:                             # %lor.lhs.false.1602
	cmpl	$0, -8(%rbp)
	jge	.LBB60_197
# BB#186:                               # %cond.true.1606
	cmpl	$0, -4(%rbp)
	jge	.LBB60_191
# BB#187:                               # %cond.true.1610
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jge	.LBB60_189
# BB#188:                               # %cond.true.1620
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB60_190
.LBB60_189:                             # %cond.false.1631
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB60_190:                             # %cond.end.1638
	movl	-200(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_211
	jmp	.LBB60_208
.LBB60_191:                             # %cond.false.1644
	cmpl	$-1, -8(%rbp)
	jne	.LBB60_193
# BB#192:                               # %cond.true.1648
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_211
	jmp	.LBB60_208
.LBB60_193:                             # %cond.false.1649
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_195
# BB#194:                               # %cond.true.1658
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB60_196
.LBB60_195:                             # %cond.false.1680
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB60_196:                             # %cond.end.1687
	movl	-204(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_211
	jmp	.LBB60_208
.LBB60_197:                             # %cond.false.1694
	cmpl	$0, -8(%rbp)
	jne	.LBB60_199
# BB#198:                               # %cond.true.1698
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_211
	jmp	.LBB60_208
.LBB60_199:                             # %cond.false.1699
	cmpl	$0, -4(%rbp)
	jge	.LBB60_204
# BB#200:                               # %cond.true.1703
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jge	.LBB60_202
# BB#201:                               # %cond.true.1713
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB60_203
.LBB60_202:                             # %cond.false.1735
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB60_203:                             # %cond.end.1742
	movl	-212(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-208(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_211
	jmp	.LBB60_208
.LBB60_204:                             # %cond.false.1748
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_206
# BB#205:                               # %cond.true.1757
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB60_207
.LBB60_206:                             # %cond.false.1768
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB60_207:                             # %cond.end.1775
	movl	-216(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_211
.LBB60_208:                             # %lor.lhs.false.1782
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_210
# BB#209:                               # %land.lhs.true.1790
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB60_211
.LBB60_210:                             # %lor.lhs.false.1796
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_215
.LBB60_211:                             # %cond.true.1802
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB60_213
# BB#212:                               # %cond.true.1808
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB60_214
.LBB60_213:                             # %cond.false.1812
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB60_214:                             # %cond.end.1818
	movl	-220(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_215:                             # %cond.false.1821
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB60_217
# BB#216:                               # %cond.true.1827
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB60_218
.LBB60_217:                             # %cond.false.1831
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB60_218:                             # %cond.end.1837
	movl	-224(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_219:                             # %cond.false.1840
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_221
# BB#220:                               # %cond.true.1849
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB60_222
.LBB60_221:                             # %cond.false.1871
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB60_222:                             # %cond.end.1878
	movl	-228(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_227
# BB#223:                               # %land.lhs.true.1882
	cmpl	$0, -4(%rbp)
	jge	.LBB60_225
# BB#224:                               # %land.lhs.true.1886
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB60_253
.LBB60_225:                             # %lor.lhs.false.1890
	cmpl	$0, -8(%rbp)
	jge	.LBB60_227
# BB#226:                               # %land.lhs.true.1894
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB60_253
.LBB60_227:                             # %lor.lhs.false.1898
	cmpl	$0, -8(%rbp)
	jge	.LBB60_239
# BB#228:                               # %cond.true.1902
	cmpl	$0, -4(%rbp)
	jge	.LBB60_233
# BB#229:                               # %cond.true.1906
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jge	.LBB60_231
# BB#230:                               # %cond.true.1916
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB60_232
.LBB60_231:                             # %cond.false.1927
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB60_232:                             # %cond.end.1934
	movl	-236(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-232(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_253
	jmp	.LBB60_250
.LBB60_233:                             # %cond.false.1940
	cmpl	$-1, -8(%rbp)
	jne	.LBB60_235
# BB#234:                               # %cond.true.1944
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_253
	jmp	.LBB60_250
.LBB60_235:                             # %cond.false.1945
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_237
# BB#236:                               # %cond.true.1954
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB60_238
.LBB60_237:                             # %cond.false.1976
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB60_238:                             # %cond.end.1983
	movl	-240(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_253
	jmp	.LBB60_250
.LBB60_239:                             # %cond.false.1990
	cmpl	$0, -8(%rbp)
	jne	.LBB60_241
# BB#240:                               # %cond.true.1994
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_253
	jmp	.LBB60_250
.LBB60_241:                             # %cond.false.1995
	cmpl	$0, -4(%rbp)
	jge	.LBB60_246
# BB#242:                               # %cond.true.1999
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jge	.LBB60_244
# BB#243:                               # %cond.true.2009
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB60_245
.LBB60_244:                             # %cond.false.2031
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB60_245:                             # %cond.end.2038
	movl	-248(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-244(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_253
	jmp	.LBB60_250
.LBB60_246:                             # %cond.false.2044
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_248
# BB#247:                               # %cond.true.2053
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB60_249
.LBB60_248:                             # %cond.false.2064
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB60_249:                             # %cond.end.2071
	movl	-252(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_253
.LBB60_250:                             # %lor.lhs.false.2078
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_252
# BB#251:                               # %land.lhs.true.2086
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB60_253
.LBB60_252:                             # %lor.lhs.false.2092
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB60_257
.LBB60_253:                             # %cond.true.2098
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB60_255
# BB#254:                               # %cond.true.2104
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB60_256
.LBB60_255:                             # %cond.false.2108
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB60_256:                             # %cond.end.2114
	movl	-256(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_257:                             # %cond.false.2117
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB60_259
# BB#258:                               # %cond.true.2123
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB60_260
.LBB60_259:                             # %cond.false.2127
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB60_260:                             # %cond.end.2133
	movl	-260(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_261:                             # %cond.false.2136
	movb	$1, %al
	testb	$1, %al
	jne	.LBB60_262
	jmp	.LBB60_347
.LBB60_262:                             # %cond.true.2137
	movb	$1, %al
	testb	$1, %al
	jne	.LBB60_263
	jmp	.LBB60_305
.LBB60_263:                             # %cond.true.2138
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_265
# BB#264:                               # %cond.true.2149
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-4(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB60_266
.LBB60_265:                             # %cond.false.2176
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB60_266:                             # %cond.end.2185
	movq	-272(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB60_271
# BB#267:                               # %land.lhs.true.2189
	movslq	-4(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_269
# BB#268:                               # %land.lhs.true.2194
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB60_297
.LBB60_269:                             # %lor.lhs.false.2199
	movslq	-8(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_271
# BB#270:                               # %land.lhs.true.2204
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-4(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB60_297
.LBB60_271:                             # %lor.lhs.false.2209
	movslq	-8(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_283
# BB#272:                               # %cond.true.2214
	movslq	-4(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_277
# BB#273:                               # %cond.true.2219
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jge	.LBB60_275
# BB#274:                               # %cond.true.2232
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB60_276
.LBB60_275:                             # %cond.false.2245
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB60_276:                             # %cond.end.2254
	movq	-288(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB60_297
	jmp	.LBB60_294
.LBB60_277:                             # %cond.false.2261
	movslq	-8(%rbp), %rax
	cmpq	$-1, %rax
	jne	.LBB60_279
# BB#278:                               # %cond.true.2266
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_297
	jmp	.LBB60_294
.LBB60_279:                             # %cond.false.2267
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_281
# BB#280:                               # %cond.true.2278
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-4(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB60_282
.LBB60_281:                             # %cond.false.2305
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB60_282:                             # %cond.end.2314
	movq	-296(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB60_297
	jmp	.LBB60_294
.LBB60_283:                             # %cond.false.2323
	movslq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB60_285
# BB#284:                               # %cond.true.2328
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_297
	jmp	.LBB60_294
.LBB60_285:                             # %cond.false.2329
	movslq	-4(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_290
# BB#286:                               # %cond.true.2334
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jge	.LBB60_288
# BB#287:                               # %cond.true.2347
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-4(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB60_289
.LBB60_288:                             # %cond.false.2374
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB60_289:                             # %cond.end.2383
	movq	-312(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB60_297
	jmp	.LBB60_294
.LBB60_290:                             # %cond.false.2390
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_292
# BB#291:                               # %cond.true.2401
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB60_293
.LBB60_292:                             # %cond.false.2414
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB60_293:                             # %cond.end.2423
	movq	-320(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB60_297
.LBB60_294:                             # %lor.lhs.false.2432
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_296
# BB#295:                               # %land.lhs.true.2442
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB60_297
.LBB60_296:                             # %lor.lhs.false.2450
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB60_301
.LBB60_297:                             # %cond.true.2458
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_299
# BB#298:                               # %cond.true.2466
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB60_300
.LBB60_299:                             # %cond.false.2472
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB60_300:                             # %cond.end.2480
	movq	-328(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_301:                             # %cond.false.2482
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_303
# BB#302:                               # %cond.true.2490
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB60_304
.LBB60_303:                             # %cond.false.2496
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB60_304:                             # %cond.end.2504
	movq	-336(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_305:                             # %cond.false.2506
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_307
# BB#306:                               # %cond.true.2515
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB60_308
.LBB60_307:                             # %cond.false.2537
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB60_308:                             # %cond.end.2544
	movl	-340(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_313
# BB#309:                               # %land.lhs.true.2548
	cmpl	$0, -4(%rbp)
	jge	.LBB60_311
# BB#310:                               # %land.lhs.true.2552
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB60_339
.LBB60_311:                             # %lor.lhs.false.2556
	cmpl	$0, -8(%rbp)
	jge	.LBB60_313
# BB#312:                               # %land.lhs.true.2560
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB60_339
.LBB60_313:                             # %lor.lhs.false.2564
	cmpl	$0, -8(%rbp)
	jge	.LBB60_325
# BB#314:                               # %cond.true.2568
	cmpl	$0, -4(%rbp)
	jge	.LBB60_319
# BB#315:                               # %cond.true.2572
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jge	.LBB60_317
# BB#316:                               # %cond.true.2582
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB60_318
.LBB60_317:                             # %cond.false.2593
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB60_318:                             # %cond.end.2600
	movl	-348(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-344(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_339
	jmp	.LBB60_336
.LBB60_319:                             # %cond.false.2606
	cmpl	$-1, -8(%rbp)
	jne	.LBB60_321
# BB#320:                               # %cond.true.2610
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_339
	jmp	.LBB60_336
.LBB60_321:                             # %cond.false.2611
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_323
# BB#322:                               # %cond.true.2620
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB60_324
.LBB60_323:                             # %cond.false.2642
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB60_324:                             # %cond.end.2649
	movl	-352(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_339
	jmp	.LBB60_336
.LBB60_325:                             # %cond.false.2656
	cmpl	$0, -8(%rbp)
	jne	.LBB60_327
# BB#326:                               # %cond.true.2660
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_339
	jmp	.LBB60_336
.LBB60_327:                             # %cond.false.2661
	cmpl	$0, -4(%rbp)
	jge	.LBB60_332
# BB#328:                               # %cond.true.2665
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jge	.LBB60_330
# BB#329:                               # %cond.true.2675
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB60_331
.LBB60_330:                             # %cond.false.2697
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB60_331:                             # %cond.end.2704
	movl	-360(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-356(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_339
	jmp	.LBB60_336
.LBB60_332:                             # %cond.false.2710
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_334
# BB#333:                               # %cond.true.2719
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB60_335
.LBB60_334:                             # %cond.false.2730
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB60_335:                             # %cond.end.2737
	movl	-364(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_339
.LBB60_336:                             # %lor.lhs.false.2744
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_338
# BB#337:                               # %land.lhs.true.2752
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB60_339
.LBB60_338:                             # %lor.lhs.false.2759
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB60_343
.LBB60_339:                             # %cond.true.2766
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_341
# BB#340:                               # %cond.true.2774
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB60_342
.LBB60_341:                             # %cond.false.2780
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB60_342:                             # %cond.end.2788
	movq	-376(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_343:                             # %cond.false.2790
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_345
# BB#344:                               # %cond.true.2798
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB60_346
.LBB60_345:                             # %cond.false.2804
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB60_346:                             # %cond.end.2812
	movq	-384(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_347:                             # %cond.false.2814
	movb	$1, %al
	testb	$1, %al
	jne	.LBB60_348
	jmp	.LBB60_390
.LBB60_348:                             # %cond.true.2815
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_350
# BB#349:                               # %cond.true.2826
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-4(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB60_351
.LBB60_350:                             # %cond.false.2853
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB60_351:                             # %cond.end.2862
	movq	-392(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB60_356
# BB#352:                               # %land.lhs.true.2866
	movslq	-4(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_354
# BB#353:                               # %land.lhs.true.2871
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB60_382
.LBB60_354:                             # %lor.lhs.false.2876
	movslq	-8(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_356
# BB#355:                               # %land.lhs.true.2881
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-4(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB60_382
.LBB60_356:                             # %lor.lhs.false.2886
	movslq	-8(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_368
# BB#357:                               # %cond.true.2891
	movslq	-4(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_362
# BB#358:                               # %cond.true.2896
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jge	.LBB60_360
# BB#359:                               # %cond.true.2909
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB60_361
.LBB60_360:                             # %cond.false.2922
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB60_361:                             # %cond.end.2931
	movq	-408(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB60_382
	jmp	.LBB60_379
.LBB60_362:                             # %cond.false.2938
	movslq	-8(%rbp), %rax
	cmpq	$-1, %rax
	jne	.LBB60_364
# BB#363:                               # %cond.true.2943
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_382
	jmp	.LBB60_379
.LBB60_364:                             # %cond.false.2944
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_366
# BB#365:                               # %cond.true.2955
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-4(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB60_367
.LBB60_366:                             # %cond.false.2982
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB60_367:                             # %cond.end.2991
	movq	-416(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB60_382
	jmp	.LBB60_379
.LBB60_368:                             # %cond.false.3000
	movslq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB60_370
# BB#369:                               # %cond.true.3005
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_382
	jmp	.LBB60_379
.LBB60_370:                             # %cond.false.3006
	movslq	-4(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB60_375
# BB#371:                               # %cond.true.3011
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jge	.LBB60_373
# BB#372:                               # %cond.true.3024
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	movslq	-8(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	movslq	-4(%rbp), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB60_374
.LBB60_373:                             # %cond.false.3051
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB60_374:                             # %cond.end.3060
	movq	-432(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB60_382
	jmp	.LBB60_379
.LBB60_375:                             # %cond.false.3067
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_377
# BB#376:                               # %cond.true.3078
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB60_378
.LBB60_377:                             # %cond.false.3091
	movslq	-8(%rbp), %rax
	imulq	$0, %rax, %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB60_378:                             # %cond.end.3100
	movq	-440(%rbp), %rax        # 8-byte Reload
	movslq	-8(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB60_382
.LBB60_379:                             # %lor.lhs.false.3109
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB60_381
# BB#380:                               # %land.lhs.true.3119
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB60_382
.LBB60_381:                             # %lor.lhs.false.3127
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB60_386
.LBB60_382:                             # %cond.true.3135
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_384
# BB#383:                               # %cond.true.3143
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB60_385
.LBB60_384:                             # %cond.false.3149
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB60_385:                             # %cond.end.3157
	movq	-448(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_386:                             # %cond.false.3159
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_388
# BB#387:                               # %cond.true.3167
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB60_389
.LBB60_388:                             # %cond.false.3173
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB60_389:                             # %cond.end.3181
	movq	-456(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_390:                             # %cond.false.3183
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_392
# BB#391:                               # %cond.true.3192
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB60_393
.LBB60_392:                             # %cond.false.3214
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB60_393:                             # %cond.end.3221
	movl	-460(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB60_398
# BB#394:                               # %land.lhs.true.3225
	cmpl	$0, -4(%rbp)
	jge	.LBB60_396
# BB#395:                               # %land.lhs.true.3229
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB60_424
.LBB60_396:                             # %lor.lhs.false.3233
	cmpl	$0, -8(%rbp)
	jge	.LBB60_398
# BB#397:                               # %land.lhs.true.3237
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB60_424
.LBB60_398:                             # %lor.lhs.false.3241
	cmpl	$0, -8(%rbp)
	jge	.LBB60_410
# BB#399:                               # %cond.true.3245
	cmpl	$0, -4(%rbp)
	jge	.LBB60_404
# BB#400:                               # %cond.true.3249
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jge	.LBB60_402
# BB#401:                               # %cond.true.3259
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB60_403
.LBB60_402:                             # %cond.false.3270
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB60_403:                             # %cond.end.3277
	movl	-468(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-464(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_424
	jmp	.LBB60_421
.LBB60_404:                             # %cond.false.3283
	cmpl	$-1, -8(%rbp)
	jne	.LBB60_406
# BB#405:                               # %cond.true.3287
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_424
	jmp	.LBB60_421
.LBB60_406:                             # %cond.false.3288
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_408
# BB#407:                               # %cond.true.3297
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
	jmp	.LBB60_409
.LBB60_408:                             # %cond.false.3319
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB60_409:                             # %cond.end.3326
	movl	-472(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_424
	jmp	.LBB60_421
.LBB60_410:                             # %cond.false.3333
	cmpl	$0, -8(%rbp)
	jne	.LBB60_412
# BB#411:                               # %cond.true.3337
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB60_424
	jmp	.LBB60_421
.LBB60_412:                             # %cond.false.3338
	cmpl	$0, -4(%rbp)
	jge	.LBB60_417
# BB#413:                               # %cond.true.3342
	movl	-4(%rbp), %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jge	.LBB60_415
# BB#414:                               # %cond.true.3352
	xorl	%eax, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	imull	$0, -8(%rbp), %ecx
	addl	-4(%rbp), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB60_416
.LBB60_415:                             # %cond.false.3374
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB60_416:                             # %cond.end.3381
	movl	-480(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	movl	-476(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB60_424
	jmp	.LBB60_421
.LBB60_417:                             # %cond.false.3387
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_419
# BB#418:                               # %cond.true.3396
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB60_420
.LBB60_419:                             # %cond.false.3407
	imull	$0, -8(%rbp), %eax
	addl	-4(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB60_420:                             # %cond.end.3414
	movl	-484(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-8(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB60_424
.LBB60_421:                             # %lor.lhs.false.3421
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB60_423
# BB#422:                               # %land.lhs.true.3429
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB60_424
.LBB60_423:                             # %lor.lhs.false.3436
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-4(%rbp), %ecx
	imull	-8(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB60_428
.LBB60_424:                             # %cond.true.3443
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_426
# BB#425:                               # %cond.true.3451
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB60_427
.LBB60_426:                             # %cond.false.3457
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB60_427:                             # %cond.end.3465
	movq	-496(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_428:                             # %cond.false.3467
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB60_430
# BB#429:                               # %cond.true.3475
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB60_431
.LBB60_430:                             # %cond.false.3481
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB60_431:                             # %cond.end.3489
	movq	-504(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB60_432
	jmp	.LBB60_433
.LBB60_432:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB60_433:                             # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB60_435
# BB#434:                               # %if.then.3493
	movq	$-1, %rcx
	movl	$48, %eax
	movl	%eax, %r8d
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	movq	-24(%rbp), %rdi
	subq	-40(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-512(%rbp), %rdx        # 8-byte Reload
	callq	xpalloc
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	imulq	$48, -40(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	-40(%rbp), %rcx
	imulq	$48, %rcx, %rsi
	movq	%rax, %rdi
	callq	memclear
.LBB60_435:                             # %if.end.3503
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movb	-25(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end60:
	.size	realloc_glyph_pool, .Lfunc_end60-realloc_glyph_pool
	.cfi_endproc

	.align	16, 0x90
	.type	showing_window_margins_p,@function
showing_window_margins_p:               # @showing_window_margins_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.LBB61_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB61_14
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB61_3
	jmp	.LBB61_6
.LBB61_3:                               # %if.then
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	showing_window_margins_p
	testb	$1, %al
	jne	.LBB61_4
	jmp	.LBB61_5
.LBB61_4:                               # %if.then.4
	movb	$1, -1(%rbp)
	jmp	.LBB61_15
.LBB61_5:                               # %if.end
                                        #   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_10
.LBB61_6:                               # %if.else
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 428(%rax)
	jg	.LBB61_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 432(%rax)
	jle	.LBB61_9
.LBB61_8:                               # %if.then.6
	movb	$1, -1(%rbp)
	jmp	.LBB61_15
.LBB61_9:                               # %if.end.7
                                        #   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_10
.LBB61_10:                              # %if.end.8
                                        #   in Loop: Header=BB61_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB61_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB61_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB61_13
.LBB61_12:                              # %cond.false
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB61_13:                              # %cond.end
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB61_1
.LBB61_14:                              # %while.end
	movb	$0, -1(%rbp)
.LBB61_15:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	showing_window_margins_p, .Lfunc_end61-showing_window_margins_p
	.cfi_endproc

	.align	16, 0x90
	.type	save_current_matrix,@function
save_current_matrix:                    # @save_current_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$104, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xzalloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$8, %rax
	movq	%rax, %rdi
	callq	xzalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, -12(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB62_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movswq	34(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	xmalloc
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	34(%rax), %r8w
	movq	-40(%rbp), %rax
	movw	%r8w, 34(%rax)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	movb	%al, %r9b
	movq	-40(%rbp), %rax
	andb	$1, %r9b
	movzbl	%r9b, %r10d
	movl	%r10d, %ecx
	movq	236(%rax), %rdx
	shlq	$10, %rcx
	andq	$-1025, %rdx            # imm = 0xFFFFFFFFFFFFFBFF
	orq	%rcx, %rdx
	movq	%rdx, 236(%rax)
	movq	-32(%rbp), %rax
	movl	40(%rax), %r10d
	movq	-40(%rbp), %rax
	movl	%r10d, 40(%rax)
	movq	-32(%rbp), %rax
	cmpw	$0, 32(%rax)
	je	.LBB62_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-32(%rbp), %rax
	movswq	32(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	xmalloc
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	32(%rax), %cx
	movq	-40(%rbp), %rax
	movw	%cx, 32(%rax)
.LBB62_4:                               # %if.end
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-32(%rbp), %rax
	cmpw	$0, 36(%rax)
	je	.LBB62_6
# BB#5:                                 # %if.then.48
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-32(%rbp), %rax
	movswq	36(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	xmalloc
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	36(%rax), %cx
	movq	-40(%rbp), %rax
	movw	%cx, 36(%rax)
.LBB62_6:                               # %if.end.64
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_7
.LBB62_7:                               # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB62_1
.LBB62_8:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	save_current_matrix, .Lfunc_end62-save_current_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_glyph_matrix,@function
adjust_glyph_matrix:                    # @adjust_glyph_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movb	$0, -41(%rbp)
	movb	$0, -42(%rbp)
	movb	$0, -43(%rbp)
	movl	$-1, -48(%rbp)
	movl	$-1, -52(%rbp)
	movl	$-1, -56(%rbp)
	movl	$-1, -60(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB63_19
# BB#1:                                 # %if.then
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-56(%rbp), %r8
	leaq	-60(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	callq	window_box
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB63_2
	jmp	.LBB63_17
.LBB63_2:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	andw	$1, %si
	testw	$1, %si
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB63_16
# BB#3:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB63_16
# BB#4:                                 # %land.lhs.true.4
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	208(%rdx), %rdx
	shrq	$14, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB63_16
# BB#5:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB63_16
# BB#6:                                 # %land.rhs
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB63_7
	jmp	.LBB63_12
.LBB63_7:                               # %cond.true.15
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_14
# BB#8:                                 # %land.lhs.true.20
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_14
# BB#9:                                 # %land.lhs.true.26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB63_14
# BB#10:                                # %land.lhs.true.34
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB63_14
# BB#11:                                # %land.lhs.true.39
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB63_13
	jmp	.LBB63_14
.LBB63_12:                              # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_13
	jmp	.LBB63_14
.LBB63_13:                              # %cond.true.44
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB63_15
.LBB63_14:                              # %cond.false.48
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB63_15:                              # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	setg	%dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB63_16:                              # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB63_18
.LBB63_17:                              # %cond.false.53
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB63_18
.LBB63_18:                              # %cond.end.54
	movl	-128(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -43(%rbp)
	movb	-43(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-24(%rbp), %rdx
	movb	72(%rdx), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -42(%rbp)
.LBB63_19:                              # %if.end
	movb	-43(%rbp), %al
	movq	-24(%rbp), %rcx
	andb	$1, %al
	movb	72(%rcx), %dl
	shlb	$1, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 72(%rcx)
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB63_32
# BB#20:                                # %if.then.74
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	428(%rax), %edx
	callq	margin_glyphs_to_reserve
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	432(%rcx), %edx
	callq	margin_glyphs_to_reserve
	movb	$1, %r8b
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	64(%rcx), %eax
	movb	%r8b, -129(%rbp)        # 1-byte Spill
	jne	.LBB63_22
# BB#21:                                # %lor.rhs
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	68(%rcx), %eax
	setne	%dl
	movb	%dl, -129(%rbp)         # 1-byte Spill
.LBB63_22:                              # %lor.end
	movb	-129(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -41(%rbp)
	testb	$1, -41(%rbp)
	jne	.LBB63_31
# BB#23:                                # %land.lhs.true.84
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$6, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB63_31
# BB#24:                                # %land.lhs.true.91
	testb	$1, -42(%rbp)
	jne	.LBB63_31
# BB#25:                                # %land.lhs.true.93
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	240(%rax), %ecx
	jne	.LBB63_31
# BB#26:                                # %land.lhs.true.96
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	244(%rax), %ecx
	jne	.LBB63_31
# BB#27:                                # %land.lhs.true.99
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB63_31
# BB#28:                                # %land.lhs.true.103
	movq	-24(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	472(%rax), %ecx
	jne	.LBB63_31
# BB#29:                                # %land.lhs.true.106
	movq	-24(%rbp), %rax
	movl	56(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jne	.LBB63_31
# BB#30:                                # %if.then.110
	jmp	.LBB63_128
.LBB63_31:                              # %if.end.111
	jmp	.LBB63_32
.LBB63_32:                              # %if.end.112
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_34
# BB#33:                                # %if.then.116
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %r8d
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	%edx, %eax
	movl	%eax, -64(%rbp)
	movslq	-4(%rbp), %rdx
	movq	-24(%rbp), %rsi
	subq	16(%rsi), %rdx
	movl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-24(%rbp), %rsi
	addq	$16, %rsi
	movslq	-40(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	xpalloc
	xorl	%esi, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-64(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-64(%rbp), %rdx
	subq	%rdx, %rcx
	shlq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	jmp	.LBB63_35
.LBB63_34:                              # %if.else
	movl	$0, -40(%rbp)
.LBB63_35:                              # %if.end.133
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_57
# BB#36:                                # %if.then.136
	cmpq	$0, -16(%rbp)
	je	.LBB63_38
# BB#37:                                # %if.then.138
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	428(%rax), %edx
	callq	margin_glyphs_to_reserve
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	432(%rcx), %edx
	callq	margin_glyphs_to_reserve
	movl	%eax, -52(%rbp)
	jmp	.LBB63_39
.LBB63_38:                              # %if.else.145
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB63_39:                              # %if.end.146
	movl	$0, -36(%rbp)
.LBB63_40:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB63_56
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB63_40 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	addl	-36(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	20(%rcx), %edx
	movslq	%edx, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB63_52
# BB#42:                                # %lor.lhs.false
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-4(%rbp), %rdx
	shlq	$8, %rdx
	addq	%rdx, %rcx
	addq	$-256, %rcx
	cmpq	%rcx, %rax
	jne	.LBB63_50
# BB#43:                                # %land.lhs.true.169
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB63_44
	jmp	.LBB63_49
.LBB63_44:                              # %cond.true.173
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_50
# BB#45:                                # %land.lhs.true.178
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_50
# BB#46:                                # %land.lhs.true.184
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB63_50
# BB#47:                                # %land.lhs.true.193
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB63_50
# BB#48:                                # %land.lhs.true.200
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB63_52
	jmp	.LBB63_50
.LBB63_49:                              # %cond.false.207
                                        #   in Loop: Header=BB63_40 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_52
	jmp	.LBB63_50
.LBB63_50:                              # %lor.lhs.false.208
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB63_53
# BB#51:                                # %land.lhs.true.212
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-24(%rbp), %rax
	movb	72(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB63_53
.LBB63_52:                              # %if.then.219
                                        #   in Loop: Header=BB63_40 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-8(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB63_54
.LBB63_53:                              # %if.else.235
                                        #   in Loop: Header=BB63_40 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-48(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-72(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-8(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movslq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	imulq	$48, %rdi, %rsi
	addq	%rsi, %rdx
	movslq	-52(%rbp), %rsi
	subq	%rsi, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rdx
	movq	-72(%rbp), %rcx
	movq	%rdx, 16(%rcx)
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-8(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, 24(%rdx)
.LBB63_54:                              # %if.end.261
                                        #   in Loop: Header=BB63_40 Depth=1
	jmp	.LBB63_55
.LBB63_55:                              # %for.inc
                                        #   in Loop: Header=BB63_40 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB63_40
.LBB63_56:                              # %for.end
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 68(%rcx)
	jmp	.LBB63_79
.LBB63_57:                              # %if.else.264
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB63_61
# BB#58:                                # %lor.lhs.false.268
	cmpl	$0, -40(%rbp)
	jne	.LBB63_61
# BB#59:                                # %lor.lhs.false.270
	testb	$1, -42(%rbp)
	jne	.LBB63_61
# BB#60:                                # %lor.lhs.false.273
	testb	$1, -41(%rbp)
	je	.LBB63_78
.LBB63_61:                              # %if.then.276
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
.LBB63_62:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB63_77
# BB#63:                                # %while.body
                                        #   in Loop: Header=BB63_62 Depth=1
	movl	$48, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	xnrealloc
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-4(%rbp), %rdx
	shlq	$8, %rdx
	addq	%rdx, %rcx
	addq	$-256, %rcx
	cmpq	%rcx, %rax
	jne	.LBB63_72
# BB#64:                                # %land.lhs.true.297
                                        #   in Loop: Header=BB63_62 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_74
# BB#65:                                # %land.lhs.true.299
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB63_66
	jmp	.LBB63_71
.LBB63_66:                              # %cond.true.303
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_74
# BB#67:                                # %land.lhs.true.308
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_74
# BB#68:                                # %land.lhs.true.314
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB63_74
# BB#69:                                # %land.lhs.true.323
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB63_74
# BB#70:                                # %land.lhs.true.330
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB63_72
	jmp	.LBB63_74
.LBB63_71:                              # %cond.false.337
                                        #   in Loop: Header=BB63_62 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_72
	jmp	.LBB63_74
.LBB63_72:                              # %lor.lhs.false.338
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB63_75
# BB#73:                                # %land.lhs.true.342
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-24(%rbp), %rax
	movb	72(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB63_75
.LBB63_74:                              # %if.then.349
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-8(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB63_76
.LBB63_75:                              # %if.else.365
                                        #   in Loop: Header=BB63_62 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-48(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-80(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-8(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movslq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	imulq	$48, %rdi, %rsi
	addq	%rsi, %rdx
	movslq	-52(%rbp), %rsi
	subq	%rsi, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rdx
	movq	-80(%rbp), %rcx
	movq	%rdx, 16(%rcx)
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-8(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, 24(%rdx)
.LBB63_76:                              # %if.end.392
                                        #   in Loop: Header=BB63_62 Depth=1
	movq	-80(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -80(%rbp)
	jmp	.LBB63_62
.LBB63_77:                              # %while.end
	jmp	.LBB63_78
.LBB63_78:                              # %if.end.393
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 68(%rcx)
.LBB63_79:                              # %if.end.396
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB63_126
# BB#80:                                # %if.then.399
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	192(%rcx), %rax
	jne	.LBB63_118
# BB#81:                                # %if.then.402
	cmpl	$0, -56(%rbp)
	jge	.LBB63_83
# BB#82:                                # %if.then.405
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	callq	window_box_width
	movl	%eax, -56(%rbp)
.LBB63_83:                              # %if.end.407
	testb	$1, -41(%rbp)
	jne	.LBB63_104
# BB#84:                                # %land.lhs.true.409
	testb	$1, -42(%rbp)
	jne	.LBB63_104
# BB#85:                                # %land.lhs.true.411
	cmpl	$0, -40(%rbp)
	jne	.LBB63_104
# BB#86:                                # %land.lhs.true.414
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jne	.LBB63_104
# BB#87:                                # %land.lhs.true.419
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	240(%rax), %ecx
	jne	.LBB63_104
# BB#88:                                # %land.lhs.true.424
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	244(%rax), %ecx
	jne	.LBB63_104
# BB#89:                                # %land.lhs.true.429
	movq	-24(%rbp), %rax
	movl	56(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jne	.LBB63_104
# BB#90:                                # %if.then.433
	movl	$0, -36(%rbp)
.LBB63_91:                              # %for.cond.434
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rdx
	cmpl	24(%rdx), %eax
	movb	%cl, -161(%rbp)         # 1-byte Spill
	jge	.LBB63_93
# BB#92:                                # %land.rhs.438
                                        #   in Loop: Header=BB63_91 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	movb	%al, %dl
	movb	%dl, -161(%rbp)         # 1-byte Spill
.LBB63_93:                              # %land.end.447
                                        #   in Loop: Header=BB63_91 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB63_94
	jmp	.LBB63_98
.LBB63_94:                              # %for.body.449
                                        #   in Loop: Header=BB63_91 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	addl	60(%rax), %edx
	cmpl	-60(%rbp), %edx
	jl	.LBB63_96
# BB#95:                                # %if.then.461
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB63_98
.LBB63_96:                              # %if.end.463
                                        #   in Loop: Header=BB63_91 Depth=1
	jmp	.LBB63_97
.LBB63_97:                              # %for.inc.464
                                        #   in Loop: Header=BB63_91 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB63_91
.LBB63_98:                              # %for.end.466
	movq	-16(%rbp), %rax
	movl	464(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jl	.LBB63_100
# BB#99:                                # %if.then.469
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-8193, %cx             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%cx, 468(%rax)
.LBB63_100:                             # %if.end.472
	jmp	.LBB63_101
.LBB63_101:                             # %while.cond.473
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB63_103
# BB#102:                               # %while.body.477
                                        #   in Loop: Header=BB63_101 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	shlq	$8, %rdx
	addq	8(%rsi), %rdx
	movq	236(%rdx), %rsi
	andq	$-1025, %rsi            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rsi, 236(%rdx)
	jmp	.LBB63_101
.LBB63_103:                             # %while.end.485
	jmp	.LBB63_109
.LBB63_104:                             # %if.else.486
	movl	$0, -36(%rbp)
.LBB63_105:                             # %for.cond.487
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB63_108
# BB#106:                               # %for.body.491
                                        #   in Loop: Header=BB63_105 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
# BB#107:                               # %for.inc.498
                                        #   in Loop: Header=BB63_105 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB63_105
.LBB63_108:                             # %for.end.500
	jmp	.LBB63_109
.LBB63_109:                             # %if.end.501
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB63_110
	jmp	.LBB63_115
.LBB63_110:                             # %cond.true.505
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_117
# BB#111:                               # %land.lhs.true.510
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB63_117
# BB#112:                               # %land.lhs.true.516
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB63_117
# BB#113:                               # %land.lhs.true.525
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB63_117
# BB#114:                               # %land.lhs.true.532
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB63_116
	jmp	.LBB63_117
.LBB63_115:                             # %cond.false.539
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_116
	jmp	.LBB63_117
.LBB63_116:                             # %if.then.540
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-5, %cx
	orw	$4, %cx
	movw	%cx, 468(%rax)
.LBB63_117:                             # %if.end.544
	jmp	.LBB63_125
.LBB63_118:                             # %if.else.545
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	200(%rcx), %rax
	jne	.LBB63_124
# BB#119:                               # %if.then.548
	movl	$0, -36(%rbp)
.LBB63_120:                             # %for.cond.549
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB63_123
# BB#121:                               # %for.body.553
                                        #   in Loop: Header=BB63_120 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
# BB#122:                               # %for.inc.560
                                        #   in Loop: Header=BB63_120 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB63_120
.LBB63_123:                             # %for.end.562
	jmp	.LBB63_124
.LBB63_124:                             # %if.end.563
	jmp	.LBB63_125
.LBB63_125:                             # %if.end.564
	jmp	.LBB63_126
.LBB63_126:                             # %if.end.565
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 40(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB63_128
# BB#127:                               # %if.then.570
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-16(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 48(%rax)
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 52(%rax)
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-16(%rbp), %rax
	movl	472(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 60(%rax)
.LBB63_128:                             # %if.end.579
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	adjust_glyph_matrix, .Lfunc_end63-adjust_glyph_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	restore_current_matrix,@function
restore_current_matrix:                 # @restore_current_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB64_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB64_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movswq	34(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	34(%rax), %r8w
	movq	-40(%rbp), %rax
	movw	%r8w, 34(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	movswq	32(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB64_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	32(%rax), %r8w
	movq	-40(%rbp), %rax
	movw	%r8w, 32(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	jmp	.LBB64_5
.LBB64_4:                               # %if.else
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-40(%rbp), %rax
	movw	$0, 32(%rax)
.LBB64_5:                               # %if.end
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-32(%rbp), %rax
	movswq	36(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB64_7
# BB#6:                                 # %if.then.34
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	36(%rax), %r8w
	movq	-40(%rbp), %rax
	movw	%r8w, 36(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	jmp	.LBB64_8
.LBB64_7:                               # %if.else.45
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-40(%rbp), %rax
	movw	$0, 36(%rax)
.LBB64_8:                               # %if.end.48
                                        #   in Loop: Header=BB64_1 Depth=1
	jmp	.LBB64_9
.LBB64_9:                               # %for.inc
                                        #   in Loop: Header=BB64_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB64_1
.LBB64_10:                              # %for.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	restore_current_matrix, .Lfunc_end64-restore_current_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	fake_current_matrices,@function
fake_current_matrices:                  # @fake_current_matrices
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
.LBB65_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_5 Depth 2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB65_2
	jmp	.LBB65_13
.LBB65_2:                               # %for.body
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB65_3
	jmp	.LBB65_4
.LBB65_3:                               # %if.then
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	fake_current_matrices
	jmp	.LBB65_11
.LBB65_4:                               # %if.else
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
.LBB65_5:                               # %for.cond.5
                                        #   Parent Loop BB65_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	.LBB65_10
# BB#6:                                 # %for.body.7
                                        #   in Loop: Header=BB65_5 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movslq	252(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	movb	%al, %dl
	movq	-56(%rbp), %rax
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	236(%rax), %rdi
	shlq	$10, %rcx
	andq	$-1025, %rdi            # imm = 0xFFFFFFFFFFFFFBFF
	orq	%rcx, %rdi
	movq	%rdi, 236(%rax)
	movq	-56(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB65_8
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB65_5 Depth=2
	movq	-40(%rbp), %rax
	movl	64(%rax), %ecx
	movw	%cx, %dx
	movq	-56(%rbp), %rax
	movw	%dx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	68(%rax), %ecx
	movw	%cx, %dx
	movq	-56(%rbp), %rax
	movw	%dx, 36(%rax)
	movq	-40(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-56(%rbp), %rax
	movswl	32(%rax), %esi
	subl	%esi, %ecx
	movq	-56(%rbp), %rax
	movswl	36(%rax), %esi
	subl	%esi, %ecx
	movw	%cx, %dx
	movq	-56(%rbp), %rax
	movw	%dx, 34(%rax)
	movq	-56(%rbp), %rax
	movq	236(%rax), %rdi
	andq	$-1048577, %rdi         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rdi, 236(%rax)
.LBB65_8:                               # %if.end
                                        #   in Loop: Header=BB65_5 Depth=2
	jmp	.LBB65_9
.LBB65_9:                               # %for.inc
                                        #   in Loop: Header=BB65_5 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB65_5
.LBB65_10:                              # %for.end
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_11
.LBB65_11:                              # %if.end.38
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_12
.LBB65_12:                              # %for.inc.39
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_1
.LBB65_13:                              # %for.end.40
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	fake_current_matrices, .Lfunc_end65-fake_current_matrices
	.cfi_endproc

	.align	16, 0x90
	.type	required_matrix_width,@function
required_matrix_width:                  # @required_matrix_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB66_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$1, 168(%rax)
	jle	.LBB66_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB66_4
.LBB66_3:                               # %cond.false
	movl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB66_4
.LBB66_4:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movl	256(%rcx), %eax
	addl	-28(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-28(%rbp)
	movq	-16(%rbp), %rcx
	imull	348(%rcx), %eax
	addl	$2, %eax
	addl	$1, %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB66_6
.LBB66_5:                               # %if.end
	movq	-16(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB66_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end66:
	.size	required_matrix_width, .Lfunc_end66-required_matrix_width
	.cfi_endproc

	.align	16, 0x90
	.type	required_matrix_height,@function
required_matrix_height:                 # @required_matrix_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB67_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$1, 172(%rax)
	jle	.LBB67_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	172(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB67_4
.LBB67_3:                               # %cond.false
	movl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB67_4
.LBB67_4:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	window_box_height
	movq	-16(%rbp), %rdi
	cmpl	$0, 472(%rdi)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jge	.LBB67_6
# BB#5:                                 # %cond.true.7
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	subl	472(%rcx), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB67_7
.LBB67_6:                               # %cond.false.10
	movq	-16(%rbp), %rax
	movl	472(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB67_7:                               # %cond.end.12
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	-40(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-28(%rbp)
	movq	-16(%rbp), %rsi
	imull	344(%rsi), %eax
	addl	$2, %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB67_9
.LBB67_8:                               # %if.end
	movq	-16(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB67_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	required_matrix_height, .Lfunc_end67-required_matrix_height
	.cfi_endproc

	.align	16, 0x90
	.type	margin_glyphs_to_reserve,@function
margin_glyphs_to_reserve:               # @margin_glyphs_to_reserve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.LBB68_11
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	264(%rcx), %edx
	movl	%edx, -28(%rbp)
	cmpl	-24(%rbp), %eax
	jle	.LBB68_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB68_4
.LBB68_3:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB68_4:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB68_6
# BB#5:                                 # %cond.true.5
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB68_7
.LBB68_6:                               # %cond.false.9
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB68_7:                               # %cond.end.10
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %eax
	movsd	%xmm0, -40(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	cmpl	%ecx, %eax
	jle	.LBB68_9
# BB#8:                                 # %cond.true.18
	movl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB68_10
.LBB68_9:                               # %cond.false.19
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB68_10:                              # %cond.end.25
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB68_12
.LBB68_11:                              # %if.end
	movl	$0, -4(%rbp)
.LBB68_12:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end68:
	.size	margin_glyphs_to_reserve, .Lfunc_end68-margin_glyphs_to_reserve
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_matrices_for_window_redisplay,@function
allocate_matrices_for_window_redisplay: # @allocate_matrices_for_window_redisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB69_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB69_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB69_3
	jmp	.LBB69_4
.LBB69_3:                               # %if.then
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	allocate_matrices_for_window_redisplay
	jmp	.LBB69_7
.LBB69_4:                               # %if.else
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 200(%rax)
	jne	.LBB69_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB69_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	new_glyph_matrix
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 200(%rdx)
	callq	new_glyph_matrix
	movq	-8(%rbp), %rdx
	movq	%rax, 192(%rdx)
.LBB69_6:                               # %if.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	required_matrix_width
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	required_matrix_height
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	200(%rdx), %rsi
	movq	-16(%rbp), %r8
	movl	%ecx, %edx
	callq	adjust_glyph_matrix
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	-16(%rbp), %r8
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	adjust_glyph_matrix
.LBB69_7:                               # %if.end.11
                                        #   in Loop: Header=BB69_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB69_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB69_10
.LBB69_9:                               # %cond.false
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB69_10:                              # %cond.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB69_1
.LBB69_11:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	allocate_matrices_for_window_redisplay, .Lfunc_end69-allocate_matrices_for_window_redisplay
	.cfi_endproc

	.align	16, 0x90
	.type	frame_row_to_window,@function
frame_row_to_window:                    # @frame_row_to_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
.LBB70_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB70_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB70_1 Depth=1
	cmpq	$0, -24(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB70_3:                               # %land.end
                                        #   in Loop: Header=BB70_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB70_4
	jmp	.LBB70_14
.LBB70_4:                               # %while.body
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB70_5
	jmp	.LBB70_6
.LBB70_5:                               # %if.then
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	frame_row_to_window
	movq	%rax, -24(%rbp)
	jmp	.LBB70_10
.LBB70_6:                               # %if.else
                                        #   in Loop: Header=BB70_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	252(%rcx), %eax
	jl	.LBB70_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB70_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	252(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	268(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB70_9
# BB#8:                                 # %if.then.7
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB70_9:                               # %if.end
                                        #   in Loop: Header=BB70_1 Depth=1
	jmp	.LBB70_10
.LBB70_10:                              # %if.end.8
                                        #   in Loop: Header=BB70_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB70_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB70_13
.LBB70_12:                              # %cond.false
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB70_13:                              # %cond.end
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB70_1
.LBB70_14:                              # %while.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	frame_row_to_window, .Lfunc_end70-frame_row_to_window
	.cfi_endproc

	.align	16, 0x90
	.type	copy_row_except_pointers,@function
copy_row_except_pointers:               # @copy_row_except_pointers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$212, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$44, %rsi
	movq	-16(%rbp), %rdi
	addq	$44, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	copy_row_except_pointers, .Lfunc_end71-copy_row_except_pointers
	.cfi_endproc

	.align	16, 0x90
	.type	sync_window_with_frame_matrix_rows,@function
sync_window_with_frame_matrix_rows:     # @sync_window_with_frame_matrix_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	428(%rax), %edx
	callq	margin_glyphs_to_reserve
	movl	$1, %esi
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	432(%rcx), %edx
	callq	margin_glyphs_to_reserve
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movl	28(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movl	36(%rcx), %eax
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movslq	24(%rdi), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movslq	252(%rdi), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -40(%rbp)
.LBB72_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB72_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB72_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-52(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-44(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-56(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, 16(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -40(%rbp)
	jmp	.LBB72_1
.LBB72_4:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	sync_window_with_frame_matrix_rows, .Lfunc_end72-sync_window_with_frame_matrix_rows
	.cfi_endproc

	.align	16, 0x90
	.type	build_frame_matrix_from_window_tree,@function
build_frame_matrix_from_window_tree:    # @build_frame_matrix_from_window_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB73_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB73_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB73_3
	jmp	.LBB73_4
.LBB73_3:                               # %if.then
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	build_frame_matrix_from_window_tree
	jmp	.LBB73_5
.LBB73_4:                               # %if.else
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	build_frame_matrix_from_leaf_window
.LBB73_5:                               # %if.end
                                        #   in Loop: Header=BB73_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB73_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB73_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB73_8
.LBB73_7:                               # %cond.false
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB73_8:                               # %cond.end
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB73_1
.LBB73_9:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	build_frame_matrix_from_window_tree, .Lfunc_end73-build_frame_matrix_from_window_tree
	.cfi_endproc

	.align	16, 0x90
	.type	build_frame_matrix_from_leaf_window,@function
build_frame_matrix_from_leaf_window:    # @build_frame_matrix_from_leaf_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rsi
	movw	468(%rsi), %ax
	shrw	$10, %ax
	andw	$1, %ax
	testw	$1, %ax
	je	.LBB74_14
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	-96(%rbp), %ecx         # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-92(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB74_13
# BB#2:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	window_display_table
	movq	%rax, -48(%rbp)
	movl	$124, -40(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB74_10
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	592(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	GLYPH_CODE_P
	testb	$1, %al
	jne	.LBB74_4
	jmp	.LBB74_10
.LBB74_4:                               # %if.then.13
	jmp	.LBB74_5
.LBB74_5:                               # %do.body
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_7
# BB#6:                                 # %if.then.16
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB74_8
.LBB74_7:                               # %if.else
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	andq	$4194303, %rax          # imm = 0x3FFFFF
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	sarq	$22, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB74_8:                               # %if.end
	jmp	.LBB74_9
.LBB74_9:                               # %do.end
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	spec_glyph_lookup_face
.LBB74_10:                              # %if.end.32
	movq	-40(%rbp), %rdi
	callq	GLYPH_FACE
	cmpl	$0, %eax
	jg	.LBB74_12
# BB#11:                                # %if.then.36
	movl	$11, -36(%rbp)
.LBB74_12:                              # %if.end.38
	jmp	.LBB74_13
.LBB74_13:                              # %if.end.39
	jmp	.LBB74_15
.LBB74_14:                              # %if.else.40
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB74_15:                              # %if.end.41
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB74_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB74_28
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-32(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	192(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -73(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	28(%rax), %esi
	callq	fill_up_frame_row_with_spaces
	movq	-72(%rbp), %rdi
	callq	fill_up_glyph_row_with_spaces
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	200(%rcx), %rax
	jne	.LBB74_20
# BB#18:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-72(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB74_20
# BB#19:                                # %if.then.58
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movb	$1, -73(%rbp)
.LBB74_20:                              # %if.end.63
                                        #   in Loop: Header=BB74_16 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB74_22
# BB#21:                                # %if.then.65
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	28(%rcx), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movslq	36(%rdx), %rdx
	imulq	$48, %rdx, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	jmp	.LBB74_27
.LBB74_22:                              # %if.else.73
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-64(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	orq	$1024, %rcx             # imm = 0x400
	movq	%rcx, 236(%rax)
	movq	-40(%rbp), %rdi
	callq	GLYPH_CHAR
	cmpl	$0, %eax
	je	.LBB74_26
# BB#23:                                # %if.then.80
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	addq	$-48, %rax
	movq	%rax, -88(%rbp)
# BB#24:                                # %do.body.84
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-40(%rbp), %rdi
	callq	GLYPH_CHAR
	movq	-88(%rbp), %rdi
	movl	%eax, 40(%rdi)
	movq	-40(%rbp), %rdi
	callq	GLYPH_FACE
	movq	-88(%rbp), %rdi
	movl	28(%rdi), %ecx
	andl	$1048575, %eax          # imm = 0xFFFFF
	andl	$-1048576, %ecx         # imm = 0xFFFFFFFFFFF00000
	orl	%eax, %ecx
	movl	%ecx, 28(%rdi)
	movq	-88(%rbp), %rdi
	movl	24(%rdi), %eax
	andl	$-129, %eax
	movl	%eax, 24(%rdi)
# BB#25:                                # %do.end.95
                                        #   in Loop: Header=BB74_16 Depth=1
	jmp	.LBB74_26
.LBB74_26:                              # %if.end.96
                                        #   in Loop: Header=BB74_16 Depth=1
	jmp	.LBB74_27
.LBB74_27:                              # %if.end.97
                                        #   in Loop: Header=BB74_16 Depth=1
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	36(%rax), %ecx
	movw	%cx, %dx
	movq	-64(%rbp), %rax
	movw	%dx, 34(%rax)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB74_16
.LBB74_28:                              # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	build_frame_matrix_from_leaf_window, .Lfunc_end74-build_frame_matrix_from_leaf_window
	.cfi_endproc

	.align	16, 0x90
	.type	fill_up_glyph_row_with_spaces,@function
fill_up_glyph_row_with_spaces:          # @fill_up_glyph_row_with_spaces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fill_up_glyph_row_area_with_spaces
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	fill_up_glyph_row_area_with_spaces
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	fill_up_glyph_row_area_with_spaces
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	fill_up_glyph_row_with_spaces, .Lfunc_end75-fill_up_glyph_row_with_spaces
	.cfi_endproc

	.align	16, 0x90
	.type	fill_up_glyph_row_area_with_spaces,@function
fill_up_glyph_row_area_with_spaces:     # @fill_up_glyph_row_area_with_spaces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax,%rdi,8), %rax
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdi
	movq	-8(%rbp), %rcx
	cmpq	(%rcx,%rdi,8), %rax
	jae	.LBB76_5
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -24(%rbp)
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movswl	32(%rsi,%rdx,2), %eax
	movslq	%eax, %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
.LBB76_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB76_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB76_2 Depth=1
	movabsq	$space_glyph, %rax
	movl	$48, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$48, %rdi
	movq	%rdi, -32(%rbp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB76_2
.LBB76_4:                               # %while.end
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movslq	-12(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movw	%ax, %r8w
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movw	%r8w, 32(%rcx,%rax,2)
.LBB76_5:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	fill_up_glyph_row_area_with_spaces, .Lfunc_end76-fill_up_glyph_row_area_with_spaces
	.cfi_endproc

	.align	16, 0x90
	.type	update_window_line,@function
update_window_line:                     # @update_window_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	192(%rdx), %rdx
	movq	8(%rdx), %rdx
	movslq	-12(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	200(%rdx), %rdx
	movq	8(%rdx), %rdx
	movslq	-12(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	376(%rdx), %rdx
	movq	112(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, -49(%rbp)
	movq	-40(%rbp), %rdx
	movq	236(%rdx), %rdx
	shrq	$20, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	jne	.LBB77_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpl	$0, 72(%rax)
	jle	.LBB77_23
.LBB77_2:                               # %if.then
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$19, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB77_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 428(%rax)
	jle	.LBB77_5
# BB#4:                                 # %if.then.10
	xorl	%edx, %edx
	movb	$1, -49(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %ecx
	callq	update_marginal_area
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rdi
	andq	$-513, %rdi             # imm = 0xFFFFFFFFFFFFFDFF
	orq	$512, %rdi              # imm = 0x200
	movq	%rdi, 236(%rsi)
.LBB77_5:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	update_text_area
	testb	$1, %al
	jne	.LBB77_6
	jmp	.LBB77_9
.LBB77_6:                               # %if.then.13
	movb	$1, -49(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$25, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB77_8
# BB#7:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
.LBB77_8:                               # %if.end.19
	jmp	.LBB77_9
.LBB77_9:                               # %if.end.20
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$19, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB77_12
# BB#10:                                # %land.lhs.true.26
	movq	-8(%rbp), %rax
	cmpl	$0, 432(%rax)
	jle	.LBB77_12
# BB#11:                                # %if.then.28
	movl	$2, %edx
	movb	$1, -49(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %ecx
	callq	update_marginal_area
.LBB77_12:                              # %if.end.29
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB77_21
# BB#13:                                # %lor.lhs.false.34
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	48(%rax), %ecx
	jne	.LBB77_21
# BB#14:                                # %lor.lhs.false.37
	movq	-40(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	72(%rax), %ecx
	jne	.LBB77_21
# BB#15:                                # %lor.lhs.false.41
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$28, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$28, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB77_21
# BB#16:                                # %lor.lhs.false.54
	movq	-40(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	208(%rax), %ecx
	jne	.LBB77_21
# BB#17:                                # %lor.lhs.false.58
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$9, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB77_21
# BB#18:                                # %lor.lhs.false.65
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB77_21
# BB#19:                                # %lor.lhs.false.80
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$27, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$27, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB77_21
# BB#20:                                # %lor.lhs.false.94
	movq	-40(%rbp), %rax
	cmpl	$0, 244(%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	cmpl	$0, 244(%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB77_22
.LBB77_21:                              # %if.then.102
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
.LBB77_22:                              # %if.end.103
	jmp	.LBB77_23
.LBB77_23:                              # %if.end.104
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rsi
	movl	-12(%rbp), %edx
	callq	make_current
	movb	-49(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	update_window_line, .Lfunc_end77-update_window_line
	.cfi_endproc

	.align	16, 0x90
	.type	scrolling_window,@function
scrolling_window:                       # @scrolling_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	window_text_bottom_y
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	376(%rdi), %rdi
	movq	112(%rdi), %rdi
	movq	%rdi, -112(%rbp)
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movq	%rdi, -56(%rbp)
.LBB78_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB78_10
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-120(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB78_10
# BB#4:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-120(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$9, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB78_10
# BB#5:                                 # %land.lhs.true.22
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-128(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-120(%rbp), %rax
	cmpl	48(%rax), %ecx
	jne	.LBB78_10
# BB#6:                                 # %land.lhs.true.26
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-128(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-128(%rbp), %rax
	addl	60(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jg	.LBB78_10
# BB#7:                                 # %land.lhs.true.30
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-120(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-120(%rbp), %rax
	addl	60(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jg	.LBB78_10
# BB#8:                                 # %land.lhs.true.36
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$1, %edx
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	row_equal_p
	testb	$1, %al
	jne	.LBB78_9
	jmp	.LBB78_10
.LBB78_9:                               # %if.then
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	assign_row
	movq	-120(%rbp), %rsi
	movq	236(%rsi), %rdi
	andq	$-1025, %rdi            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rdi, 236(%rsi)
	jmp	.LBB78_11
.LBB78_10:                              # %if.else
	jmp	.LBB78_13
.LBB78_11:                              # %if.end
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_12
.LBB78_12:                              # %for.inc
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB78_1
.LBB78_13:                              # %for.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB78_15
# BB#14:                                # %if.then.49
	movl	$-1, -4(%rbp)
	jmp	.LBB78_138
.LBB78_15:                              # %if.end.50
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movl	%ecx, -64(%rbp)
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	%rax, -56(%rbp)
.LBB78_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_24
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB78_16 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB78_19
# BB#18:                                # %if.then.66
	movl	$0, -4(%rbp)
	jmp	.LBB78_138
.LBB78_19:                              # %if.end.67
                                        #   in Loop: Header=BB78_16 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	48(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	addl	60(%rax), %edx
	movl	%edx, -132(%rbp)
	movl	-132(%rbp), %edx
	cmpl	-44(%rbp), %edx
	jg	.LBB78_21
# BB#20:                                # %if.then.77
                                        #   in Loop: Header=BB78_16 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB78_21:                              # %if.end.79
                                        #   in Loop: Header=BB78_16 Depth=1
	movl	-132(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB78_23
# BB#22:                                # %if.then.82
	jmp	.LBB78_24
.LBB78_23:                              # %if.end.83
                                        #   in Loop: Header=BB78_16 Depth=1
	jmp	.LBB78_16
.LBB78_24:                              # %while.end
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	%rax, -56(%rbp)
.LBB78_25:                              # %while.cond.87
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	24(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_31
# BB#26:                                # %while.body.93
                                        #   in Loop: Header=BB78_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	48(%rax), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	addl	60(%rax), %edx
	movl	%edx, -136(%rbp)
	movl	-136(%rbp), %edx
	cmpl	-44(%rbp), %edx
	jg	.LBB78_28
# BB#27:                                # %if.then.104
                                        #   in Loop: Header=BB78_25 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB78_28:                              # %if.end.106
                                        #   in Loop: Header=BB78_25 Depth=1
	movl	-136(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB78_30
# BB#29:                                # %if.then.109
	jmp	.LBB78_31
.LBB78_30:                              # %if.end.110
                                        #   in Loop: Header=BB78_25 Depth=1
	jmp	.LBB78_25
.LBB78_31:                              # %while.end.111
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movslq	-76(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, -60(%rbp)
.LBB78_32:                              # %while.cond.114
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	subq	$1, %rdx
	movslq	-68(%rbp), %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -242(%rbp)         # 1-byte Spill
	jle	.LBB78_38
# BB#33:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB78_32 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	-64(%rbp), %eax
	movb	%cl, -242(%rbp)         # 1-byte Spill
	jle	.LBB78_38
# BB#34:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB78_32 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	shlq	$8, %rsi
	addq	%rsi, %rdx
	movq	236(%rdx), %rdx
	shrq	$10, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -242(%rbp)         # 1-byte Spill
	je	.LBB78_38
# BB#35:                                # %land.lhs.true.133
                                        #   in Loop: Header=BB78_32 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	shlq	$8, %rsi
	addq	%rsi, %rdx
	movl	48(%rdx), %eax
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-56(%rbp), %rsi
	subq	$1, %rsi
	shlq	$8, %rsi
	addq	%rsi, %rdx
	cmpl	48(%rdx), %eax
	movb	%cl, -242(%rbp)         # 1-byte Spill
	jne	.LBB78_38
# BB#36:                                # %land.lhs.true.145
                                        #   in Loop: Header=BB78_32 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-56(%rbp), %rsi
	subq	$1, %rsi
	shlq	$8, %rsi
	addq	%rsi, %rdx
	movq	236(%rdx), %rdx
	shrq	$9, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -242(%rbp)         # 1-byte Spill
	jne	.LBB78_38
# BB#37:                                # %land.rhs
                                        #   in Loop: Header=BB78_32 Depth=1
	movl	$1, %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	subq	$1, %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	-60(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdi
	shlq	$8, %rdi
	addq	%rdi, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	row_equal_p
	movb	%al, -242(%rbp)         # 1-byte Spill
.LBB78_38:                              # %land.end
                                        #   in Loop: Header=BB78_32 Depth=1
	movb	-242(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_39
	jmp	.LBB78_40
.LBB78_39:                              # %while.body.163
                                        #   in Loop: Header=BB78_32 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB78_32
.LBB78_40:                              # %while.end.165
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movl	-76(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	jne	.LBB78_42
# BB#41:                                # %if.then.169
	movl	$0, -4(%rbp)
	jmp	.LBB78_138
.LBB78_42:                              # %if.end.170
	movabsq	$384307168202282315, %rax # imm = 0x55555555555554B
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	24(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-40(%rbp), %rcx
	movslq	24(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_44
# BB#43:                                # %if.then.178
	movq	$-1, %rdi
	callq	memory_full
.LBB78_44:                              # %if.end.179
	movq	-40(%rbp), %rax
	movslq	24(%rax), %rax
	cmpq	old_lines_size, %rax
	jle	.LBB78_46
# BB#45:                                # %if.then.184
	movabsq	$old_lines_size, %rsi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	old_lines, %rdx
	movq	-40(%rbp), %rdi
	movslq	24(%rdi), %rdi
	subq	old_lines_size, %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	xpalloc
	movq	%rax, old_lines
.LBB78_46:                              # %if.end.189
	movq	-32(%rbp), %rax
	movslq	24(%rax), %rax
	cmpq	new_lines_size, %rax
	jle	.LBB78_48
# BB#47:                                # %if.then.194
	movabsq	$new_lines_size, %rsi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	new_lines, %rdx
	movq	-32(%rbp), %rdi
	movslq	24(%rdi), %rdi
	subq	new_lines_size, %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	xpalloc
	movq	%rax, new_lines
.LBB78_48:                              # %if.end.199
	movq	-32(%rbp), %rax
	movslq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movslq	24(%rax), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	row_table_size, %rax
	imulq	$3, -96(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_50
# BB#49:                                # %if.then.207
	imulq	$3, -96(%rbp), %rdi
	callq	next_almost_prime
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, -160(%rbp)
	movq	row_table, %rax
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	xnrealloc
	xorl	%esi, %esi
	movq	%rax, row_table
	movq	-160(%rbp), %rax
	movq	%rax, row_table_size
	movq	row_table, %rax
	movq	-160(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	callq	memset
.LBB78_50:                              # %if.end.212
	movq	-96(%rbp), %rax
	cmpq	row_entry_pool_size, %rax
	jle	.LBB78_52
# BB#51:                                # %if.then.215
	movabsq	$row_entry_pool_size, %rsi
	movq	$-1, %rcx
	movl	$40, %eax
	movl	%eax, %r8d
	movq	row_entry_pool, %rdx
	movq	-96(%rbp), %rdi
	subq	row_entry_pool_size, %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	xpalloc
	movq	%rax, row_entry_pool
.LBB78_52:                              # %if.end.218
	movq	-32(%rbp), %rax
	movslq	24(%rax), %rax
	cmpq	runs_size, %rax
	jle	.LBB78_54
# BB#53:                                # %if.then.223
	movl	$8, %eax
	movl	%eax, %edx
	movq	runs, %rcx
	movq	-32(%rbp), %rsi
	movslq	24(%rsi), %rsi
	movq	%rcx, %rdi
	callq	xnrealloc
	movl	$24, %r8d
	movl	%r8d, %edx
	movq	%rax, runs
	movq	run_pool, %rax
	movq	-32(%rbp), %rcx
	movslq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	xnrealloc
	movq	%rax, run_pool
	movq	-32(%rbp), %rax
	movslq	24(%rax), %rax
	movq	%rax, runs_size
.LBB78_54:                              # %if.end.232
	movl	$0, -84(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, row_entry_idx
	movslq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB78_55:                              # %for.cond.234
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movslq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_61
# BB#56:                                # %for.body.238
                                        #   in Loop: Header=BB78_55 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB78_58
# BB#57:                                # %if.then.246
                                        #   in Loop: Header=BB78_55 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	add_row_entry
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	old_lines, %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	jmp	.LBB78_59
.LBB78_58:                              # %if.else.251
                                        #   in Loop: Header=BB78_55 Depth=1
	movq	-56(%rbp), %rax
	movq	old_lines, %rcx
	movq	$0, (%rcx,%rax,8)
.LBB78_59:                              # %if.end.253
                                        #   in Loop: Header=BB78_55 Depth=1
	jmp	.LBB78_60
.LBB78_60:                              # %for.inc.254
                                        #   in Loop: Header=BB78_55 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB78_55
.LBB78_61:                              # %for.end.256
	movslq	-68(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB78_62:                              # %for.cond.258
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movslq	-76(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_65
# BB#63:                                # %for.body.262
                                        #   in Loop: Header=BB78_62 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	add_row_entry
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	addl	$1, %edx
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	new_lines, %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#64:                                # %for.inc.269
                                        #   in Loop: Header=BB78_62 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB78_62
.LBB78_65:                              # %for.end.271
	movslq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB78_66:                              # %for.cond.273
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_71 Depth 2
                                        #     Child Loop BB78_77 Depth 2
                                        #     Child Loop BB78_83 Depth 2
                                        #     Child Loop BB78_89 Depth 2
	movq	-56(%rbp), %rax
	movslq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_95
# BB#67:                                # %for.body.277
                                        #   in Loop: Header=BB78_66 Depth=1
	movq	-56(%rbp), %rax
	movq	old_lines, %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB78_93
# BB#68:                                # %land.lhs.true.280
                                        #   in Loop: Header=BB78_66 Depth=1
	movq	-56(%rbp), %rax
	movq	old_lines, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$1, (%rax)
	jne	.LBB78_93
# BB#69:                                # %land.lhs.true.285
                                        #   in Loop: Header=BB78_66 Depth=1
	movq	-56(%rbp), %rax
	movq	old_lines, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB78_93
# BB#70:                                # %if.then.290
                                        #   in Loop: Header=BB78_66 Depth=1
	movq	-56(%rbp), %rax
	movq	old_lines, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %edx
	movl	%edx, -172(%rbp)
	movq	run_pool, %rax
	movl	-84(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -84(%rbp)
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	48(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-172(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-172(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	48(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	movq	-184(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	60(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -164(%rbp)
	movl	-172(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -168(%rbp)
.LBB78_71:                              # %while.cond.312
                                        #   Parent Loop BB78_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-164(%rbp), %eax
	cmpl	-64(%rbp), %eax
	movb	%cl, -273(%rbp)         # 1-byte Spill
	jle	.LBB78_74
# BB#72:                                # %land.lhs.true.315
                                        #   in Loop: Header=BB78_71 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-168(%rbp), %eax
	cmpl	-68(%rbp), %eax
	movb	%cl, -273(%rbp)         # 1-byte Spill
	jle	.LBB78_74
# BB#73:                                # %land.rhs.318
                                        #   in Loop: Header=BB78_71 Depth=2
	movslq	-164(%rbp), %rax
	movq	old_lines, %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-168(%rbp), %rcx
	movq	new_lines, %rdx
	cmpq	(%rdx,%rcx,8), %rax
	sete	%sil
	movb	%sil, -273(%rbp)        # 1-byte Spill
.LBB78_74:                              # %land.end.324
                                        #   in Loop: Header=BB78_71 Depth=2
	movb	-273(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_75
	jmp	.LBB78_76
.LBB78_75:                              # %while.body.325
                                        #   in Loop: Header=BB78_71 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-164(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	60(%rax), %edx
	movl	%edx, -188(%rbp)
	movq	-184(%rbp), %rax
	movl	12(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 12(%rax)
	movq	-184(%rbp), %rax
	movl	8(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 8(%rax)
	movq	-184(%rbp), %rax
	movl	20(%rax), %edx
	addl	$1, %edx
	movl	%edx, 20(%rax)
	movl	-188(%rbp), %edx
	movq	-184(%rbp), %rax
	addl	16(%rax), %edx
	movl	%edx, 16(%rax)
	movl	-188(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	(%rax), %esi
	subl	%edx, %esi
	movl	%esi, (%rax)
	movl	-188(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	4(%rax), %esi
	subl	%edx, %esi
	movl	%esi, 4(%rax)
	movl	-164(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -164(%rbp)
	movl	-168(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -168(%rbp)
	jmp	.LBB78_71
.LBB78_76:                              # %while.end.344
                                        #   in Loop: Header=BB78_66 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -168(%rbp)
.LBB78_77:                              # %while.cond.348
                                        #   Parent Loop BB78_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-164(%rbp), %eax
	cmpl	-72(%rbp), %eax
	movb	%cl, -274(%rbp)         # 1-byte Spill
	jge	.LBB78_80
# BB#78:                                # %land.lhs.true.351
                                        #   in Loop: Header=BB78_77 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-168(%rbp), %eax
	cmpl	-76(%rbp), %eax
	movb	%cl, -274(%rbp)         # 1-byte Spill
	jge	.LBB78_80
# BB#79:                                # %land.rhs.354
                                        #   in Loop: Header=BB78_77 Depth=2
	movslq	-164(%rbp), %rax
	movq	old_lines, %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-168(%rbp), %rcx
	movq	new_lines, %rdx
	cmpq	(%rdx,%rcx,8), %rax
	sete	%sil
	movb	%sil, -274(%rbp)        # 1-byte Spill
.LBB78_80:                              # %land.end.361
                                        #   in Loop: Header=BB78_77 Depth=2
	movb	-274(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_81
	jmp	.LBB78_82
.LBB78_81:                              # %while.body.362
                                        #   in Loop: Header=BB78_77 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-164(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	60(%rax), %edx
	movl	%edx, -192(%rbp)
	movq	-184(%rbp), %rax
	movl	20(%rax), %edx
	addl	$1, %edx
	movl	%edx, 20(%rax)
	movl	-192(%rbp), %edx
	movq	-184(%rbp), %rax
	addl	16(%rax), %edx
	movl	%edx, 16(%rax)
	movl	-164(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -164(%rbp)
	movl	-168(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -168(%rbp)
	jmp	.LBB78_77
.LBB78_82:                              # %while.end.374
                                        #   in Loop: Header=BB78_66 Depth=1
	movl	$0, -164(%rbp)
.LBB78_83:                              # %for.cond.375
                                        #   Parent Loop BB78_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-164(%rbp), %eax
	cmpl	-80(%rbp), %eax
	movb	%cl, -275(%rbp)         # 1-byte Spill
	jge	.LBB78_85
# BB#84:                                # %land.rhs.378
                                        #   in Loop: Header=BB78_83 Depth=2
	movslq	-164(%rbp), %rax
	movq	runs, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	movq	-184(%rbp), %rax
	cmpl	16(%rax), %edx
	setg	%sil
	movb	%sil, -275(%rbp)        # 1-byte Spill
.LBB78_85:                              # %land.end.385
                                        #   in Loop: Header=BB78_83 Depth=2
	movb	-275(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_86
	jmp	.LBB78_88
.LBB78_86:                              # %for.body.386
                                        #   in Loop: Header=BB78_83 Depth=2
	jmp	.LBB78_87
.LBB78_87:                              # %for.inc.387
                                        #   in Loop: Header=BB78_83 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB78_83
.LBB78_88:                              # %for.end.389
                                        #   in Loop: Header=BB78_66 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB78_89:                              # %for.cond.390
                                        #   Parent Loop BB78_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-168(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jle	.LBB78_92
# BB#90:                                # %for.body.393
                                        #   in Loop: Header=BB78_89 Depth=2
	movl	-168(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	runs, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-168(%rbp), %rdx
	movq	runs, %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#91:                                # %for.inc.399
                                        #   in Loop: Header=BB78_89 Depth=2
	movl	-168(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB78_89
.LBB78_92:                              # %for.end.401
                                        #   in Loop: Header=BB78_66 Depth=1
	movq	-184(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	runs, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-80(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -80(%rbp)
	movq	-184(%rbp), %rax
	movslq	20(%rax), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB78_94
.LBB78_93:                              # %if.else.408
                                        #   in Loop: Header=BB78_66 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB78_94:                              # %if.end.410
                                        #   in Loop: Header=BB78_66 Depth=1
	jmp	.LBB78_66
.LBB78_95:                              # %for.end.411
	movq	$0, -56(%rbp)
.LBB78_96:                              # %for.cond.412
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_101 Depth 2
                                        #       Child Loop BB78_119 Depth 3
                                        #     Child Loop BB78_127 Depth 2
	movq	-56(%rbp), %rax
	movslq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB78_133
# BB#97:                                # %for.body.416
                                        #   in Loop: Header=BB78_96 Depth=1
	movq	-56(%rbp), %rax
	movq	runs, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB78_131
# BB#98:                                # %if.then.421
                                        #   in Loop: Header=BB78_96 Depth=1
	movq	-56(%rbp), %rax
	movq	runs, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	4(%rax), %edx
	movq	-200(%rbp), %rax
	cmpl	(%rax), %edx
	je	.LBB78_100
# BB#99:                                # %if.then.427
                                        #   in Loop: Header=BB78_96 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	*%rax
.LBB78_100:                             # %if.end.428
                                        #   in Loop: Header=BB78_96 Depth=1
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB78_101:                             # %for.cond.430
                                        #   Parent Loop BB78_96 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB78_119 Depth 3
	movslq	-60(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB78_126
# BB#102:                               # %for.body.434
                                        #   in Loop: Header=BB78_101 Depth=2
	movslq	-60(%rbp), %rax
	movq	runs, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -208(%rbp)
	movb	$0, -209(%rbp)
	movq	-208(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB78_112
# BB#103:                               # %land.lhs.true.441
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	movl	(%rax), %ecx
	movq	-200(%rbp), %rax
	movl	(%rax), %edx
	movq	-200(%rbp), %rax
	addl	16(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB78_112
# BB#104:                               # %land.lhs.true.448
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	movl	(%rax), %ecx
	movq	-208(%rbp), %rax
	addl	16(%rax), %ecx
	movq	-200(%rbp), %rax
	cmpl	(%rax), %ecx
	jle	.LBB78_112
# BB#105:                               # %if.then.455
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	movl	(%rax), %ecx
	movq	-200(%rbp), %rax
	cmpl	(%rax), %ecx
	jge	.LBB78_107
# BB#106:                               # %if.then.460
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-200(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-208(%rbp), %rax
	subl	8(%rax), %ecx
	movq	-208(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-200(%rbp), %rax
	movl	(%rax), %ecx
	movq	-208(%rbp), %rax
	subl	(%rax), %ecx
	movq	-208(%rbp), %rax
	movl	%ecx, 16(%rax)
	movb	$1, -209(%rbp)
	jmp	.LBB78_111
.LBB78_107:                             # %if.else.469
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-200(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-200(%rbp), %rax
	addl	20(%rax), %ecx
	movq	-208(%rbp), %rax
	subl	8(%rax), %ecx
	movl	%ecx, -216(%rbp)
	movq	-208(%rbp), %rax
	movl	20(%rax), %ecx
	cmpl	-216(%rbp), %ecx
	jg	.LBB78_109
# BB#108:                               # %if.then.478
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	movl	$0, 20(%rax)
	jmp	.LBB78_110
.LBB78_109:                             # %if.else.480
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-200(%rbp), %rax
	movl	(%rax), %ecx
	movq	-200(%rbp), %rax
	addl	16(%rax), %ecx
	movq	-208(%rbp), %rax
	subl	(%rax), %ecx
	movl	%ecx, -220(%rbp)
	movl	-216(%rbp), %ecx
	movq	-208(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movl	-216(%rbp), %ecx
	movq	-208(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movl	-216(%rbp), %ecx
	movq	-208(%rbp), %rax
	movl	20(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 20(%rax)
	movl	-220(%rbp), %ecx
	movq	-208(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-220(%rbp), %ecx
	movq	-208(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-220(%rbp), %ecx
	movq	-208(%rbp), %rax
	movl	16(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 16(%rax)
	movb	$1, -209(%rbp)
.LBB78_110:                             # %if.end.498
                                        #   in Loop: Header=BB78_101 Depth=2
	jmp	.LBB78_111
.LBB78_111:                             # %if.end.499
                                        #   in Loop: Header=BB78_101 Depth=2
	jmp	.LBB78_112
.LBB78_112:                             # %if.end.500
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-200(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-200(%rbp), %rax
	cmpl	(%rax), %ecx
	je	.LBB78_116
# BB#113:                               # %land.lhs.true.505
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-200(%rbp), %rax
	movl	(%rax), %edx
	movq	-200(%rbp), %rax
	addl	16(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB78_116
# BB#114:                               # %land.lhs.true.512
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-208(%rbp), %rax
	addl	16(%rax), %ecx
	movq	-200(%rbp), %rax
	cmpl	(%rax), %ecx
	jle	.LBB78_116
# BB#115:                               # %if.then.519
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	movl	$0, 20(%rax)
.LBB78_116:                             # %if.end.521
                                        #   in Loop: Header=BB78_101 Depth=2
	testb	$1, -209(%rbp)
	je	.LBB78_124
# BB#117:                               # %land.lhs.true.524
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	-208(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB78_124
# BB#118:                               # %if.then.528
                                        #   in Loop: Header=BB78_101 Depth=2
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -224(%rbp)
.LBB78_119:                             # %while.cond.530
                                        #   Parent Loop BB78_96 Depth=1
                                        #     Parent Loop BB78_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$1, %al
	movslq	-224(%rbp), %rcx
	movq	runs, %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	$0, 20(%rcx)
	movb	%al, -276(%rbp)         # 1-byte Spill
	je	.LBB78_121
# BB#120:                               # %lor.rhs
                                        #   in Loop: Header=BB78_119 Depth=3
	movslq	-224(%rbp), %rax
	movq	runs, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	movq	-208(%rbp), %rax
	cmpl	16(%rax), %edx
	setl	%sil
	movb	%sil, -276(%rbp)        # 1-byte Spill
.LBB78_121:                             # %lor.end
                                        #   in Loop: Header=BB78_119 Depth=3
	movb	-276(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_122
	jmp	.LBB78_123
.LBB78_122:                             # %while.body.542
                                        #   in Loop: Header=BB78_119 Depth=3
	movl	-224(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB78_119
.LBB78_123:                             # %while.end.544
                                        #   in Loop: Header=BB78_101 Depth=2
	movq	runs, %rax
	movslq	-60(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	runs, %rcx
	movslq	-60(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	movl	-224(%rbp), %esi
	subl	-60(%rbp), %esi
	movslq	%esi, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove
	movq	-208(%rbp), %rax
	movslq	-224(%rbp), %rcx
	movq	runs, %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB78_124:                             # %if.end.555
                                        #   in Loop: Header=BB78_101 Depth=2
	jmp	.LBB78_125
.LBB78_125:                             # %for.inc.556
                                        #   in Loop: Header=BB78_101 Depth=2
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB78_101
.LBB78_126:                             # %for.end.558
                                        #   in Loop: Header=BB78_96 Depth=1
	movl	$0, -60(%rbp)
.LBB78_127:                             # %for.cond.559
                                        #   Parent Loop BB78_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movq	-200(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jge	.LBB78_130
# BB#128:                               # %for.body.563
                                        #   in Loop: Header=BB78_127 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-200(%rbp), %rcx
	movl	8(%rcx), %edx
	addl	-60(%rbp), %edx
	movslq	%edx, %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -240(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-200(%rbp), %rcx
	movl	8(%rcx), %edx
	addl	-60(%rbp), %edx
	movslq	%edx, %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	movb	%al, %sil
	andb	$1, %sil
	movb	%sil, -241(%rbp)
	movq	-232(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$8, %rax
	andq	$1, %rax
	movb	%al, %sil
	movq	-232(%rbp), %rax
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, %ecx
	movq	236(%rax), %rdi
	shlq	$9, %rcx
	andq	$-513, %rdi             # imm = 0xFFFFFFFFFFFFFDFF
	orq	%rcx, %rdi
	movq	%rdi, 236(%rax)
	movq	-240(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	assign_row
	movq	-232(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	movq	%rcx, 236(%rax)
	movb	-241(%rbp), %r8b
	movq	-240(%rbp), %rax
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, %ecx
	movq	236(%rax), %rsi
	shlq	$21, %rcx
	andq	$-2097153, %rsi         # imm = 0xFFFFFFFFFFDFFFFF
	orq	%rcx, %rsi
	movq	%rsi, 236(%rax)
# BB#129:                               # %for.inc.598
                                        #   in Loop: Header=BB78_127 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB78_127
.LBB78_130:                             # %for.end.600
                                        #   in Loop: Header=BB78_96 Depth=1
	jmp	.LBB78_131
.LBB78_131:                             # %if.end.601
                                        #   in Loop: Header=BB78_96 Depth=1
	jmp	.LBB78_132
.LBB78_132:                             # %for.inc.602
                                        #   in Loop: Header=BB78_96 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB78_96
.LBB78_133:                             # %for.end.604
	movq	$0, -56(%rbp)
.LBB78_134:                             # %for.cond.605
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	row_entry_idx, %rax
	jge	.LBB78_137
# BB#135:                               # %for.body.608
                                        #   in Loop: Header=BB78_134 Depth=1
	movq	-56(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	row_entry_pool, %rax
	movq	16(%rax), %rax
	movq	row_table, %rcx
	movq	$0, (%rcx,%rax,8)
# BB#136:                               # %for.inc.611
                                        #   in Loop: Header=BB78_134 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB78_134
.LBB78_137:                             # %for.end.613
	cmpl	$0, -80(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB78_138:                             # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end78:
	.size	scrolling_window, .Lfunc_end78-scrolling_window
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_overlapped_rows,@function
redraw_overlapped_rows:                 # @redraw_overlapped_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB79_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_9 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB79_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB79_4
# BB#3:                                 # %if.then
	jmp	.LBB79_22
.LBB79_4:                               # %if.else
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB79_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB79_1 Depth=1
	jmp	.LBB79_21
.LBB79_6:                               # %if.end
                                        #   in Loop: Header=BB79_1 Depth=1
	jmp	.LBB79_7
.LBB79_7:                               # %if.end.7
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB79_18
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	$0, -36(%rbp)
.LBB79_9:                               # %for.cond.13
                                        #   Parent Loop BB79_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -36(%rbp)
	jge	.LBB79_17
# BB#10:                                # %for.body.15
                                        #   in Loop: Header=BB79_9 Depth=2
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	$1, -36(%rbp)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jne	.LBB79_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB79_9 Depth=2
	movq	-32(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB79_13
.LBB79_12:                              # %cond.false
                                        #   in Loop: Header=BB79_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB79_13
.LBB79_13:                              # %cond.end
                                        #   in Loop: Header=BB79_9 Depth=2
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	output_cursor_to
	movslq	-36(%rbp), %rdi
	movq	-32(%rbp), %r9
	cmpw	$0, 32(%r9,%rdi,2)
	je	.LBB79_15
# BB#14:                                # %if.then.17
                                        #   in Loop: Header=BB79_9 Depth=2
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movl	-36(%rbp), %ecx
	movslq	-36(%rbp), %r8
	movq	-32(%rbp), %r9
	movswl	32(%r9,%r8,2), %r8d
	callq	*%rax
.LBB79_15:                              # %if.end.23
                                        #   in Loop: Header=BB79_9 Depth=2
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	*%rax
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB79_9 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB79_9
.LBB79_17:                              # %for.end
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-2097153, %rcx         # imm = 0xFFFFFFFFFFDFFFFF
	movq	%rcx, 236(%rax)
.LBB79_18:                              # %if.end.29
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	60(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jl	.LBB79_20
# BB#19:                                # %if.then.33
	jmp	.LBB79_22
.LBB79_20:                              # %if.end.34
                                        #   in Loop: Header=BB79_1 Depth=1
	jmp	.LBB79_21
.LBB79_21:                              # %for.inc.35
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB79_1
.LBB79_22:                              # %for.end.37
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	redraw_overlapped_rows, .Lfunc_end79-redraw_overlapped_rows
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_overlapping_rows,@function
redraw_overlapping_rows:                # @redraw_overlapping_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
.Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp250:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	376(%rdi), %rdi
	movq	112(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movl	$0, -16(%rbp)
.LBB80_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB80_33
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB80_4
# BB#3:                                 # %if.then
	jmp	.LBB80_33
.LBB80_4:                               # %if.else
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB80_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB80_1 Depth=1
	jmp	.LBB80_32
.LBB80_6:                               # %if.end
                                        #   in Loop: Header=BB80_1 Depth=1
	jmp	.LBB80_7
.LBB80_7:                               # %if.end.8
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	60(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$24, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB80_29
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	56(%rax), %ecx
	jle	.LBB80_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB80_1 Depth=1
	cmpl	$0, -16(%rbp)
	jle	.LBB80_12
# BB#10:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$8, %rdx
	addq	%rdx, %rax
	movq	236(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB80_12
# BB#11:                                # %if.then.26
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	-44(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB80_12:                              # %if.end.27
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-32(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	64(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	60(%rax), %edx
	movq	-32(%rbp), %rax
	subl	56(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB80_16
# BB#13:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB80_16
# BB#14:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$8, %rdx
	addq	%rdx, %rax
	movq	236(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB80_16
# BB#15:                                # %if.then.47
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	-44(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -44(%rbp)
.LBB80_16:                              # %if.end.49
                                        #   in Loop: Header=BB80_1 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB80_28
# BB#17:                                # %if.then.50
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-32(%rbp), %rax
	cmpw	$0, 32(%rax)
	je	.LBB80_19
# BB#18:                                # %if.then.52
                                        #   in Loop: Header=BB80_1 Depth=1
	xorl	%edx, %edx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %ecx
	callq	*%rax
.LBB80_19:                              # %if.end.53
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-32(%rbp), %rax
	cmpw	$0, 34(%rax)
	je	.LBB80_21
# BB#20:                                # %if.then.57
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	$1, %edx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %ecx
	callq	*%rax
.LBB80_21:                              # %if.end.59
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-32(%rbp), %rax
	cmpw	$0, 36(%rax)
	je	.LBB80_23
# BB#22:                                # %if.then.63
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	$2, %edx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %ecx
	callq	*%rax
.LBB80_23:                              # %if.end.65
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	-44(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB80_25
# BB#24:                                # %if.then.67
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$8, %rdx
	addq	%rdx, %rax
	movq	236(%rax), %rdx
	andq	$-2097153, %rdx         # imm = 0xFFFFFFFFFFDFFFFF
	orq	$2097152, %rdx          # imm = 0x200000
	movq	%rdx, 236(%rax)
.LBB80_25:                              # %if.end.76
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	-44(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB80_27
# BB#26:                                # %if.then.79
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$8, %rdx
	addq	%rdx, %rax
	movq	236(%rax), %rdx
	andq	$-2097153, %rdx         # imm = 0xFFFFFFFFFFDFFFFF
	orq	$2097152, %rdx          # imm = 0x200000
	movq	%rdx, 236(%rax)
.LBB80_27:                              # %if.end.89
                                        #   in Loop: Header=BB80_1 Depth=1
	jmp	.LBB80_28
.LBB80_28:                              # %if.end.90
                                        #   in Loop: Header=BB80_1 Depth=1
	jmp	.LBB80_29
.LBB80_29:                              # %if.end.91
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB80_31
# BB#30:                                # %if.then.93
	jmp	.LBB80_33
.LBB80_31:                              # %if.end.94
                                        #   in Loop: Header=BB80_1 Depth=1
	jmp	.LBB80_32
.LBB80_32:                              # %for.inc
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB80_1
.LBB80_33:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	redraw_overlapping_rows, .Lfunc_end80-redraw_overlapping_rows
	.cfi_endproc

	.align	16, 0x90
	.type	set_window_cursor_after_update,@function
set_window_cursor_after_update:         # @set_window_cursor_after_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
.Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp253:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -16(%rbp)
	testb	$1, globals+3371
	je	.LBB81_30
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB81_30
# BB#2:                                 # %land.lhs.true.1
	movq	minibuf_window, %rdi
	callq	XWINDOW
	cmpq	-8(%rbp), %rax
	jne	.LBB81_30
# BB#3:                                 # %land.lhs.true.4
	movq	minibuf_window, %rax
	cmpq	echo_area_window, %rax
	jne	.LBB81_30
# BB#4:                                 # %land.lhs.true.6
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB81_5
	jmp	.LBB81_30
.LBB81_5:                               # %land.lhs.true.8
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB81_30
# BB#6:                                 # %land.lhs.true.14
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	echo_area_window, %rax
	jne	.LBB81_30
# BB#7:                                 # %if.then
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	window_text_bottom_y
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
.LBB81_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	236(%rdx), %rdx
	shrq	$10, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB81_12
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB81_8 Depth=1
	movb	$1, %al
	cmpq	$0, -40(%rbp)
	movb	%al, -90(%rbp)          # 1-byte Spill
	je	.LBB81_11
# BB#10:                                # %lor.rhs
                                        #   in Loop: Header=BB81_8 Depth=1
	movq	-56(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	60(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	setle	%dl
	movb	%dl, -90(%rbp)          # 1-byte Spill
.LBB81_11:                              # %lor.end
                                        #   in Loop: Header=BB81_8 Depth=1
	movb	-90(%rbp), %al          # 1-byte Reload
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB81_12:                              # %land.end
                                        #   in Loop: Header=BB81_8 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB81_13
	jmp	.LBB81_18
.LBB81_13:                              # %for.body
                                        #   in Loop: Header=BB81_8 Depth=1
	movq	-56(%rbp), %rax
	movswl	34(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB81_16
# BB#14:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB81_8 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, (%rax)
	jl	.LBB81_16
# BB#15:                                # %if.then.26
                                        #   in Loop: Header=BB81_8 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB81_16:                              # %if.end
                                        #   in Loop: Header=BB81_8 Depth=1
	jmp	.LBB81_17
.LBB81_17:                              # %for.inc
                                        #   in Loop: Header=BB81_8 Depth=1
	movq	-56(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -56(%rbp)
	jmp	.LBB81_8
.LBB81_18:                              # %for.end
	cmpq	$0, -40(%rbp)
	je	.LBB81_29
# BB#19:                                # %if.then.28
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movswl	34(%rcx), %edx
	movslq	%edx, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	addq	$-48, %rax
	movq	%rax, -72(%rbp)
.LBB81_20:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	cmpq	-64(%rbp), %rdx
	movb	%cl, -91(%rbp)          # 1-byte Spill
	jbe	.LBB81_22
# BB#21:                                # %land.rhs.37
                                        #   in Loop: Header=BB81_20 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	setl	%cl
	movb	%cl, -91(%rbp)          # 1-byte Spill
.LBB81_22:                              # %land.end.41
                                        #   in Loop: Header=BB81_20 Depth=1
	movb	-91(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB81_23
	jmp	.LBB81_24
.LBB81_23:                              # %while.body
                                        #   in Loop: Header=BB81_20 Depth=1
	movq	-72(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB81_20
.LBB81_24:                              # %while.end
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB81_25:                              # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB81_28
# BB#26:                                # %for.body.46
                                        #   in Loop: Header=BB81_25 Depth=1
	movq	-80(%rbp), %rax
	movswl	16(%rax), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
# BB#27:                                # %for.inc.49
                                        #   in Loop: Header=BB81_25 Depth=1
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB81_25
.LBB81_28:                              # %for.end.51
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	192(%rdx), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rax
	sarq	$8, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB81_29:                              # %if.end.56
	jmp	.LBB81_31
.LBB81_30:                              # %if.else
	movq	-8(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	356(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	360(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB81_31:                              # %if.end.63
	movq	$-1, %rdi
	movslq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	callq	clip_to_bounds
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movslq	-28(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movl	24(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	callq	clip_to_bounds
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	output_cursor_to
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	set_window_cursor_after_update, .Lfunc_end81-set_window_cursor_after_update
	.cfi_endproc

	.align	16, 0x90
	.type	update_marginal_area,@function
update_marginal_area:                   # @update_marginal_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	200(%rsi), %rsi
	movq	8(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	movq	376(%rsi), %rsi
	movq	112(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %r8
	movl	48(%r8), %ecx
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	output_cursor_to
	movslq	-20(%rbp), %rdi
	movq	-32(%rbp), %r9
	cmpw	$0, 32(%r9,%rdi,2)
	je	.LBB82_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movl	-20(%rbp), %ecx
	movslq	-20(%rbp), %r8
	movq	-32(%rbp), %r9
	movswl	32(%r9,%r8,2), %r8d
	callq	*%rax
.LBB82_2:                               # %if.end
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	update_marginal_area, .Lfunc_end82-update_marginal_area
	.cfi_endproc

	.align	16, 0x90
	.type	update_text_area,@function
update_text_area:                       # @update_text_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	8(%rsi), %rsi
	movslq	-20(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	200(%rsi), %rsi
	movq	8(%rsi), %rsi
	movslq	-20(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	movq	376(%rsi), %rsi
	movq	112(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movb	$0, -49(%rbp)
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$10, %rsi
	andq	$1, %rsi
	testq	$1, %rsi
	je	.LBB83_11
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	48(%rax), %ecx
	jne	.LBB83_11
# BB#2:                                 # %lor.lhs.false.6
	movq	-40(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	56(%rax), %ecx
	jne	.LBB83_11
# BB#3:                                 # %lor.lhs.false.9
	movq	-40(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	64(%rax), %ecx
	jne	.LBB83_11
# BB#4:                                 # %lor.lhs.false.12
	movq	-40(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	68(%rax), %ecx
	jne	.LBB83_11
# BB#5:                                 # %lor.lhs.false.15
	movq	-40(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	72(%rax), %ecx
	jne	.LBB83_11
# BB#6:                                 # %lor.lhs.false.18
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB83_11
# BB#7:                                 # %lor.lhs.false.23
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$25, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB83_10
# BB#8:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB83_11
# BB#9:                                 # %land.lhs.true.32
	cmpl	$0, -20(%rbp)
	jle	.LBB83_11
.LBB83_10:                              # %lor.lhs.false.34
	movq	-32(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	44(%rax), %ecx
	je	.LBB83_16
.LBB83_11:                              # %if.then
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	44(%rax), %r8d
	callq	output_cursor_to
	movq	-40(%rbp), %rax
	cmpw	$0, 34(%rax)
	je	.LBB83_13
# BB#12:                                # %if.then.39
	movl	$1, %ecx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %r8
	movswl	34(%r8), %r8d
	callq	*%rax
.LBB83_13:                              # %if.end
	movl	$1, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movb	$1, -49(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	380(%rax), %ecx
	jne	.LBB83_15
# BB#14:                                # %if.then.46
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-129, %cx
	movw	%cx, 468(%rax)
.LBB83_15:                              # %if.end.49
	jmp	.LBB83_111
.LBB83_16:                              # %if.else
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$18, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -81(%rbp)
	movq	-40(%rbp), %rax
	movswl	34(%rax), %edx
	movl	%edx, -88(%rbp)
	movb	$0, -89(%rbp)
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$16, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB83_21
# BB#17:                                # %land.lhs.true.67
	movl	-88(%rbp), %eax
	movq	-32(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB83_20
# BB#18:                                # %lor.lhs.false.73
	movl	-88(%rbp), %eax
	movq	-32(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB83_21
# BB#19:                                # %land.lhs.true.79
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$16, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB83_21
.LBB83_20:                              # %if.then.85
	movl	-88(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -88(%rbp)
.LBB83_21:                              # %if.end.86
	movq	-32(%rbp), %rax
	movswl	34(%rax), %ecx
	cmpl	-88(%rbp), %ecx
	jge	.LBB83_23
# BB#22:                                # %cond.true
	movq	-32(%rbp), %rax
	movswl	34(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB83_24
.LBB83_23:                              # %cond.false
	movl	-88(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB83_24:                              # %cond.end
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-40(%rbp), %rcx
	movl	44(%rcx), %eax
	movl	%eax, -64(%rbp)
.LBB83_25:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB83_33 Depth 2
                                        #     Child Loop BB83_57 Depth 2
                                        #     Child Loop BB83_65 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB83_90
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB83_25 Depth=1
	movb	-89(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -90(%rbp)
	testb	$1, -81(%rbp)
	je	.LBB83_31
# BB#27:                                # %land.lhs.true.102
                                        #   in Loop: Header=BB83_25 Depth=1
	cmpl	$0, -60(%rbp)
	jle	.LBB83_31
# BB#28:                                # %if.then.105
                                        #   in Loop: Header=BB83_25 Depth=1
	leaq	-108(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	imulq	$48, %rsi, %rsi
	addq	8(%rdi), %rsi
	movq	%rsi, -104(%rbp)
	movq	-48(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	-104(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	subq	$5, %r8
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	*%r8
	xorl	%eax, %eax
	movb	%al, %r9b
	cmpl	$0, -112(%rbp)
	movb	%r9b, -169(%rbp)        # 1-byte Spill
	jne	.LBB83_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB83_25 Depth=1
	movb	-89(%rbp), %al
	xorb	$-1, %al
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB83_30:                              # %land.end
                                        #   in Loop: Header=BB83_25 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -90(%rbp)
.LBB83_31:                              # %if.end.117
                                        #   in Loop: Header=BB83_25 Depth=1
	testb	$1, -90(%rbp)
	je	.LBB83_63
# BB#32:                                # %if.then.119
                                        #   in Loop: Header=BB83_25 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB83_33:                              # %while.cond.120
                                        #   Parent Loop BB83_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	movb	%cl, -170(%rbp)         # 1-byte Spill
	jge	.LBB83_50
# BB#34:                                # %land.rhs.123
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movl	24(%rdx), %eax
	andl	$7, %eax
	movq	-72(%rbp), %rdx
	movl	24(%rdx), %esi
	andl	$7, %esi
	cmpl	%esi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#35:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movl	40(%rdx), %eax
	movq	-72(%rbp), %rdx
	cmpl	40(%rdx), %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#36:                                # %land.lhs.true.136
                                        #   in Loop: Header=BB83_33 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	.LBB83_41
# BB#37:                                # %cond.true.142
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movq	32(%rdx), %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#38:                                # %land.lhs.true.153
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$16, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$16, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#39:                                # %land.lhs.true.168
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$32, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$32, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#40:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$48, %rdx
	movl	%edx, %eax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$48, %rdx
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	je	.LBB83_43
	jmp	.LBB83_49
.LBB83_41:                              # %cond.false.196
                                        #   in Loop: Header=BB83_33 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$1, %ecx
	jne	.LBB83_43
# BB#42:                                # %lor.lhs.false.202
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movl	32(%rdx), %eax
	movq	-72(%rbp), %rdx
	cmpl	32(%rdx), %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
.LBB83_43:                              # %land.lhs.true.210
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movl	28(%rdx), %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	movq	-72(%rbp), %rdx
	movl	28(%rdx), %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	cmpl	%esi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#44:                                # %land.lhs.true.218
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movl	24(%rdx), %eax
	shrl	$7, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-72(%rbp), %rdx
	movl	24(%rdx), %edi
	shrl	$7, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#45:                                # %land.lhs.true.232
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movl	24(%rdx), %eax
	shrl	$4, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-72(%rbp), %rdx
	movl	24(%rdx), %edi
	shrl	$4, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#46:                                # %land.lhs.true.246
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movl	24(%rdx), %eax
	shrl	$5, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-72(%rbp), %rdx
	movl	24(%rdx), %edi
	shrl	$5, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#47:                                # %land.lhs.true.260
                                        #   in Loop: Header=BB83_33 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movswl	22(%rdx), %eax
	movq	-72(%rbp), %rdx
	movswl	22(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jne	.LBB83_49
# BB#48:                                # %land.rhs.266
                                        #   in Loop: Header=BB83_33 Depth=2
	movq	-80(%rbp), %rax
	movswl	16(%rax), %ecx
	movq	-72(%rbp), %rax
	movswl	16(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -171(%rbp)        # 1-byte Spill
.LBB83_49:                              # %land.end.272
                                        #   in Loop: Header=BB83_33 Depth=2
	movb	-171(%rbp), %al         # 1-byte Reload
	movb	%al, -170(%rbp)         # 1-byte Spill
.LBB83_50:                              # %land.end.273
                                        #   in Loop: Header=BB83_33 Depth=2
	movb	-170(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB83_51
	jmp	.LBB83_52
.LBB83_51:                              # %while.body.274
                                        #   in Loop: Header=BB83_33 Depth=2
	movq	-80(%rbp), %rax
	movswl	16(%rax), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB83_33
.LBB83_52:                              # %while.end
                                        #   in Loop: Header=BB83_25 Depth=1
	testb	$1, -81(%rbp)
	je	.LBB83_62
# BB#53:                                # %land.lhs.true.280
                                        #   in Loop: Header=BB83_25 Depth=1
	cmpl	$0, -60(%rbp)
	jle	.LBB83_62
# BB#54:                                # %land.lhs.true.283
                                        #   in Loop: Header=BB83_25 Depth=1
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB83_62
# BB#55:                                # %land.lhs.true.289
                                        #   in Loop: Header=BB83_25 Depth=1
	movq	-32(%rbp), %rax
	movswl	34(%rax), %ecx
	movq	-40(%rbp), %rax
	movswl	34(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB83_62
# BB#56:                                # %if.then.298
                                        #   in Loop: Header=BB83_25 Depth=1
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	callq	*%rax
.LBB83_57:                              # %while.cond.304
                                        #   Parent Loop BB83_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -120(%rbp)
	movb	%cl, -172(%rbp)         # 1-byte Spill
	jle	.LBB83_59
# BB#58:                                # %land.rhs.307
                                        #   in Loop: Header=BB83_57 Depth=2
	cmpl	$0, -60(%rbp)
	setg	%al
	movb	%al, -172(%rbp)         # 1-byte Spill
.LBB83_59:                              # %land.end.310
                                        #   in Loop: Header=BB83_57 Depth=2
	movb	-172(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB83_60
	jmp	.LBB83_61
.LBB83_60:                              # %while.body.311
                                        #   in Loop: Header=BB83_57 Depth=2
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movq	-80(%rbp), %rcx
	addq	$-48, %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	addq	$-48, %rcx
	movq	%rcx, -72(%rbp)
	movq	-80(%rbp), %rcx
	movswl	16(%rcx), %eax
	movl	-64(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movswl	16(%rcx), %eax
	movl	-120(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -120(%rbp)
	jmp	.LBB83_57
.LBB83_61:                              # %while.end.321
                                        #   in Loop: Header=BB83_25 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-116(%rbp), %eax
	setl	%cl
	andb	$1, %cl
	movb	%cl, -89(%rbp)
.LBB83_62:                              # %if.end.325
                                        #   in Loop: Header=BB83_25 Depth=1
	jmp	.LBB83_63
.LBB83_63:                              # %if.end.326
                                        #   in Loop: Header=BB83_25 Depth=1
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB83_89
# BB#64:                                # %if.then.332
                                        #   in Loop: Header=BB83_25 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -148(%rbp)
	movb	-90(%rbp), %dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -149(%rbp)
.LBB83_65:                              # %while.cond.337
                                        #   Parent Loop BB83_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	movb	%cl, -173(%rbp)         # 1-byte Spill
	jge	.LBB83_83
# BB#66:                                # %land.lhs.true.340
                                        #   in Loop: Header=BB83_65 Depth=2
	testb	$1, -149(%rbp)
	jne	.LBB83_82
# BB#67:                                # %lor.lhs.false.343
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	movq	-72(%rbp), %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	cmpl	%edx, %ecx
	jne	.LBB83_82
# BB#68:                                # %land.lhs.true.352
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-72(%rbp), %rax
	cmpl	40(%rax), %ecx
	jne	.LBB83_82
# BB#69:                                # %land.lhs.true.359
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	.LBB83_74
# BB#70:                                # %cond.true.365
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jne	.LBB83_82
# BB#71:                                # %land.lhs.true.378
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jne	.LBB83_82
# BB#72:                                # %land.lhs.true.393
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jne	.LBB83_82
# BB#73:                                # %land.lhs.true.408
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	je	.LBB83_76
	jmp	.LBB83_82
.LBB83_74:                              # %cond.false.421
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$1, %ecx
	jne	.LBB83_76
# BB#75:                                # %lor.lhs.false.427
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-72(%rbp), %rax
	cmpl	32(%rax), %ecx
	jne	.LBB83_82
.LBB83_76:                              # %land.lhs.true.436
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movq	-72(%rbp), %rax
	movl	28(%rax), %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	cmpl	%edx, %ecx
	jne	.LBB83_82
# BB#77:                                # %land.lhs.true.445
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$7, %ecx
	andl	$1, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-72(%rbp), %rax
	movl	24(%rax), %esi
	shrl	$7, %esi
	andl	$1, %esi
	movb	%sil, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %ecx
	jne	.LBB83_82
# BB#78:                                # %land.lhs.true.460
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-72(%rbp), %rax
	movl	24(%rax), %esi
	shrl	$4, %esi
	andl	$1, %esi
	movb	%sil, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %ecx
	jne	.LBB83_82
# BB#79:                                # %land.lhs.true.475
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$5, %ecx
	andl	$1, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-72(%rbp), %rax
	movl	24(%rax), %esi
	shrl	$5, %esi
	andl	$1, %esi
	movb	%sil, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %ecx
	jne	.LBB83_82
# BB#80:                                # %land.lhs.true.490
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movswl	22(%rax), %ecx
	movq	-72(%rbp), %rax
	movswl	22(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB83_82
# BB#81:                                # %land.lhs.true.497
                                        #   in Loop: Header=BB83_65 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movswl	16(%rdx), %eax
	movq	-72(%rbp), %rdx
	movswl	16(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -173(%rbp)         # 1-byte Spill
	je	.LBB83_83
.LBB83_82:                              # %land.rhs.504
                                        #   in Loop: Header=BB83_65 Depth=2
	movl	-64(%rbp), %eax
	cmpl	-148(%rbp), %eax
	sete	%cl
	movb	%cl, -173(%rbp)         # 1-byte Spill
.LBB83_83:                              # %land.end.507
                                        #   in Loop: Header=BB83_65 Depth=2
	movb	-173(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB83_84
	jmp	.LBB83_85
.LBB83_84:                              # %while.body.508
                                        #   in Loop: Header=BB83_65 Depth=2
	movq	-80(%rbp), %rax
	movswl	16(%rax), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movq	-72(%rbp), %rax
	movswl	16(%rax), %ecx
	addl	-148(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movb	$0, -149(%rbp)
	jmp	.LBB83_65
.LBB83_85:                              # %while.end.518
                                        #   in Loop: Header=BB83_25 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-132(%rbp), %eax
	je	.LBB83_87
# BB#86:                                # %lor.lhs.false.521
                                        #   in Loop: Header=BB83_25 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-148(%rbp), %eax
	je	.LBB83_88
.LBB83_87:                              # %if.then.524
	movl	-132(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB83_90
.LBB83_88:                              # %if.end.525
                                        #   in Loop: Header=BB83_25 Depth=1
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-132(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	-128(%rbp), %r8d
	callq	output_cursor_to
	movl	$1, %ecx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movl	-60(%rbp), %r8d
	subl	-132(%rbp), %r8d
	callq	*%rax
	movb	$1, -49(%rbp)
.LBB83_89:                              # %if.end.529
                                        #   in Loop: Header=BB83_25 Depth=1
	jmp	.LBB83_25
.LBB83_90:                              # %while.end.530
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB83_92
# BB#91:                                # %if.then.536
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	-64(%rbp), %r8d
	callq	output_cursor_to
	movl	$1, %ecx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %r9
	movswl	34(%r9), %r8d
	subl	-60(%rbp), %r8d
	callq	*%rax
	movb	$1, -49(%rbp)
.LBB83_92:                              # %if.end.543
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$16, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB83_94
# BB#93:                                # %if.then.549
	jmp	.LBB83_110
.LBB83_94:                              # %if.else.550
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$16, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB83_98
# BB#95:                                # %if.then.556
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB83_97
# BB#96:                                # %if.then.562
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	52(%rax), %r8d
	callq	output_cursor_to
.LBB83_97:                              # %if.end.565
	movl	$1, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movb	$1, -49(%rbp)
	jmp	.LBB83_109
.LBB83_98:                              # %if.else.567
	movq	-40(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	52(%rax), %ecx
	jge	.LBB83_108
# BB#99:                                # %if.then.572
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB83_101
# BB#100:                               # %if.then.578
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	52(%rax), %r8d
	callq	output_cursor_to
.LBB83_101:                             # %if.end.581
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	380(%rcx), %eax
	jne	.LBB83_106
# BB#102:                               # %land.lhs.true.586
	movq	-40(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB83_104
# BB#103:                               # %cond.true.592
	movq	-8(%rbp), %rax
	cmpl	$0, 376(%rax)
	jl	.LBB83_105
	jmp	.LBB83_106
.LBB83_104:                             # %cond.false.596
	movq	-8(%rbp), %rax
	movl	376(%rax), %ecx
	movq	-40(%rbp), %rax
	movswl	34(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB83_106
.LBB83_105:                             # %if.then.604
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-129, %cx
	movw	%cx, 468(%rax)
	movl	$-1, -156(%rbp)
	jmp	.LBB83_107
.LBB83_106:                             # %if.else.608
	movq	-32(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -156(%rbp)
.LBB83_107:                             # %if.end.610
	movl	$1, %edx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-156(%rbp), %ecx
	callq	*%rax
	movb	$1, -49(%rbp)
.LBB83_108:                             # %if.end.612
	jmp	.LBB83_109
.LBB83_109:                             # %if.end.613
	jmp	.LBB83_110
.LBB83_110:                             # %if.end.614
	jmp	.LBB83_111
.LBB83_111:                             # %if.end.615
	movb	-49(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	update_text_area, .Lfunc_end83-update_text_area
	.cfi_endproc

	.align	16, 0x90
	.type	make_current,@function
make_current:                           # @make_current
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
.Ltmp261:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp262:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movslq	-20(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movslq	-20(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$25, %rsi
	andq	$1, %rsi
	movb	%sil, %al
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	assign_row
	movq	-32(%rbp), %rsi
	movq	236(%rsi), %rdi
	andq	$-1025, %rdi            # imm = 0xFFFFFFFFFFFFFBFF
	orq	$1024, %rdi             # imm = 0x400
	movq	%rdi, 236(%rsi)
	movb	-41(%rbp), %al
	movq	-32(%rbp), %rsi
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, %edi
	movq	236(%rsi), %rcx
	shlq	$25, %rdi
	andq	$-33554433, %rcx        # imm = 0xFFFFFFFFFDFFFFFF
	orq	%rdi, %rcx
	movq	%rcx, 236(%rsi)
	cmpq	$0, frame_matrix_frame
	je	.LBB84_2
# BB#1:                                 # %if.then
	movq	frame_matrix_frame, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	mirror_make_current
.LBB84_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	make_current, .Lfunc_end84-make_current
	.cfi_endproc

	.align	16, 0x90
	.type	assign_row,@function
assign_row:                             # @assign_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
.Ltmp264:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp265:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	swap_glyph_pointers
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	copy_row_except_pointers
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	assign_row, .Lfunc_end85-assign_row
	.cfi_endproc

	.align	16, 0x90
	.type	mirror_make_current,@function
mirror_make_current:                    # @mirror_make_current
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp266:
	.cfi_def_cfa_offset 16
.Ltmp267:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp268:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB86_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB86_17
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB86_3
	jmp	.LBB86_4
.LBB86_3:                               # %if.then
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	mirror_make_current
	jmp	.LBB86_13
.LBB86_4:                               # %if.else
                                        #   in Loop: Header=BB86_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	200(%rcx), %rcx
	subl	32(%rcx), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jl	.LBB86_12
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB86_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	40(%rcx), %eax
	jge	.LBB86_12
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB86_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	assign_row
	jmp	.LBB86_9
.LBB86_8:                               # %if.else.11
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	swap_glyph_pointers
.LBB86_9:                               # %if.end
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-24(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	orq	$1024, %rcx             # imm = 0x400
	movq	%rcx, 236(%rax)
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB86_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB86_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 48(%rcx)
.LBB86_11:                              # %if.end.20
                                        #   in Loop: Header=BB86_1 Depth=1
	jmp	.LBB86_12
.LBB86_12:                              # %if.end.21
                                        #   in Loop: Header=BB86_1 Depth=1
	jmp	.LBB86_13
.LBB86_13:                              # %if.end.22
                                        #   in Loop: Header=BB86_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB86_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB86_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB86_16
.LBB86_15:                              # %cond.false
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB86_16:                              # %cond.end
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB86_1
.LBB86_17:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	mirror_make_current, .Lfunc_end86-mirror_make_current
	.cfi_endproc

	.align	16, 0x90
	.type	swap_glyph_pointers,@function
swap_glyph_pointers:                    # @swap_glyph_pointers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
.Ltmp270:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp271:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB87_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB87_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB87_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	cmpl	$3, -20(%rbp)
	jge	.LBB87_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB87_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movw	32(%rcx,%rax,2), %dx
	movw	%dx, -34(%rbp)
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movw	32(%rcx,%rax,2), %dx
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movw	%dx, 32(%rcx,%rax,2)
	movw	-34(%rbp), %dx
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movw	%dx, 32(%rcx,%rax,2)
.LBB87_4:                               # %if.end
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_5
.LBB87_5:                               # %for.inc
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB87_1
.LBB87_6:                               # %for.end
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 40(%rax)
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 40(%rax)
	popq	%rbp
	retq
.Lfunc_end87:
	.size	swap_glyph_pointers, .Lfunc_end87-swap_glyph_pointers
	.cfi_endproc

	.align	16, 0x90
	.type	row_equal_p,@function
row_equal_p:                            # @row_equal_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp272:
	.cfi_def_cfa_offset 16
.Ltmp273:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp274:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	-24(%rbp), %rsi
	jne	.LBB88_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB88_58
.LBB88_2:                               # %if.else
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	40(%rax), %ecx
	je	.LBB88_4
# BB#3:                                 # %if.then.3
	movb	$0, -1(%rbp)
	jmp	.LBB88_58
.LBB88_4:                               # %if.else.4
	testb	$1, -25(%rbp)
	je	.LBB88_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$25, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$25, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB88_7
# BB#6:                                 # %if.then.14
	movb	$0, -1(%rbp)
	jmp	.LBB88_58
.LBB88_7:                               # %if.end
	movl	$0, -60(%rbp)
.LBB88_8:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB88_12 Depth 2
	cmpl	$3, -60(%rbp)
	jge	.LBB88_35
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB88_8 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movswl	32(%rcx,%rax,2), %edx
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movswl	32(%rcx,%rax,2), %esi
	cmpl	%esi, %edx
	je	.LBB88_11
# BB#10:                                # %if.then.24
	movb	$0, -1(%rbp)
	jmp	.LBB88_58
.LBB88_11:                              # %if.end.25
                                        #   in Loop: Header=BB88_8 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movswl	32(%rdx,%rcx,2), %esi
	movslq	%esi, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
.LBB88_12:                              # %while.cond
                                        #   Parent Loop BB88_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jae	.LBB88_29
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	24(%rdx), %eax
	andl	$7, %eax
	movq	-48(%rbp), %rdx
	movl	24(%rdx), %esi
	andl	$7, %esi
	cmpl	%esi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#14:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	40(%rdx), %eax
	movq	-48(%rbp), %rdx
	cmpl	40(%rdx), %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#15:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB88_12 Depth=2
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	.LBB88_20
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#17:                                # %land.lhs.true.65
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$16, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$16, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#18:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$32, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$32, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#19:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$48, %rdx
	movl	%edx, %eax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	shrq	$48, %rdx
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	je	.LBB88_22
	jmp	.LBB88_28
.LBB88_20:                              # %cond.false
                                        #   in Loop: Header=BB88_12 Depth=2
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$1, %ecx
	jne	.LBB88_22
# BB#21:                                # %lor.lhs.false
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	32(%rdx), %eax
	movq	-48(%rbp), %rdx
	cmpl	32(%rdx), %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
.LBB88_22:                              # %land.lhs.true.120
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	28(%rdx), %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	movq	-48(%rbp), %rdx
	movl	28(%rdx), %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	cmpl	%esi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#23:                                # %land.lhs.true.128
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	24(%rdx), %eax
	shrl	$7, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-48(%rbp), %rdx
	movl	24(%rdx), %edi
	shrl	$7, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#24:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	24(%rdx), %eax
	shrl	$4, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-48(%rbp), %rdx
	movl	24(%rdx), %edi
	shrl	$4, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#25:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	24(%rdx), %eax
	shrl	$5, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-48(%rbp), %rdx
	movl	24(%rdx), %edi
	shrl	$5, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#26:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB88_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movswl	22(%rdx), %eax
	movq	-48(%rbp), %rdx
	movswl	22(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB88_28
# BB#27:                                # %land.rhs.176
                                        #   in Loop: Header=BB88_12 Depth=2
	movq	-40(%rbp), %rax
	movswl	16(%rax), %ecx
	movq	-48(%rbp), %rax
	movswl	16(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -62(%rbp)         # 1-byte Spill
.LBB88_28:                              # %land.end
                                        #   in Loop: Header=BB88_12 Depth=2
	movb	-62(%rbp), %al          # 1-byte Reload
	movb	%al, -61(%rbp)          # 1-byte Spill
.LBB88_29:                              # %land.end.182
                                        #   in Loop: Header=BB88_12 Depth=2
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB88_30
	jmp	.LBB88_31
.LBB88_30:                              # %while.body
                                        #   in Loop: Header=BB88_12 Depth=2
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB88_12
.LBB88_31:                              # %while.end
                                        #   in Loop: Header=BB88_8 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB88_33
# BB#32:                                # %if.then.186
	movb	$0, -1(%rbp)
	jmp	.LBB88_58
.LBB88_33:                              # %if.end.187
                                        #   in Loop: Header=BB88_8 Depth=1
	jmp	.LBB88_34
.LBB88_34:                              # %for.inc
                                        #   in Loop: Header=BB88_8 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB88_8
.LBB88_35:                              # %for.end
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$16, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$16, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB88_54
# BB#36:                                # %lor.lhs.false.201
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$28, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$28, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB88_54
# BB#37:                                # %lor.lhs.false.215
	movq	-16(%rbp), %rax
	movzwl	216(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	216(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB88_54
# BB#38:                                # %lor.lhs.false.227
	movq	-16(%rbp), %rax
	movl	228(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movq	-24(%rbp), %rax
	movl	228(%rax), %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	cmpl	%edx, %ecx
	jne	.LBB88_54
# BB#39:                                # %lor.lhs.false.235
	movq	-16(%rbp), %rax
	movl	232(%rax), %ecx
	shll	$4, %ecx
	sarl	$24, %ecx
	movq	-24(%rbp), %rax
	movl	232(%rax), %edx
	shll	$4, %edx
	sarl	$24, %edx
	cmpl	%edx, %ecx
	jne	.LBB88_54
# BB#40:                                # %lor.lhs.false.243
	movq	-16(%rbp), %rax
	movzwl	218(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	218(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB88_54
# BB#41:                                # %lor.lhs.false.255
	movq	-16(%rbp), %rax
	movl	232(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movq	-24(%rbp), %rax
	movl	232(%rax), %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	cmpl	%edx, %ecx
	jne	.LBB88_54
# BB#42:                                # %lor.lhs.false.263
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shlq	$56, %rax
	sarq	$56, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shlq	$56, %rax
	sarq	$56, %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jne	.LBB88_54
# BB#43:                                # %lor.lhs.false.275
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$8, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$8, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB88_54
# BB#44:                                # %lor.lhs.false.289
	movq	-16(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	208(%rax), %ecx
	jne	.LBB88_54
# BB#45:                                # %lor.lhs.false.293
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$27, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$27, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB88_54
# BB#46:                                # %lor.lhs.false.307
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB88_54
# BB#47:                                # %lor.lhs.false.321
	movq	-16(%rbp), %rax
	cmpl	$0, 244(%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	cmpl	$0, 244(%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB88_54
# BB#48:                                # %lor.lhs.false.329
	movq	-16(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	jne	.LBB88_54
# BB#49:                                # %lor.lhs.false.343
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	44(%rax), %ecx
	jne	.LBB88_54
# BB#50:                                # %lor.lhs.false.347
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	56(%rax), %ecx
	jne	.LBB88_54
# BB#51:                                # %lor.lhs.false.351
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	64(%rax), %ecx
	jne	.LBB88_54
# BB#52:                                # %lor.lhs.false.355
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	68(%rax), %ecx
	jne	.LBB88_54
# BB#53:                                # %lor.lhs.false.359
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	72(%rax), %ecx
	je	.LBB88_55
.LBB88_54:                              # %if.then.363
	movb	$0, -1(%rbp)
	jmp	.LBB88_58
.LBB88_55:                              # %if.end.364
	jmp	.LBB88_56
.LBB88_56:                              # %if.end.365
	jmp	.LBB88_57
.LBB88_57:                              # %if.end.366
	movb	$1, -1(%rbp)
.LBB88_58:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end88:
	.size	row_equal_p, .Lfunc_end88-row_equal_p
	.cfi_endproc

	.align	16, 0x90
	.type	add_row_entry,@function
add_row_entry:                          # @add_row_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp275:
	.cfi_def_cfa_offset 16
.Ltmp276:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp277:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %eax
                                        # kill: RAX<def> EAX<kill>
	cqto
	idivq	row_table_size
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	row_table, %rdi
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, -16(%rbp)
.LBB89_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB89_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB89_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	row_equal_p
	xorb	$-1, %al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB89_3:                               # %land.end
                                        #   in Loop: Header=BB89_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB89_4
	jmp	.LBB89_5
.LBB89_4:                               # %while.body
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB89_1
.LBB89_5:                               # %while.end
	cmpq	$0, -16(%rbp)
	jne	.LBB89_7
# BB#6:                                 # %if.then
	movq	row_entry_pool, %rax
	movq	row_entry_idx, %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, row_entry_idx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	row_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	row_table, %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB89_7:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	add_row_entry, .Lfunc_end89-add_row_entry
	.cfi_endproc

	.align	16, 0x90
	.type	scrolling,@function
scrolling:                              # @scrolling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
.Ltmp279:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp280:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$248, %rsp
.Ltmp281:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	284(%rdi), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -72(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
# BB#1:                                 # %do.body
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	shrq	$2, %rcx
	shrq	$2, %rcx
	cmpq	%rcx, %rax
	ja	.LBB90_3
# BB#2:                                 # %if.then
	movslq	-48(%rbp), %rax
	shlq	$4, %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movslq	-48(%rbp), %rax
	shlq	$4, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -80(%rbp)
	jmp	.LBB90_4
.LBB90_3:                               # %if.else
	movl	$16, %eax
	movl	%eax, %esi
	movslq	-48(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -80(%rbp)
	movb	$1, -97(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB90_4:                               # %if.end
	jmp	.LBB90_5
.LBB90_5:                               # %do.end
	movq	-80(%rbp), %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	-48(%rbp), %edx
	movl	%edx, -32(%rbp)
	movl	$0, -44(%rbp)
.LBB90_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB90_23
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB90_6 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB90_13
# BB#8:                                 # %if.then.18
	jmp	.LBB90_9
.LBB90_9:                               # %do.body.19
	testb	$1, -97(%rbp)
	je	.LBB90_11
# BB#10:                                # %if.then.20
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB90_11:                              # %if.end.23
	jmp	.LBB90_12
.LBB90_12:                              # %do.end.24
	movb	$0, -9(%rbp)
	jmp	.LBB90_63
.LBB90_13:                              # %if.end.25
                                        #   in Loop: Header=BB90_6 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	line_hash_code
	movslq	-44(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-44(%rbp), %rsi
	shlq	$8, %rsi
	addq	%rsi, %rcx
	movq	236(%rcx), %rcx
	shrq	$10, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	jne	.LBB90_15
# BB#14:                                # %if.then.38
                                        #   in Loop: Header=BB90_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movslq	-44(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	$1000000, (%rcx,%rax,4) # imm = 0xF4240
	jmp	.LBB90_16
.LBB90_15:                              # %if.else.45
                                        #   in Loop: Header=BB90_6 Depth=1
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	line_hash_code
	movslq	-44(%rbp), %rcx
	movq	-112(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	line_draw_cost
	movslq	-44(%rbp), %rcx
	movq	-120(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
.LBB90_16:                              # %if.end.55
                                        #   in Loop: Header=BB90_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-44(%rbp), %rax
	movq	-112(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	je	.LBB90_18
# BB#17:                                # %if.then.62
                                        #   in Loop: Header=BB90_6 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-48(%rbp), %eax
	subl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB90_21
.LBB90_18:                              # %if.else.65
                                        #   in Loop: Header=BB90_6 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB90_20
# BB#19:                                # %if.then.68
                                        #   in Loop: Header=BB90_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB90_20:                              # %if.end.70
                                        #   in Loop: Header=BB90_6 Depth=1
	jmp	.LBB90_21
.LBB90_21:                              # %if.end.71
                                        #   in Loop: Header=BB90_6 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	line_draw_cost
	movslq	-44(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB90_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB90_6
.LBB90_23:                              # %for.end
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB90_25
# BB#24:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_26
.LBB90_25:                              # %cond.true
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB90_27
.LBB90_26:                              # %cond.false
	callq	emacs_abort
.LBB90_27:                              # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB90_29
# BB#28:                                # %land.lhs.true
	movl	$2400, %eax             # imm = 0x960
	movl	%eax, %ecx
	movslq	-40(%rbp), %rdx
	movq	globals+3048, %rax
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB90_30
.LBB90_29:                              # %lor.lhs.false.97
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB90_35
.LBB90_30:                              # %if.then.100
	jmp	.LBB90_31
.LBB90_31:                              # %do.body.101
	testb	$1, -97(%rbp)
	je	.LBB90_33
# BB#32:                                # %if.then.103
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB90_33:                              # %if.end.106
	jmp	.LBB90_34
.LBB90_34:                              # %do.end.107
	movb	$1, -9(%rbp)
	jmp	.LBB90_63
.LBB90_35:                              # %if.end.108
	movl	-48(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$1, %eax
	je	.LBB90_37
# BB#36:                                # %lor.lhs.false.118
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_38
.LBB90_37:                              # %cond.true.126
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB90_39
.LBB90_38:                              # %cond.false.130
	callq	emacs_abort
.LBB90_39:                              # %cond.end.131
	movq	-184(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB90_41
# BB#40:                                # %if.then.138
	movl	-32(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB90_48
.LBB90_41:                              # %if.else.140
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB90_43
# BB#42:                                # %lor.lhs.false.148
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_44
.LBB90_43:                              # %cond.true.156
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB90_45
.LBB90_44:                              # %cond.false.160
	callq	emacs_abort
.LBB90_45:                              # %cond.end.161
	movq	-192(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB90_47
# BB#46:                                # %if.then.166
	movl	$-1, -52(%rbp)
.LBB90_47:                              # %if.end.167
	jmp	.LBB90_48
.LBB90_48:                              # %if.end.168
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB90_50
# BB#49:                                # %lor.lhs.false.176
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_51
.LBB90_50:                              # %cond.true.184
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB90_52
.LBB90_51:                              # %cond.false.188
	callq	emacs_abort
.LBB90_52:                              # %cond.end.189
	movq	-200(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB90_56
# BB#53:                                # %lor.lhs.false.197
	cmpl	$18, -36(%rbp)
	jl	.LBB90_56
# BB#54:                                # %lor.lhs.false.200
	cmpq	$2400, globals+3048     # imm = 0x960
	jle	.LBB90_56
# BB#55:                                # %lor.lhs.false.203
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %edi
	movl	-48(%rbp), %ecx
	subl	-32(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %r8
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	scrolling_max_lines_saved
	imull	$10, %eax, %eax
	movl	-212(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jge	.LBB90_58
.LBB90_56:                              # %land.lhs.true.209
	movl	$2, %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB90_58
# BB#57:                                # %if.then.212
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-120(%rbp), %rax
	movslq	-28(%rbp), %r8
	shlq	$2, %r8
	addq	%r8, %rax
	addq	$-4, %rax
	movq	-128(%rbp), %r8
	movslq	-28(%rbp), %r9
	shlq	$2, %r9
	addq	%r9, %r8
	addq	$-4, %r8
	movq	-80(%rbp), %r9
	movslq	-28(%rbp), %r10
	shlq	$2, %r10
	addq	%r10, %r9
	addq	$-4, %r9
	movq	-112(%rbp), %r10
	movslq	-28(%rbp), %r11
	shlq	$2, %r11
	addq	%r11, %r10
	addq	$-4, %r10
	movl	-52(%rbp), %ebx
	subl	-28(%rbp), %ebx
	subq	$32, %rsp
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	scrolling_1
	addq	$32, %rsp
.LBB90_58:                              # %if.end.226
	jmp	.LBB90_59
.LBB90_59:                              # %do.body.227
	testb	$1, -97(%rbp)
	je	.LBB90_61
# BB#60:                                # %if.then.229
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB90_61:                              # %if.end.232
	jmp	.LBB90_62
.LBB90_62:                              # %do.end.233
	movb	$0, -9(%rbp)
.LBB90_63:                              # %return
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end90:
	.size	scrolling, .Lfunc_end90-scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	update_frame_line,@function
update_frame_line:                      # @update_frame_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rdi, -104(%rbp)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	8(%rdi), %rdi
	movslq	-12(%rbp), %rax
	shlq	$8, %rax
	addq	%rax, %rdi
	movq	%rdi, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	je	.LBB91_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB91_3
.LBB91_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB91_4
.LBB91_3:                               # %cond.false
	callq	emacs_abort
.LBB91_4:                               # %cond.end
	movb	$1, %al
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movb	8788(%rcx), %dl
	shrb	$3, %dl
	andb	$1, %dl
	andb	$1, %dl
	movb	%dl, -130(%rbp)
	testb	$1, %al
	jne	.LBB91_5
	jmp	.LBB91_6
.LBB91_5:                               # %cond.true.16
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB91_7
	jmp	.LBB91_8
.LBB91_6:                               # %cond.false.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB91_8
.LBB91_7:                               # %cond.true.24
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB91_9
.LBB91_8:                               # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB91_9
.LBB91_9:                               # %cond.end.27
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	$-3, 184(%rax)
	setne	%cl
	andb	$1, %cl
	movb	%cl, -131(%rbp)
	testb	$1, -131(%rbp)
	je	.LBB91_11
# BB#10:                                # %if.then
	movb	$1, -130(%rbp)
.LBB91_11:                              # %if.end
	movq	-120(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	movb	%al, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -129(%rbp)
	testb	$1, -129(%rbp)
	je	.LBB91_13
# BB#12:                                # %if.then.38
	movq	$0, -24(%rbp)
	movl	$0, -88(%rbp)
	jmp	.LBB91_23
.LBB91_13:                              # %if.else
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movswl	34(%rax), %edx
	movl	%edx, -88(%rbp)
	testb	$1, -130(%rbp)
	jne	.LBB91_22
# BB#14:                                # %if.then.47
	jmp	.LBB91_15
.LBB91_15:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -88(%rbp)
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jle	.LBB91_19
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB91_15 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	imulq	$48, %rdx, %rdx
	addq	-24(%rbp), %rdx
	cmpl	$32, 40(%rdx)
	movb	%cl, -170(%rbp)         # 1-byte Spill
	jne	.LBB91_18
# BB#17:                                # %land.rhs.53
                                        #   in Loop: Header=BB91_15 Depth=1
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$48, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movl	28(%rcx), %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	cmpl	$0, %eax
	sete	%dl
	movb	%dl, -170(%rbp)         # 1-byte Spill
.LBB91_18:                              # %land.end
                                        #   in Loop: Header=BB91_15 Depth=1
	movb	-170(%rbp), %al         # 1-byte Reload
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB91_19:                              # %land.end.61
                                        #   in Loop: Header=BB91_15 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB91_20
	jmp	.LBB91_21
.LBB91_20:                              # %while.body
                                        #   in Loop: Header=BB91_15 Depth=1
	movl	-88(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB91_15
.LBB91_21:                              # %while.end
	jmp	.LBB91_22
.LBB91_22:                              # %if.end.62
	jmp	.LBB91_23
.LBB91_23:                              # %if.end.63
	movq	-120(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	orq	$1024, %rcx             # imm = 0x400
	movq	%rcx, 236(%rax)
	movq	-128(%rbp), %rax
	movw	34(%rax), %dx
	movq	-120(%rbp), %rax
	movw	%dx, 34(%rax)
	movq	-128(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB91_25
# BB#24:                                # %if.then.76
	movl	$0, -92(%rbp)
	jmp	.LBB91_200
.LBB91_25:                              # %if.end.77
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-128(%rbp), %rax
	movswl	34(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-32(%rbp), %rax
	movslq	-92(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	testb	$1, -129(%rbp)
	je	.LBB91_41
# BB#26:                                # %if.then.86
	testb	$1, -130(%rbp)
	jne	.LBB91_35
# BB#27:                                # %if.then.88
	jmp	.LBB91_28
.LBB91_28:                              # %while.cond.89
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -92(%rbp)
	movb	%cl, -171(%rbp)         # 1-byte Spill
	jle	.LBB91_32
# BB#29:                                # %land.rhs.92
                                        #   in Loop: Header=BB91_28 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	imulq	$48, %rdx, %rdx
	addq	-32(%rbp), %rdx
	cmpl	$32, 40(%rdx)
	movb	%cl, -172(%rbp)         # 1-byte Spill
	jne	.LBB91_31
# BB#30:                                # %land.rhs.100
                                        #   in Loop: Header=BB91_28 Depth=1
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$48, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	28(%rcx), %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	cmpl	$0, %eax
	sete	%dl
	movb	%dl, -172(%rbp)         # 1-byte Spill
.LBB91_31:                              # %land.end.109
                                        #   in Loop: Header=BB91_28 Depth=1
	movb	-172(%rbp), %al         # 1-byte Reload
	movb	%al, -171(%rbp)         # 1-byte Spill
.LBB91_32:                              # %land.end.110
                                        #   in Loop: Header=BB91_28 Depth=1
	movb	-171(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB91_33
	jmp	.LBB91_34
.LBB91_33:                              # %while.body.111
                                        #   in Loop: Header=BB91_28 Depth=1
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB91_28
.LBB91_34:                              # %while.end.113
	jmp	.LBB91_35
.LBB91_35:                              # %if.end.114
	cmpl	$0, -92(%rbp)
	je	.LBB91_37
# BB#36:                                # %if.then.116
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-92(%rbp), %edx
	callq	write_glyphs
.LBB91_37:                              # %if.end.117
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	280(%rcx), %eax
	jge	.LBB91_39
# BB#38:                                # %if.then.120
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-92(%rbp), %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	280(%rax), %esi
	callq	clear_end_of_line
	jmp	.LBB91_40
.LBB91_39:                              # %if.else.122
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	cursor_to
.LBB91_40:                              # %if.end.123
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	make_current
	jmp	.LBB91_203
.LBB91_41:                              # %if.end.124
	testb	$1, -130(%rbp)
	jne	.LBB91_50
# BB#42:                                # %if.then.126
	jmp	.LBB91_43
.LBB91_43:                              # %while.cond.127
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -92(%rbp)
	movb	%cl, -173(%rbp)         # 1-byte Spill
	jle	.LBB91_47
# BB#44:                                # %land.rhs.130
                                        #   in Loop: Header=BB91_43 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	imulq	$48, %rdx, %rdx
	addq	-32(%rbp), %rdx
	cmpl	$32, 40(%rdx)
	movb	%cl, -174(%rbp)         # 1-byte Spill
	jne	.LBB91_46
# BB#45:                                # %land.rhs.138
                                        #   in Loop: Header=BB91_43 Depth=1
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$48, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	28(%rcx), %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	cmpl	$0, %eax
	sete	%dl
	movb	%dl, -174(%rbp)         # 1-byte Spill
.LBB91_46:                              # %land.end.147
                                        #   in Loop: Header=BB91_43 Depth=1
	movb	-174(%rbp), %al         # 1-byte Reload
	movb	%al, -173(%rbp)         # 1-byte Spill
.LBB91_47:                              # %land.end.148
                                        #   in Loop: Header=BB91_43 Depth=1
	movb	-173(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB91_48
	jmp	.LBB91_49
.LBB91_48:                              # %while.body.149
                                        #   in Loop: Header=BB91_43 Depth=1
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB91_43
.LBB91_49:                              # %while.end.151
	jmp	.LBB91_50
.LBB91_50:                              # %if.end.152
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB91_52
# BB#51:                                # %lor.lhs.false.160
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB91_53
.LBB91_52:                              # %cond.true.168
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB91_54
.LBB91_53:                              # %cond.false.172
	callq	emacs_abort
.LBB91_54:                              # %cond.end.173
	movq	-184(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB91_101
# BB#55:                                # %if.then.179
	movl	$0, -136(%rbp)
.LBB91_56:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_74 Depth 2
	movl	-136(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB91_98
# BB#57:                                # %for.body
                                        #   in Loop: Header=BB91_56 Depth=1
	movl	-136(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB91_73
# BB#58:                                # %lor.lhs.false.184
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %esi
	andl	$7, %esi
	cmpl	%esi, %edx
	jne	.LBB91_73
# BB#59:                                # %land.lhs.true
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	40(%rax), %edx
	jne	.LBB91_73
# BB#60:                                # %land.lhs.true.205
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	.LBB91_65
# BB#61:                                # %cond.true.213
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %esi
	cmpl	%esi, %edx
	jne	.LBB91_73
# BB#62:                                # %land.lhs.true.228
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %esi
	cmpl	%esi, %edx
	jne	.LBB91_73
# BB#63:                                # %land.lhs.true.247
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	shrq	$32, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %esi
	cmpl	%esi, %edx
	jne	.LBB91_73
# BB#64:                                # %land.lhs.true.266
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %esi
	cmpl	%esi, %edx
	je	.LBB91_67
	jmp	.LBB91_73
.LBB91_65:                              # %cond.false.283
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	cmpl	$1, %edx
	jne	.LBB91_67
# BB#66:                                # %lor.lhs.false.291
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	32(%rax), %edx
	jne	.LBB91_73
.LBB91_67:                              # %land.lhs.true.303
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	28(%rax), %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	28(%rax), %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	cmpl	%esi, %edx
	jne	.LBB91_73
# BB#68:                                # %land.lhs.true.316
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	shrl	$7, %edx
	andl	$1, %edx
	movb	%dl, %sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edi
	shrl	$7, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %edx
	jne	.LBB91_73
# BB#69:                                # %land.lhs.true.334
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	shrl	$4, %edx
	andl	$1, %edx
	movb	%dl, %sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edi
	shrl	$4, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %edx
	jne	.LBB91_73
# BB#70:                                # %land.lhs.true.352
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	shrl	$5, %edx
	andl	$1, %edx
	movb	%dl, %sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edi
	shrl	$5, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %edx
	jne	.LBB91_73
# BB#71:                                # %land.lhs.true.370
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movswl	22(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movswl	22(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB91_73
# BB#72:                                # %land.lhs.true.380
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movswl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movswl	16(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB91_96
.LBB91_73:                              # %if.then.390
                                        #   in Loop: Header=BB91_56 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
.LBB91_74:                              # %while.cond.392
                                        #   Parent Loop BB91_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-140(%rbp), %eax
	cmpl	-92(%rbp), %eax
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jge	.LBB91_93
# BB#75:                                # %land.rhs.395
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movl	-140(%rbp), %ecx
	cmpl	-88(%rbp), %ecx
	movb	%al, -186(%rbp)         # 1-byte Spill
	jge	.LBB91_92
# BB#76:                                # %lor.lhs.false.398
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %esi
	andl	$7, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %edi
	andl	$7, %edi
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#77:                                # %land.lhs.true.411
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	40(%rcx), %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	40(%rcx), %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#78:                                # %land.lhs.true.422
                                        #   in Loop: Header=BB91_74 Depth=2
	movq	-32(%rbp), %rax
	movslq	-140(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	.LBB91_83
# BB#79:                                # %cond.true.430
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %edi
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#80:                                # %land.lhs.true.447
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	shrq	$16, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	shrq	$16, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %edi
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#81:                                # %land.lhs.true.466
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	shrq	$32, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	shrq	$32, %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movl	%ecx, %edi
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#82:                                # %land.lhs.true.485
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	shrq	$48, %rcx
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	32(%rcx), %rcx
	shrq	$48, %rcx
	movl	%ecx, %edi
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	je	.LBB91_85
	jmp	.LBB91_92
.LBB91_83:                              # %cond.false.502
                                        #   in Loop: Header=BB91_74 Depth=2
	movq	-32(%rbp), %rax
	movslq	-140(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %edx
	andl	$7, %edx
	cmpl	$1, %edx
	jne	.LBB91_85
# BB#84:                                # %lor.lhs.false.510
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	32(%rcx), %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	32(%rcx), %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
.LBB91_85:                              # %land.lhs.true.523
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	28(%rcx), %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	28(%rcx), %edi
	andl	$1048575, %edi          # imm = 0xFFFFF
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#86:                                # %land.lhs.true.536
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %esi
	shrl	$7, %esi
	andl	$1, %esi
	movb	%sil, %dil
	andb	$1, %dil
	movzbl	%dil, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %r8d
	shrl	$7, %r8d
	andl	$1, %r8d
	movb	%r8b, %dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	cmpl	%r8d, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#87:                                # %land.lhs.true.555
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %esi
	shrl	$4, %esi
	andl	$1, %esi
	movb	%sil, %dil
	andb	$1, %dil
	movzbl	%dil, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %r8d
	shrl	$4, %r8d
	andl	$1, %r8d
	movb	%r8b, %dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	cmpl	%r8d, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#88:                                # %land.lhs.true.574
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %esi
	shrl	$5, %esi
	andl	$1, %esi
	movb	%sil, %dil
	andb	$1, %dil
	movzbl	%dil, %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movl	24(%rcx), %r8d
	shrl	$5, %r8d
	andl	$1, %r8d
	movb	%r8b, %dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	cmpl	%r8d, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#89:                                # %land.lhs.true.593
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movswl	22(%rcx), %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movswl	22(%rcx), %edi
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#90:                                # %land.lhs.true.604
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movswl	16(%rcx), %esi
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movswl	16(%rcx), %edi
	cmpl	%edi, %esi
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB91_92
# BB#91:                                # %lor.rhs
                                        #   in Loop: Header=BB91_74 Depth=2
	movslq	-140(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$7, %ecx
	andl	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -186(%rbp)         # 1-byte Spill
.LBB91_92:                              # %lor.end
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	-186(%rbp), %al         # 1-byte Reload
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB91_93:                              # %land.end.623
                                        #   in Loop: Header=BB91_74 Depth=2
	movb	-185(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB91_94
	jmp	.LBB91_95
.LBB91_94:                              # %while.body.624
                                        #   in Loop: Header=BB91_74 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB91_74
.LBB91_95:                              # %while.end.625
                                        #   in Loop: Header=BB91_56 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-136(%rbp), %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-140(%rbp), %edx
	subl	-136(%rbp), %edx
	movq	%rax, %rsi
	callq	write_glyphs
	movl	-140(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -136(%rbp)
.LBB91_96:                              # %if.end.630
                                        #   in Loop: Header=BB91_56 Depth=1
	jmp	.LBB91_97
.LBB91_97:                              # %for.inc
                                        #   in Loop: Header=BB91_56 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB91_56
.LBB91_98:                              # %for.end
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB91_100
# BB#99:                                # %if.then.634
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-92(%rbp), %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movl	-88(%rbp), %esi
	callq	clear_end_of_line
.LBB91_100:                             # %if.end.635
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	make_current
	jmp	.LBB91_203
.LBB91_101:                             # %if.end.636
	cmpl	$0, -88(%rbp)
	jne	.LBB91_108
# BB#102:                               # %if.then.638
	testb	$1, -130(%rbp)
	je	.LBB91_104
# BB#103:                               # %if.then.640
	movl	$0, -76(%rbp)
	jmp	.LBB91_105
.LBB91_104:                             # %if.else.641
	movq	-32(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	count_blanks
	movl	%eax, -76(%rbp)
.LBB91_105:                             # %if.end.642
	movl	-92(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB91_107
# BB#106:                               # %if.then.645
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-92(%rbp), %edx
	subl	-76(%rbp), %edx
	movq	%rax, %rsi
	callq	write_glyphs
.LBB91_107:                             # %if.end.649
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	make_current
	jmp	.LBB91_203
.LBB91_108:                             # %if.end.650
	movq	-24(%rbp), %rdi
	movl	-88(%rbp), %esi
	callq	count_blanks
	movl	%eax, -72(%rbp)
	testb	$1, -131(%rbp)
	je	.LBB91_110
# BB#109:                               # %cond.true.654
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB91_111
.LBB91_110:                             # %cond.false.655
	movq	-32(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	count_blanks
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB91_111:                             # %cond.end.657
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movslq	-88(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	movslq	-76(%rbp), %rdi
	imulq	$48, %rdi, %rdi
	addq	%rdi, %rsi
	movq	-32(%rbp), %rdi
	movslq	-92(%rbp), %r8
	imulq	$48, %r8, %r8
	addq	%r8, %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	count_match
	movl	%eax, -80(%rbp)
	testb	$1, -130(%rbp)
	jne	.LBB91_121
# BB#112:                               # %land.lhs.true.669
	movl	-72(%rbp), %eax
	addl	-80(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB91_121
# BB#113:                               # %if.then.673
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB91_114:                             # %while.cond.676
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movslq	-80(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	cmpq	-64(%rbp), %rdx
	movb	%cl, -209(%rbp)         # 1-byte Spill
	jae	.LBB91_118
# BB#115:                               # %land.rhs.681
                                        #   in Loop: Header=BB91_114 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-80(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	-56(%rbp), %rdx
	cmpl	$32, 40(%rdx)
	movb	%cl, -210(%rbp)         # 1-byte Spill
	jne	.LBB91_117
# BB#116:                               # %land.rhs.688
                                        #   in Loop: Header=BB91_114 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -210(%rbp)         # 1-byte Spill
.LBB91_117:                             # %land.end.696
                                        #   in Loop: Header=BB91_114 Depth=1
	movb	-210(%rbp), %al         # 1-byte Reload
	movb	%al, -209(%rbp)         # 1-byte Spill
.LBB91_118:                             # %land.end.697
                                        #   in Loop: Header=BB91_114 Depth=1
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB91_119
	jmp	.LBB91_120
.LBB91_119:                             # %while.body.698
                                        #   in Loop: Header=BB91_114 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB91_114
.LBB91_120:                             # %while.end.700
	jmp	.LBB91_121
.LBB91_121:                             # %if.end.701
	cmpl	$0, -80(%rbp)
	jne	.LBB91_127
# BB#122:                               # %land.lhs.true.704
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB91_127
# BB#123:                               # %if.then.707
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB91_125
# BB#124:                               # %cond.true.710
	movl	-72(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB91_126
.LBB91_125:                             # %cond.false.711
	movl	-76(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB91_126:                             # %cond.end.712
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	%eax, -72(%rbp)
.LBB91_127:                             # %if.end.714
	movq	-24(%rbp), %rax
	movslq	-88(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movslq	-92(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movslq	-80(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-88(%rbp), %edx
	subl	-72(%rbp), %edx
	movl	-92(%rbp), %esi
	subl	-76(%rbp), %esi
	cmpl	%esi, %edx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jge	.LBB91_129
# BB#128:                               # %cond.true.725
	movl	-88(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB91_130
.LBB91_129:                             # %cond.false.727
	movl	-92(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB91_130:                             # %cond.end.729
	movl	-228(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movslq	%eax, %rsi
	subq	%rsi, %rdx
	imulq	$48, %rdx, %rdx
	movq	-224(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -48(%rbp)
.LBB91_131:                             # %while.cond.733
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -229(%rbp)         # 1-byte Spill
	jbe	.LBB91_148
# BB#132:                               # %land.rhs.736
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	-24(%rdx), %eax
	andl	$7, %eax
	movq	-56(%rbp), %rdx
	movl	-24(%rdx), %esi
	andl	$7, %esi
	cmpl	%esi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#133:                               # %land.lhs.true.747
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	-8(%rdx), %eax
	movq	-56(%rbp), %rdx
	cmpl	-8(%rdx), %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#134:                               # %land.lhs.true.756
                                        #   in Loop: Header=BB91_131 Depth=1
	movq	-40(%rbp), %rax
	movl	-24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	.LBB91_139
# BB#135:                               # %cond.true.763
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rdx), %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-56(%rbp), %rdx
	movq	-16(%rdx), %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#136:                               # %land.lhs.true.778
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rdx), %rdx
	shrq	$16, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-56(%rbp), %rdx
	movq	-16(%rdx), %rdx
	shrq	$16, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#137:                               # %land.lhs.true.795
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rdx), %rdx
	shrq	$32, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %eax
	movq	-56(%rbp), %rdx
	movq	-16(%rdx), %rdx
	shrq	$32, %rdx
	andq	$65535, %rdx            # imm = 0xFFFF
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#138:                               # %land.lhs.true.812
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rdx), %rdx
	shrq	$48, %rdx
	movl	%edx, %eax
	movq	-56(%rbp), %rdx
	movq	-16(%rdx), %rdx
	shrq	$48, %rdx
	movl	%edx, %esi
	cmpl	%esi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	je	.LBB91_141
	jmp	.LBB91_147
.LBB91_139:                             # %cond.false.827
                                        #   in Loop: Header=BB91_131 Depth=1
	movq	-40(%rbp), %rax
	movl	-24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$1, %ecx
	jne	.LBB91_141
# BB#140:                               # %lor.lhs.false.834
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	-16(%rdx), %eax
	movq	-56(%rbp), %rdx
	cmpl	-16(%rdx), %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
.LBB91_141:                             # %land.lhs.true.845
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	-20(%rdx), %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	movq	-56(%rbp), %rdx
	movl	-20(%rdx), %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	cmpl	%esi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#142:                               # %land.lhs.true.856
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	-24(%rdx), %eax
	shrl	$7, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-56(%rbp), %rdx
	movl	-24(%rdx), %edi
	shrl	$7, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#143:                               # %land.lhs.true.873
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	-24(%rdx), %eax
	shrl	$4, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-56(%rbp), %rdx
	movl	-24(%rdx), %edi
	shrl	$4, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#144:                               # %land.lhs.true.890
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	-24(%rdx), %eax
	shrl	$5, %eax
	andl	$1, %eax
	movb	%al, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-56(%rbp), %rdx
	movl	-24(%rdx), %edi
	shrl	$5, %edi
	andl	$1, %edi
	movb	%dil, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	%edi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#145:                               # %land.lhs.true.907
                                        #   in Loop: Header=BB91_131 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movswl	-26(%rdx), %eax
	movq	-56(%rbp), %rdx
	movswl	-26(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -230(%rbp)         # 1-byte Spill
	jne	.LBB91_147
# BB#146:                               # %land.rhs.916
                                        #   in Loop: Header=BB91_131 Depth=1
	movq	-40(%rbp), %rax
	movswl	-32(%rax), %ecx
	movq	-56(%rbp), %rax
	movswl	-32(%rax), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -230(%rbp)        # 1-byte Spill
.LBB91_147:                             # %land.end.925
                                        #   in Loop: Header=BB91_131 Depth=1
	movb	-230(%rbp), %al         # 1-byte Reload
	movb	%al, -229(%rbp)         # 1-byte Spill
.LBB91_148:                             # %land.end.926
                                        #   in Loop: Header=BB91_131 Depth=1
	movb	-229(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB91_149
	jmp	.LBB91_150
.LBB91_149:                             # %while.body.927
                                        #   in Loop: Header=BB91_131 Depth=1
	movq	-40(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB91_131
.LBB91_150:                             # %while.end.929
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movslq	-88(%rbp), %rsi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-40(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %edi
	movl	%edi, -84(%rbp)
	movl	-92(%rbp), %edi
	subl	-76(%rbp), %edi
	movl	-88(%rbp), %r8d
	subl	-72(%rbp), %r8d
	subl	%r8d, %edi
	movl	%edi, -68(%rbp)
	cmpl	$0, -84(%rbp)
	je	.LBB91_159
# BB#151:                               # %land.lhs.true.937
	cmpl	$0, -68(%rbp)
	je	.LBB91_159
# BB#152:                               # %land.lhs.true.939
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB91_154
# BB#153:                               # %lor.lhs.false.947
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB91_155
.LBB91_154:                             # %cond.true.955
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB91_156
.LBB91_155:                             # %cond.false.959
	callq	emacs_abort
.LBB91_156:                             # %cond.end.960
	movq	-240(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB91_158
# BB#157:                               # %lor.lhs.false.967
	movl	-84(%rbp), %eax
	movslq	-68(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	280(%rdx), %rdx
	shlq	$2, %rdx
	addq	char_ins_del_vector, %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jg	.LBB91_159
.LBB91_158:                             # %if.then.975
	movl	$0, -84(%rbp)
.LBB91_159:                             # %if.end.976
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB91_170
# BB#160:                               # %land.lhs.true.979
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB91_162
# BB#161:                               # %lor.lhs.false.987
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB91_163
.LBB91_162:                             # %cond.true.995
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB91_164
.LBB91_163:                             # %cond.false.999
	callq	emacs_abort
.LBB91_164:                             # %cond.end.1000
	movq	-248(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB91_166
# BB#165:                               # %lor.lhs.false.1007
	movl	-80(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-76(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movslq	280(%rsi), %rsi
	shlq	$2, %rsi
	addq	char_ins_del_vector, %rsi
	cmpl	(%rsi,%rdx,4), %eax
	jg	.LBB91_170
.LBB91_166:                             # %if.then.1017
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB91_168
# BB#167:                               # %cond.true.1020
	movl	-72(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB91_169
.LBB91_168:                             # %cond.false.1021
	movl	-76(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB91_169:                             # %cond.end.1022
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	%eax, -72(%rbp)
.LBB91_170:                             # %if.end.1024
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB91_172
# BB#171:                               # %if.then.1027
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movl	-72(%rbp), %edx
	subl	-76(%rbp), %edx
	movl	%edx, %esi
	callq	delete_glyphs
	jmp	.LBB91_178
.LBB91_172:                             # %if.else.1029
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB91_177
# BB#173:                               # %if.then.1032
	cmpl	$0, -84(%rbp)
	je	.LBB91_176
# BB#174:                               # %land.lhs.true.1034
	movl	-92(%rbp), %eax
	movl	-88(%rbp), %ecx
	addl	-76(%rbp), %ecx
	subl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB91_176
# BB#175:                               # %if.then.1039
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	addl	-72(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movl	-88(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	%eax, %esi
	callq	delete_glyphs
	movl	-92(%rbp), %eax
	movl	-76(%rbp), %edx
	subl	-72(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -88(%rbp)
.LBB91_176:                             # %if.end.1048
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	cursor_to
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	movl	-76(%rbp), %edx
	subl	-72(%rbp), %edx
	callq	insert_glyphs
.LBB91_177:                             # %if.end.1050
	jmp	.LBB91_178
.LBB91_178:                             # %if.end.1051
	movl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-92(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB91_180
# BB#179:                               # %lor.lhs.false.1058
	movl	-88(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB91_199
.LBB91_180:                             # %if.then.1061
	cmpl	$0, -84(%rbp)
	je	.LBB91_182
# BB#181:                               # %lor.lhs.false.1063
	movl	-92(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB91_187
.LBB91_182:                             # %if.then.1066
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	280(%rcx), %eax
	jne	.LBB91_184
# BB#183:                               # %if.then.1070
	movl	$0, -88(%rbp)
.LBB91_184:                             # %if.end.1071
	movl	-92(%rbp), %eax
	subl	-68(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB91_186
# BB#185:                               # %if.then.1075
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movslq	-76(%rbp), %r8
	imulq	$48, %r8, %r8
	addq	%r8, %rcx
	movslq	-80(%rbp), %r8
	imulq	$48, %r8, %r8
	addq	%r8, %rcx
	movl	-92(%rbp), %eax
	subl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	write_glyphs
.LBB91_186:                             # %if.end.1082
	jmp	.LBB91_198
.LBB91_187:                             # %if.else.1083
	movl	-92(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB91_194
# BB#188:                               # %if.then.1086
	movl	-88(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, %edx
	callq	cursor_to
.LBB91_189:                             # %while.cond.1089
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	-144(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$48, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	24(%rcx), %eax
	shrl	$7, %eax
	andl	$1, %eax
	testl	$1, %eax
	je	.LBB91_191
# BB#190:                               # %while.body.1099
                                        #   in Loop: Header=BB91_189 Depth=1
	movl	-144(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB91_189
.LBB91_191:                             # %while.end.1101
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-80(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-144(%rbp), %edx
	movq	%rax, %rsi
	callq	write_glyphs
	movl	-88(%rbp), %edx
	subl	-68(%rbp), %edx
	subl	-144(%rbp), %edx
	movl	%edx, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jle	.LBB91_193
# BB#192:                               # %if.then.1110
	movq	-8(%rbp), %rdi
	movl	-148(%rbp), %esi
	callq	delete_glyphs
.LBB91_193:                             # %if.end.1111
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-80(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-144(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movl	-92(%rbp), %edx
	subl	-88(%rbp), %edx
	addl	-148(%rbp), %edx
	movq	%rax, %rsi
	callq	insert_glyphs
	movl	-92(%rbp), %edx
	movl	%edx, -88(%rbp)
	jmp	.LBB91_197
.LBB91_194:                             # %if.else.1120
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB91_196
# BB#195:                               # %if.then.1123
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movslq	-76(%rbp), %r8
	imulq	$48, %r8, %r8
	addq	%r8, %rcx
	movslq	-80(%rbp), %r8
	imulq	$48, %r8, %r8
	addq	%r8, %rcx
	movl	-92(%rbp), %eax
	subl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	write_glyphs
	movq	-8(%rbp), %rdi
	movl	-88(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	%eax, %esi
	callq	delete_glyphs
	movl	-92(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB91_196:                             # %if.end.1131
	jmp	.LBB91_197
.LBB91_197:                             # %if.end.1132
	jmp	.LBB91_198
.LBB91_198:                             # %if.end.1133
	jmp	.LBB91_199
.LBB91_199:                             # %if.end.1134
	jmp	.LBB91_200
.LBB91_200:                             # %just_erase
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB91_202
# BB#201:                               # %if.then.1137
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-92(%rbp), %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movl	-88(%rbp), %esi
	callq	clear_end_of_line
.LBB91_202:                             # %if.end.1138
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	make_current
.LBB91_203:                             # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end91:
	.size	update_frame_line, .Lfunc_end91-update_frame_line
	.cfi_endproc

	.align	16, 0x90
	.type	line_hash_code,@function
line_hash_code:                         # @line_hash_code
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	236(%rsi), %rsi
	shrq	$10, %rsi
	andq	$1, %rsi
	testq	$1, %rsi
	je	.LBB92_13
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movswl	34(%rcx), %edx
	movslq	%edx, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB92_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB92_10
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB92_2 Depth=1
	movq	-32(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB92_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB92_2 Depth=1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB92_6
.LBB92_5:                               # %cond.true
                                        #   in Loop: Header=BB92_2 Depth=1
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB92_7
.LBB92_6:                               # %cond.false
	callq	emacs_abort
.LBB92_7:                               # %cond.end
                                        #   in Loop: Header=BB92_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB92_9
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB92_2 Depth=1
	movl	-44(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -44(%rbp)
.LBB92_9:                               # %if.end
                                        #   in Loop: Header=BB92_2 Depth=1
	movl	-20(%rbp), %eax
	shll	$4, %eax
	movl	-20(%rbp), %ecx
	shrl	$24, %ecx
	addl	%ecx, %eax
	andl	$268435455, %eax        # imm = 0xFFFFFFF
	addl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shll	$4, %eax
	movl	-20(%rbp), %ecx
	shrl	$24, %ecx
	addl	%ecx, %eax
	andl	$268435455, %eax        # imm = 0xFFFFFFF
	addl	-48(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB92_2
.LBB92_10:                              # %while.end
	cmpl	$0, -20(%rbp)
	jne	.LBB92_12
# BB#11:                                # %if.then.32
	movl	$1, -20(%rbp)
.LBB92_12:                              # %if.end.33
	jmp	.LBB92_13
.LBB92_13:                              # %if.end.34
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	line_hash_code, .Lfunc_end92-line_hash_code
	.cfi_endproc

	.align	16, 0x90
	.type	line_draw_cost,@function
line_draw_cost:                         # @line_draw_cost
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$8, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movswl	34(%rdi), %edx
	movslq	%edx, %rdi
	imulq	$48, %rdi, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -56(%rbp)
	movq	globals+944, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB93_1
	jmp	.LBB93_2
.LBB93_1:                               # %cond.true
	movq	globals+944, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB93_3
.LBB93_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB93_3
.LBB93_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	globals+944, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB93_4
	jmp	.LBB93_5
.LBB93_4:                               # %cond.true.8
	movq	globals+944, %rdi
	callq	ASIZE
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB93_6
.LBB93_5:                               # %cond.false.10
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB93_6
.LBB93_6:                               # %cond.end.11
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB93_8
# BB#7:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB93_9
.LBB93_8:                               # %cond.true.21
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB93_10
.LBB93_9:                               # %cond.false.22
	callq	emacs_abort
.LBB93_10:                              # %cond.end.23
	movq	-112(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB93_26
# BB#11:                                # %if.then
	jmp	.LBB93_12
.LBB93_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jbe	.LBB93_16
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB93_12 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	cmpl	$32, -8(%rdx)
	movb	%cl, -114(%rbp)         # 1-byte Spill
	jne	.LBB93_15
# BB#14:                                # %land.rhs.34
                                        #   in Loop: Header=BB93_12 Depth=1
	movq	-56(%rbp), %rax
	movl	-20(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -114(%rbp)         # 1-byte Spill
.LBB93_15:                              # %land.end
                                        #   in Loop: Header=BB93_12 Depth=1
	movb	-114(%rbp), %al         # 1-byte Reload
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB93_16:                              # %land.end.40
                                        #   in Loop: Header=BB93_12 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB93_17
	jmp	.LBB93_18
.LBB93_17:                              # %while.body
                                        #   in Loop: Header=BB93_12 Depth=1
	movq	-56(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB93_12
.LBB93_18:                              # %while.end
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB93_20
# BB#19:                                # %if.then.43
	movl	$0, -4(%rbp)
	jmp	.LBB93_44
.LBB93_20:                              # %if.end
	jmp	.LBB93_21
.LBB93_21:                              # %while.cond.44
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpl	$32, 40(%rdx)
	movb	%cl, -115(%rbp)         # 1-byte Spill
	jne	.LBB93_23
# BB#22:                                # %land.rhs.49
                                        #   in Loop: Header=BB93_21 Depth=1
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -115(%rbp)         # 1-byte Spill
.LBB93_23:                              # %land.end.55
                                        #   in Loop: Header=BB93_21 Depth=1
	movb	-115(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB93_24
	jmp	.LBB93_25
.LBB93_24:                              # %while.body.56
                                        #   in Loop: Header=BB93_21 Depth=1
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB93_21
.LBB93_25:                              # %while.end.58
	jmp	.LBB93_26
.LBB93_26:                              # %if.end.59
	cmpq	$0, -72(%rbp)
	jne	.LBB93_28
# BB#27:                                # %if.then.62
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %edi
	movl	%edi, -60(%rbp)
	jmp	.LBB93_43
.LBB93_28:                              # %if.else
	movl	$0, -60(%rbp)
.LBB93_29:                              # %while.cond.64
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB93_42
# BB#30:                                # %while.body.67
                                        #   in Loop: Header=BB93_29 Depth=1
	jmp	.LBB93_31
.LBB93_31:                              # %do.body
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$256, 40(%rax)          # imm = 0x100
	jae	.LBB93_33
# BB#32:                                # %if.then.72
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-48(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -84(%rbp)
	jmp	.LBB93_34
.LBB93_33:                              # %if.else.80
                                        #   in Loop: Header=BB93_29 Depth=1
	movl	$-1, -88(%rbp)
	movl	$0, -84(%rbp)
.LBB93_34:                              # %if.end.83
                                        #   in Loop: Header=BB93_29 Depth=1
	jmp	.LBB93_35
.LBB93_35:                              # %do.end
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-88(%rbp), %rdi
	callq	GLYPH_CHAR
	cmpl	$0, %eax
	jl	.LBB93_39
# BB#36:                                # %lor.lhs.false.87
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-88(%rbp), %rdi
	callq	GLYPH_FACE
	cmpl	$0, %eax
	jne	.LBB93_39
# BB#37:                                # %lor.lhs.false.91
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-88(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	cmpq	-80(%rbp), %rdi
	jge	.LBB93_39
# BB#38:                                # %lor.lhs.false.96
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-88(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB93_40
.LBB93_39:                              # %if.then.100
                                        #   in Loop: Header=BB93_29 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB93_41
.LBB93_40:                              # %if.else.101
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-88(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rdi
	callq	SCHARS
	movslq	-60(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -60(%rbp)
.LBB93_41:                              # %if.end.109
                                        #   in Loop: Header=BB93_29 Depth=1
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB93_29
.LBB93_42:                              # %while.end.111
	jmp	.LBB93_43
.LBB93_43:                              # %if.end.112
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB93_44:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	line_draw_cost, .Lfunc_end93-line_draw_cost
	.cfi_endproc

	.align	16, 0x90
	.type	count_blanks,@function
count_blanks:                           # @count_blanks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB94_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB94_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB94_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	-8(%rbp), %rax
	cmpl	$32, 40(%rax)
	jne	.LBB94_4
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB94_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	cmpl	$0, %ecx
	je	.LBB94_5
.LBB94_4:                               # %if.then
	jmp	.LBB94_7
.LBB94_5:                               # %if.end
                                        #   in Loop: Header=BB94_1 Depth=1
	jmp	.LBB94_6
.LBB94_6:                               # %for.inc
                                        #   in Loop: Header=BB94_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB94_1
.LBB94_7:                               # %for.end
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end94:
	.size	count_blanks, .Lfunc_end94-count_blanks
	.cfi_endproc

	.align	16, 0x90
	.type	count_match,@function
count_match:                            # @count_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB95_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jae	.LBB95_7
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jae	.LBB95_7
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	40(%rdx), %eax
	movq	-48(%rbp), %rdx
	cmpl	40(%rdx), %eax
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jne	.LBB95_6
# BB#4:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB95_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movl	28(%rdx), %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	movq	-48(%rbp), %rdx
	movl	28(%rdx), %esi
	andl	$1048575, %esi          # imm = 0xFFFFF
	cmpl	%esi, %eax
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jne	.LBB95_6
# BB#5:                                 # %land.rhs.10
                                        #   in Loop: Header=BB95_1 Depth=1
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$7, %ecx
	andl	$1, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-48(%rbp), %rax
	movl	24(%rax), %esi
	shrl	$7, %esi
	andl	$1, %esi
	movb	%sil, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %ecx
	sete	%dl
	movb	%dl, -50(%rbp)          # 1-byte Spill
.LBB95_6:                               # %land.end
                                        #   in Loop: Header=BB95_1 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB95_7:                               # %land.end.21
                                        #   in Loop: Header=BB95_1 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB95_8
	jmp	.LBB95_9
.LBB95_8:                               # %while.body
                                        #   in Loop: Header=BB95_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB95_1
.LBB95_9:                               # %while.end
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end95:
	.size	count_match, .Lfunc_end95-count_match
	.cfi_endproc

	.align	16, 0x90
	.type	handle_window_change_signal,@function
handle_window_change_signal:            # @handle_window_change_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	tty_list, %rax
	movq	%rax, -24(%rbp)
.LBB96_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB96_9 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB96_24
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-24(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB96_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB96_1 Depth=1
	jmp	.LBB96_23
.LBB96_4:                               # %if.end
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB96_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB96_1 Depth=1
	jmp	.LBB96_23
.LBB96_6:                               # %if.end.3
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	movl	%eax, %edi
	callq	get_tty_size
	cmpl	$5, -8(%rbp)
	jle	.LBB96_22
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB96_1 Depth=1
	cmpl	$2, -12(%rbp)
	jle	.LBB96_22
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB96_9:                               # %for.cond.7
                                        #   Parent Loop BB96_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB96_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB96_9 Depth=2
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB96_11:                              # %land.end
                                        #   in Loop: Header=BB96_9 Depth=2
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB96_12
	jmp	.LBB96_21
.LBB96_12:                              # %for.body.10
                                        #   in Loop: Header=BB96_9 Depth=2
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB96_19
# BB#13:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB96_9 Depth=2
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB96_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB96_9 Depth=2
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB96_16
.LBB96_15:                              # %cond.true
                                        #   in Loop: Header=BB96_9 Depth=2
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB96_17
.LBB96_16:                              # %cond.false
	callq	emacs_abort
.LBB96_17:                              # %cond.end
                                        #   in Loop: Header=BB96_9 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	-24(%rbp), %rax
	jne	.LBB96_19
# BB#18:                                # %if.then.38
                                        #   in Loop: Header=BB96_9 Depth=2
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-40(%rbp), %rcx
	subq	$5, %rcx
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rdi
	subq	$5, %rdi
	subl	356(%rdi), %edx
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	change_frame_size
.LBB96_19:                              # %if.end.42
                                        #   in Loop: Header=BB96_9 Depth=2
	jmp	.LBB96_20
.LBB96_20:                              # %for.inc
                                        #   in Loop: Header=BB96_9 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB96_9
.LBB96_21:                              # %for.end
                                        #   in Loop: Header=BB96_1 Depth=1
	jmp	.LBB96_22
.LBB96_22:                              # %if.end.44
                                        #   in Loop: Header=BB96_1 Depth=1
	jmp	.LBB96_23
.LBB96_23:                              # %for.inc.45
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB96_1
.LBB96_24:                              # %for.end.46
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	handle_window_change_signal, .Lfunc_end96-handle_window_change_signal
	.cfi_endproc

	.type	space_glyph,@object     # @space_glyph
	.comm	space_glyph,48,8
	.type	frame_matrix_frame,@object # @frame_matrix_frame
	.local	frame_matrix_frame
	.comm	frame_matrix_frame,8,8
	.type	display_completed,@object # @display_completed
	.comm	display_completed,1,1
	.type	delayed_size_change,@object # @delayed_size_change
	.local	delayed_size_change
	.comm	delayed_size_change,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Current frame is not on a tty device"
	.size	.L.str, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Opening termscript"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Device %d is not a termcap terminal device"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Terminal is currently suspended"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Keyboard macro terminated by a command ringing the bell"
	.size	.L.str.5, 56

	.type	frame_and_buffer_state,@object # @frame_and_buffer_state
	.local	frame_and_buffer_state
	.comm	frame_and_buffer_state,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DISPLAY"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Display %s unavailable, simulating -nw\n"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"standard input is not a tty"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"TERM"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Please set the environment variable DISPLAY or TERM (see 'tset').\n"
	.size	.L.str.10, 67

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Please set the environment variable TERM; see 'tset'.\n"
	.size	.L.str.11, 55

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"screen size %dx%d too big"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tty-set-up-initial-frame-faces"
	.size	.L.str.13, 31

	.type	Sredraw_display,@object # @Sredraw_display
	.data
	.align	8
Sredraw_display:
	.quad	167772160               # 0xa000000
	.quad	Fredraw_display
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	0
	.size	Sredraw_display, 48

	.type	syms_of_display.i_fwd,@object # @syms_of_display.i_fwd
	.local	syms_of_display.i_fwd
	.comm	syms_of_display.i_fwd,16,8
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"baud-rate"
	.size	.L.str.14, 10

	.type	syms_of_display.b_fwd,@object # @syms_of_display.b_fwd
	.local	syms_of_display.b_fwd
	.comm	syms_of_display.b_fwd,16,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"inverse-video"
	.size	.L.str.15, 14

	.type	syms_of_display.b_fwd.16,@object # @syms_of_display.b_fwd.16
	.local	syms_of_display.b_fwd.16
	.comm	syms_of_display.b_fwd.16,16,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"visible-bell"
	.size	.L.str.17, 13

	.type	syms_of_display.b_fwd.18,@object # @syms_of_display.b_fwd.18
	.local	syms_of_display.b_fwd.18
	.comm	syms_of_display.b_fwd.18,16,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"no-redraw-on-reenter"
	.size	.L.str.19, 21

	.type	syms_of_display.o_fwd,@object # @syms_of_display.o_fwd
	.local	syms_of_display.o_fwd
	.comm	syms_of_display.o_fwd,16,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"initial-window-system"
	.size	.L.str.20, 22

	.type	syms_of_display.ko_fwd,@object # @syms_of_display.ko_fwd
	.local	syms_of_display.ko_fwd
	.comm	syms_of_display.ko_fwd,8,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"window-system"
	.size	.L.str.21, 14

	.type	syms_of_display.o_fwd.22,@object # @syms_of_display.o_fwd.22
	.local	syms_of_display.o_fwd.22
	.comm	syms_of_display.o_fwd.22,16,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"window-system-version"
	.size	.L.str.23, 22

	.type	syms_of_display.b_fwd.24,@object # @syms_of_display.b_fwd.24
	.local	syms_of_display.b_fwd.24
	.comm	syms_of_display.b_fwd.24,16,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"cursor-in-echo-area"
	.size	.L.str.25, 20

	.type	syms_of_display.o_fwd.26,@object # @syms_of_display.o_fwd.26
	.local	syms_of_display.o_fwd.26
	.comm	syms_of_display.o_fwd.26,16,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"glyph-table"
	.size	.L.str.27, 12

	.type	syms_of_display.o_fwd.28,@object # @syms_of_display.o_fwd.28
	.local	syms_of_display.o_fwd.28
	.comm	syms_of_display.o_fwd.28,16,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"standard-display-table"
	.size	.L.str.29, 23

	.type	syms_of_display.b_fwd.30,@object # @syms_of_display.b_fwd.30
	.local	syms_of_display.b_fwd.30
	.comm	syms_of_display.b_fwd.30,16,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"redisplay-dont-pause"
	.size	.L.str.31, 21

	.type	old_lines_size,@object  # @old_lines_size
	.local	old_lines_size
	.comm	old_lines_size,8,8
	.type	old_lines,@object       # @old_lines
	.local	old_lines
	.comm	old_lines,8,8
	.type	new_lines_size,@object  # @new_lines_size
	.local	new_lines_size
	.comm	new_lines_size,8,8
	.type	new_lines,@object       # @new_lines
	.local	new_lines
	.comm	new_lines,8,8
	.type	row_table_size,@object  # @row_table_size
	.local	row_table_size
	.comm	row_table_size,8,8
	.type	row_table,@object       # @row_table
	.local	row_table
	.comm	row_table,8,8
	.type	row_entry_pool_size,@object # @row_entry_pool_size
	.local	row_entry_pool_size
	.comm	row_entry_pool_size,8,8
	.type	row_entry_pool,@object  # @row_entry_pool
	.local	row_entry_pool
	.comm	row_entry_pool,8,8
	.type	runs_size,@object       # @runs_size
	.local	runs_size
	.comm	runs_size,8,8
	.type	runs,@object            # @runs
	.local	runs
	.comm	runs,8,8
	.type	run_pool,@object        # @run_pool
	.local	run_pool
	.comm	run_pool,8,8
	.type	row_entry_idx,@object   # @row_entry_idx
	.local	row_entry_idx
	.comm	row_entry_idx,8,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"redraw-frame"
	.size	.L.str.32, 13

	.type	Sredraw_frame,@object   # @Sredraw_frame
	.data
	.align	8
Sredraw_frame:
	.quad	167772160               # 0xa000000
	.quad	Fredraw_frame
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.quad	0
	.quad	0
	.size	Sredraw_frame, 48

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"redraw-display"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.zero	1
	.size	.L.str.34, 1

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"frame-or-buffer-changed-p"
	.size	.L.str.35, 26

	.type	Sframe_or_buffer_changed_p,@object # @Sframe_or_buffer_changed_p
	.data
	.align	8
Sframe_or_buffer_changed_p:
	.quad	167772160               # 0xa000000
	.quad	Fframe_or_buffer_changed_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.35
	.quad	0
	.quad	0
	.size	Sframe_or_buffer_changed_p, 48

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"open-termscript"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"FOpen termscript file: "
	.size	.L.str.37, 24

	.type	Sopen_termscript,@object # @Sopen_termscript
	.data
	.align	8
Sopen_termscript:
	.quad	167772160               # 0xa000000
	.quad	Fopen_termscript
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	0
	.size	Sopen_termscript, 48

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"ding"
	.size	.L.str.38, 5

	.type	Sding,@object           # @Sding
	.data
	.align	8
Sding:
	.quad	167772160               # 0xa000000
	.quad	Fding
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.38
	.quad	0
	.quad	0
	.size	Sding, 48

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"redisplay"
	.size	.L.str.39, 10

	.type	Sredisplay,@object      # @Sredisplay
	.data
	.align	8
Sredisplay:
	.quad	167772160               # 0xa000000
	.quad	Fredisplay
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.39
	.quad	0
	.quad	0
	.size	Sredisplay, 48

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"sleep-for"
	.size	.L.str.40, 10

	.type	Ssleep_for,@object      # @Ssleep_for
	.data
	.align	8
Ssleep_for:
	.quad	167772160               # 0xa000000
	.quad	Fsleep_for
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.40
	.quad	0
	.quad	0
	.size	Ssleep_for, 48

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"send-string-to-terminal"
	.size	.L.str.41, 24

	.type	Ssend_string_to_terminal,@object # @Ssend_string_to_terminal
	.data
	.align	8
Ssend_string_to_terminal:
	.quad	167772160               # 0xa000000
	.quad	Fsend_string_to_terminal
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.41
	.quad	0
	.quad	0
	.size	Ssend_string_to_terminal, 48

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"internal-show-cursor"
	.size	.L.str.42, 21

	.type	Sinternal_show_cursor,@object # @Sinternal_show_cursor
	.data
	.align	8
Sinternal_show_cursor:
	.quad	167772160               # 0xa000000
	.quad	Finternal_show_cursor
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.42
	.quad	0
	.quad	0
	.size	Sinternal_show_cursor, 48

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"internal-show-cursor-p"
	.size	.L.str.43, 23

	.type	Sinternal_show_cursor_p,@object # @Sinternal_show_cursor_p
	.data
	.align	8
Sinternal_show_cursor_p:
	.quad	167772160               # 0xa000000
	.quad	Finternal_show_cursor_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.43
	.quad	0
	.quad	0
	.size	Sinternal_show_cursor_p, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
