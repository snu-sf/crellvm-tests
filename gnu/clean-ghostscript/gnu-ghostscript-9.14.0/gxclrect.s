	.text
	.file	"gxclrect.bc"
	.globl	cmd_write_rect_hl_cmd
	.align	16, 0x90
	.type	cmd_write_rect_hl_cmd,@function
cmd_write_rect_hl_cmd:                  # @cmd_write_rect_hl_cmd
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
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	48(%rsp), %eax
	leaq	1720(%rbx), %r15
	movl	%ecx, 1720(%rbx)
	movl	%r8d, 1724(%rbx)
	movl	%r9d, 1728(%rbx)
	movl	%eax, 1732(%rbx)
	movq	%r15, %rdi
	callq	cmd_size_rect
	cmpl	$0, 56(%rsp)
	je	.LBB0_5
# BB#1:                                 # %if.then
	addl	$2, %eax
	addq	$1760, %rbx             # imm = 0x6E0
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB0_2
# BB#3:                                 # %cond.false
	movb	$-33, (%rax)
	xorl	%ecx, %ecx
	jmp	.LBB0_4
.LBB0_5:                                # %if.else
	incl	%eax
	addq	$1760, %rbx             # imm = 0x6E0
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB0_6
# BB#7:                                 # %cond.false.19
	movb	%r14b, (%rax)
	xorl	%ecx, %ecx
	jmp	.LBB0_8
.LBB0_2:                                # %cond.true
	movl	10192(%rbp), %ecx
.LBB0_4:                                # %cond.end
	movb	%r14b, 1(%rax)
	addq	$2, %rax
	jmp	.LBB0_9
.LBB0_6:                                # %cond.true.17
	movl	10192(%rbp), %ecx
.LBB0_8:                                # %cond.end.21
	incq	%rax
.LBB0_9:                                # %if.end
	testl	%ecx, %ecx
	js	.LBB0_11
# BB#10:                                # %do.end
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	cmd_put_rect
	xorl	%ecx, %ecx
.LBB0_11:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cmd_write_rect_hl_cmd, .Lfunc_end0-cmd_write_rect_hl_cmd
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_size_rect,@function
cmd_size_rect:                          # @cmd_size_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	(%r14), %edi
	movl	$1, %ebx
	cmpl	$128, %edi
	movl	$1, %ebp
	jb	.LBB1_3
# BB#1:                                 # %cond.false
	movl	$2, %ebp
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_3
# BB#2:                                 # %cond.false.5
	callq	cmd_size_w
	movl	%eax, %ebp
.LBB1_3:                                # %cond.end.7
	movl	4(%r14), %edi
	cmpl	$128, %edi
	jb	.LBB1_6
# BB#4:                                 # %cond.false.12
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_6
# BB#5:                                 # %cond.false.17
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB1_6:                                # %cond.end.22
	addl	%ebp, %ebx
	movl	8(%r14), %edi
	movl	$1, %ebp
	cmpl	$128, %edi
	movl	$1, %eax
	jb	.LBB1_9
# BB#7:                                 # %cond.false.27
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_9
# BB#8:                                 # %cond.false.32
	callq	cmd_size_w
.LBB1_9:                                # %cond.end.37
	addl	%eax, %ebx
	movl	12(%r14), %edi
	cmpl	$128, %edi
	jb	.LBB1_12
# BB#10:                                # %cond.false.43
	movl	$2, %ebp
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB1_12
# BB#11:                                # %cond.false.48
	callq	cmd_size_w
	movl	%eax, %ebp
.LBB1_12:                               # %cond.end.53
	addl	%ebp, %ebx
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmd_size_rect, .Lfunc_end1-cmd_size_rect
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_put_rect,@function
cmd_put_rect:                           # @cmd_put_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB2_1
# BB#2:                                 # %cond.false
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB2_3
# BB#4:                                 # %cond.false.10
	callq	cmd_put_w
	movq	%rax, %rsi
	jmp	.LBB2_5
.LBB2_1:                                # %cond.true
	movb	%dil, (%rsi)
	incq	%rsi
	jmp	.LBB2_5
.LBB2_3:                                # %cond.true.5
	orl	$128, %edi
	movb	%dil, (%rsi)
	movl	(%rbx), %eax
	shrl	$7, %eax
	movb	%al, 1(%rsi)
	addq	$2, %rsi
.LBB2_5:                                # %cond.end.12
	movl	4(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB2_6
# BB#7:                                 # %cond.false.20
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB2_8
# BB#9:                                 # %cond.false.33
	callq	cmd_put_w
	movq	%rax, %rsi
	jmp	.LBB2_10
.LBB2_6:                                # %cond.true.16
	movb	%dil, (%rsi)
	incq	%rsi
	jmp	.LBB2_10
.LBB2_8:                                # %cond.true.24
	orl	$128, %edi
	movb	%dil, (%rsi)
	movl	4(%rbx), %eax
	shrl	$7, %eax
	movb	%al, 1(%rsi)
	addq	$2, %rsi
.LBB2_10:                               # %cond.end.38
	movl	8(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB2_11
# BB#12:                                # %cond.false.46
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB2_13
# BB#14:                                # %cond.false.59
	callq	cmd_put_w
	movq	%rax, %rsi
	jmp	.LBB2_15
.LBB2_11:                               # %cond.true.42
	movb	%dil, (%rsi)
	incq	%rsi
	jmp	.LBB2_15
.LBB2_13:                               # %cond.true.50
	orl	$128, %edi
	movb	%dil, (%rsi)
	movl	8(%rbx), %eax
	shrl	$7, %eax
	movb	%al, 1(%rsi)
	addq	$2, %rsi
.LBB2_15:                               # %cond.end.64
	movl	12(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB2_16
# BB#17:                                # %cond.false.72
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB2_18
# BB#20:                                # %cond.false.85
	popq	%rbx
	jmp	cmd_put_w               # TAILCALL
.LBB2_16:                               # %cond.true.68
	movb	%dil, (%rsi)
	popq	%rbx
	retq
.LBB2_18:                               # %cond.true.76
	orl	$128, %edi
	movb	%dil, (%rsi)
	movl	12(%rbx), %eax
	shrl	$7, %eax
	movb	%al, 1(%rsi)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	cmd_put_rect, .Lfunc_end2-cmd_put_rect
	.cfi_endproc

	.globl	cmd_write_rect_cmd
	.align	16, 0x90
	.type	cmd_write_rect_cmd,@function
cmd_write_rect_cmd:                     # @cmd_write_rect_cmd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 80
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rsi, %rbx
	movl	80(%rsp), %r12d
	movl	%r14d, %r13d
	subl	1720(%rbx), %r13d
	movl	1724(%rbx), %r10d
	movl	1728(%rbx), %r11d
	movl	%r8d, %r15d
	subl	%r10d, %r15d
	movl	%r9d, %ecx
	subl	%r11d, %ecx
	movl	1732(%rbx), %eax
	movl	%r14d, 1720(%rbx)
	movl	%r8d, 1724(%rbx)
	movl	%r9d, 1728(%rbx)
	movl	%r12d, 1732(%rbx)
	leal	8(%r13), %esi
	leal	8(%r15), %ebp
	orl	%esi, %ebp
	cmpl	$15, %ebp
	ja	.LBB3_13
# BB#1:                                 # %entry
	cmpl	%r12d, %eax
	jne	.LBB3_13
# BB#2:                                 # %entry
	leal	4(%rcx), %esi
	cmpl	$7, %esi
	ja	.LBB3_13
# BB#3:                                 # %if.then
	movq	%rcx, %rbp
	movq	%rdx, %r14
	addq	$1760, %rbx             # imm = 0x6E0
	cmpl	%r8d, %r10d
	jne	.LBB3_7
# BB#4:                                 # %if.then
	cmpl	%r11d, %r13d
	jne	.LBB3_7
# BB#5:                                 # %if.then.35
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rdi, %rbx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB3_11
# BB#6:                                 # %cond.end.thread
	leal	32(%r14,%rbp), %ecx
	addl	$12, %ecx
	movb	%cl, (%rax)
	jmp	.LBB3_45
.LBB3_13:                               # %if.else.61
	subl	%eax, %r12d
	subl	$-128, %r13d
	cmpl	$255, %r13d
	ja	.LBB3_27
# BB#14:                                # %land.lhs.true.65
	movl	%r15d, %esi
	subl	$-128, %esi
	cmpl	$255, %esi
	ja	.LBB3_27
# BB#15:                                # %land.lhs.true.69
	subl	$-128, %ecx
	cmpl	$255, %ecx
	ja	.LBB3_27
# BB#16:                                # %land.lhs.true.73
	movl	%r12d, %r11d
	subl	$-128, %r11d
	cmpl	$255, %r11d
	ja	.LBB3_27
# BB#17:                                # %if.then.77
	movq	%rcx, %rbp
	movq	%rdx, %r14
	addq	$1760, %rbx             # imm = 0x6E0
	cmpl	%r8d, %r10d
	jne	.LBB3_22
# BB#18:                                # %if.then.77
	leal	7(%r12), %eax
	cmpl	$14, %eax
	ja	.LBB3_22
# BB#19:                                # %if.then.87
	movl	$3, %edx
	movq	%rbx, %rsi
	movq	%rdi, %rbx
	callq	cmd_put_list_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB3_21
# BB#20:                                # %cond.end.98.thread
	leal	24(%r14,%r12), %eax
	movb	%al, (%rcx)
	jmp	.LBB3_26
.LBB3_27:                               # %if.else.139
	movq	%rdi, %rbp
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leal	(%r12,%r15), %eax
	cmpl	$-4, %eax
	je	.LBB3_41
# BB#28:                                # %if.else.139
	leal	2(%r15), %eax
	leal	2(%r12), %ecx
	orl	%eax, %ecx
	cmpl	$3, %ecx
	ja	.LBB3_41
# BB#29:                                # %if.then.155
	movl	$2, %r13d
	cmpl	$128, %r14d
	jb	.LBB3_32
# BB#30:                                # %cond.false.157
	movl	$3, %r13d
	cmpl	$16384, %r14d           # imm = 0x4000
	jb	.LBB3_32
# BB#31:                                # %cond.false.161
	movl	%r14d, %edi
	movl	%r9d, %r13d
	callq	cmd_size_w
	movl	%r13d, %r9d
	movl	%eax, %r13d
	incl	%r13d
.LBB3_32:                               # %cond.end.165
	movl	$1, %edx
	cmpl	$128, %r9d
	jb	.LBB3_35
# BB#33:                                # %cond.false.171
	movl	$2, %edx
	cmpl	$16384, %r9d            # imm = 0x4000
	jb	.LBB3_35
# BB#34:                                # %cond.false.175
	movl	%r9d, %edi
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	callq	cmd_size_w
	movl	12(%rsp), %r9d          # 4-byte Reload
	movl	%eax, %edx
.LBB3_35:                               # %cond.end.179
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	addl	%r13d, %edx
	addq	$1760, %rbx             # imm = 0x6E0
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	cmd_put_list_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB3_37
# BB#36:                                # %cond.end.195.thread
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r15,4), %eax
	leal	10(%r12,%rax), %eax
	movb	%al, (%rcx)
	movl	12(%rsp), %edx          # 4-byte Reload
	jmp	.LBB3_38
.LBB3_7:                                # %if.else
	movl	$2, %edx
	movq	%rbx, %rsi
	movq	%rdi, %rbx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB3_9
# BB#8:                                 # %cond.end.51.thread
	leal	36(%r14,%rbp), %ecx
	movb	%cl, (%rax)
	jmp	.LBB3_10
.LBB3_41:                               # %if.else.216
	leaq	1720(%rbx), %r14
	movq	%r14, %rdi
	callq	cmd_size_rect
	leal	1(%rax), %edx
	addq	$1760, %rbx             # imm = 0x6E0
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	cmd_put_list_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB3_43
# BB#42:                                # %cond.end.229.thread
	movq	16(%rsp), %rax          # 8-byte Reload
	movb	%al, (%rcx)
	jmp	.LBB3_44
.LBB3_11:                               # %cond.end
	movl	10192(%rbx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jns	.LBB3_46
	jmp	.LBB3_12
.LBB3_9:                                # %cond.end.51
	movl	10192(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB3_12
.LBB3_10:                               # %if.end.56
	shll	$4, %r13d
	leal	136(%r15,%r13), %ecx
	movb	%cl, 1(%rax)
	jmp	.LBB3_45
.LBB3_37:                               # %cond.end.195
	movl	10192(%rbp), %eax
	testl	%eax, %eax
	movl	12(%rsp), %edx          # 4-byte Reload
	js	.LBB3_46
.LBB3_38:                               # %if.end.200
	movl	%edx, %eax
	orl	%r14d, %eax
	cmpl	$127, %eax
	jbe	.LBB3_39
# BB#40:                                # %cond.false.208
	incq	%rcx
	movl	%r14d, %edi
	movq	%rcx, %rsi
	movl	%edx, %ebx
	callq	cmd_put_w
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB3_45
.LBB3_39:                               # %cond.true.203
	movb	%r14b, 1(%rcx)
	movb	%dl, 2(%rcx)
	jmp	.LBB3_45
.LBB3_43:                               # %cond.end.229
	movl	10192(%rbp), %eax
	testl	%eax, %eax
	js	.LBB3_46
.LBB3_44:                               # %do.end.237
	incq	%rcx
	movq	%r14, %rdi
	movq	%rcx, %rsi
	callq	cmd_put_rect
.LBB3_45:                               # %cleanup.247
	xorl	%eax, %eax
.LBB3_46:                               # %cleanup.247
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_12:                               # %cleanup.thread
	movl	%ecx, %eax
	jmp	.LBB3_46
.LBB3_22:                               # %if.else.104
	movl	%r11d, %r12d
	movl	%esi, %r15d
	movl	$5, %edx
	movq	%rbx, %rsi
	movq	%rdi, %rbx
	callq	cmd_put_list_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB3_24
# BB#23:                                # %cond.end.114.thread
	addl	$16, %r14d
	movb	%r14b, (%rcx)
	jmp	.LBB3_25
.LBB3_21:                               # %cond.end.98
	movl	10192(%rbx), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jns	.LBB3_26
	jmp	.LBB3_46
.LBB3_24:                               # %cond.end.114
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	js	.LBB3_46
.LBB3_25:                               # %do.end.122
	movb	%r15b, 3(%rcx)
	movb	%r12b, 4(%rcx)
.LBB3_26:                               # %cleanup.136
	movb	%r13b, 1(%rcx)
	movb	%bpl, 2(%rcx)
	jmp	.LBB3_45
.Lfunc_end3:
	.size	cmd_write_rect_cmd, .Lfunc_end3-cmd_write_rect_cmd
	.cfi_endproc

	.globl	cmd_write_page_rect_cmd
	.align	16, 0x90
	.type	cmd_write_page_rect_cmd,@function
cmd_write_page_rect_cmd:                # @cmd_write_page_rect_cmd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	10144(%rbx), %edx
	decl	%edx
	xorl	%esi, %esi
	movl	$5, %ecx
	callq	cmd_put_range_op
	testq	%rax, %rax
	je	.LBB4_2
# BB#1:                                 # %cond.end.thread
	movb	%bpl, (%rax)
	jmp	.LBB4_3
.LBB4_2:                                # %cond.end
	movl	10192(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB4_7
.LBB4_3:                                # %if.end
	movslq	10144(%rbx), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_6
# BB#4:                                 # %for.body.lr.ph
	movq	10200(%rbx), %rcx
	imulq	$1808, %rdx, %rdx       # imm = 0x710
	xorps	%xmm0, %xmm0
	leaq	(%rdx,%rcx), %rdx
	.align	16, 0x90
.LBB4_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 1720(%rcx)
	addq	$1808, %rcx             # imm = 0x710
	cmpq	%rdx, %rcx
	jb	.LBB4_5
.LBB4_6:                                # %for.end
	movl	$0, 1(%rax)
	xorl	%ecx, %ecx
.LBB4_7:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmd_write_page_rect_cmd, .Lfunc_end4-cmd_write_page_rect_cmd
	.cfi_endproc

	.globl	clist_fillpage
	.align	16, 0x90
	.type	clist_fillpage,@function
clist_fillpage:                         # @clist_fillpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r12, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	clist_close_writer_and_init_reader
	testl	%eax, %eax
	js	.LBB5_1
# BB#2:                                 # %lor.lhs.false
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	clist_finish_page
	testl	%eax, %eax
	js	.LBB5_13
# BB#3:                                 # %if.end
	movq	10200(%rbx), %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	cmd_put_drawing_color
	testl	%eax, %eax
	js	.LBB5_12
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	10144(%rbx), %edx
	decl	%edx
	xorl	%esi, %esi
	movl	$5, %ecx
	movq	%rbx, %rdi
	callq	cmd_put_range_op
	testq	%rax, %rax
	jne	.LBB5_6
# BB#7:                                 # %cond.end.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	jns	.LBB5_8
.LBB5_12:                               # %land.rhs
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB5_4
	jmp	.LBB5_13
.LBB5_1:
	shrl	$31, %eax
	jmp	.LBB5_13
.LBB5_6:                                # %cond.end.thread.i
	movb	$48, (%rax)
	movq	%rax, %r12
.LBB5_8:                                # %if.end.i
	movslq	10144(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB5_11
# BB#9:                                 # %for.body.lr.ph.i
	movq	10200(%rbx), %rax
	imulq	$1808, %rcx, %rcx       # imm = 0x710
	xorps	%xmm0, %xmm0
	leaq	(%rcx,%rax), %rcx
	.align	16, 0x90
.LBB5_10:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 1720(%rax)
	addq	$1808, %rax             # imm = 0x710
	cmpq	%rcx, %rax
	jb	.LBB5_10
.LBB5_11:                               # %do.cond
	movl	$0, 1(%r12)
	xorl	%eax, %eax
.LBB5_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	clist_fillpage, .Lfunc_end5-clist_fillpage
	.cfi_endproc

	.globl	clist_fill_rectangle
	.align	16, 0x90
	.type	clist_fill_rectangle,@function
clist_fill_rectangle:                   # @clist_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 144
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movl	%edx, %r12d
	movq	%rdi, %rbx
	movl	%esi, %edx
	sarl	$31, %edx
	andl	%esi, %edx
	addl	%ecx, %edx
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	832(%rbx), %edi
	subl	%esi, %edi
	cmpl	%edi, %edx
	cmovlel	%edx, %edi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	12184(%rbx), %ecx
	leal	(%r8,%r12), %edx
	subl	%ecx, %edx
	cmpl	%r12d, %ecx
	cmovlel	%r8d, %edx
	cmovgel	%ecx, %r12d
	leal	(%r12,%rdx), %ecx
	movl	12188(%rbx), %esi
	movl	%esi, %r15d
	subl	%r12d, %r15d
	cmpl	%esi, %ecx
	cmovlel	%edx, %r15d
	testl	%edi, %edi
	jle	.LBB6_19
# BB#1:                                 # %entry
	testl	%r15d, %r15d
	jle	.LBB6_19
# BB#2:                                 # %if.end.28
	movl	12148(%rbx), %eax
	testl	%eax, %eax
	js	.LBB6_19
# BB#3:                                 # %if.end.32
	cmpl	$0, 11952(%rbx)
	je	.LBB6_5
# BB#4:                                 # %if.then.33
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, 72(%rsp)
	movq	48(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rax,%rcx), %eax
	movl	%eax, 80(%rsp)
	movl	%r12d, 76(%rsp)
	leal	-1(%r12,%r15), %eax
	movl	%eax, 84(%rsp)
	leaq	72(%rsp), %rsi
	movq	%rbx, %rdi
	callq	clist_update_trans_bbox
.LBB6_5:                                # %if.end.42
	addl	%r12d, %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	10132(%rbx), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	gx_color_index2usage
	movq	%rax, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB6_6:                                # %do.body.54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	movl	%r12d, %eax
	cltd
	movl	36(%rsp), %esi          # 4-byte Reload
	idivl	%esi
	movq	10200(%rbx), %rcx
	movslq	%eax, %rdx
	imulq	$1808, %rdx, %rax       # imm = 0x710
	leaq	(%rcx,%rax), %rbp
	incl	%edx
	imull	%esi, %edx
	cmpl	%r15d, %edx
	cmovgl	%r15d, %edx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%edx, %r13d
	subl	%r12d, %r13d
	movq	24(%rsp), %rdx          # 8-byte Reload
	orq	%rdx, 1776(%rcx,%rax)
	leaq	1740(%rcx,%rax), %r15
	leaq	8(%rcx,%rax), %r14
	.align	16, 0x90
.LBB6_7:                                # %do.body.73
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r15), %eax
	cmpl	$1, %eax
	jne	.LBB6_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_7 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB6_10
# BB#9:                                 # %cond.end.83
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	js	.LBB6_14
	.align	16, 0x90
.LBB6_10:                               # %land.lhs.true.87
                                        #   in Loop: Header=BB6_7 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, (%r14)
	je	.LBB6_12
# BB#11:                                # %if.end.97
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	$clist_select_color1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%r14, %r8
	callq	cmd_put_color
	testl	%eax, %eax
	js	.LBB6_14
.LBB6_12:                               # %do.cond.106
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	%r13d, (%rsp)
	movl	$48, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%r12d, %r8d
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	cmd_write_rect_cmd
	testl	%eax, %eax
	jns	.LBB6_13
.LBB6_14:                               # %land.rhs
                                        #   in Loop: Header=BB6_7 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB6_7
# BB#15:                                # %error_in_rect
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpl	$0, 12144(%rbx)
	je	.LBB6_19
# BB#16:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB6_19
# BB#17:                                # %land.lhs.true.126
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	testl	%eax, %eax
	movq	16(%rsp), %r15          # 8-byte Reload
	jns	.LBB6_18
	jmp	.LBB6_19
	.align	16, 0x90
.LBB6_13:                               #   in Loop: Header=BB6_6 Depth=1
	movq	40(%rsp), %r14          # 8-byte Reload
	movl	%r14d, %r12d
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB6_18:                               # %do.cond.135
                                        #   in Loop: Header=BB6_6 Depth=1
	xorl	%eax, %eax
	cmpl	%r15d, %r12d
	jl	.LBB6_6
.LBB6_19:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	clist_fill_rectangle, .Lfunc_end6-clist_fill_rectangle
	.cfi_endproc

	.globl	clist_fill_rectangle_hl_color
	.align	16, 0x90
	.type	clist_fill_rectangle_hl_color,@function
clist_fill_rectangle_hl_color:          # @clist_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 128
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%r14, %rsi
	callq	cmd_drawing_color_usage
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	(%r12), %r15d
	movl	4(%r12), %ebp
	sarl	$8, %r15d
	sarl	$8, %ebp
	movl	8(%r12), %ecx
	sarl	$8, %ecx
	movl	12(%r12), %ebx
	sarl	$8, %ebx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	cmovsl	%eax, %r15d
	subl	%r15d, %ecx
	movl	832(%r13), %r12d
	subl	%r15d, %r12d
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	movl	12184(%r13), %ecx
	cmpl	%ecx, %ebp
	cmovll	%ecx, %ebp
	movl	12188(%r13), %ecx
	cmpl	%ecx, %ebx
	cmovgl	%ecx, %ebx
	testl	%r12d, %r12d
	jle	.LBB7_22
# BB#1:                                 # %entry
	movl	%ebx, %ecx
	subl	%ebp, %ecx
	testl	%ecx, %ecx
	jle	.LBB7_22
# BB#2:                                 # %if.end.37
	movl	12148(%r13), %eax
	testl	%eax, %eax
	js	.LBB7_22
# BB#3:                                 # %if.end.41
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	cmpl	$0, 11952(%r13)
	je	.LBB7_4
# BB#5:                                 # %if.then.42
	movl	%r15d, 16(%rsp)
	leal	-1(%r15,%r12), %eax
	movl	%eax, 24(%rsp)
	movl	%ebp, 20(%rsp)
	leal	-1(%rbx), %eax
	movl	%eax, (%rsp)            # 4-byte Spill
	movl	%eax, 28(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	clist_update_trans_bbox
	movl	(%rsp), %eax            # 4-byte Reload
	jmp	.LBB7_6
.LBB7_4:                                # %if.end.41.if.end.55_crit_edge
	leal	-1(%rbx), %eax
.LBB7_6:                                # %if.end.55
	movl	4(%rsp), %ecx           # 4-byte Reload
	movl	%ebp, 32(%rsp)
	movl	%ecx, 36(%rsp)
	movl	%ebx, 40(%rsp)
	movl	10132(%r13), %ecx
	movl	%ecx, 44(%rsp)
	addl	%ecx, %eax
	subl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%eax, 68(%rsp)
	.align	16, 0x90
.LBB7_7:                                # %do.body.67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%eax, 52(%rsp)
	movq	10200(%r13), %rdx
	cltq
	imulq	$1808, %rax, %rdi       # imm = 0x710
	leaq	(%rdx,%rdi), %rsi
	movq	%rsi, 56(%rsp)
	incl	%eax
	imull	%ecx, %eax
	movl	%eax, 64(%rsp)
	cmpl	%ebx, %eax
	cmovgl	%ebx, %eax
	subl	%ebp, %eax
	movl	%eax, 36(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	orq	%rax, 1776(%rdx,%rdi)
	jmp	.LBB7_8
	.align	16, 0x90
.LBB7_16:                               # %land.rhs.do.body.86_crit_edge
                                        #   in Loop: Header=BB7_8 Depth=2
	movq	56(%rsp), %rsi
.LBB7_8:                                # %do.body.86
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	1740(%rsi), %eax
	cmpl	$1, %eax
	jne	.LBB7_10
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_8 Depth=2
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	cmd_put_enable_lop
	movq	56(%rsp), %rsi
.LBB7_10:                               # %cond.end.96
                                        #   in Loop: Header=BB7_8 Depth=2
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%r14, %rdx
	leaq	32(%rsp), %rcx
	callq	cmd_put_drawing_color
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB7_15
# BB#11:                                # %if.then.102
                                        #   in Loop: Header=BB7_8 Depth=2
	movq	32(%rsp), %rax
	movq	56(%rsp), %rbx
	movl	%r15d, 1720(%rbx)
	movl	%eax, 1724(%rbx)
	shrq	$32, %rax
	leaq	1720(%rbx), %rbp
	movl	%r12d, 1728(%rbx)
	movl	%eax, 1732(%rbx)
	movq	%rbp, %rdi
	callq	cmd_size_rect
	leal	1(%rax), %edx
	addq	$1760, %rbx             # imm = 0x6E0
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB7_12
# BB#14:                                # %cond.end.21.i
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	10192(%r13), %ecx
	testl	%ecx, %ecx
	movl	$0, %eax
	jns	.LBB7_13
.LBB7_15:                               # %land.rhs
                                        #   in Loop: Header=BB7_8 Depth=2
	movq	%r13, %rdi
	movl	%ecx, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB7_16
# BB#17:                                # %error_in_rect
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	%eax, 48(%rsp)
	cmpl	$0, 12144(%r13)
	je	.LBB7_22
# BB#18:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpl	$0, 12152(%r13)
	jne	.LBB7_22
# BB#19:                                # %land.lhs.true.128
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, 48(%rsp)
	testl	%eax, %eax
	js	.LBB7_22
# BB#20:                                # %land.lhs.true.128.do.cond.137_crit_edge
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	32(%rsp), %ebp
	jmp	.LBB7_21
	.align	16, 0x90
.LBB7_12:                               # %cond.end.21.i.thread
                                        #   in Loop: Header=BB7_7 Depth=1
	movb	$-47, (%rax)
.LBB7_13:                               # %if.end.120
                                        #   in Loop: Header=BB7_7 Depth=1
	incq	%rax
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	cmd_put_rect
	movl	32(%rsp), %ebp
	addl	36(%rsp), %ebp
	movl	%ebp, 32(%rsp)
.LBB7_21:                               # %do.cond.137
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	40(%rsp), %rbx
	movq	%rbx, %rcx
	shrq	$32, %rcx
	xorl	%eax, %eax
	cmpl	%ebx, %ebp
	jl	.LBB7_7
.LBB7_22:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clist_fill_rectangle_hl_color, .Lfunc_end7-clist_fill_rectangle_hl_color
	.cfi_endproc

	.globl	clist_fill_trapezoid
	.align	16, 0x90
	.type	clist_fill_trapezoid,@function
clist_fill_trapezoid:                   # @clist_fill_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 64
	movq	64(%rsp), %r10
	movl	72(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%r10, (%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	callq	clist_write_fill_trapezoid
	addq	$56, %rsp
	retq
.Lfunc_end8:
	.size	clist_fill_trapezoid, .Lfunc_end8-clist_fill_trapezoid
	.cfi_endproc

	.align	16, 0x90
	.type	clist_write_fill_trapezoid,@function
clist_write_fill_trapezoid:             # @clist_write_fill_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 272
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%r9d, %ebx
	andl	$1, %ebx
	movl	%r9d, %eax
	movl	%r9d, %r13d
	andl	$4, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	jne	.LBB9_1
# BB#5:                                 # %if.else.651
	movl	(%rsi), %eax
	movl	8(%rsi), %r10d
	cmpl	%r10d, %eax
	cmovlel	%eax, %r10d
	movl	(%rdx), %ebp
	movl	8(%rdx), %eax
	testl	%ebx, %ebx
	je	.LBB9_7
# BB#6:                                 # %if.then.653
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	sarl	$8, %r10d
	cmpl	%eax, %ebp
	cmovgel	%ebp, %eax
	addl	$255, %eax
	sarl	$8, %eax
	subl	%r10d, %eax
	movl	%r10d, %ebp
	movl	%ecx, %r10d
	movl	%ecx, %r15d
	movl	%r8d, %r9d
	movq	%r8, 104(%rsp)          # 8-byte Spill
	jmp	.LBB9_9
.LBB9_1:                                # %if.then
	testl	%ebx, %ebx
	je	.LBB9_4
# BB#2:                                 # %if.then.3
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	movl	%ecx, %r15d
	movl	(%rsi), %r11d
	movl	4(%rsi), %eax
	movl	12(%rsi), %r9d
	cmpl	%r9d, %eax
	movl	%r9d, %r10d
	cmovlel	%eax, %r10d
	movl	(%rdx), %ecx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movl	4(%rdx), %ebp
	cmovgel	%eax, %r9d
	cmpl	%ebp, %r10d
	movq	288(%rsp), %rax
	movq	(%rax), %rbx
	movl	(%rbx), %r8d
	movl	4(%rbx), %eax
	cmovgl	%ebp, %r10d
	cmpl	%eax, %r10d
	cmovll	%eax, %r10d
	cmpl	%ebp, %r9d
	cmovll	%ebp, %r9d
	movl	12(%rbx), %eax
	cmpl	%eax, %r9d
	cmovgl	%eax, %r9d
	movl	8(%rsi), %eax
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	cmpl	%eax, %r11d
	movl	%eax, %ebp
	cmovlel	%r11d, %ebp
	cmovgel	%r11d, %eax
	cmpl	%ecx, %ebp
	cmovgl	%ecx, %ebp
	cmpl	%r8d, %ebp
	cmovll	%r8d, %ebp
	sarl	$8, %ebp
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	movl	8(%rbx), %esi
	jmp	.LBB9_3
.LBB9_7:                                # %if.else.687
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	cmpl	%eax, %ebp
	movl	%eax, %r9d
	cmovgel	%ebp, %r9d
	movl	%ecx, %ebp
	movl	%ecx, %r15d
	sarl	$8, %ebp
	leal	255(%r8), %eax
	movq	%r8, 104(%rsp)          # 8-byte Spill
	jmp	.LBB9_8
.LBB9_4:                                # %if.else
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	movl	%ecx, %r15d
	movl	8(%rsi), %r9d
	movl	(%rsi), %eax
	movl	4(%rsi), %r11d
	cmpl	%r9d, %eax
	movl	%r9d, %r10d
	cmovlel	%eax, %r10d
	cmovgel	%eax, %r9d
	movl	(%rdx), %eax
	movl	4(%rdx), %ecx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	cmpl	%eax, %r10d
	movq	288(%rsp), %rdx
	movq	(%rdx), %rbx
	cmovgl	%eax, %r10d
	movl	(%rbx), %ebp
	movl	4(%rbx), %r8d
	cmpl	%ebp, %r10d
	cmovll	%ebp, %r10d
	cmpl	%eax, %r9d
	cmovll	%eax, %r9d
	movl	8(%rbx), %eax
	cmpl	%eax, %r9d
	cmovgl	%eax, %r9d
	movl	12(%rsi), %eax
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	cmpl	%eax, %r11d
	movl	%eax, %ebp
	cmovlel	%r11d, %ebp
	cmovgel	%r11d, %eax
	cmpl	%ecx, %ebp
	cmovgl	%ecx, %ebp
	cmpl	%r8d, %ebp
	cmovll	%r8d, %ebp
	sarl	$8, %ebp
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	movl	12(%rbx), %esi
.LBB9_3:                                # %do.body
	cmpl	%esi, %eax
	cmovgl	%esi, %eax
	addl	$255, %eax
.LBB9_8:                                # %do.body
	sarl	$8, %eax
	subl	%ebp, %eax
.LBB9_9:                                # %do.body
	leal	(%rax,%rbp), %esi
	movl	12184(%rdi), %ecx
	movl	12188(%rdi), %edx
	subl	%ecx, %esi
	cmpl	%ecx, %ebp
	cmovll	%ecx, %ebp
	cmovgel	%eax, %esi
	leal	(%rbp,%rsi), %eax
	movl	%edx, %ebx
	subl	%ebp, %ebx
	cmpl	%edx, %eax
	cmovlel	%esi, %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB9_194
# BB#10:                                # %if.end.738
	movl	12148(%rdi), %eax
	testl	%eax, %eax
	js	.LBB9_194
# BB#11:                                # %if.end.742
	movq	%rdi, %r12
	cmpl	$0, 11952(%r12)
	je	.LBB9_12
# BB#13:                                # %if.then.744
	addl	$255, %r9d
	sarl	$8, %r9d
	sarl	$8, %r10d
	movl	%r10d, 160(%rsp)
	movl	%r9d, 168(%rsp)
	movl	%ebp, 164(%rsp)
	leal	(%rbx,%rbp), %r14d
	movl	%r14d, 172(%rsp)
	leaq	160(%rsp), %rsi
	movq	%r12, %rdi
	callq	clist_update_trans_bbox
	jmp	.LBB9_14
.LBB9_12:                               # %if.end.742.if.end.754_crit_edge
	leal	(%rbx,%rbp), %r14d
.LBB9_14:                               # %if.end.754
	movl	%ebp, 176(%rsp)
	movl	%ebx, 180(%rsp)
	movl	%r14d, 184(%rsp)
	movl	10132(%r12), %ecx
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movl	%ecx, 188(%rsp)
	leal	-1(%r14,%rcx), %eax
	subl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%eax, 212(%rsp)
	movl	%r13d, 128(%rsp)        # 4-byte Spill
	cmpl	$127, %r13d
	seta	%al
	movl	%r13d, %edx
	andl	$2, %edx
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	%r15d, 116(%rsp)        # 4-byte Spill
	cmpl	$127, %r15d
	seta	%dl
	movq	104(%rsp), %rdi         # 8-byte Reload
	cmpl	$127, %edi
	seta	%bl
	movl	%r13d, %esi
	orl	$128, %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	shrl	$7, %r13d
	movl	%r13d, 76(%rsp)         # 4-byte Spill
	movl	%r15d, %esi
	orl	$128, %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	shrl	$7, %r15d
	movl	%r15d, 68(%rsp)         # 4-byte Spill
	movl	%edi, %esi
	orl	$128, %esi
	movl	%esi, 64(%rsp)          # 4-byte Spill
	movl	%edi, %esi
	movq	%rdi, %r13
	shrl	$7, %esi
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movzbl	%al, %eax
	incl	%eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movzbl	%dl, %eax
	incl	%eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movzbl	%bl, %eax
	incl	%eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movq	272(%rsp), %r15
.LBB9_15:                               # %do.body.766
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
                                        #       Child Loop BB9_70 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_78 Depth 3
                                        #       Child Loop BB9_82 Depth 3
                                        #     Child Loop BB9_177 Depth 2
                                        #     Child Loop BB9_180 Depth 2
                                        #     Child Loop BB9_183 Depth 2
                                        #     Child Loop BB9_186 Depth 2
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%eax, 196(%rsp)
	cltq
	imulq	$1808, %rax, %rdx       # imm = 0x710
	movq	88(%rsp), %rbx          # 8-byte Reload
	addq	10200(%rbx), %rdx
	movq	%rdx, 200(%rsp)
	incl	%eax
	imull	%ecx, %eax
	movl	%eax, 208(%rsp)
	cmpl	%r14d, %eax
	cmovgl	%r14d, %eax
	subl	%ebp, %eax
	movl	%eax, 180(%rsp)
	movq	%r13, %r14
	.align	16, 0x90
.LBB9_16:                               # %do.body.786
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_70 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_78 Depth 3
                                        #       Child Loop BB9_82 Depth 3
	testq	%r15, %r15
	je	.LBB9_21
# BB#17:                                # %if.then.788
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	%r14, %rbp
	movq	200(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rdx
	leaq	176(%rsp), %rcx
	callq	cmd_put_drawing_color
	movl	%eax, %ecx
	movl	$-28, %eax
	cmpl	$-28, %ecx
	je	.LBB9_194
# BB#18:                                # %if.end.792
                                        #   in Loop: Header=BB9_16 Depth=2
	testl	%ecx, %ecx
	js	.LBB9_19
# BB#20:                                # %if.end.800
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	200(%rsp), %rsi
	movq	%rbx, %rdi
	movl	280(%rsp), %edx
	callq	cmd_update_lop
	movl	%eax, %esi
	testl	%esi, %esi
	movq	%rbp, %r14
	js	.LBB9_188
.LBB9_21:                               # %if.then.802
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	%rbx, %r13
	movq	200(%rsp), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	144(%rsp), %rbp         # 8-byte Reload
	movl	(%rbp), %edi
	movl	$1, %ebx
	cmpl	$128, %edi
	movl	$1, %r15d
	jb	.LBB9_24
# BB#22:                                # %cond.false.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %r15d
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_24
# BB#23:                                # %cond.false.6.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %r15d
.LBB9_24:                               # %cond.end.9.i
                                        #   in Loop: Header=BB9_16 Depth=2
	incl	%r15d
	movl	4(%rbp), %edi
	cmpl	$128, %edi
	jb	.LBB9_27
# BB#25:                                # %cond.false.15.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_27
# BB#26:                                # %cond.false.21.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB9_27:                               # %cond.end.27.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%ebx, %r15d
	movl	8(%rbp), %edi
	movl	$1, %ebx
	cmpl	$128, %edi
	movl	$1, %eax
	movq	136(%rsp), %r12         # 8-byte Reload
	jb	.LBB9_30
# BB#28:                                # %cond.false.34.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_30
# BB#29:                                # %cond.false.40.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
.LBB9_30:                               # %cond.end.46.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%eax, %r15d
	movl	12(%rbp), %edi
	cmpl	$128, %edi
	jb	.LBB9_33
# BB#31:                                # %cond.false.54.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_33
# BB#32:                                # %cond.false.60.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB9_33:                               # %cond.end.66.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%ebx, %r15d
	movl	(%r12), %edi
	movl	$1, %ebx
	cmpl	$128, %edi
	movl	$1, %eax
	jb	.LBB9_36
# BB#34:                                # %cond.false.74.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_36
# BB#35:                                # %cond.false.80.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
.LBB9_36:                               # %cond.end.86.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%eax, %r15d
	movl	4(%r12), %edi
	cmpl	$128, %edi
	jb	.LBB9_39
# BB#37:                                # %cond.false.94.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_39
# BB#38:                                # %cond.false.100.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB9_39:                               # %cond.end.106.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%ebx, %r15d
	movl	8(%r12), %edi
	movl	$1, %ebx
	cmpl	$128, %edi
	movl	$1, %eax
	jb	.LBB9_42
# BB#40:                                # %cond.false.114.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_42
# BB#41:                                # %cond.false.120.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
.LBB9_42:                               # %cond.end.126.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%eax, %r15d
	movl	12(%r12), %edi
	cmpl	$128, %edi
	jb	.LBB9_45
# BB#43:                                # %cond.false.134.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_45
# BB#44:                                # %cond.false.140.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB9_45:                               # %cond.end.146.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%ebx, %r15d
	movl	128(%rsp), %edi         # 4-byte Reload
	cmpl	$16384, %edi            # imm = 0x4000
	movl	120(%rsp), %eax         # 4-byte Reload
	jb	.LBB9_47
# BB#46:                                # %cond.false.156.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
.LBB9_47:                               # %cond.end.160.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%eax, %r15d
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	jne	.LBB9_53
# BB#48:                                # %if.then.i
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpl	$16384, 116(%rsp)       # 4-byte Folded Reload
                                        # imm = 0x4000
	movl	100(%rsp), %ebx         # 4-byte Reload
	jb	.LBB9_50
# BB#49:                                # %cond.false.172.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	116(%rsp), %edi         # 4-byte Reload
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB9_50:                               # %cond.end.176.i
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpl	$16384, %r14d           # imm = 0x4000
	movl	96(%rsp), %eax          # 4-byte Reload
	jb	.LBB9_52
# BB#51:                                # %cond.false.185.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	%r14d, %edi
	callq	cmd_size_w
.LBB9_52:                               # %cond.end.189.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%r15d, %ebx
	addl	%eax, %ebx
	movl	%ebx, %r15d
.LBB9_53:                               # %if.end.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	%r13, %rbx
	xorl	%r12d, %r12d
	cmpl	$0, 124(%rsp)           # 4-byte Folded Reload
	je	.LBB9_88
# BB#54:                                # %if.then.195.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	288(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	movl	$1, %r12d
	cmpl	$128, %edi
	jb	.LBB9_55
# BB#56:                                # %cond.false.200.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %r13d
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_58
# BB#57:                                # %cond.false.207.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %r13d
	movq	288(%rsp), %rax
	movq	(%rax), %rax
	jmp	.LBB9_58
.LBB9_55:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$1, %r13d
.LBB9_58:                               # %cond.end.214.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	4(%rax), %edi
	movq	%rbx, %r14
	cmpl	$128, %edi
	jb	.LBB9_61
# BB#59:                                # %cond.false.222.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %r12d
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_61
# BB#60:                                # %cond.false.229.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %r12d
	movq	288(%rsp), %rax
	movq	(%rax), %rax
.LBB9_61:                               # %cond.end.236.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	8(%rax), %edi
	movl	$1, %ebx
	cmpl	$128, %edi
	jb	.LBB9_62
# BB#63:                                # %cond.false.244.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %ebp
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_65
# BB#64:                                # %cond.false.251.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %ebp
	movq	288(%rsp), %rax
	movq	(%rax), %rax
	jmp	.LBB9_65
.LBB9_62:                               #   in Loop: Header=BB9_16 Depth=2
	movl	$1, %ebp
.LBB9_65:                               # %cond.end.258.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	12(%rax), %edi
	cmpl	$128, %edi
	jb	.LBB9_68
# BB#66:                                # %cond.false.267.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB9_68
# BB#67:                                # %cond.false.274.i
                                        #   in Loop: Header=BB9_16 Depth=2
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB9_68:                               # %cond.end.281.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%r15d, %r13d
	addl	%r12d, %r13d
	addl	%ebp, %r13d
	addl	%ebx, %r13d
	xorl	%r12d, %r12d
	movq	296(%rsp), %rax
	testq	%rax, %rax
	je	.LBB9_72
# BB#69:                                # %if.then.285.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	12244(%r14), %ebp
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movq	%rax, %rbx
	jle	.LBB9_71
	.align	16, 0x90
.LBB9_70:                               # %for.body.i.i
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %edi
	callq	cmd_size_frac31
	addl	%eax, %r15d
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB9_70
.LBB9_71:                               # %cmd_size_frac31_color.exit.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%r15d, %r13d
	movl	$1, %r12d
.LBB9_72:                               # %if.end.289.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	%r14, %rbx
	movq	304(%rsp), %rax
	testq	%rax, %rax
	je	.LBB9_76
# BB#73:                                # %if.then.291.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	12244(%rbx), %ebp
	movq	%rbx, %r14
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movq	%rax, %rbx
	jle	.LBB9_75
	.align	16, 0x90
.LBB9_74:                               # %for.body.i.27.i
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %edi
	callq	cmd_size_frac31
	addl	%eax, %r15d
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB9_74
.LBB9_75:                               # %cmd_size_frac31_color.exit29.i
                                        #   in Loop: Header=BB9_16 Depth=2
	orl	$2, %r12d
	addl	%r15d, %r13d
	movq	%r14, %rbx
.LBB9_76:                               # %if.end.295.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	312(%rsp), %rax
	testq	%rax, %rax
	je	.LBB9_80
# BB#77:                                # %if.then.297.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	12244(%rbx), %ebp
	movq	%rbx, %r14
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movq	%rax, %rbx
	jle	.LBB9_79
	.align	16, 0x90
.LBB9_78:                               # %for.body.i.40.i
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %edi
	callq	cmd_size_frac31
	addl	%eax, %r15d
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB9_78
.LBB9_79:                               # %cmd_size_frac31_color.exit42.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	$4, %r12d
	addl	%r15d, %r13d
	movq	%r14, %rbx
.LBB9_80:                               # %if.end.301.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	320(%rsp), %rax
	testq	%rax, %rax
	je	.LBB9_84
# BB#81:                                # %if.then.303.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	12244(%rbx), %ebp
	movq	%rbx, %r14
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movq	%rax, %rbx
	jle	.LBB9_83
	.align	16, 0x90
.LBB9_82:                               # %for.body.i.53.i
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbx), %edi
	callq	cmd_size_frac31
	addl	%eax, %r15d
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB9_82
.LBB9_83:                               # %cmd_size_frac31_color.exit55.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	$8, %r12d
	addl	%r15d, %r13d
	movq	%r14, %rbx
.LBB9_84:                               # %if.end.307.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$1, %r15d
	cmpl	$128, %r12d
	jb	.LBB9_87
# BB#85:                                # %cond.false.311.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$2, %r15d
	cmpl	$16384, %r12d           # imm = 0x4000
	jb	.LBB9_87
# BB#86:                                # %cond.false.315.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	%r12d, %edi
	callq	cmd_size_w
	movl	%eax, %r15d
.LBB9_87:                               # %cond.end.319.i
                                        #   in Loop: Header=BB9_16 Depth=2
	addl	%r13d, %r15d
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB9_88:                               # %if.end.322.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	152(%rsp), %rsi         # 8-byte Reload
	addq	$1760, %rsi             # imm = 0x6E0
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB9_89
# BB#90:                                # %cond.end.327.i
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	movl	$0, %eax
	movq	272(%rsp), %r15
	jns	.LBB9_91
.LBB9_188:                              # %land.rhs
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB9_16
# BB#189:                               # %error_in_rect
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, 192(%rsp)
	cmpl	$0, 12144(%rbx)
	je	.LBB9_194
# BB#190:                               # %land.lhs.true.819
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB9_194
# BB#191:                               # %land.lhs.true.821
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%r14, %r13
	movq	%rbx, %rdi
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, 192(%rsp)
	testl	%eax, %eax
	js	.LBB9_194
# BB#192:                               # %land.lhs.true.821.do.cond.829_crit_edge
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	176(%rsp), %ebp
	jmp	.LBB9_193
	.align	16, 0x90
.LBB9_89:                               # %cond.end.327.thread.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	$-4, (%rax)
	movq	272(%rsp), %r15
.LBB9_91:                               # %if.end.332.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %edi
	movq	%r14, %r13
	cmpl	$127, %edi
	jbe	.LBB9_92
# BB#93:                                # %cond.false.342.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_94
# BB#95:                                # %cond.false.354.i
                                        #   in Loop: Header=BB9_15 Depth=1
	incq	%rax
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_96
	.align	16, 0x90
.LBB9_92:                               # %cond.true.337.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movb	%dil, 1(%rax)
	addq	$2, %rax
	jmp	.LBB9_96
.LBB9_94:                               # %cond.true.347.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, 1(%rax)
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 2(%rax)
	addq	$3, %rax
.LBB9_96:                               # %cond.end.360.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	116(%rsp), %r14d        # 4-byte Reload
	movq	136(%rsp), %rbx         # 8-byte Reload
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	4(%rcx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_97
# BB#98:                                # %cond.false.371.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_99
# BB#100:                               # %cond.false.387.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_101
	.align	16, 0x90
.LBB9_97:                               # %cond.true.366.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_101
.LBB9_99:                               # %cond.true.376.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	4(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_101:                              # %cond.end.393.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	8(%rcx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_102
# BB#103:                               # %cond.false.404.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_104
# BB#105:                               # %cond.false.420.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_106
	.align	16, 0x90
.LBB9_102:                              # %cond.true.399.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_106
.LBB9_104:                              # %cond.true.409.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	8(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_106:                              # %cond.end.426.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	12(%rcx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_107
# BB#108:                               # %cond.false.437.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_109
# BB#110:                               # %cond.false.453.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_111
	.align	16, 0x90
.LBB9_107:                              # %cond.true.432.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_111
.LBB9_109:                              # %cond.true.442.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	12(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_111:                              # %cond.end.459.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_112
# BB#113:                               # %cond.false.470.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_114
# BB#115:                               # %cond.false.486.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_116
	.align	16, 0x90
.LBB9_112:                              # %cond.true.465.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_116
.LBB9_114:                              # %cond.true.475.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movl	(%rbx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_116:                              # %cond.end.492.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	4(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_117
# BB#118:                               # %cond.false.503.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_119
# BB#120:                               # %cond.false.519.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_121
	.align	16, 0x90
.LBB9_117:                              # %cond.true.498.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_121
.LBB9_119:                              # %cond.true.508.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movl	4(%rbx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_121:                              # %cond.end.525.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	8(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_122
# BB#123:                               # %cond.false.536.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_124
# BB#125:                               # %cond.false.552.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_126
	.align	16, 0x90
.LBB9_122:                              # %cond.true.531.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_126
.LBB9_124:                              # %cond.true.541.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movl	8(%rbx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_126:                              # %cond.end.558.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	12(%rbx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_127
# BB#128:                               # %cond.false.569.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_129
# BB#130:                               # %cond.false.585.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_131
	.align	16, 0x90
.LBB9_127:                              # %cond.true.564.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_131
.LBB9_129:                              # %cond.true.574.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movl	12(%rbx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_131:                              # %cond.end.591.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	128(%rsp), %edi         # 4-byte Reload
	cmpl	$127, %edi
	jbe	.LBB9_132
# BB#133:                               # %cond.false.598.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_134
# BB#135:                               # %cond.false.608.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_136
	.align	16, 0x90
.LBB9_132:                              # %cond.true.595.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_136
.LBB9_134:                              # %cond.true.601.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	80(%rsp), %ecx          # 4-byte Reload
	movb	%cl, (%rax)
	movl	76(%rsp), %ecx          # 4-byte Reload
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_136:                              # %cond.end.612.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	je	.LBB9_138
# BB#137:                               #   in Loop: Header=BB9_15 Depth=1
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	jmp	.LBB9_148
	.align	16, 0x90
.LBB9_138:                              # %if.then.616.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$127, %r14d
	jbe	.LBB9_139
# BB#140:                               # %cond.false.622.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %r14d           # imm = 0x3FFF
	jbe	.LBB9_141
# BB#142:                               # %cond.false.632.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%r14d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_143
.LBB9_139:                              # %cond.true.619.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%r14b, (%rax)
	incq	%rax
	jmp	.LBB9_143
.LBB9_141:                              # %cond.true.625.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	72(%rsp), %ecx          # 4-byte Reload
	movb	%cl, (%rax)
	movl	68(%rsp), %ecx          # 4-byte Reload
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_143:                              # %cond.end.636.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%r13, %rdi
	cmpl	$127, %edi
	jbe	.LBB9_144
# BB#145:                               # %cond.false.643.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_146
# BB#147:                               # %cond.false.653.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movq	%rdi, %r13
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_148
.LBB9_144:                              # %cond.true.640.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movb	%dil, (%rax)
	movq	%rdi, %r13
	incq	%rax
	jmp	.LBB9_148
.LBB9_146:                              # %cond.true.646.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rdi, %r13
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movl	64(%rsp), %ecx          # 4-byte Reload
	movb	%cl, (%rax)
	movl	60(%rsp), %ecx          # 4-byte Reload
	movb	%cl, 1(%rax)
	addq	$2, %rax
	.align	16, 0x90
.LBB9_148:                              # %do.end.662.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$0, 124(%rsp)           # 4-byte Folded Reload
	je	.LBB9_187
# BB#149:                               # %if.then.665.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_150
# BB#151:                               # %cond.false.677.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	movq	88(%rsp), %rbx          # 8-byte Reload
	jbe	.LBB9_152
# BB#153:                               # %cond.false.696.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_154
.LBB9_150:                              # %cond.true.671.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	movq	88(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB9_154
.LBB9_152:                              # %cond.true.683.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_154:                              # %cond.end.703.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_155
# BB#156:                               # %cond.false.716.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_157
# BB#158:                               # %cond.false.735.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_159
.LBB9_155:                              # %cond.true.710.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_159
.LBB9_157:                              # %cond.true.722.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_159:                              # %cond.end.742.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	8(%rcx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_160
# BB#161:                               # %cond.false.755.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_162
# BB#163:                               # %cond.false.774.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_164
.LBB9_160:                              # %cond.true.749.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_164
.LBB9_162:                              # %cond.true.761.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	8(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_164:                              # %cond.end.781.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	12(%rcx), %edi
	cmpl	$127, %edi
	jbe	.LBB9_165
# BB#166:                               # %cond.false.794.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB9_167
# BB#168:                               # %cond.false.813.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB9_169
.LBB9_165:                              # %cond.true.788.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%dil, (%rax)
	incq	%rax
	jmp	.LBB9_169
.LBB9_167:                              # %cond.true.800.i
                                        #   in Loop: Header=BB9_15 Depth=1
	orl	$128, %edi
	movb	%dil, (%rax)
	movq	288(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	12(%rcx), %ecx
	shrl	$7, %ecx
	movb	%cl, 1(%rax)
	addq	$2, %rax
.LBB9_169:                              # %cond.end.820.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	296(%rsp), %rdx
	cmpl	$127, %r12d
	jbe	.LBB9_170
# BB#171:                               # %cond.false.827.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpl	$16383, %r12d           # imm = 0x3FFF
	jbe	.LBB9_172
# BB#173:                               # %cond.false.837.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rdx, %rbp
	movl	%r12d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rbp, %rdx
	jmp	.LBB9_174
.LBB9_170:                              # %cond.true.824.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movb	%r12b, (%rax)
	incq	%rax
	jmp	.LBB9_174
.LBB9_172:                              # %cond.true.830.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%r12d, %ecx
	orl	$128, %ecx
	movb	%cl, (%rax)
	shrl	$7, %r12d
	movb	%r12b, 1(%rax)
	addq	$2, %rax
.LBB9_174:                              # %cond.end.841.i
                                        #   in Loop: Header=BB9_15 Depth=1
	testq	%rdx, %rdx
	je	.LBB9_175
# BB#176:                               # %if.then.845.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	12244(%rbx), %ebx
	testl	%ebx, %ebx
	movq	%rdx, %rbp
	jle	.LBB9_178
	.align	16, 0x90
.LBB9_177:                              # %for.body.i.63.i
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %edi
	movq	%rax, %rsi
	callq	cmd_put_frac31
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB9_177
	jmp	.LBB9_178
.LBB9_175:                              #   in Loop: Header=BB9_15 Depth=1
	movq	%rbx, 88(%rsp)          # 8-byte Spill
.LBB9_178:                              # %if.end.847.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	304(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB9_181
# BB#179:                               # %if.then.850.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	12244(%rcx), %ebx
	testl	%ebx, %ebx
	movq	%rdx, %rbp
	jle	.LBB9_181
	.align	16, 0x90
.LBB9_180:                              # %for.body.i.73.i
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %edi
	movq	%rax, %rsi
	callq	cmd_put_frac31
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB9_180
.LBB9_181:                              # %if.end.852.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	312(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB9_184
# BB#182:                               # %if.then.855.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	12244(%rcx), %ebx
	testl	%ebx, %ebx
	movq	%rdx, %rbp
	jle	.LBB9_184
	.align	16, 0x90
.LBB9_183:                              # %for.body.i.85.i
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %edi
	movq	%rax, %rsi
	callq	cmd_put_frac31
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB9_183
.LBB9_184:                              # %if.end.857.i
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpq	$0, 320(%rsp)
	je	.LBB9_187
# BB#185:                               # %if.then.860.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	12244(%rcx), %ebx
	testl	%ebx, %ebx
	movq	320(%rsp), %rbp
	jle	.LBB9_187
	.align	16, 0x90
.LBB9_186:                              # %for.body.i.97.i
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %edi
	movq	%rax, %rsi
	callq	cmd_put_frac31
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB9_186
	.align	16, 0x90
.LBB9_187:                              # %if.end.814
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%r14d, 116(%rsp)        # 4-byte Spill
	movl	176(%rsp), %ebp
	addl	180(%rsp), %ebp
	movl	%ebp, 176(%rsp)
.LBB9_193:                              # %do.cond.829
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	184(%rsp), %r14
	movq	%r14, %rcx
	shrq	$32, %rcx
	xorl	%eax, %eax
	cmpl	%r14d, %ebp
	jl	.LBB9_15
	jmp	.LBB9_194
.LBB9_19:                               # %if.then.794
	movl	280(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%r15, (%rsp)
	movq	%rbx, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	movl	116(%rsp), %ecx         # 4-byte Reload
	movl	%ebp, %r8d
	movl	84(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_fill_trapezoid
.LBB9_194:                              # %cleanup
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	clist_write_fill_trapezoid, .Lfunc_end9-clist_write_fill_trapezoid
	.cfi_endproc

	.globl	clist_fill_linear_color_trapezoid
	.align	16, 0x90
	.type	clist_fill_linear_color_trapezoid,@function
clist_fill_linear_color_trapezoid:      # @clist_fill_linear_color_trapezoid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 112
.Ltmp86:
	.cfi_offset %rbx, -16
	movq	112(%rsp), %r10
	movq	120(%rsp), %r11
	movq	128(%rsp), %rax
	movq	136(%rsp), %rbx
	movq	(%rdx), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, 88(%rsp)
	movq	(%r8), %rcx
	movq	%rcx, 64(%rsp)
	movq	(%r9), %rcx
	movq	%rcx, 72(%rsp)
	movl	28(%rsi), %ecx
	movl	32(%rsi), %r8d
	movl	8(%rsi), %r9d
	movl	24(%rsi), %edx
	orl	$2, %r9d
	movq	%rbx, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r10, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%edx, 8(%rsp)
	movq	$0, (%rsp)
	leaq	80(%rsp), %rsi
	leaq	64(%rsp), %rdx
	callq	clist_write_fill_trapezoid
	testl	%eax, %eax
	movl	$1, %ecx
	cmovnsl	%ecx, %eax
	addq	$96, %rsp
	popq	%rbx
	retq
.Lfunc_end10:
	.size	clist_fill_linear_color_trapezoid, .Lfunc_end10-clist_fill_linear_color_trapezoid
	.cfi_endproc

	.globl	clist_fill_linear_color_triangle
	.align	16, 0x90
	.type	clist_fill_linear_color_triangle,@function
clist_fill_linear_color_triangle:       # @clist_fill_linear_color_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 96
	movq	96(%rsp), %r10
	movq	104(%rsp), %r11
	movq	(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 80(%rsp)
	movq	(%r8), %rax
	movq	%rax, 56(%rsp)
	movl	$0, 68(%rsp)
	movl	$0, 64(%rsp)
	movl	8(%rsi), %eax
	movl	24(%rsi), %ecx
	orl	$6, %eax
	movq	%r11, 40(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r9, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, (%rsp)
	leaq	72(%rsp), %rsi
	leaq	56(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%eax, %r9d
	callq	clist_write_fill_trapezoid
	testl	%eax, %eax
	movl	$1, %ecx
	cmovnsl	%ecx, %eax
	addq	$88, %rsp
	retq
.Lfunc_end11:
	.size	clist_fill_linear_color_triangle, .Lfunc_end11-clist_fill_linear_color_triangle
	.cfi_endproc

	.globl	clist_dev_spec_op
	.align	16, 0x90
	.type	clist_dev_spec_op,@function
clist_dev_spec_op:                      # @clist_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp88:
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	leal	-6(%rsi), %r8d
	cmpl	$2, %r8d
	jb	.LBB12_4
# BB#1:                                 # %entry
	cmpl	$11, %esi
	jne	.LBB12_5
# BB#2:                                 # %if.then.5
	leaq	(%rsp), %rsi
	callq	*1680(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB12_4
# BB#3:                                 # %if.then.7
	movq	(%rsp), %rax
	movl	168(%rax), %eax
.LBB12_4:                               # %cleanup.14
	popq	%rdx
	retq
.LBB12_5:                               # %if.end.9
	cmpl	$0, 1812(%rdi)
	je	.LBB12_6
# BB#7:                                 # %if.then.10
	popq	%rax
	jmp	gdev_prn_forwarding_dev_spec_op # TAILCALL
.LBB12_6:                               # %if.end.12
	popq	%rax
	jmp	gx_default_dev_spec_op  # TAILCALL
.Lfunc_end12:
	.size	clist_dev_spec_op, .Lfunc_end12-clist_dev_spec_op
	.cfi_endproc

	.globl	clist_strip_tile_rect_devn
	.align	16, 0x90
	.type	clist_strip_tile_rect_devn,@function
clist_strip_tile_rect_devn:             # @clist_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 160
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r13d
	movl	%ecx, %r14d
	movl	%edx, %ebp
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	%ebp, %ebx
	sarl	$31, %ebx
	movq	160(%rsp), %rsi
	callq	cmd_drawing_color_usage
	andl	%ebp, %ebx
	addl	%r13d, %ebx
	xorl	%r13d, %r13d
	testl	%ebp, %ebp
	cmovsl	%r13d, %ebp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movl	832(%r15), %esi
	subl	%ebp, %esi
	cmpl	%esi, %ebx
	cmovlel	%ebx, %esi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	12184(%r15), %edx
	leal	(%r12,%r14), %ecx
	subl	%edx, %ecx
	cmpl	%r14d, %edx
	cmovlel	%r12d, %ecx
	cmovgel	%edx, %r14d
	leal	(%r14,%rcx), %edi
	movl	12188(%r15), %edx
	movl	%edx, %ebx
	subl	%r14d, %ebx
	cmpl	%edx, %edi
	cmovlel	%ecx, %ebx
	testl	%esi, %esi
	jle	.LBB13_40
# BB#1:                                 # %entry
	testl	%ebx, %ebx
	jle	.LBB13_40
# BB#2:                                 # %if.end.28
	movl	12148(%r15), %r13d
	testl	%r13d, %r13d
	js	.LBB13_40
# BB#3:                                 # %if.end.32
	movq	%rax, %rbp
	cmpl	$0, 11952(%r15)
	je	.LBB13_5
# BB#4:                                 # %if.then.33
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, 48(%rsp)
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rax,%rcx), %eax
	movl	%eax, 56(%rsp)
	movl	%r14d, 52(%rsp)
	leal	-1(%r14,%rbx), %eax
	movl	%eax, 60(%rsp)
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	clist_update_trans_bbox
.LBB13_5:                               # %if.end.42
	movq	%r15, %rdi
	movq	168(%rsp), %rsi
	callq	cmd_drawing_color_usage
	orq	%rbp, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r14d, 64(%rsp)
	movl	%ebx, 68(%rsp)
	addl	%r14d, %ebx
	movl	%ebx, 72(%rsp)
	movl	10132(%r15), %ecx
	movl	%ecx, 76(%rsp)
	leal	-1(%rcx,%rbx), %eax
	subl	%r14d, %eax
	cltd
	idivl	%ecx
	movl	%eax, 100(%rsp)
	leaq	64(%rsp), %r12
	.align	16, 0x90
.LBB13_6:                               # %do.body.55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #     Child Loop BB13_16 Depth 2
                                        #     Child Loop BB13_22 Depth 2
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	movl	%eax, 84(%rsp)
	movq	10200(%r15), %rdx
	cltq
	imulq	$1808, %rax, %rdi       # imm = 0x710
	leaq	(%rdx,%rdi), %rsi
	movq	%rsi, 88(%rsp)
	incl	%eax
	imull	%ecx, %eax
	movl	%eax, 96(%rsp)
	cmpl	%ebx, %eax
	cmovgl	%ebx, %eax
	subl	%r14d, %eax
	movl	%eax, 68(%rsp)
	movq	16(%rsp), %rax          # 8-byte Reload
	orq	%rax, 1776(%rdx,%rdi)
	movzwl	1740(%rdx,%rdi), %eax
	jmp	.LBB13_7
	.align	16, 0x90
.LBB13_11:                              # %land.rhs.do.body.75_crit_edge
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	88(%rsp), %rsi
	movzwl	1740(%rsi), %eax
.LBB13_7:                               # %do.body.55
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, %eax
	jne	.LBB13_12
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_7 Depth=2
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB13_12
# BB#9:                                 # %cond.end.85
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	10192(%r15), %esi
	testl	%esi, %esi
	jns	.LBB13_12
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	%r15, %rdi
	callq	clist_VMerror_recover
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jns	.LBB13_11
# BB#34:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	%r13d, 80(%rsp)
	movq	24(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_35
	.align	16, 0x90
.LBB13_12:                              # %if.end.99
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	88(%rsp), %rsi
	movq	368(%rsi), %rcx
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	24(%r14), %rax
	cmpq	%rax, %rcx
	movl	176(%rsp), %ebx
	jne	.LBB13_15
# BB#13:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	360(%rsi), %edx
	movq	1872(%r15), %rdi
	movq	(%rdi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB13_15
# BB#14:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	1776(%r15), %rdi
	cmpq	%rcx, 16(%rdi,%rdx)
	je	.LBB13_22
	.align	16, 0x90
.LBB13_15:                              # %if.then.113
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	$-28, %r13d
	testq	%rax, %rax
	jne	.LBB13_16
	jmp	.LBB13_40
	.align	16, 0x90
.LBB13_18:                              # %land.rhs.124.do.body.118_crit_edge
                                        #   in Loop: Header=BB13_16 Depth=2
	movq	88(%rsp), %rsi
.LBB13_16:                              # %do.body.118.preheader
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %ecx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	clist_change_tile
	testl	%eax, %eax
	jns	.LBB13_22
# BB#17:                                # %land.rhs.124
                                        #   in Loop: Header=BB13_16 Depth=2
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB13_18
# BB#19:                                # %do.end.129
                                        #   in Loop: Header=BB13_6 Depth=1
	cmpl	$-25, %eax
	jne	.LBB13_40
# BB#20:                                # %lor.lhs.false.135
                                        #   in Loop: Header=BB13_6 Depth=1
	cmpl	$0, 12144(%r15)
	je	.LBB13_40
# BB#21:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	$-25, 80(%rsp)
	movl	$-25, %r13d
	jmp	.LBB13_35
	.align	16, 0x90
.LBB13_22:                              # %do.body.148
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%rsp), %rsi
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	160(%rsp), %rdx
	movq	%r12, %rcx
	callq	cmd_put_drawing_color
	movq	88(%rsp), %rsi
	movl	$2, %r8d
	movq	%r15, %rdi
	movq	168(%rsp), %rdx
	movq	%r12, %rcx
	callq	cmd_put_drawing_color
	movq	88(%rsp), %rsi
	cmpl	%ebx, 384(%rsi)
	jne	.LBB13_25
# BB#23:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB13_22 Depth=2
	testl	%eax, %eax
	js	.LBB13_27
# BB#24:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB13_22 Depth=2
	movl	184(%rsp), %ecx
	cmpl	%ecx, 388(%rsi)
	jne	.LBB13_26
	jmp	.LBB13_27
	.align	16, 0x90
.LBB13_25:                              # %if.then.163
                                        #   in Loop: Header=BB13_22 Depth=2
	testl	%eax, %eax
	js	.LBB13_32
.LBB13_26:                              # %if.then.166
                                        #   in Loop: Header=BB13_22 Depth=2
	movq	%r15, %rdi
	movl	%ebx, %edx
	movl	184(%rsp), %ecx
	callq	cmd_set_tile_phase
.LBB13_27:                              # %if.end.170
                                        #   in Loop: Header=BB13_22 Depth=2
	testl	%eax, %eax
	js	.LBB13_32
# BB#28:                                # %if.then.173
                                        #   in Loop: Header=BB13_22 Depth=2
	movl	%ebx, %r13d
	movq	64(%rsp), %rax
	movq	88(%rsp), %rbx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 1720(%rbx)
	movl	%eax, 1724(%rbx)
	shrq	$32, %rax
	leaq	1720(%rbx), %rbp
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 1728(%rbx)
	movl	%eax, 1732(%rbx)
	movq	%rbp, %rdi
	callq	cmd_size_rect
	leal	2(%rax), %edx
	addq	$1760, %rbx             # imm = 0x6E0
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	cmd_put_list_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	jne	.LBB13_29
# BB#31:                                # %cond.end.i
                                        #   in Loop: Header=BB13_22 Depth=2
	movl	10192(%r15), %eax
	movb	$5, 1
	testl	%eax, %eax
	movl	$0, %ecx
	movl	%r13d, %ebx
	jns	.LBB13_30
.LBB13_32:                              # %land.rhs.182
                                        #   in Loop: Header=BB13_22 Depth=2
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jns	.LBB13_22
# BB#33:                                # %land.lhs.true.190
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	%r13d, 80(%rsp)
.LBB13_35:                              # %error_in_rect
                                        #   in Loop: Header=BB13_6 Depth=1
	cmpl	$0, 12144(%r15)
	je	.LBB13_40
# BB#36:                                # %land.lhs.true.200
                                        #   in Loop: Header=BB13_6 Depth=1
	cmpl	$0, 12152(%r15)
	jne	.LBB13_40
# BB#37:                                # %land.lhs.true.203
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, %r13d
	movl	%r13d, 80(%rsp)
	testl	%r13d, %r13d
	js	.LBB13_40
# BB#38:                                # %land.lhs.true.203.do.cond.212_crit_edge
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	64(%rsp), %r14d
	jmp	.LBB13_39
.LBB13_29:                              # %cond.end.i.thread
                                        #   in Loop: Header=BB13_6 Depth=1
	movw	$1503, (%rcx)           # imm = 0x5DF
.LBB13_30:                              # %if.end.194
                                        #   in Loop: Header=BB13_6 Depth=1
	addq	$2, %rcx
	movq	%rbp, %rdi
	movq	%rcx, %rsi
	callq	cmd_put_rect
	movl	64(%rsp), %r14d
	addl	68(%rsp), %r14d
	movl	%r14d, 64(%rsp)
.LBB13_39:                              # %do.cond.212
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	72(%rsp), %rbx
	movq	%rbx, %rcx
	shrq	$32, %rcx
	xorl	%r13d, %r13d
	cmpl	%ebx, %r14d
	jl	.LBB13_6
.LBB13_40:                              # %cleanup.218
	movl	%r13d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	clist_strip_tile_rect_devn, .Lfunc_end13-clist_strip_tile_rect_devn
	.cfi_endproc

	.globl	clist_strip_tile_rectangle
	.align	16, 0x90
	.type	clist_strip_tile_rectangle,@function
clist_strip_tile_rectangle:             # @clist_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 192
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r12d
	movl	%ecx, %r8d
	movl	%edx, %r15d
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movq	200(%rsp), %rcx
	movq	192(%rsp), %rsi
	movq	%rcx, %rax
	andq	%rsi, %rax
	cmpq	$-1, %rax
	je	.LBB14_1
# BB#2:                                 # %cond.false.9
	movq	%r8, 96(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	cmpq	$-1, %rsi
	je	.LBB14_4
# BB#3:                                 # %cond.false.13
	movq	%rbx, %rdi
	movq	%rcx, %rbp
	callq	gx_color_index2usage
	movq	%rbp, %rcx
	movq	%rax, %r13
.LBB14_4:                               # %cond.end.14
	xorl	%esi, %esi
	cmpq	$-1, %rcx
	je	.LBB14_6
# BB#5:                                 # %cond.false.19
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	gx_color_index2usage
	movq	%rax, %rsi
.LBB14_6:                               # %cond.end.21
	orq	%r13, %rsi
	movl	$1, 108(%rsp)           # 4-byte Folded Spill
	movq	96(%rsp), %r8           # 8-byte Reload
	jmp	.LBB14_7
.LBB14_1:                               # %cond.true.8
	movzwl	12252(%rbx), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movb	100(%rbx), %cl
	movl	$1, %esi
	shlq	%cl, %rsi
	decq	%rsi
.LBB14_7:                               # %cond.end.23
	movl	%r15d, %ecx
	sarl	$31, %ecx
	andl	%r15d, %ecx
	addl	%r12d, %ecx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	cmovsl	%eax, %r15d
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movl	832(%rbx), %edi
	subl	%r15d, %edi
	cmpl	%edi, %ecx
	cmovlel	%ecx, %edi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	12184(%rbx), %ecx
	leal	(%r14,%r8), %edx
	subl	%ecx, %edx
	cmpl	%r8d, %ecx
	cmovgl	%edx, %r14d
	cmovgel	%ecx, %r8d
	leal	(%r8,%r14), %ebp
	movl	12188(%rbx), %edx
	movl	%edx, %ecx
	subl	%r8d, %ecx
	cmpl	%edx, %ebp
	cmovlel	%r14d, %ecx
	testl	%edi, %edi
	jle	.LBB14_43
# BB#8:                                 # %cond.end.23
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB14_43
# BB#9:                                 # %if.end.60
	movl	12148(%rbx), %eax
	testl	%eax, %eax
	js	.LBB14_43
# BB#10:                                # %if.end.65
	cmpl	$0, 11952(%rbx)
	movq	%r8, %r14
	movq	%rcx, %rbp
	je	.LBB14_12
# BB#11:                                # %if.then.66
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, 120(%rsp)
	movq	72(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rax,%rcx), %eax
	movl	%eax, 128(%rsp)
	movl	%r14d, 124(%rsp)
	leal	-1(%r14,%rbp), %eax
	movl	%eax, 132(%rsp)
	leaq	120(%rsp), %rsi
	movq	%rbx, %rdi
	callq	clist_update_trans_bbox
.LBB14_12:                              # %if.end.75
	addl	%r14d, %ebp
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movl	10132(%rbx), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB14_13:                              # %do.body.87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_14 Depth 2
                                        #     Child Loop BB14_22 Depth 2
                                        #     Child Loop BB14_24 Depth 2
	movq	%r15, 96(%rsp)          # 8-byte Spill
	movq	%r15, %rcx
	movl	%ecx, %eax
	cltd
	movl	44(%rsp), %esi          # 4-byte Reload
	idivl	%esi
	movq	10200(%rbx), %r14
	movslq	%eax, %r15
	imulq	$1808, %r15, %r13       # imm = 0x710
	leaq	(%r14,%r13), %r12
	incl	%r15d
	imull	%esi, %r15d
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	movl	%r15d, %eax
	subl	%ecx, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	orq	%rax, 1776(%r14,%r13)
	leaq	1740(%r14,%r13), %rbp
	.align	16, 0x90
.LBB14_14:                              # %do.body.112
                                        #   Parent Loop BB14_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB14_18
# BB#15:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB14_14 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB14_18
# BB#16:                                # %cond.end.124
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB14_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB14_14
	jmp	.LBB14_39
	.align	16, 0x90
.LBB14_18:                              # %if.end.138
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	368(%r14,%r13), %rcx
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	cmpq	%rax, %rcx
	jne	.LBB14_21
# BB#19:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB14_13 Depth=1
	movl	360(%r14,%r13), %edx
	movq	1872(%rbx), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB14_21
# BB#20:                                # %land.lhs.true.146
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	1776(%rbx), %rsi
	cmpq	%rcx, 16(%rsi,%rdx)
	je	.LBB14_23
	.align	16, 0x90
.LBB14_21:                              # %if.then.152
                                        #   in Loop: Header=BB14_13 Depth=1
	testq	%rax, %rax
	je	.LBB14_33
	.align	16, 0x90
.LBB14_22:                              # %do.body.157
                                        #   Parent Loop BB14_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	112(%rsp), %rdx         # 8-byte Reload
	movl	108(%rsp), %ecx         # 4-byte Reload
	callq	clist_change_tile
	testl	%eax, %eax
	jns	.LBB14_23
# BB#30:                                # %land.rhs.163
                                        #   in Loop: Header=BB14_22 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB14_22
# BB#31:                                # %do.end.168
                                        #   in Loop: Header=BB14_13 Depth=1
	cmpl	$-25, %eax
	jne	.LBB14_33
# BB#32:                                # %lor.lhs.false.174
                                        #   in Loop: Header=BB14_13 Depth=1
	movl	$-25, %eax
	cmpl	$0, 12144(%rbx)
	jne	.LBB14_40
	.align	16, 0x90
.LBB14_33:                              # %if.then.184
                                        #   in Loop: Header=BB14_13 Depth=1
	movl	216(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	208(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	92(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_strip_tile_rectangle
	testl	%eax, %eax
	jns	.LBB14_42
	jmp	.LBB14_39
	.align	16, 0x90
.LBB14_23:                              # %do.body.197.preheader
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	%r14, %rax
	leaq	392(%rax,%r13), %r14
	leaq	400(%rax,%r13), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r13, %rcx
	leaq	384(%rax,%rcx), %r13
	leaq	388(%rax,%rcx), %rbp
	.align	16, 0x90
.LBB14_24:                              # %do.body.197
                                        #   Parent Loop BB14_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	192(%rsp), %rdx
	cmpq	%rdx, (%r14)
	jne	.LBB14_26
# BB#25:                                # %lor.lhs.false.202
                                        #   in Loop: Header=BB14_24 Depth=2
	xorl	%eax, %eax
	movq	200(%rsp), %rcx
	movq	64(%rsp), %rsi          # 8-byte Reload
	cmpq	%rcx, (%rsi)
	je	.LBB14_27
.LBB14_26:                              # %if.then.208
                                        #   in Loop: Header=BB14_24 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	200(%rsp), %rcx
	callq	cmd_set_tile_colors
.LBB14_27:                              # %if.end.211
                                        #   in Loop: Header=BB14_24 Depth=2
	movl	208(%rsp), %ecx
	cmpl	%ecx, (%r13)
	jne	.LBB14_34
# BB#28:                                # %lor.lhs.false.216
                                        #   in Loop: Header=BB14_24 Depth=2
	testl	%eax, %eax
	js	.LBB14_36
# BB#29:                                # %lor.lhs.false.216
                                        #   in Loop: Header=BB14_24 Depth=2
	movl	216(%rsp), %ecx
	cmpl	%ecx, (%rbp)
	jne	.LBB14_35
	jmp	.LBB14_36
	.align	16, 0x90
.LBB14_34:                              # %if.then.222
                                        #   in Loop: Header=BB14_24 Depth=2
	testl	%eax, %eax
	js	.LBB14_38
.LBB14_35:                              # %if.then.225
                                        #   in Loop: Header=BB14_24 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	208(%rsp), %edx
	movl	216(%rsp), %ecx
	callq	cmd_set_tile_phase
.LBB14_36:                              # %if.end.229
                                        #   in Loop: Header=BB14_24 Depth=2
	testl	%eax, %eax
	js	.LBB14_38
# BB#37:                                # %do.cond.238
                                        #   in Loop: Header=BB14_24 Depth=2
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$96, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	96(%rsp), %r8           # 8-byte Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	cmd_write_rect_cmd
	testl	%eax, %eax
	jns	.LBB14_42
.LBB14_38:                              # %land.rhs.241
                                        #   in Loop: Header=BB14_24 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB14_24
.LBB14_39:                              # %error_in_rect
                                        #   in Loop: Header=BB14_13 Depth=1
	cmpl	$0, 12144(%rbx)
	je	.LBB14_43
.LBB14_40:                              # %land.lhs.true.259
                                        #   in Loop: Header=BB14_13 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB14_43
# BB#41:                                # %cleanup
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	testl	%eax, %eax
	movq	96(%rsp), %r15          # 8-byte Reload
	js	.LBB14_43
.LBB14_42:                              # %do.cond.271
                                        #   in Loop: Header=BB14_13 Depth=1
	xorl	%eax, %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r15d
	jl	.LBB14_13
.LBB14_43:                              # %cleanup.277
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	clist_strip_tile_rectangle, .Lfunc_end14-clist_strip_tile_rectangle
	.cfi_endproc

	.globl	clist_copy_mono
	.align	16, 0x90
	.type	clist_copy_mono,@function
clist_copy_mono:                        # @clist_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 304
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%r8, %rbp
	movl	%ecx, 188(%rsp)         # 4-byte Spill
	movl	%edx, %r14d
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	336(%rsp), %r15
	movq	328(%rsp), %rsi
	xorl	%eax, %eax
	cmpq	$-1, %rsi
	je	.LBB15_2
# BB#1:                                 # %cond.false
	movq	%r12, %rdi
	callq	gx_color_index2usage
.LBB15_2:                               # %cond.end
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	304(%rsp), %r13d
	xorl	%eax, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	cmpq	$-1, %r15
	je	.LBB15_4
# BB#3:                                 # %cond.false.3
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_color_index2usage
	movq	%rax, 168(%rsp)         # 8-byte Spill
.LBB15_4:                               # %cond.end.5
	movl	320(%rsp), %eax
	movl	312(%rsp), %ecx
	movl	%r13d, %edx
	orl	%ebx, %edx
	js	.LBB15_6
# BB#5:
	movl	%r13d, %r15d
	jmp	.LBB15_9
.LBB15_6:                               # %if.then
	movl	%ebx, %edx
	sarl	$31, %edx
	andl	%ebx, %edx
	leal	(%rcx,%rdx), %ecx
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	cmovsl	%r15d, %ebx
	subl	%edx, %r14d
	testl	%r13d, %r13d
	js	.LBB15_8
# BB#7:
	movl	%r13d, %r15d
	jmp	.LBB15_9
.LBB15_8:                               # %if.then.13
	addl	%r13d, %eax
	imull	188(%rsp), %r13d        # 4-byte Folded Reload
	movslq	%r13d, %rdx
	subq	%rdx, 144(%rsp)         # 8-byte Folded Spill
.LBB15_9:                               # %if.end.16
	movq	%r15, 136(%rsp)         # 8-byte Spill
	movl	832(%r12), %edx
	movl	836(%r12), %r13d
	subl	%ebx, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	subl	%r15d, %r13d
	cmpl	%r13d, %eax
	cmovlel	%eax, %r13d
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB15_46
# BB#10:                                # %if.end.16
	testl	%r13d, %r13d
	jle	.LBB15_46
# BB#11:                                # %do.end.34
	movl	12148(%r12), %eax
	testl	%eax, %eax
	js	.LBB15_46
# BB#12:                                # %if.end.38
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	cmpl	$0, 11952(%r12)
	movq	%rdx, %rbp
	je	.LBB15_14
# BB#13:                                # %if.then.39
	movl	%ebx, 232(%rsp)
	leal	-1(%rbx,%rbp), %eax
	movl	%eax, 240(%rsp)
	movl	%r15d, 236(%rsp)
	leal	-1(%r15,%r13), %eax
	movl	%eax, 244(%rsp)
	leaq	232(%rsp), %rsi
	movq	%r12, %rdi
	callq	clist_update_trans_bbox
.LBB15_14:                              # %if.end.48
	movq	208(%rsp), %rax         # 8-byte Reload
	orq	%rax, 168(%rsp)         # 8-byte Folded Spill
	addl	%r15d, %r13d
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movl	10132(%r12), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	%r14d, %ecx
	andl	$7, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	setne	%al
	addl	%ecx, %ebp
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	sarl	$3, %r14d
	movslq	%r14d, %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movzbl	%al, %eax
	leal	2(%rax,%rax), %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	cmpq	$0, 200(%rsp)           # 8-byte Folded Reload
	movl	$2, %eax
	movl	$14, %edx
	cmovel	%eax, %edx
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	sarl	%eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	(%rax,%rcx), %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	leal	(%rax,%rbx), %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movl	%ecx, %eax
	orl	$64, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%r15d, %ebx
	jmp	.LBB15_15
.LBB15_36:                              # %if.end.225.thread
                                        #   in Loop: Header=BB15_15 Depth=1
	decl	12152(%r12)
	jmp	.LBB15_37
	.align	16, 0x90
.LBB15_15:                              # %do.body.61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_16 Depth 2
                                        #     Child Loop BB15_30 Depth 2
                                        #       Child Loop BB15_31 Depth 3
	movl	%ebx, 192(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	subl	%r15d, %eax
	imull	188(%rsp), %eax         # 4-byte Folded Reload
	cltq
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	addq	120(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	cltd
	movl	132(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	10200(%r12), %rsi
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movslq	%eax, %rdx
	imulq	$1808, %rdx, %rdi       # imm = 0x710
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdi), %rbp
	incl	%edx
	imull	%ecx, %edx
	cmpl	%r13d, %edx
	cmovgl	%r13d, %edx
	movq	168(%rsp), %rax         # 8-byte Reload
	orq	%rax, 1776(%rsi,%rdi)
	subl	%ebx, %edx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	leaq	1740(%rsi,%rdi), %r13
	leaq	1742(%rsi,%rdi), %rbx
	leaq	8(%rsi,%rdi), %r15
	.align	16, 0x90
.LBB15_16:                              # %do.body.96
                                        #   Parent Loop BB15_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r13), %eax
	cmpl	$1, %eax
	jne	.LBB15_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_16 Depth=2
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB15_19
# BB#18:                                # %cond.end.106
                                        #   in Loop: Header=BB15_16 Depth=2
	movl	10192(%r12), %r14d
	testl	%r14d, %r14d
	js	.LBB15_41
	.align	16, 0x90
.LBB15_19:                              # %if.then.110
                                        #   in Loop: Header=BB15_16 Depth=2
	xorl	%r14d, %r14d
	movzwl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB15_22
# BB#20:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB15_16 Depth=2
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB15_22
# BB#21:                                # %cond.true.120
                                        #   in Loop: Header=BB15_16 Depth=2
	movl	10192(%r12), %r14d
	.align	16, 0x90
.LBB15_22:                              # %if.end.125
                                        #   in Loop: Header=BB15_16 Depth=2
	testl	%r14d, %r14d
	js	.LBB15_25
# BB#23:                                # %if.end.125
                                        #   in Loop: Header=BB15_16 Depth=2
	movq	328(%rsp), %rax
	cmpq	%rax, (%rbp)
	je	.LBB15_25
# BB#24:                                # %if.then.132
                                        #   in Loop: Header=BB15_16 Depth=2
	movl	$clist_select_color0, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	328(%rsp), %rcx
	movq	%rbp, %r8
	callq	cmd_put_color
	movl	%eax, %r14d
.LBB15_25:                              # %if.end.138
                                        #   in Loop: Header=BB15_16 Depth=2
	testl	%r14d, %r14d
	js	.LBB15_28
# BB#26:                                # %if.end.138
                                        #   in Loop: Header=BB15_16 Depth=2
	movq	336(%rsp), %rax
	cmpq	%rax, (%r15)
	je	.LBB15_28
# BB#27:                                # %if.then.147
                                        #   in Loop: Header=BB15_16 Depth=2
	movl	$clist_select_color1, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	336(%rsp), %rcx
	movq	%r15, %r8
	callq	cmd_put_color
	movl	%eax, %r14d
.LBB15_28:                              # %do.cond.154
                                        #   in Loop: Header=BB15_16 Depth=2
	testl	%r14d, %r14d
	jns	.LBB15_29
.LBB15_41:                              # %land.rhs
                                        #   in Loop: Header=BB15_16 Depth=2
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB15_16
# BB#42:                                #   in Loop: Header=BB15_15 Depth=1
	movq	176(%rsp), %r14         # 8-byte Reload
.LBB15_37:                              # %cleanup.282.thread
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	136(%rsp), %r15         # 8-byte Reload
	cmpl	$0, 12144(%r12)
	je	.LBB15_46
# BB#38:                                # %land.lhs.true.290
                                        #   in Loop: Header=BB15_15 Depth=1
	cmpl	$0, 12152(%r12)
	jne	.LBB15_46
# BB#39:                                # %cleanup.306
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	%r14, 176(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	testl	%eax, %eax
	movl	$0, %ecx
	movq	208(%rsp), %rdx         # 8-byte Reload
	cmovnsl	%edx, %ecx
	testl	%eax, %eax
	movq	112(%rsp), %r13         # 8-byte Reload
	movl	192(%rsp), %ebx         # 4-byte Reload
	js	.LBB15_46
# BB#40:                                #   in Loop: Header=BB15_15 Depth=1
	subl	%ecx, %ebx
	jmp	.LBB15_45
	.align	16, 0x90
.LBB15_29:                              #   in Loop: Header=BB15_15 Depth=1
	movq	176(%rsp), %r14         # 8-byte Reload
	movl	188(%rsp), %r15d        # 4-byte Reload
	movq	96(%rsp), %r13          # 8-byte Reload
	movl	192(%rsp), %eax         # 4-byte Reload
	movq	208(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB15_30
	.align	16, 0x90
.LBB15_56:                              # %cleanup.282
                                        #   in Loop: Header=BB15_30 Depth=2
	sarl	%ecx
	movl	192(%rsp), %eax         # 4-byte Reload
.LBB15_30:                              # %copy
                                        #   Parent Loop BB15_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_31 Depth 3
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movl	%r14d, 232(%rsp)
	movl	%eax, 236(%rsp)
	movl	%r13d, 240(%rsp)
	movl	%ecx, 244(%rsp)
	leaq	232(%rsp), %rdi
	callq	cmd_size_rect
	movq	104(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %ebx
	.align	16, 0x90
.LBB15_31:                              # %do.body.179
                                        #   Parent Loop BB15_15 Depth=1
                                        #     Parent Loop BB15_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	220(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	196(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	200(%rsp), %rdx         # 8-byte Reload
	movl	%r13d, %ecx
	movq	208(%rsp), %r8          # 8-byte Reload
	movl	%r15d, %r9d
	callq	cmd_put_bits
	testl	%eax, %eax
	jns	.LBB15_47
# BB#32:                                # %land.rhs.189
                                        #   in Loop: Header=BB15_31 Depth=3
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB15_31
# BB#33:                                # %do.end.194
                                        #   in Loop: Header=BB15_30 Depth=2
	cmpl	$-13, %eax
	jne	.LBB15_37
# BB#34:                                # %if.then.207
                                        #   in Loop: Header=BB15_30 Depth=2
	movq	208(%rsp), %rcx         # 8-byte Reload
	cmpl	$1, %ecx
	movq	200(%rsp), %rsi         # 8-byte Reload
	jg	.LBB15_56
# BB#35:                                # %if.else
                                        #   in Loop: Header=BB15_15 Depth=1
	incl	12152(%r12)
	movq	336(%rsp), %rbx
	movq	%rbx, 32(%rsp)
	movq	328(%rsp), %rbp
	movq	%rbp, 24(%rsp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	192(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	%r15d, %ecx
	movl	%r14d, %r9d
	callq	clist_copy_mono
	testl	%eax, %eax
	js	.LBB15_36
# BB#43:                                # %if.end.225
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	%rbx, 32(%rsp)
	movq	%rbp, 24(%rsp)
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	200(%rsp), %rsi         # 8-byte Reload
	movl	68(%rsp), %edx          # 4-byte Reload
	movl	%r15d, %ecx
	movl	64(%rsp), %r9d          # 4-byte Reload
	callq	clist_copy_mono
	decl	12152(%r12)
	testl	%eax, %eax
	js	.LBB15_37
# BB#44:                                # %cleanup.282.thread199
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	136(%rsp), %r15         # 8-byte Reload
	movq	112(%rsp), %r13         # 8-byte Reload
	movl	192(%rsp), %ebx         # 4-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB15_45
	.align	16, 0x90
.LBB15_47:                              # %if.end.234
                                        #   in Loop: Header=BB15_15 Depth=1
	addl	$144, %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB15_49
# BB#48:                                # %if.then.239
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	224(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 224(%rsp)
	movb	$6, (%rcx)
	movq	224(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 224(%rsp)
	movl	84(%rsp), %edx          # 4-byte Reload
	movb	%dl, (%rcx)
.LBB15_49:                              # %if.end.243
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	224(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 224(%rsp)
	movb	%al, (%rcx)
	movq	224(%rsp), %rax
	movb	$0, (%rax)
	movq	224(%rsp), %rsi
	incq	%rsi
	movq	%rsi, 224(%rsp)
	movl	192(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %eax
	orl	%r14d, %eax
	cmpl	$127, %eax
	movq	136(%rsp), %r15         # 8-byte Reload
	jbe	.LBB15_50
# BB#51:                                # %cond.false.257
                                        #   in Loop: Header=BB15_15 Depth=1
	movl	%r14d, %edi
	callq	cmd_put_w
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB15_52
	.align	16, 0x90
.LBB15_50:                              # %cond.true.250
                                        #   in Loop: Header=BB15_15 Depth=1
	movb	%r14b, (%rsi)
	movq	224(%rsp), %rax
	movb	%bl, 1(%rax)
	movq	224(%rsp), %rax
	addq	$2, %rax
.LBB15_52:                              # %cond.end.261
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	%rax, 224(%rsp)
	movl	%edx, %ecx
	orl	%r13d, %ecx
	cmpl	$127, %ecx
	jbe	.LBB15_53
# BB#55:                                # %cond.false.274
                                        #   in Loop: Header=BB15_15 Depth=1
	movl	%r13d, %edi
	movq	%rax, %rsi
	movq	%rdx, %rbp
	callq	cmd_put_w
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rbp, %rdx
	jmp	.LBB15_54
	.align	16, 0x90
.LBB15_53:                              # %cond.true.267
                                        #   in Loop: Header=BB15_15 Depth=1
	movb	%r13b, (%rax)
	movq	224(%rsp), %rax
	movb	%dl, 1(%rax)
.LBB15_54:                              # %cleanup.cont
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	movups	232(%rsp), %xmm0
	movups	%xmm0, 1720(%rax,%rcx)
.LBB15_45:                              # %do.cond.312
                                        #   in Loop: Header=BB15_15 Depth=1
	addl	%edx, %ebx
	xorl	%eax, %eax
	cmpl	%r13d, %ebx
	jl	.LBB15_15
.LBB15_46:                              # %cleanup.320
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	clist_copy_mono, .Lfunc_end15-clist_copy_mono
	.cfi_endproc

	.globl	clist_copy_planes
	.align	16, 0x90
	.type	clist_copy_planes,@function
clist_copy_planes:                      # @clist_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp134:
	.cfi_def_cfa_offset 352
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movl	360(%rsp), %r10d
	movzwl	108(%rbx), %eax
	xorl	%esi, %esi
	xorl	%edx, %edx
	idivl	100(%rbx)
	movl	%eax, %r15d
	testl	%r10d, %r10d
	jle	.LBB16_60
# BB#1:                                 # %entry
	movl	368(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB16_60
# BB#2:                                 # %do.body.5
	movl	352(%rsp), %edx
	movl	%edx, %edi
	orl	%r9d, %edi
	js	.LBB16_4
# BB#3:
	movl	%edx, %ebp
	jmp	.LBB16_7
.LBB16_4:                               # %if.then.8
	movl	%r9d, %edi
	sarl	$31, %edi
	andl	%r9d, %edi
	leal	(%r10,%rdi), %r10d
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	cmovsl	%ebp, %r9d
	subl	%edi, %r12d
	testl	%edx, %edx
	js	.LBB16_6
# BB#5:
	movl	%edx, %ebp
	jmp	.LBB16_7
.LBB16_6:                               # %if.then.15
	addl	%edx, %eax
	imull	%ecx, %edx
	movslq	%edx, %rdx
	subq	%rdx, 144(%rsp)         # 8-byte Folded Spill
.LBB16_7:                               # %if.end.18
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movq	%r9, 192(%rsp)          # 8-byte Spill
	movq	%r9, %rdx
	movl	832(%rbx), %r14d
	movl	836(%rbx), %r9d
	subl	%edx, %r14d
	cmpl	%r14d, %r10d
	cmovlel	%r10d, %r14d
	subl	%ebp, %r9d
	cmpl	%r9d, %eax
	cmovlel	%eax, %r9d
	testl	%r14d, %r14d
	jle	.LBB16_60
# BB#8:                                 # %if.end.18
	testl	%r9d, %r9d
	jle	.LBB16_60
# BB#9:                                 # %do.end.41
	movl	12148(%rbx), %esi
	testl	%esi, %esi
	js	.LBB16_60
# BB#10:                                # %if.end.46
	movq	%r8, 232(%rsp)          # 8-byte Spill
	cmpl	$0, 11952(%rbx)
	movq	%rdx, %r13
	je	.LBB16_12
# BB#11:                                # %if.then.47
	movl	%r13d, 280(%rsp)
	leal	-1(%r13,%r14), %eax
	movl	%eax, 288(%rsp)
	movl	%ebp, 284(%rsp)
	leal	-1(%rbp,%r9), %eax
	movl	%eax, 292(%rsp)
	leaq	280(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ecx, 240(%rsp)         # 4-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	callq	clist_update_trans_bbox
	movq	104(%rsp), %r9          # 8-byte Reload
	movl	240(%rsp), %ecx         # 4-byte Reload
.LBB16_12:                              # %if.end.56
	addl	%ebp, %r9d
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	10132(%rbx), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	xorl	%r8d, %r8d
	movl	$8, %eax
	xorl	%edx, %edx
	idivl	%r15d
	movl	%eax, %edi
	movl	%r12d, %eax
	cltd
	idivl	%edi
	movl	%edx, %r11d
	movq	%r11, 160(%rsp)         # 8-byte Spill
	leal	(%r14,%r11), %edi
	movl	%edi, 188(%rsp)         # 4-byte Spill
	movslq	%eax, %r10
	movq	%r10, 88(%rsp)          # 8-byte Spill
	movl	%edi, %edx
	imull	%r15d, %edx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	leal	7(%rdx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rdx,%rax), %esi
	sarl	$3, %esi
	addl	$7, %esi
	andl	$-8, %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movl	$4096, %eax             # imm = 0x1000
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%edi, %esi
	sarl	%esi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	subl	%esi, %edi
	movl	%edi, 44(%rsp)          # 4-byte Spill
	testl	%r11d, %r11d
	setne	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	376(%rsp), %eax
	movl	%eax, %edi
	cmpl	$127, %edi
	seta	%al
	cmpq	$0, 232(%rsp)           # 8-byte Folded Reload
	movl	$2, %r14d
	movl	$14, %edx
	cmovel	%r14d, %edx
	cmpl	$1, %r15d
	cmovnel	%r8d, %edx
	movl	%edx, 232(%rsp)         # 4-byte Spill
	movl	%edi, %edx
	orl	$128, %edx
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movl	%edi, %edx
	shrl	$7, %edx
	movl	%edx, 112(%rsp)         # 4-byte Spill
	movzbl	%al, %eax
	incl	%eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movl	%edi, %eax
	imull	%ecx, %eax
	cltq
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leaq	(%r10,%rax), %rax
	movq	144(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
	negl	%eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	(%rsi,%r11), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	leal	(%rsi,%r13), %eax
	movq	%r13, 192(%rsp)         # 8-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	leal	64(%r11), %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movl	%ebp, %r13d
	.align	16, 0x90
.LBB16_13:                              # %do.body.70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_14 Depth 2
                                        #     Child Loop BB16_29 Depth 2
                                        #       Child Loop BB16_44 Depth 3
	movl	%r13d, %eax
	subl	%ebp, %eax
	imull	%ecx, %eax
	movl	%ecx, %ebp
	cltq
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	addq	88(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	cltd
	idivl	100(%rbx)
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	cltd
	movl	100(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	10200(%rbx), %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movslq	%eax, %r14
	imulq	$1808, %r14, %rax       # imm = 0x710
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rax), %r15
	incl	%r14d
	imull	%ecx, %r14d
	cmpl	%r9d, %r14d
	cmovgl	%r9d, %r14d
	subl	%r13d, %r14d
	leaq	1740(%rdx,%rax), %r12
	leaq	1742(%rdx,%rax), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB16_14:                              # %do.body.109
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB16_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB16_14 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB16_17
# BB#16:                                # %cond.end.119
                                        #   in Loop: Header=BB16_14 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	js	.LBB16_20
	.align	16, 0x90
.LBB16_17:                              # %if.then.123
                                        #   in Loop: Header=BB16_14 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	movzwl	(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB16_21
# BB#18:                                # %land.lhs.true.128
                                        #   in Loop: Header=BB16_14 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB16_21
# BB#19:                                # %do.cond.139
                                        #   in Loop: Header=BB16_14 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB16_21
.LBB16_20:                              # %land.rhs
                                        #   in Loop: Header=BB16_14 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB16_14
	jmp	.LBB16_53
	.align	16, 0x90
.LBB16_21:                              # %if.end.151
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	204(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r14d
	cmovgl	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB16_22
# BB#24:                                # %if.end.182
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	10224(%rbx), %rax
	subq	10216(%rbx), %rax
	movl	%r14d, %ecx
	imull	80(%rsp), %ecx          # 4-byte Folded Reload
	movslq	100(%rbx), %rdx
	movslq	%ecx, %rcx
	imulq	%rdx, %rcx
	addq	$256, %rcx              # imm = 0x100
	cmpq	%rcx, %rax
	jge	.LBB16_26
# BB#25:                                # %if.then.192
                                        #   in Loop: Header=BB16_13 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmd_write_buffer
.LBB16_26:                              # %if.end.194
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 280(%rsp)
	movl	%r13d, 284(%rsp)
	movl	188(%rsp), %r12d        # 4-byte Reload
	movl	%r12d, 288(%rsp)
	movl	%r14d, 292(%rsp)
	leaq	280(%rsp), %rdi
	callq	cmd_size_rect
	movl	%eax, %edx
	addl	76(%rsp), %edx          # 4-byte Folded Reload
	cmpl	$16384, 376(%rsp)       # imm = 0x4000
	movl	72(%rsp), %eax          # 4-byte Reload
	jb	.LBB16_28
# BB#27:                                # %cond.false.212
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	376(%rsp), %edi
	movl	%edx, 204(%rsp)         # 4-byte Spill
	callq	cmd_size_w
	movl	204(%rsp), %edx         # 4-byte Reload
.LBB16_28:                              # %cond.end.216
                                        #   in Loop: Header=BB16_13 Depth=1
	addl	%eax, %edx
	movl	%edx, 204(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	orl	%ecx, %eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	orl	%r12d, %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r13), %eax
	movq	%r13, 216(%rsp)         # 8-byte Spill
	imull	%ebp, %eax
	cltq
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB16_29:                              # %do.body.219
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_44 Depth 3
	leaq	268(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	232(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%edx, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	movl	%r14d, %r8d
	movl	%ebp, %r9d
	callq	cmd_put_bits
	testl	%eax, %eax
	js	.LBB16_49
# BB#30:                                # %if.end.236
                                        #   in Loop: Header=BB16_29 Depth=2
	movq	272(%rsp), %rsi
	movq	160(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB16_32
# BB#31:                                # %if.then.238
                                        #   in Loop: Header=BB16_29 Depth=2
	movb	$6, (%rsi)
	movl	156(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 1(%rsi)
	addq	$2, %rsi
.LBB16_32:                              # %if.end.242
                                        #   in Loop: Header=BB16_29 Depth=2
	movq	192(%rsp), %r12         # 8-byte Reload
	movl	376(%rsp), %edi
	addl	$144, %eax
	cmpl	$127, %edi
	movb	%al, (%rsi)
	jbe	.LBB16_33
# BB#34:                                # %cond.false.252
                                        #   in Loop: Header=BB16_29 Depth=2
	cmpl	$16383, %edi            # imm = 0x3FFF
	jbe	.LBB16_35
# BB#36:                                # %cond.false.261
                                        #   in Loop: Header=BB16_29 Depth=2
	incq	%rsi
	callq	cmd_put_w
	movq	%rax, %rsi
	jmp	.LBB16_37
	.align	16, 0x90
.LBB16_33:                              # %cond.true.249
                                        #   in Loop: Header=BB16_29 Depth=2
	movb	%dil, 1(%rsi)
	addq	$2, %rsi
	jmp	.LBB16_37
.LBB16_35:                              # %cond.true.255
                                        #   in Loop: Header=BB16_29 Depth=2
	movl	116(%rsp), %eax         # 4-byte Reload
	movb	%al, 1(%rsi)
	movl	112(%rsp), %eax         # 4-byte Reload
	movb	%al, 2(%rsi)
	addq	$3, %rsi
.LBB16_37:                              # %cond.end.265
                                        #   in Loop: Header=BB16_29 Depth=2
	cmpl	$127, 184(%rsp)         # 4-byte Folded Reload
	jbe	.LBB16_38
# BB#39:                                # %cond.false.278
                                        #   in Loop: Header=BB16_29 Depth=2
	movl	%r12d, %edi
	callq	cmd_put_w
	movq	216(%rsp), %r12         # 8-byte Reload
	movl	%r12d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rax, %rsi
	jmp	.LBB16_40
	.align	16, 0x90
.LBB16_38:                              # %cond.true.271
                                        #   in Loop: Header=BB16_29 Depth=2
	movb	%r12b, (%rsi)
	movq	216(%rsp), %r12         # 8-byte Reload
	movb	%r12b, 1(%rsi)
	addq	$2, %rsi
.LBB16_40:                              # %cond.end.282
                                        #   in Loop: Header=BB16_29 Depth=2
	cmpl	$127, 180(%rsp)         # 4-byte Folded Reload
	movl	188(%rsp), %edi         # 4-byte Reload
	jbe	.LBB16_41
# BB#42:                                # %cond.false.295
                                        #   in Loop: Header=BB16_29 Depth=2
	movq	%r12, 216(%rsp)         # 8-byte Spill
	callq	cmd_put_w
	movl	%r14d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB16_43
	.align	16, 0x90
.LBB16_41:                              # %cond.true.288
                                        #   in Loop: Header=BB16_29 Depth=2
	movq	%r12, 216(%rsp)         # 8-byte Spill
	movb	%dil, (%rsi)
	movb	%r14b, 1(%rsi)
.LBB16_43:                              # %for.cond.preheader
                                        #   in Loop: Header=BB16_29 Depth=2
	cmpl	$2, 100(%rbx)
	movl	$2, %r13d
	movq	168(%rsp), %r12         # 8-byte Reload
	jl	.LBB16_57
	.align	16, 0x90
.LBB16_44:                              # %for.body
                                        #   Parent Loop BB16_13 Depth=1
                                        #     Parent Loop BB16_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	252(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	232(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$1, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	240(%rsp), %rcx         # 8-byte Reload
	movl	%r14d, %r8d
	movl	%ebp, %r9d
	callq	cmd_put_bits
	testl	%eax, %eax
	js	.LBB16_46
# BB#45:                                # %if.then.328
                                        #   in Loop: Header=BB16_44 Depth=3
	movq	256(%rsp), %rcx
	movb	%al, (%rcx)
.LBB16_46:                              # %if.end.330
                                        #   in Loop: Header=BB16_44 Depth=3
	movl	252(%rsp), %ecx
	addl	%ecx, 268(%rsp)
	testl	%eax, %eax
	js	.LBB16_48
# BB#47:                                # %if.end.330
                                        #   in Loop: Header=BB16_44 Depth=3
	movslq	100(%rbx), %rcx
	addq	224(%rsp), %r12         # 8-byte Folded Reload
	cmpq	%rcx, %r13
	leaq	1(%r13), %r13
	jl	.LBB16_44
.LBB16_48:                              # %cleanup.333
                                        #   in Loop: Header=BB16_29 Depth=2
	testl	%eax, %eax
	jns	.LBB16_57
.LBB16_49:                              # %land.rhs.337
                                        #   in Loop: Header=BB16_29 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	movl	%eax, %esi
	testl	%esi, %esi
	movl	204(%rsp), %edx         # 4-byte Reload
	jns	.LBB16_29
# BB#50:                                # %do.end.342
                                        #   in Loop: Header=BB16_13 Depth=1
	cmpl	$-13, %esi
	jne	.LBB16_51
.LBB16_57:                              # %if.end.352
                                        #   in Loop: Header=BB16_13 Depth=1
	movups	280(%rsp), %xmm0
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	movups	%xmm0, 1720(%rax,%rcx)
	movq	216(%rsp), %r13         # 8-byte Reload
	jmp	.LBB16_58
	.align	16, 0x90
.LBB16_22:                              # %if.then.161
                                        #   in Loop: Header=BB16_13 Depth=1
	incl	12152(%rbx)
	movl	376(%rsp), %r14d
	movl	%r14d, 24(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	208(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	160(%rsp), %rdx         # 8-byte Reload
	movl	%ebp, %ecx
	movq	192(%rsp), %r9          # 8-byte Reload
	callq	clist_copy_planes
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB16_23
# BB#52:                                # %if.end.173
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	%r14d, 24(%rsp)
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	%ebp, %ecx
	movl	36(%rsp), %r9d          # 4-byte Reload
	callq	clist_copy_planes
	movl	%eax, %esi
	decl	12152(%rbx)
	movl	$1, %r14d
	testl	%esi, %esi
	js	.LBB16_53
.LBB16_58:                              # %cleanup.373.thread234
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	%ebp, %ecx
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	jmp	.LBB16_59
.LBB16_23:                              # %if.end.173.thread
                                        #   in Loop: Header=BB16_13 Depth=1
	decl	12152(%rbx)
	movl	$1, %r14d
	jmp	.LBB16_53
.LBB16_51:                              #   in Loop: Header=BB16_13 Depth=1
	movq	216(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB16_53:                              # %error_in_rect
                                        #   in Loop: Header=BB16_13 Depth=1
	cmpl	$0, 12144(%rbx)
	je	.LBB16_60
# BB#54:                                # %land.lhs.true.357
                                        #   in Loop: Header=BB16_13 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB16_60
# BB#55:                                # %cleanup.373
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	%rbx, %rdi
	callq	clist_VMerror_recover_flush
	movl	%eax, %esi
	testl	%esi, %esi
	movl	$0, %eax
	cmovnsl	%r14d, %eax
	testl	%esi, %esi
	movl	%ebp, %ecx
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	js	.LBB16_60
# BB#56:                                #   in Loop: Header=BB16_13 Depth=1
	subl	%eax, %r13d
.LBB16_59:                              # %do.cond.387
                                        #   in Loop: Header=BB16_13 Depth=1
	addl	%r14d, %r13d
	xorl	%esi, %esi
	cmpl	%r9d, %r13d
	jl	.LBB16_13
.LBB16_60:                              # %cleanup.395
	movl	%esi, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	clist_copy_planes, .Lfunc_end16-clist_copy_planes
	.cfi_endproc

	.globl	clist_copy_color
	.align	16, 0x90
	.type	clist_copy_color,@function
clist_copy_color:                       # @clist_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp147:
	.cfi_def_cfa_offset 272
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%r12d, 184(%rsp)        # 4-byte Spill
	movl	%edx, %r14d
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movl	288(%rsp), %eax
	movl	280(%rsp), %edx
	movl	272(%rsp), %esi
	movzwl	12252(%rbx), %ecx
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movb	100(%rbx), %cl
	movl	$1, %edi
	shlq	%cl, %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movl	%esi, %ecx
	orl	%r9d, %ecx
	js	.LBB17_2
# BB#1:
	movl	%esi, %edi
	jmp	.LBB17_5
.LBB17_2:                               # %if.then
	movl	%r9d, %ecx
	sarl	$31, %ecx
	andl	%r9d, %ecx
	leal	(%rdx,%rcx), %edx
	xorl	%edi, %edi
	testl	%r9d, %r9d
	cmovsl	%edi, %r9d
	subl	%ecx, %r14d
	testl	%esi, %esi
	js	.LBB17_4
# BB#3:
	movl	%esi, %edi
	jmp	.LBB17_5
.LBB17_4:                               # %if.then.10
	addl	%esi, %eax
	imull	%r12d, %esi
	movslq	%esi, %rcx
	subq	%rcx, 120(%rsp)         # 8-byte Folded Spill
.LBB17_5:                               # %if.end.13
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movl	832(%rbx), %ebp
	movl	836(%rbx), %esi
	subl	%r9d, %ebp
	cmpl	%ebp, %edx
	cmovlel	%edx, %ebp
	subl	%edi, %esi
	cmpl	%esi, %eax
	cmovlel	%eax, %esi
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB17_41
# BB#6:                                 # %if.end.13
	testl	%esi, %esi
	jle	.LBB17_41
# BB#7:                                 # %do.end.35
	movl	12148(%rbx), %eax
	testl	%eax, %eax
	js	.LBB17_41
# BB#8:                                 # %if.end.41
	imull	180(%rsp), %r14d        # 4-byte Folded Reload
	cmpl	$0, 11952(%rbx)
	movq	%r9, %r15
	je	.LBB17_10
# BB#9:                                 # %if.then.42
	movl	%r15d, 200(%rsp)
	leal	-1(%r15,%rbp), %eax
	movl	%eax, 208(%rsp)
	movl	%edi, 204(%rsp)
	leal	-1(%rdi,%rsi), %eax
	movl	%eax, 212(%rsp)
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	leaq	200(%rsp), %rsi
	movq	%rdi, %r13
	movq	%rbx, %rdi
	callq	clist_update_trans_bbox
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdi
.LBB17_10:                              # %if.end.51
	decq	128(%rsp)               # 8-byte Folded Spill
	addl	%edi, %esi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	10132(%rbx), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%r14d, %eax
	andl	$7, %eax
	xorl	%edx, %edx
	movl	180(%rsp), %r13d        # 4-byte Reload
	divl	%r13d
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	(%rbp,%rax), %edx
	movl	%edx, 140(%rsp)         # 4-byte Spill
	sarl	$3, %r14d
	movslq	%r14d, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	setne	%cl
	movzbl	%cl, %ecx
	leal	1(%rcx,%rcx), %ecx
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	imull	%edx, %r13d
	movl	%r13d, 180(%rsp)        # 4-byte Spill
	movl	%edx, %ecx
	sarl	%ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leal	(%rcx,%rax), %ebp
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	leal	(%rcx,%r15), %ebp
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movq	%r15, 168(%rsp)         # 8-byte Spill
	subl	%ecx, %edx
	movl	%edx, 44(%rsp)          # 4-byte Spill
	orl	$64, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	%edi, %ebp
	.align	16, 0x90
.LBB17_11:                              # %do.body.64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_12 Depth 2
                                        #     Child Loop BB17_21 Depth 2
                                        #     Child Loop BB17_25 Depth 2
                                        #       Child Loop BB17_26 Depth 3
	movl	%ebp, 164(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	subl	%edi, %eax
	imull	%r12d, %eax
	cltq
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	addq	80(%rsp), %r15          # 8-byte Folded Reload
	movl	%ebp, %eax
	cltd
	movl	92(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	movq	10200(%rbx), %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movslq	%eax, %r13
	imulq	$1808, %r13, %rdi       # imm = 0x710
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rdi), %r14
	incl	%r13d
	imull	%ecx, %r13d
	cmpl	%esi, %r13d
	cmovgl	%esi, %r13d
	subl	%ebp, %r13d
	movq	128(%rsp), %rax         # 8-byte Reload
	orq	%rax, 1776(%rdx,%rdi)
	leaq	1740(%rdx,%rdi), %rbp
	leaq	1742(%rdx,%rdi), %r12
	.align	16, 0x90
.LBB17_12:                              # %do.body.96
                                        #   Parent Loop BB17_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB17_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB17_12 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB17_15
# BB#14:                                # %cond.end.106
                                        #   in Loop: Header=BB17_12 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	js	.LBB17_18
	.align	16, 0x90
.LBB17_15:                              # %if.then.110
                                        #   in Loop: Header=BB17_12 Depth=2
	movzwl	(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB17_19
# BB#16:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB17_12 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB17_19
# BB#17:                                # %do.cond.126
                                        #   in Loop: Header=BB17_12 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB17_19
.LBB17_18:                              # %land.rhs
                                        #   in Loop: Header=BB17_12 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB17_12
	jmp	.LBB17_32
	.align	16, 0x90
.LBB17_19:                              # %if.end.138
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	144(%rsp), %rcx         # 8-byte Reload
	cmpl	$0, 1744(%rax,%rcx)
	je	.LBB17_24
# BB#20:                                # %do.body.142.preheader
                                        #   in Loop: Header=BB17_11 Depth=1
	leaq	1744(%rax,%rcx), %r12
	leaq	1760(%rax,%rcx), %rbp
	.align	16, 0x90
.LBB17_21:                              # %do.body.142
                                        #   Parent Loop BB17_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB17_22
# BB#36:                                # %cond.end.150
                                        #   in Loop: Header=BB17_21 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB17_23
# BB#37:                                # %land.rhs.155
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB17_21
	jmp	.LBB17_32
.LBB17_22:                              # %cond.end.150.thread
                                        #   in Loop: Header=BB17_11 Depth=1
	movb	$14, (%rax)
.LBB17_23:                              # %cleanup.thread
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	$0, (%r12)
.LBB17_24:                              # %copy
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	140(%rsp), %eax         # 4-byte Reload
	jmp	.LBB17_25
	.align	16, 0x90
.LBB17_51:                              # %cleanup.282
                                        #   in Loop: Header=BB17_25 Depth=2
	sarl	%r13d
	movl	140(%rsp), %eax         # 4-byte Reload
	movq	168(%rsp), %rcx         # 8-byte Reload
.LBB17_25:                              # %copy
                                        #   Parent Loop BB17_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_26 Depth 3
	movl	%ecx, 200(%rsp)
	movl	164(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 204(%rsp)
	movl	%eax, 208(%rsp)
	movl	%r13d, 212(%rsp)
	leaq	200(%rsp), %rdi
	callq	cmd_size_rect
	movl	%eax, %r12d
	addl	108(%rsp), %r12d        # 4-byte Folded Reload
	.align	16, 0x90
.LBB17_26:                              # %do.body.182
                                        #   Parent Loop BB17_11 Depth=1
                                        #     Parent Loop BB17_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	188(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%r12d, (%rsp)
	movl	$2, 8(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movl	180(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r8d
	movl	184(%rsp), %r9d         # 4-byte Reload
	callq	cmd_put_bits
	testl	%eax, %eax
	jns	.LBB17_42
# BB#27:                                # %land.rhs.190
                                        #   in Loop: Header=BB17_26 Depth=3
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB17_26
# BB#28:                                # %do.end.195
                                        #   in Loop: Header=BB17_25 Depth=2
	cmpl	$-13, %eax
	jne	.LBB17_32
# BB#29:                                # %if.then.208
                                        #   in Loop: Header=BB17_25 Depth=2
	cmpl	$1, %r13d
	jg	.LBB17_51
# BB#30:                                # %if.else
                                        #   in Loop: Header=BB17_11 Depth=1
	incl	12152(%rbx)
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	164(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, (%rsp)
	movl	$1, 16(%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	184(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %ecx
	movq	168(%rsp), %r9          # 8-byte Reload
	callq	clist_copy_color
	testl	%eax, %eax
	js	.LBB17_31
# BB#38:                                # %if.end.226
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	$1, 16(%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	52(%rsp), %edx          # 4-byte Reload
	movl	%r14d, %ecx
	movl	48(%rsp), %r9d          # 4-byte Reload
	callq	clist_copy_color
	decl	12152(%rbx)
	testl	%eax, %eax
	js	.LBB17_32
# BB#39:                                # %cleanup.282.thread191
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	184(%rsp), %r12d        # 4-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movl	164(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB17_40
	.align	16, 0x90
.LBB17_42:                              # %if.end.236
                                        #   in Loop: Header=BB17_11 Depth=1
	addl	$160, %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB17_44
# BB#43:                                # %if.then.241
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	192(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 192(%rsp)
	movb	$6, (%rcx)
	movq	192(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 192(%rsp)
	movl	68(%rsp), %edx          # 4-byte Reload
	movb	%dl, (%rcx)
.LBB17_44:                              # %if.end.245
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	192(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 192(%rsp)
	movb	%al, (%rcx)
	movl	164(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %eax
	movq	168(%rsp), %rdi         # 8-byte Reload
	orl	%edi, %eax
	cmpl	$127, %eax
	movq	192(%rsp), %rsi
	movl	184(%rsp), %r12d        # 4-byte Reload
	jbe	.LBB17_45
# BB#46:                                # %cond.false.257
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	%rdi, %r14
	callq	cmd_put_w
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%r14, %rdi
	jmp	.LBB17_47
	.align	16, 0x90
.LBB17_45:                              # %cond.true.251
                                        #   in Loop: Header=BB17_11 Depth=1
	movb	%dil, (%rsi)
	movq	192(%rsp), %rax
	movb	%bpl, 1(%rax)
	movq	192(%rsp), %rax
	addq	$2, %rax
.LBB17_47:                              # %cond.end.261
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	140(%rsp), %edx         # 4-byte Reload
	movq	%rax, 192(%rsp)
	movl	%r13d, %ecx
	orl	%edx, %ecx
	cmpl	$127, %ecx
	jbe	.LBB17_48
# BB#50:                                # %cond.false.274
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movl	%edx, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movl	%r13d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB17_49
	.align	16, 0x90
.LBB17_48:                              # %cond.true.267
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movb	%dl, (%rax)
	movq	192(%rsp), %rax
	movb	%r13b, 1(%rax)
.LBB17_49:                              # %cleanup.cont.289
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	144(%rsp), %rcx         # 8-byte Reload
	movups	200(%rsp), %xmm0
	movups	%xmm0, 1720(%rax,%rcx)
	jmp	.LBB17_40
.LBB17_31:                              # %if.end.226.thread
                                        #   in Loop: Header=BB17_11 Depth=1
	decl	12152(%rbx)
	.align	16, 0x90
.LBB17_32:                              # %cleanup.282.thread
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
	cmpl	$0, 12144(%rbx)
	movl	164(%rsp), %ebp         # 4-byte Reload
	je	.LBB17_41
# BB#33:                                # %land.lhs.true.291
                                        #   in Loop: Header=BB17_11 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB17_41
# BB#34:                                # %cleanup.307
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	testl	%eax, %eax
	movl	$0, %ecx
	cmovnsl	%r13d, %ecx
	testl	%eax, %eax
	movl	184(%rsp), %r12d        # 4-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	js	.LBB17_41
# BB#35:                                #   in Loop: Header=BB17_11 Depth=1
	subl	%ecx, %ebp
.LBB17_40:                              # %do.cond.313
                                        #   in Loop: Header=BB17_11 Depth=1
	addl	%r13d, %ebp
	xorl	%eax, %eax
	cmpl	%esi, %ebp
	jl	.LBB17_11
.LBB17_41:                              # %cleanup.321
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	clist_copy_color, .Lfunc_end17-clist_copy_color
	.cfi_endproc

	.globl	clist_copy_alpha_hl_color
	.align	16, 0x90
	.type	clist_copy_alpha_hl_color,@function
clist_copy_alpha_hl_color:              # @clist_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp157:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp158:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp160:
	.cfi_def_cfa_offset 288
.Ltmp161:
	.cfi_offset %rbx, -56
.Ltmp162:
	.cfi_offset %r12, -48
.Ltmp163:
	.cfi_offset %r13, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%ecx, %r13d
	movl	%edx, %r14d
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movl	320(%rsp), %ebp
	movl	%ebp, %edi
	callq	ilog2
	movl	%eax, %r9d
	movb	100(%rbx), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	cmpl	$2, %ebp
	jl	.LBB18_2
# BB#1:                                 # %land.lhs.true
	movl	$-1, %eax
	testb	$64, 12168(%rbx)
	jne	.LBB18_63
.LBB18_2:                               # %do.body.2
	movl	304(%rsp), %eax
	movl	296(%rsp), %ecx
	movl	288(%rsp), %edx
	movl	%edx, %esi
	movq	%r15, %rbp
	orl	%ebp, %esi
	js	.LBB18_4
# BB#3:
	movl	%edx, %r8d
	jmp	.LBB18_7
.LBB18_4:                               # %if.then.4
	movl	%ebp, %esi
	sarl	$31, %esi
	andl	%ebp, %esi
	leal	(%rcx,%rsi), %ecx
	xorl	%r8d, %r8d
	testl	%ebp, %ebp
	cmovsl	%r8d, %ebp
	subl	%esi, %r14d
	testl	%edx, %edx
	js	.LBB18_6
# BB#5:
	movl	%edx, %r8d
	jmp	.LBB18_7
.LBB18_6:                               # %if.then.10
	addl	%edx, %eax
	imull	%r13d, %edx
	movslq	%edx, %rdx
	subq	%rdx, 120(%rsp)         # 8-byte Folded Spill
.LBB18_7:                               # %if.end.13
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movl	832(%rbx), %edx
	movl	836(%rbx), %r15d
	subl	%ebp, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	subl	%r8d, %r15d
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB18_63
# BB#8:                                 # %if.end.13
	testl	%r15d, %r15d
	jle	.LBB18_63
# BB#9:                                 # %do.end.31
	movb	%r9b, %cl
	shll	%cl, %r14d
	movl	12148(%rbx), %eax
	testl	%eax, %eax
	js	.LBB18_63
# BB#10:                                # %if.end.36
	cmpl	$0, 11952(%rbx)
	movq	%rdx, %r12
	je	.LBB18_12
# BB#11:                                # %if.then.37
	movl	%ebp, 176(%rsp)
	leal	-1(%rbp,%r12), %eax
	movl	%eax, 184(%rsp)
	movl	%r8d, 180(%rsp)
	leal	-1(%r8,%r15), %eax
	movl	%eax, 188(%rsp)
	leaq	176(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movl	%r9d, %ebp
	callq	clist_update_trans_bbox
	movl	%ebp, %r9d
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
.LBB18_12:                              # %if.end.46
	decq	136(%rsp)               # 8-byte Folded Spill
	movl	%r8d, 192(%rsp)
	movl	%r15d, 196(%rsp)
	addl	%r8d, %r15d
	movl	%r15d, 200(%rsp)
	movl	10132(%rbx), %edi
	movl	%edi, 204(%rsp)
	leal	-1(%rdi,%r15), %eax
	subl	%r8d, %eax
	cltd
	idivl	%edi
	movl	%eax, 228(%rsp)
	movl	%r14d, %edx
	andl	$7, %edx
	movb	%r9b, %cl
	shrl	%cl, %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	addl	%edx, %r12d
	movq	%r12, 144(%rsp)         # 8-byte Spill
	sarl	$3, %r14d
	movslq	%r14d, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testl	%edx, %edx
	setne	%al
	movzbl	%al, %eax
	leal	2(%rax,%rax), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	%r12d, %r14d
	movb	%r9b, %cl
	shll	%cl, %r14d
	movl	%r12d, %eax
	sarl	%eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leal	(%rax,%rdx), %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	leal	(%rax,%rbp), %ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movl	%r12d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	leal	64(%rdx), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%r8d, %ecx
	.align	16, 0x90
.LBB18_13:                              # %do.body.59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_14 Depth 2
                                        #     Child Loop BB18_23 Depth 2
                                        #     Child Loop BB18_27 Depth 2
                                        #     Child Loop BB18_30 Depth 2
                                        #     Child Loop BB18_40 Depth 2
                                        #       Child Loop BB18_41 Depth 3
	movl	%ecx, %eax
	subl	%r8d, %eax
	imull	%r13d, %eax
	cltq
	movq	120(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %r12
	addq	104(%rsp), %r12         # 8-byte Folded Reload
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 212(%rsp)
	movq	10200(%rbx), %rdx
	cltq
	imulq	$1808, %rax, %rbp       # imm = 0x710
	leaq	(%rdx,%rbp), %rsi
	movq	%rsi, 216(%rsp)
	incl	%eax
	imull	%edi, %eax
	movl	%eax, 224(%rsp)
	cmpl	%r15d, %eax
	cmovgl	%r15d, %eax
	subl	%ecx, %eax
	movl	%eax, 196(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1776(%rdx,%rbp)
	movq	312(%rsp), %rbp
	movq	%rbp, %r15
	leaq	192(%rsp), %rbp
	jmp	.LBB18_14
	.align	16, 0x90
.LBB18_21:                              # %land.rhs.do.body.90_crit_edge
                                        #   in Loop: Header=BB18_14 Depth=2
	movq	216(%rsp), %rsi
.LBB18_14:                              # %do.body.90
                                        #   Parent Loop BB18_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	1740(%rsi), %eax
	cmpl	$1, %eax
	jne	.LBB18_17
# BB#15:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB18_14 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB18_17
# BB#16:                                # %cond.end.101
                                        #   in Loop: Header=BB18_14 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	js	.LBB18_20
	.align	16, 0x90
.LBB18_17:                              # %if.then.105
                                        #   in Loop: Header=BB18_14 Depth=2
	movq	216(%rsp), %rsi
	movzwl	1742(%rsi), %eax
	cmpl	$1, %eax
	jne	.LBB18_22
# BB#18:                                # %land.lhs.true.110
                                        #   in Loop: Header=BB18_14 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB18_22
# BB#19:                                # %do.cond.121
                                        #   in Loop: Header=BB18_14 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB18_22
.LBB18_20:                              # %land.rhs
                                        #   in Loop: Header=BB18_14 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB18_21
	jmp	.LBB18_47
	.align	16, 0x90
.LBB18_22:                              # %if.end.133
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	216(%rsp), %rsi
	cmpl	$0, 1744(%rsi)
	jne	.LBB18_26
	jmp	.LBB18_23
	.align	16, 0x90
.LBB18_35:                              # %land.rhs.150.do.body.137_crit_edge
                                        #   in Loop: Header=BB18_23 Depth=2
	movq	216(%rsp), %rsi
.LBB18_23:                              # %do.body.137.preheader
                                        #   Parent Loop BB18_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$1760, %rsi             # imm = 0x6E0
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB18_24
# BB#33:                                # %cond.end.145
                                        #   in Loop: Header=BB18_23 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB18_25
# BB#34:                                # %land.rhs.150
                                        #   in Loop: Header=BB18_23 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB18_35
	jmp	.LBB18_47
	.align	16, 0x90
.LBB18_24:                              # %cond.end.145.thread
                                        #   in Loop: Header=BB18_13 Depth=1
	movb	$15, (%rax)
.LBB18_25:                              # %cleanup.thread
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	216(%rsp), %rsi
	movl	$1, 1744(%rsi)
.LBB18_26:                              # %if.end.165
                                        #   in Loop: Header=BB18_13 Depth=1
	cmpl	$0, 1748(%rsi)
	jne	.LBB18_30
	jmp	.LBB18_27
	.align	16, 0x90
.LBB18_38:                              # %land.rhs.185.do.body.170_crit_edge
                                        #   in Loop: Header=BB18_27 Depth=2
	movq	216(%rsp), %rsi
.LBB18_27:                              # %do.body.170.preheader
                                        #   Parent Loop BB18_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$1760, %rsi             # imm = 0x6E0
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB18_28
# BB#36:                                # %cond.end.179
                                        #   in Loop: Header=BB18_27 Depth=2
	movl	10192(%rbx), %esi
	movb	$8, 1
	testl	%esi, %esi
	jns	.LBB18_29
# BB#37:                                # %land.rhs.185
                                        #   in Loop: Header=BB18_27 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB18_38
	jmp	.LBB18_47
.LBB18_28:                              # %cond.end.179.thread
                                        #   in Loop: Header=BB18_13 Depth=1
	movw	$2271, (%rax)           # imm = 0x8DF
.LBB18_29:                              # %cleanup.200.thread
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	216(%rsp), %rsi
	movl	$1, 1744(%rsi)
	jmp	.LBB18_30
	.align	16, 0x90
.LBB18_32:                              # %land.rhs.210.do.body.204_crit_edge
                                        #   in Loop: Header=BB18_30 Depth=2
	movq	216(%rsp), %rsi
.LBB18_30:                              # %do.body.204.preheader
                                        #   Parent Loop BB18_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	callq	cmd_put_drawing_color
	testl	%eax, %eax
	jns	.LBB18_40
# BB#31:                                # %land.rhs.210
                                        #   in Loop: Header=BB18_30 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB18_32
	jmp	.LBB18_40
	.align	16, 0x90
.LBB18_39:                              # %cleanup.330
                                        #   in Loop: Header=BB18_40 Depth=2
	sarl	%eax
	movl	%eax, 196(%rsp)
.LBB18_40:                              # %copy
                                        #   Parent Loop BB18_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_41 Depth 3
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 176(%rsp)
	movq	192(%rsp), %rax
	movl	%eax, 180(%rsp)
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 184(%rsp)
	shrq	$32, %rax
	movl	%eax, 188(%rsp)
	leaq	176(%rsp), %rdi
	callq	cmd_size_rect
	movl	%eax, %r15d
	addl	132(%rsp), %r15d        # 4-byte Folded Reload
	leaq	164(%rsp), %rbp
	.align	16, 0x90
.LBB18_41:                              # %do.body.227
                                        #   Parent Loop BB18_13 Depth=1
                                        #     Parent Loop BB18_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	216(%rsp), %rsi
	movl	196(%rsp), %r8d
	movq	%rbp, 24(%rsp)
	leaq	168(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%r15d, (%rsp)
	movl	$2, 8(%rsp)
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	movl	%r13d, %r9d
	callq	cmd_put_bits
	testl	%eax, %eax
	jns	.LBB18_53
# BB#42:                                # %land.rhs.235
                                        #   in Loop: Header=BB18_41 Depth=3
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB18_41
# BB#43:                                # %do.end.240
                                        #   in Loop: Header=BB18_40 Depth=2
	cmpl	$-13, %eax
	movq	312(%rsp), %r15
	jne	.LBB18_47
# BB#44:                                # %if.then.253
                                        #   in Loop: Header=BB18_40 Depth=2
	movl	196(%rsp), %eax
	cmpl	$1, %eax
	jg	.LBB18_39
# BB#45:                                # %if.else
                                        #   in Loop: Header=BB18_13 Depth=1
	incl	12152(%rbx)
	movl	192(%rsp), %eax
	movl	320(%rsp), %ebp
	movl	%ebp, 32(%rsp)
	movq	%r15, 24(%rsp)
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	%r13d, %ecx
	movq	152(%rsp), %r9          # 8-byte Reload
	callq	clist_copy_alpha_hl_color
	testl	%eax, %eax
	js	.LBB18_46
# BB#51:                                # %if.end.271
                                        #   in Loop: Header=BB18_13 Depth=1
	movl	192(%rsp), %eax
	movl	%ebp, 32(%rsp)
	movq	%r15, 24(%rsp)
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	76(%rsp), %edx          # 4-byte Reload
	movl	%r13d, %ecx
	movl	72(%rsp), %r9d          # 4-byte Reload
	callq	clist_copy_alpha_hl_color
	decl	12152(%rbx)
	testl	%eax, %eax
	js	.LBB18_47
# BB#52:                                # %cleanup.330.thread170
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	112(%rsp), %r8          # 8-byte Reload
	jmp	.LBB18_62
	.align	16, 0x90
.LBB18_53:                              # %if.end.281
                                        #   in Loop: Header=BB18_13 Depth=1
	addl	$160, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB18_55
# BB#54:                                # %if.then.286
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	168(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 168(%rsp)
	movb	$6, (%rcx)
	movq	168(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 168(%rsp)
	movl	92(%rsp), %edx          # 4-byte Reload
	movb	%dl, (%rcx)
.LBB18_55:                              # %if.end.290
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	168(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 168(%rsp)
	movb	%al, (%rcx)
	movq	168(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 168(%rsp)
	movl	320(%rsp), %ecx
	movb	%cl, (%rax)
	movl	192(%rsp), %ebp
	movl	%ebp, %eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	orl	%ecx, %eax
	cmpl	$127, %eax
	movq	168(%rsp), %rsi
	jbe	.LBB18_56
# BB#57:                                # %cond.false.305
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	%rcx, %rdi
	callq	cmd_put_w
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB18_58
	.align	16, 0x90
.LBB18_56:                              # %cond.true.298
                                        #   in Loop: Header=BB18_13 Depth=1
	movb	%cl, (%rsi)
	movb	192(%rsp), %al
	movq	168(%rsp), %rcx
	movb	%al, 1(%rcx)
	movq	168(%rsp), %rax
	addq	$2, %rax
.LBB18_58:                              # %cond.end.309
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	144(%rsp), %rdx         # 8-byte Reload
	movq	%rax, 168(%rsp)
	movl	196(%rsp), %ebp
	movl	%ebp, %ecx
	orl	%edx, %ecx
	cmpl	$127, %ecx
	jbe	.LBB18_59
# BB#60:                                # %cond.false.322
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	cmd_put_w
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB18_61
	.align	16, 0x90
.LBB18_59:                              # %cond.true.315
                                        #   in Loop: Header=BB18_13 Depth=1
	movb	%dl, (%rax)
	movb	196(%rsp), %al
	movq	168(%rsp), %rcx
	movb	%al, 1(%rcx)
.LBB18_61:                              # %cleanup.cont.337
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	216(%rsp), %rax
	movups	176(%rsp), %xmm0
	movups	%xmm0, 1720(%rax)
	jmp	.LBB18_62
.LBB18_46:                              # %if.end.271.thread
                                        #   in Loop: Header=BB18_13 Depth=1
	decl	12152(%rbx)
	.align	16, 0x90
.LBB18_47:                              # %land.lhs.true.130
                                        #   in Loop: Header=BB18_13 Depth=1
	movl	%eax, 208(%rsp)
	cmpl	$0, 12144(%rbx)
	je	.LBB18_63
# BB#48:                                # %land.lhs.true.339
                                        #   in Loop: Header=BB18_13 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB18_63
# BB#49:                                # %land.lhs.true.343
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, 208(%rsp)
	testl	%eax, %eax
	movq	112(%rsp), %r8          # 8-byte Reload
	js	.LBB18_63
# BB#50:                                # %if.end.351
                                        #   in Loop: Header=BB18_13 Depth=1
	movl	196(%rsp), %eax
	subl	%eax, 192(%rsp)
.LBB18_62:                              # %do.cond.361
                                        #   in Loop: Header=BB18_13 Depth=1
	movl	192(%rsp), %ecx
	addl	196(%rsp), %ecx
	movl	%ecx, 192(%rsp)
	movq	200(%rsp), %r15
	movq	%r15, %rdi
	shrq	$32, %rdi
	xorl	%eax, %eax
	cmpl	%r15d, %ecx
	jl	.LBB18_13
.LBB18_63:                              # %cleanup.369
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	clist_copy_alpha_hl_color, .Lfunc_end18-clist_copy_alpha_hl_color
	.cfi_endproc

	.globl	clist_copy_alpha
	.align	16, 0x90
	.type	clist_copy_alpha,@function
clist_copy_alpha:                       # @clist_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp171:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp173:
	.cfi_def_cfa_offset 288
.Ltmp174:
	.cfi_offset %rbx, -56
.Ltmp175:
	.cfi_offset %r12, -48
.Ltmp176:
	.cfi_offset %r13, -40
.Ltmp177:
	.cfi_offset %r14, -32
.Ltmp178:
	.cfi_offset %r15, -24
.Ltmp179:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%ecx, %r13d
	movl	%r13d, 200(%rsp)        # 4-byte Spill
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movl	320(%rsp), %ebp
	movq	312(%rsp), %r15
	movl	%ebp, %edi
	callq	ilog2
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_color_index2usage
	movq	%rax, 152(%rsp)         # 8-byte Spill
	cmpl	$2, %ebp
	jl	.LBB19_2
# BB#1:                                 # %land.lhs.true
	movl	$-1, %eax
	testb	$64, 12168(%rbx)
	jne	.LBB19_56
.LBB19_2:                               # %do.body.3
	movl	304(%rsp), %eax
	movl	296(%rsp), %ecx
	movl	288(%rsp), %edx
	movl	%edx, %esi
	orl	%r14d, %esi
	js	.LBB19_4
# BB#3:
	movl	%edx, %r12d
	jmp	.LBB19_7
.LBB19_4:                               # %if.then.5
	movl	%r14d, %esi
	sarl	$31, %esi
	andl	%r14d, %esi
	leal	(%rcx,%rsi), %ecx
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	cmovsl	%r12d, %r14d
	movl	196(%rsp), %edi         # 4-byte Reload
	subl	%esi, %edi
	movl	%edi, %esi
	testl	%edx, %edx
	js	.LBB19_6
# BB#5:
	movl	%esi, 196(%rsp)         # 4-byte Spill
	movl	%edx, %r12d
	jmp	.LBB19_7
.LBB19_6:                               # %if.then.10
	movl	%esi, 196(%rsp)         # 4-byte Spill
	addl	%edx, %eax
	imull	%r13d, %edx
	movslq	%edx, %rdx
	subq	%rdx, 160(%rsp)         # 8-byte Folded Spill
.LBB19_7:                               # %if.end.13
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movl	832(%rbx), %edx
	movl	836(%rbx), %esi
	subl	%r14d, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	subl	%r12d, %esi
	cmpl	%esi, %eax
	cmovlel	%eax, %esi
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB19_56
# BB#8:                                 # %if.end.13
	testl	%esi, %esi
	jle	.LBB19_56
# BB#9:                                 # %do.end.31
	movl	184(%rsp), %ecx         # 4-byte Reload
	shll	%cl, 196(%rsp)          # 4-byte Folded Spill
	movl	12148(%rbx), %eax
	testl	%eax, %eax
	js	.LBB19_56
# BB#10:                                # %if.end.35
	cmpl	$0, 11952(%rbx)
	movq	%rdx, %r15
	je	.LBB19_12
# BB#11:                                # %if.then.36
	movl	%r14d, 216(%rsp)
	leal	-1(%r14,%r15), %eax
	movl	%eax, 224(%rsp)
	movl	%r12d, 220(%rsp)
	leal	-1(%r12,%rsi), %eax
	movl	%eax, 228(%rsp)
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	leaq	216(%rsp), %rsi
	movq	%rbx, %rdi
	callq	clist_update_trans_bbox
	movq	120(%rsp), %rsi         # 8-byte Reload
.LBB19_12:                              # %if.end.45
	addl	%r12d, %esi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movl	10132(%rbx), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	196(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edx
	andl	$7, %edx
	movl	184(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	addl	%edx, %r15d
	movq	%r15, 136(%rsp)         # 8-byte Spill
	sarl	$3, %eax
	cltq
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testl	%edx, %edx
	setne	%al
	movzbl	%al, %eax
	leal	2(%rax,%rax), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	shll	%cl, %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	movl	%r15d, %eax
	sarl	%eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	(%rax,%rdx), %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	leal	(%rax,%r14), %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	leal	64(%rdx), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	%r12d, %ebp
	.align	16, 0x90
.LBB19_13:                              # %do.body.58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_14 Depth 2
                                        #     Child Loop BB19_23 Depth 2
                                        #     Child Loop BB19_28 Depth 2
                                        #     Child Loop BB19_51 Depth 2
                                        #     Child Loop BB19_35 Depth 2
                                        #       Child Loop BB19_36 Depth 3
	movl	%ebp, 172(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	subl	%r12d, %eax
	imull	%r13d, %eax
	cltq
	movq	160(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	addq	104(%rsp), %r12         # 8-byte Folded Reload
	movl	%ebp, %eax
	cltd
	movl	116(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	10200(%rbx), %rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movslq	%eax, %r15
	imulq	$1808, %r15, %rdi       # imm = 0x710
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rdi), %r13
	incl	%r15d
	imull	%ecx, %r15d
	cmpl	%esi, %r15d
	cmovgl	%esi, %r15d
	subl	%ebp, %r15d
	movq	152(%rsp), %rax         # 8-byte Reload
	orq	%rax, 1776(%rdx,%rdi)
	leaq	1740(%rdx,%rdi), %rbp
	leaq	1742(%rdx,%rdi), %r14
	.align	16, 0x90
.LBB19_14:                              # %do.body.91
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB19_17
# BB#15:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB19_14 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB19_17
# BB#16:                                # %cond.end.102
                                        #   in Loop: Header=BB19_14 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	js	.LBB19_20
	.align	16, 0x90
.LBB19_17:                              # %if.then.106
                                        #   in Loop: Header=BB19_14 Depth=2
	movzwl	(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB19_21
# BB#18:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB19_14 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB19_21
# BB#19:                                # %do.cond.122
                                        #   in Loop: Header=BB19_14 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB19_21
.LBB19_20:                              # %land.rhs
                                        #   in Loop: Header=BB19_14 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB19_14
	jmp	.LBB19_42
	.align	16, 0x90
.LBB19_21:                              # %if.end.134
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
	leaq	1744(%rax,%rdx), %rcx
	cmpl	$0, 1744(%rax,%rdx)
	movq	96(%rsp), %r14          # 8-byte Reload
	jne	.LBB19_26
# BB#22:                                # %do.body.138.preheader
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leaq	1760(%rax,%rdx), %rbp
	.align	16, 0x90
.LBB19_23:                              # %do.body.138
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB19_24
# BB#46:                                # %cond.end.146
                                        #   in Loop: Header=BB19_23 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB19_25
# BB#47:                                # %land.rhs.151
                                        #   in Loop: Header=BB19_23 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB19_23
	jmp	.LBB19_42
.LBB19_24:                              # %cond.end.146.thread
                                        #   in Loop: Header=BB19_13 Depth=1
	movb	$15, (%rax)
.LBB19_25:                              # %cleanup.thread
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	$1, (%rcx)
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
.LBB19_26:                              # %if.end.166
                                        #   in Loop: Header=BB19_13 Depth=1
	cmpl	$0, 1748(%rax,%rdx)
	je	.LBB19_33
# BB#27:                                # %do.body.171.preheader
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%r14, %rbp
	leaq	1760(%rax,%rdx), %r14
	.align	16, 0x90
.LBB19_28:                              # %do.body.171
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB19_30
# BB#29:                                # %cond.false.179
                                        #   in Loop: Header=BB19_28 Depth=2
	movb	$-33, (%rax)
.LBB19_30:                              # %cond.end.180
                                        #   in Loop: Header=BB19_28 Depth=2
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB19_31
# BB#48:                                # %cond.end.190
                                        #   in Loop: Header=BB19_28 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	jns	.LBB19_32
# BB#49:                                # %land.rhs.195
                                        #   in Loop: Header=BB19_28 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB19_28
	jmp	.LBB19_42
.LBB19_31:                              # %cond.end.190.thread
                                        #   in Loop: Header=BB19_13 Depth=1
	movb	$9, (%rax)
.LBB19_32:                              # %cleanup.210.thread
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	$1, (%rax)
	movq	%rbp, %r14
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
.LBB19_33:                              # %if.end.213
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	312(%rsp), %rcx
	cmpq	%rcx, 8(%rax,%rdx)
	jne	.LBB19_50
# BB#34:                                #   in Loop: Header=BB19_13 Depth=1
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	%rax, 184(%rsp)         # 8-byte Spill
	jmp	.LBB19_35
	.align	16, 0x90
.LBB19_50:                              #   in Loop: Header=BB19_13 Depth=1
	leaq	8(%rax,%rdx), %rbp
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	%rax, 184(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB19_51:                              # %do.body.218
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$clist_select_color1, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %r8
	callq	cmd_put_color
	testl	%eax, %eax
	jns	.LBB19_35
# BB#52:                                # %land.rhs.227
                                        #   in Loop: Header=BB19_51 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	movq	312(%rsp), %rcx
	jns	.LBB19_51
	jmp	.LBB19_42
	.align	16, 0x90
.LBB19_66:                              # %cleanup.355
                                        #   in Loop: Header=BB19_35 Depth=2
	sarl	%r15d
.LBB19_35:                              # %copy
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_36 Depth 3
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	%r14d, 216(%rsp)
	movl	172(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 220(%rsp)
	movl	%eax, 224(%rsp)
	movl	%r15d, 228(%rsp)
	leaq	216(%rsp), %rdi
	callq	cmd_size_rect
	movl	%eax, %ebp
	addl	92(%rsp), %ebp          # 4-byte Folded Reload
	.align	16, 0x90
.LBB19_36:                              # %do.body.252
                                        #   Parent Loop BB19_13 Depth=1
                                        #     Parent Loop BB19_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	204(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebp, (%rsp)
	movl	$2, 8(%rsp)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	196(%rsp), %ecx         # 4-byte Reload
	movl	%r15d, %r8d
	movl	200(%rsp), %r9d         # 4-byte Reload
	callq	cmd_put_bits
	testl	%eax, %eax
	jns	.LBB19_57
# BB#37:                                # %land.rhs.260
                                        #   in Loop: Header=BB19_36 Depth=3
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB19_36
# BB#38:                                # %do.end.265
                                        #   in Loop: Header=BB19_35 Depth=2
	cmpl	$-13, %eax
	jne	.LBB19_42
# BB#39:                                # %if.then.278
                                        #   in Loop: Header=BB19_35 Depth=2
	cmpl	$1, %r15d
	jg	.LBB19_66
# BB#40:                                # %if.else
                                        #   in Loop: Header=BB19_13 Depth=1
	incl	12152(%rbx)
	movl	320(%rsp), %ebp
	movl	%ebp, 32(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	172(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, (%rsp)
	movl	$1, 16(%rsp)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	200(%rsp), %ecx         # 4-byte Reload
	movl	%r14d, %r9d
	callq	clist_copy_alpha
	testl	%eax, %eax
	js	.LBB19_41
# BB#53:                                # %if.end.296
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	%ebp, 32(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, 16(%rsp)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	200(%rsp), %ecx         # 4-byte Reload
	movl	56(%rsp), %r9d          # 4-byte Reload
	callq	clist_copy_alpha
	decl	12152(%rbx)
	testl	%eax, %eax
	js	.LBB19_42
# BB#54:                                # %cleanup.355.thread233
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	200(%rsp), %r13d        # 4-byte Reload
	movq	144(%rsp), %r12         # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movl	172(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB19_55
	.align	16, 0x90
.LBB19_57:                              # %if.end.306
                                        #   in Loop: Header=BB19_13 Depth=1
	addl	$160, %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB19_59
# BB#58:                                # %if.then.311
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	208(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 208(%rsp)
	movb	$6, (%rcx)
	movq	208(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 208(%rsp)
	movl	76(%rsp), %edx          # 4-byte Reload
	movb	%dl, (%rcx)
.LBB19_59:                              # %if.end.315
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	208(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 208(%rsp)
	movb	%al, (%rcx)
	movq	208(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 208(%rsp)
	movl	320(%rsp), %ecx
	movb	%cl, (%rax)
	movl	172(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %eax
	orl	%r14d, %eax
	cmpl	$127, %eax
	movq	208(%rsp), %rsi
	movl	200(%rsp), %r13d        # 4-byte Reload
	movq	144(%rsp), %r12         # 8-byte Reload
	jbe	.LBB19_60
# BB#61:                                # %cond.false.330
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	%r14d, %edi
	callq	cmd_put_w
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB19_62
.LBB19_60:                              # %cond.true.323
                                        #   in Loop: Header=BB19_13 Depth=1
	movb	%r14b, (%rsi)
	movq	208(%rsp), %rax
	movb	%bpl, 1(%rax)
	movq	208(%rsp), %rax
	addq	$2, %rax
.LBB19_62:                              # %cond.end.334
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	%rax, 208(%rsp)
	movl	%r15d, %ecx
	orl	%edx, %ecx
	cmpl	$127, %ecx
	jbe	.LBB19_63
# BB#65:                                # %cond.false.347
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	cmd_put_w
	movl	%r15d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB19_64
.LBB19_63:                              # %cond.true.340
                                        #   in Loop: Header=BB19_13 Depth=1
	movb	%dl, (%rax)
	movq	208(%rsp), %rax
	movb	%r15b, 1(%rax)
.LBB19_64:                              # %cleanup.cont.362
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	movups	216(%rsp), %xmm0
	movups	%xmm0, 1720(%rax,%rcx)
	jmp	.LBB19_55
.LBB19_41:                              # %if.end.296.thread
                                        #   in Loop: Header=BB19_13 Depth=1
	decl	12152(%rbx)
	.align	16, 0x90
.LBB19_42:                              # %cleanup.355.thread
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	144(%rsp), %r12         # 8-byte Reload
	cmpl	$0, 12144(%rbx)
	je	.LBB19_56
# BB#43:                                # %land.lhs.true.364
                                        #   in Loop: Header=BB19_13 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB19_56
# BB#44:                                # %cleanup.380
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	testl	%eax, %eax
	movl	$0, %ecx
	cmovnsl	%r15d, %ecx
	testl	%eax, %eax
	movl	200(%rsp), %r13d        # 4-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movl	172(%rsp), %ebp         # 4-byte Reload
	js	.LBB19_56
# BB#45:                                #   in Loop: Header=BB19_13 Depth=1
	subl	%ecx, %ebp
.LBB19_55:                              # %do.cond.386
                                        #   in Loop: Header=BB19_13 Depth=1
	addl	%r15d, %ebp
	xorl	%eax, %eax
	cmpl	%esi, %ebp
	jl	.LBB19_13
.LBB19_56:                              # %cleanup.394
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	clist_copy_alpha, .Lfunc_end19-clist_copy_alpha
	.cfi_endproc

	.globl	clist_strip_copy_rop
	.align	16, 0x90
	.type	clist_strip_copy_rop,@function
clist_strip_copy_rop:                   # @clist_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp181:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp182:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp183:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp184:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp185:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp186:
	.cfi_def_cfa_offset 144
.Ltmp187:
	.cfi_offset %rbx, -56
.Ltmp188:
	.cfi_offset %r12, -48
.Ltmp189:
	.cfi_offset %r13, -40
.Ltmp190:
	.cfi_offset %r14, -32
.Ltmp191:
	.cfi_offset %r15, -24
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	144(%rsp), %r10
	movq	152(%rsp), %r11
	movl	160(%rsp), %r14d
	movl	168(%rsp), %r15d
	movl	176(%rsp), %r12d
	movl	184(%rsp), %r13d
	movl	192(%rsp), %ebx
	movl	200(%rsp), %ebp
	movl	208(%rsp), %eax
	movl	%eax, 64(%rsp)
	movl	%ebp, 56(%rsp)
	movl	%ebx, 48(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 72(%rsp)
	callq	clist_strip_copy_rop2
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	clist_strip_copy_rop, .Lfunc_end20-clist_strip_copy_rop
	.cfi_endproc

	.globl	clist_strip_copy_rop2
	.align	16, 0x90
	.type	clist_strip_copy_rop2,@function
clist_strip_copy_rop2:                  # @clist_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp195:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp196:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp197:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 56
	subq	$408, %rsp              # imm = 0x198
.Ltmp199:
	.cfi_def_cfa_offset 464
.Ltmp200:
	.cfi_offset %rbx, -56
.Ltmp201:
	.cfi_offset %r12, -48
.Ltmp202:
	.cfi_offset %r13, -40
.Ltmp203:
	.cfi_offset %r14, -32
.Ltmp204:
	.cfi_offset %r15, -24
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	movl	%ecx, 252(%rsp)         # 4-byte Spill
	movl	%edx, 156(%rsp)         # 4-byte Spill
	movq	%rdi, %rbp
	movl	528(%rsp), %r14d
	movq	472(%rsp), %r13
	movl	100(%rbp), %ebx
	movl	$1, %edx
	movb	%bl, %cl
	shlq	%cl, %rdx
	decq	%rdx
	testq	%r12, %r12
	je	.LBB21_2
# BB#1:                                 # %cond.true
	movq	%rsi, 256(%rsp)         # 8-byte Spill
	movq	8(%r12), %rsi
	orq	(%r12), %rsi
	movq	%rdx, %r15
	movq	%rbp, %rdi
	callq	gx_color_index2usage
	movq	%r15, %rdx
	movq	%rax, 224(%rsp)         # 8-byte Spill
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	testq	%rsi, %rsi
	movq	%rdx, %rax
	cmoveq	%rsi, %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rsi, 256(%rsp)         # 8-byte Spill
.LBB21_3:                               # %cond.end.7
	movq	464(%rsp), %r15
	testq	%r13, %r13
	je	.LBB21_5
# BB#4:                                 # %cond.true.10
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	8(%r13), %rsi
	orq	(%r13), %rsi
	movq	%rbp, %rdi
	callq	gx_color_index2usage
	jmp	.LBB21_6
.LBB21_5:                               # %cond.false.15
	testq	%r15, %r15
	movq	%rdx, %rax
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	cmoveq	%r15, %rax
.LBB21_6:                               # %cond.end.21
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movzbl	%r14b, %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	cmpl	$4, %ebx
	movl	%eax, %r8d
	jl	.LBB21_8
# BB#7:                                 # %cond.true.24
	movq	264(%rsp), %rax         # 8-byte Reload
	xorl	$255, %eax
	movzbl	byte_reverse_bits(%rax), %r8d
.LBB21_8:                               # %cond.end.28
	movl	504(%rsp), %eax
	movl	496(%rsp), %edi
	movl	488(%rsp), %ecx
	movl	480(%rsp), %esi
	testq	%r12, %r12
	je	.LBB21_11
# BB#9:                                 # %land.lhs.true
	movq	(%r12), %rdx
	cmpq	8(%r12), %rdx
	jne	.LBB21_10
.LBB21_11:                              # %do.body.67
	movl	%esi, %edx
	sarl	$31, %edx
	andl	%esi, %edx
	leal	(%rdi,%rdx), %edi
	xorl	%ebx, %ebx
	testl	%esi, %esi
	cmovnsl	%esi, %ebx
	movl	832(%rbp), %esi
	subl	%ebx, %esi
	cmpl	%esi, %edi
	cmovlel	%edi, %esi
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movl	12184(%rbp), %r13d
	movl	%r13d, %esi
	subl	%ecx, %esi
	jle	.LBB21_12
# BB#13:                                # %if.then.89
	movq	%r8, 288(%rsp)          # 8-byte Spill
	addl	%ecx, %eax
	subl	%r13d, %eax
	imull	252(%rsp), %esi         # 4-byte Folded Reload
	addq	%rsi, 256(%rsp)         # 8-byte Folded Spill
	xorl	%ecx, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	jmp	.LBB21_14
.LBB21_12:
	movq	%r8, 288(%rsp)          # 8-byte Spill
	movl	%ecx, %r13d
.LBB21_14:                              # %if.end.96
	subl	%edx, 156(%rsp)         # 4-byte Folded Spill
	leal	(%r13,%rax), %ecx
	movl	12188(%rbp), %edx
	movl	%edx, %r14d
	subl	%r13d, %r14d
	cmpl	%edx, %ecx
	cmovlel	%eax, %r14d
	jmp	.LBB21_15
.LBB21_10:                              # %do.body
	movq	%r8, 288(%rsp)          # 8-byte Spill
	movl	%esi, %edx
	sarl	$31, %edx
	andl	%esi, %edx
	addl	%edi, %edx
	xorl	%ebx, %ebx
	testl	%esi, %esi
	cmovnsl	%esi, %ebx
	movl	832(%rbp), %esi
	subl	%ebx, %esi
	cmpl	%esi, %edx
	cmovlel	%edx, %esi
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movl	12184(%rbp), %edx
	leal	(%rax,%rcx), %esi
	subl	%edx, %esi
	cmpl	%ecx, %edx
	cmovgl	%esi, %eax
	cmovgel	%edx, %ecx
	leal	(%rcx,%rax), %edx
	movl	12188(%rbp), %esi
	movl	%esi, %r14d
	subl	%ecx, %r14d
	cmpl	%esi, %edx
	cmovlel	%eax, %r14d
	movl	%ecx, %r13d
.LBB21_15:                              # %if.end.109
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB21_103
# BB#16:                                # %if.end.109
	movq	%r15, 296(%rsp)         # 8-byte Spill
	movq	208(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB21_103
# BB#17:                                # %if.end.115
	cmpl	$0, 11952(%rbp)
	je	.LBB21_19
# BB#18:                                # %if.then.117
	movl	%ebx, 304(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax,%rbx), %eax
	movl	%eax, 312(%rsp)
	movl	%r13d, 308(%rsp)
	leal	-1(%r14,%r13), %eax
	movl	%eax, 316(%rsp)
	leaq	304(%rsp), %rsi
	movq	%rbp, %rdi
	callq	clist_update_trans_bbox
.LBB21_19:                              # %if.end.126
	testq	%r12, %r12
	je	.LBB21_23
# BB#20:                                # %land.lhs.true.128
	movq	(%r12), %r15
	cmpq	8(%r12), %r15
	jne	.LBB21_23
# BB#21:                                # %if.then.133
	movq	%rbp, %rdi
	callq	gx_device_black
	cmpq	%rax, %r15
	je	.LBB21_23
# BB#22:                                # %cond.false.143
	movq	%rbp, %rdi
	callq	gx_device_white
.LBB21_23:                              # %if.end.157
	cmpq	$0, 472(%rsp)
	je	.LBB21_27
# BB#24:                                # %land.lhs.true.159
	movq	472(%rsp), %rax
	movq	(%rax), %r15
	cmpq	8(%rax), %r15
	jne	.LBB21_27
# BB#25:                                # %if.then.164
	movq	%rbp, %rdi
	callq	gx_device_black
	cmpq	%rax, %r15
	je	.LBB21_27
# BB#26:                                # %cond.false.174
	movq	%rbp, %rdi
	callq	gx_device_white
.LBB21_27:                              # %if.end.189
	movl	$0, 204(%rsp)           # 4-byte Folded Spill
	movq	264(%rsp), %rax         # 8-byte Reload
	leal	-204(%rax), %eax
	cmpl	$51, %eax
	movl	252(%rsp), %r15d        # 4-byte Reload
	ja	.LBB21_28
# BB#30:                                # %if.end.189
	movabsq	$2251868533161985, %rcx # imm = 0x8001000000001
	btq	%rax, %rcx
	jae	.LBB21_28
# BB#31:
	movq	%r12, 160(%rsp)         # 8-byte Spill
	jmp	.LBB21_32
.LBB21_28:                              # %if.end.189
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB21_32
# BB#29:                                # %lor.rhs
	movl	$1, 204(%rsp)           # 4-byte Folded Spill
.LBB21_32:                              # %lor.end
	movl	12148(%rbp), %eax
	testl	%eax, %eax
	js	.LBB21_103
# BB#33:                                # %if.end.204
	cmpl	$0, 11952(%rbp)
	je	.LBB21_35
# BB#34:                                # %if.then.207
	movl	%ebx, 304(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax,%rbx), %eax
	movl	%eax, 312(%rsp)
	movl	%r13d, 308(%rsp)
	leal	-1(%r14,%r13), %eax
	movl	%eax, 316(%rsp)
	leaq	304(%rsp), %rsi
	movq	%rbp, %rdi
	callq	clist_update_trans_bbox
.LBB21_35:                              # %if.end.221
	leal	(%r14,%r13), %r12d
	movl	%r12d, 172(%rsp)        # 4-byte Spill
	movl	10132(%rbp), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movq	288(%rsp), %rax         # 8-byte Reload
	movq	rop_proc_table(,%rax,8), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	264(%rsp), %r14         # 8-byte Reload
	shll	$4, %r14d
	xorl	528(%rsp), %r14d
	andl	$240, %r14d
	movq	%r14, 264(%rsp)         # 8-byte Spill
	movl	512(%rsp), %eax
	leal	(%rbx,%rax), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movl	%r13d, %esi
	movq	%r13, 192(%rsp)         # 8-byte Spill
                                        # implicit-def: ECX
	.align	16, 0x90
.LBB21_36:                              # %do.body.233
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_44 Depth 2
                                        #     Child Loop BB21_78 Depth 2
                                        #     Child Loop BB21_82 Depth 2
                                        #     Child Loop BB21_68 Depth 2
                                        #     Child Loop BB21_87 Depth 2
	movl	%ecx, 276(%rsp)         # 4-byte Spill
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	imull	%r15d, %eax
	movq	256(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	cltd
	movl	188(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	10200(%rbp), %r14
	cltq
	imulq	$1808, %rax, %r15       # imm = 0x710
	leaq	(%r14,%r15), %r13
	incl	%eax
	imull	%ecx, %eax
	cmpl	%r12d, %eax
	cmovgl	%r12d, %eax
	subl	%esi, %eax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	movq	1776(%r14,%r15), %rbx
	movq	%rbx, %rdi
	movq	224(%rsp), %rsi         # 8-byte Reload
	movq	216(%rsp), %rdx         # 8-byte Reload
	callq	*176(%rsp)              # 8-byte Folded Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	andq	%rcx, %rax
	orq	%rbx, %rax
	movq	%rax, 1776(%r14,%r15)
	movl	204(%rsp), %eax         # 4-byte Reload
	orl	%eax, 1784(%r14,%r15)
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB21_86
# BB#37:                                # %if.then.281
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	472(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB21_39
# BB#38:                                # %lor.lhs.false.284
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	(%rbx), %rax
	cmpq	8(%rbx), %rax
	je	.LBB21_82
.LBB21_39:                              # %if.then.289
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	368(%r14,%r15), %rcx
	movq	296(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	cmpq	%rax, %rcx
	jne	.LBB21_42
# BB#40:                                # %land.lhs.true.294
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	360(%r14,%r15), %edx
	movq	1872(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB21_42
# BB#41:                                # %land.lhs.true.300
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	1776(%rbp), %rsi
	cmpq	%rcx, 16(%rsi,%rdx)
	je	.LBB21_82
	.align	16, 0x90
.LBB21_42:                              # %if.then.306
                                        #   in Loop: Header=BB21_36 Depth=1
	testq	%rax, %rax
	jne	.LBB21_44
# BB#43:                                # %if.then.310
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	296(%rsp), %rax         # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 384(%rsp)
	movaps	%xmm1, 368(%rsp)
	movaps	%xmm0, 352(%rsp)
	movq	24(%rbp), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 376(%rsp)
	leaq	352(%rsp), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB21_44:                              # %do.body.314
                                        #   Parent Loop BB21_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %ecx
	testq	%rbx, %rbx
	jne	.LBB21_46
# BB#45:                                # %cond.false.319
                                        #   in Loop: Header=BB21_44 Depth=2
	movzwl	12252(%rbp), %ecx
.LBB21_46:                              # %cond.end.321
                                        #   in Loop: Header=BB21_44 Depth=2
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	296(%rsp), %rdx         # 8-byte Reload
	callq	clist_change_tile
	testl	%eax, %eax
	jns	.LBB21_74
# BB#47:                                # %land.rhs
                                        #   in Loop: Header=BB21_44 Depth=2
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB21_44
# BB#48:                                # %do.end.330
                                        #   in Loop: Header=BB21_36 Depth=1
	cmpl	$-13, %eax
	jne	.LBB21_80
# BB#49:                                # %if.then.342
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	296(%rsp), %rcx         # 8-byte Reload
	movzwl	34(%rcx), %r12d
	cmpl	$1, %r12d
	movl	$-13, %eax
	movl	$1, %r13d
	movq	280(%rsp), %rdx         # 8-byte Reload
	jne	.LBB21_54
# BB#50:                                #   in Loop: Header=BB21_36 Depth=1
	movl	252(%rsp), %r15d        # 4-byte Reload
	jmp	.LBB21_51
.LBB21_74:                              # %if.end.475
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	512(%rsp), %eax
	cmpl	%eax, 384(%r14,%r15)
	je	.LBB21_76
# BB#75:                                # %land.lhs.true.480
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	296(%rsp), %rax         # 8-byte Reload
	movzwl	32(%rax), %eax
	cmpl	$1, %eax
	ja	.LBB21_78
.LBB21_76:                              # %lor.lhs.false.485
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	520(%rsp), %eax
	cmpl	%eax, 388(%r14,%r15)
	je	.LBB21_82
# BB#77:                                # %land.lhs.true.491
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	296(%rsp), %rax         # 8-byte Reload
	movzwl	34(%rax), %eax
	cmpl	$2, %eax
	jb	.LBB21_82
	.align	16, 0x90
.LBB21_78:                              # %do.body.497
                                        #   Parent Loop BB21_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	512(%rsp), %edx
	movl	520(%rsp), %ecx
	callq	cmd_set_tile_phase
	testl	%eax, %eax
	jns	.LBB21_82
# BB#79:                                # %land.rhs.503
                                        #   in Loop: Header=BB21_78 Depth=2
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB21_78
	jmp	.LBB21_80
	.align	16, 0x90
.LBB21_82:                              # %do.body.520
                                        #   Parent Loop BB21_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB21_84
# BB#83:                                # %cond.true.523
                                        #   in Loop: Header=BB21_82 Depth=2
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	jmp	.LBB21_85
	.align	16, 0x90
.LBB21_84:                              # %cond.false.528
                                        #   in Loop: Header=BB21_82 Depth=2
	movq	$-1, %rdx
	movq	$-1, %rcx
.LBB21_85:                              # %cond.end.531
                                        #   in Loop: Header=BB21_82 Depth=2
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	cmd_set_tile_colors
	testl	%eax, %eax
	jns	.LBB21_86
# BB#81:                                # %land.rhs.536
                                        #   in Loop: Header=BB21_82 Depth=2
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB21_82
.LBB21_80:                              #   in Loop: Header=BB21_36 Depth=1
	movl	252(%rsp), %r15d        # 4-byte Reload
	jmp	.LBB21_70
	.align	16, 0x90
.LBB21_86:                              # %do.body.550.preheader
                                        #   in Loop: Header=BB21_36 Depth=1
	leaq	1736(%r14,%r15), %r12
	leaq	1740(%r14,%r15), %r14
	movl	252(%rsp), %r15d        # 4-byte Reload
	movl	528(%rsp), %ebx
	.align	16, 0x90
.LBB21_87:                              # %do.body.550
                                        #   Parent Loop BB21_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ebx, (%r12)
	je	.LBB21_89
# BB#88:                                # %if.end.558
                                        #   in Loop: Header=BB21_87 Depth=2
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	callq	cmd_set_lop
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB21_92
.LBB21_89:                              # %if.then.561
                                        #   in Loop: Header=BB21_87 Depth=2
	cmpw	$0, (%r14)
	jne	.LBB21_93
# BB#90:                                # %land.lhs.true.566
                                        #   in Loop: Header=BB21_87 Depth=2
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	cmd_put_enable_lop
	testl	%eax, %eax
	jns	.LBB21_93
# BB#91:                                # %do.cond.576
                                        #   in Loop: Header=BB21_87 Depth=2
	movl	10192(%rbp), %esi
	testl	%esi, %esi
	jns	.LBB21_93
.LBB21_92:                              # %land.rhs.579
                                        #   in Loop: Header=BB21_87 Depth=2
	movq	%rbp, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB21_87
	jmp	.LBB21_70
	.align	16, 0x90
.LBB21_93:                              # %if.end.591
                                        #   in Loop: Header=BB21_36 Depth=1
	movw	$-1, (%r14)
	incl	12152(%rbp)
	movq	160(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movl	172(%rsp), %r12d        # 4-byte Reload
	je	.LBB21_97
# BB#94:                                # %if.then.598
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	(%rax), %r9
	movq	8(%rax), %rax
	cmpq	%rax, %r9
	jne	.LBB21_96
# BB#95:                                # %if.then.603
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	%rbp, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	288(%rsp), %rdx         # 8-byte Reload
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	280(%rsp), %r8          # 8-byte Reload
	callq	clist_fill_rectangle
	jmp	.LBB21_100
.LBB21_97:                              # %if.else.615
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	536(%rsp), %eax
	testl	%eax, %eax
	je	.LBB21_99
# BB#98:                                # %if.then.617
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	%eax, 24(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	288(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movq	240(%rsp), %rsi         # 8-byte Reload
	movl	156(%rsp), %edx         # 4-byte Reload
	movl	%r15d, %ecx
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	144(%rsp), %r9          # 8-byte Reload
	callq	clist_copy_planes
	jmp	.LBB21_100
.LBB21_96:                              # %if.else.608
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	%rax, 32(%rsp)
	movq	%r9, 24(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	288(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movq	240(%rsp), %rsi         # 8-byte Reload
	movl	156(%rsp), %edx         # 4-byte Reload
	movl	%r15d, %ecx
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	144(%rsp), %r9          # 8-byte Reload
	callq	clist_copy_mono
	jmp	.LBB21_100
.LBB21_99:                              # %if.else.621
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	280(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	288(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movq	240(%rsp), %rsi         # 8-byte Reload
	movl	156(%rsp), %edx         # 4-byte Reload
	movl	%r15d, %ecx
	movq	144(%rsp), %r9          # 8-byte Reload
	callq	clist_copy_color
	.align	16, 0x90
.LBB21_100:                             # %if.end.626
                                        #   in Loop: Header=BB21_36 Depth=1
	decl	12152(%rbp)
	movw	$1, (%r14)
	testl	%eax, %eax
	js	.LBB21_71
# BB#101:                               #   in Loop: Header=BB21_36 Depth=1
	movl	276(%rsp), %eax         # 4-byte Reload
	movq	288(%rsp), %rsi         # 8-byte Reload
	movq	280(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB21_102
.LBB21_54:                              # %lor.lhs.false.347
                                        #   in Loop: Header=BB21_36 Depth=1
	cmpw	$0, 36(%rcx)
	movl	252(%rsp), %r15d        # 4-byte Reload
	jne	.LBB21_51
# BB#55:                                # %if.end.352
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	24(%rbp), %rdi
	cmpl	%r12d, %edx
	movl	%r12d, %esi
	cmovbl	%edx, %esi
	movq	%rdx, %r14
	callq	gs_next_ids
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rcx         # 8-byte Reload
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movaps	%xmm2, 336(%rsp)
	movaps	%xmm1, 320(%rsp)
	movaps	%xmm0, 304(%rsp)
	movl	$1, 320(%rsp)
	movw	$1, 338(%rsp)
	movl	312(%rsp), %r9d
	movl	%r9d, 116(%rsp)         # 4-byte Spill
	movl	344(%rsp), %ebx
	testl	%ebx, %ebx
	jle	.LBB21_57
# BB#56:                                # %if.then.368
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	16(%rcx), %eax
	imull	%r9d, %eax
	movl	%eax, 312(%rsp)
.LBB21_57:                              # %if.end.373
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	%r15d, %r8d
	movzwl	32(%rcx), %esi
	movl	92(%rsp), %eax          # 4-byte Reload
	cltd
	idivl	%esi
	movl	%edx, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	xorl	%edi, %edi
	cmpl	%esi, %eax
	movl	512(%rsp), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	jg	.LBB21_63
# BB#58:                                # %if.then.381
                                        #   in Loop: Header=BB21_36 Depth=1
	movzwl	12252(%rbp), %esi
	testl	%ebx, %ebx
	jle	.LBB21_60
# BB#59:                                # %if.then.389
                                        #   in Loop: Header=BB21_36 Depth=1
	xorl	%edx, %edx
	movl	%esi, %eax
	idivl	%ebx
	movl	%eax, %esi
.LBB21_60:                              # %if.end.392
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	%esi, %eax
	imull	%ecx, %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$29, %edi
	addl	%eax, %edi
	movl	%edi, %eax
	andl	$-8, %eax
	cltd
	idivl	%esi
	subl	%eax, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movw	%ax, 336(%rsp)
	cmpl	$1, %ebx
	jg	.LBB21_62
# BB#61:                                # %if.then.404
                                        #   in Loop: Header=BB21_36 Depth=1
	movzwl	%ax, %edx
	imull	%esi, %edx
	leal	7(%rdx), %esi
	sarl	$31, %esi
	shrl	$29, %esi
	leal	7(%rdx,%rsi), %edx
	sarl	$3, %edx
	movl	%edx, 312(%rsp)
.LBB21_62:                              # %if.end.411
                                        #   in Loop: Header=BB21_36 Depth=1
	sarl	$3, %edi
	movzwl	%ax, %esi
	movl	%esi, 316(%rsp)
	movw	$0, 342(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	cltd
	idivl	%esi
	subl	%edx, %ecx
	addl	%esi, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%edx, 128(%rsp)         # 4-byte Spill
.LBB21_63:                              # %if.end.427
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	$15, %r13d
	movq	%r14, %rdx
	testl	%edx, %edx
	jle	.LBB21_64
# BB#67:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB21_36 Depth=1
	movslq	%edi, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	12152(%rbp), %edi
	movl	520(%rsp), %eax
	movq	288(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	movl	%r8d, %r14d
	.align	16, 0x90
.LBB21_68:                              # %for.body
                                        #   Parent Loop BB21_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbx), %eax
	xorl	%edx, %edx
	divl	%r12d
	movl	%edx, %ecx
	imull	%r9d, %ecx
	movq	296(%rsp), %rax         # 8-byte Reload
	addq	(%rax), %rcx
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%r12d
	addq	104(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, 304(%rsp)
	addq	120(%rsp), %rdx         # 8-byte Folded Reload
	incl	%edi
	movq	%rdx, 328(%rsp)
	movl	%r15d, %eax
	movq	240(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	256(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movl	%edi, 12152(%rbp)
	cmoveq	%rax, %rsi
	movq	288(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	movl	536(%rsp), %ecx
	movl	%ecx, 72(%rsp)
	movl	528(%rsp), %ecx
	movl	%ecx, 64(%rsp)
	movl	128(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 48(%rsp)
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 32(%rsp)
	movl	%eax, 24(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	472(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 56(%rsp)
	movl	$1, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movl	156(%rsp), %edx         # 4-byte Reload
	movl	%r14d, %ecx
	movq	160(%rsp), %r9          # 8-byte Reload
	callq	clist_strip_copy_rop2
	movl	12152(%rbp), %edi
	decl	%edi
	movl	%edi, 12152(%rbp)
	testl	%eax, %eax
	js	.LBB21_69
# BB#65:                                # %for.cond
                                        #   in Loop: Header=BB21_68 Depth=2
	addl	%r14d, %r15d
	incl	%ebx
	movq	280(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ebx
	movl	116(%rsp), %r9d         # 4-byte Reload
	jl	.LBB21_68
# BB#66:                                #   in Loop: Header=BB21_36 Depth=1
	movl	276(%rsp), %eax         # 4-byte Reload
	movl	%r14d, %r15d
	jmp	.LBB21_51
.LBB21_64:                              #   in Loop: Header=BB21_36 Depth=1
	movl	276(%rsp), %eax         # 4-byte Reload
	movl	%r8d, %r15d
.LBB21_51:                              # %cleanup.518.thread329
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	172(%rsp), %r12d        # 4-byte Reload
	movq	288(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB21_52
.LBB21_69:                              # %cleanup.518
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	%r14d, %r15d
	.align	16, 0x90
.LBB21_70:                              # %error_in_rect
                                        #   in Loop: Header=BB21_36 Depth=1
	movl	172(%rsp), %r12d        # 4-byte Reload
.LBB21_71:                              # %error_in_rect
                                        #   in Loop: Header=BB21_36 Depth=1
	cmpl	$0, 12144(%rbp)
	je	.LBB21_103
# BB#72:                                # %land.lhs.true.639
                                        #   in Loop: Header=BB21_36 Depth=1
	cmpl	$0, 12152(%rbp)
	movl	276(%rsp), %ebx         # 4-byte Reload
	jne	.LBB21_103
# BB#73:                                # %land.lhs.true.643
                                        #   in Loop: Header=BB21_36 Depth=1
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movl	$0, %eax
	movq	280(%rsp), %rdx         # 8-byte Reload
	cmovnsl	%edx, %eax
	cmovsl	%r13d, %ebx
	movq	288(%rsp), %rsi         # 8-byte Reload
	subl	%eax, %esi
	shrl	$31, %r13d
	movl	%ebx, %eax
.LBB21_52:                              # %cleanup.655
                                        #   in Loop: Header=BB21_36 Depth=1
	cmpl	$15, %r13d
	je	.LBB21_102
# BB#53:                                # %cleanup.655
                                        #   in Loop: Header=BB21_36 Depth=1
	testl	%r13d, %r13d
	jne	.LBB21_103
.LBB21_102:                             # %do.cond.659
                                        #   in Loop: Header=BB21_36 Depth=1
	addl	%edx, %esi
	cmpl	%r12d, %esi
	movl	%eax, %ecx
	movl	$0, %eax
	jl	.LBB21_36
.LBB21_103:                             # %cleanup.667
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	clist_strip_copy_rop2, .Lfunc_end21-clist_strip_copy_rop2
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
