	.text
	.file	"gxclutil.bc"
	.globl	clist_update_trans_bbox
	.align	16, 0x90
	.type	clist_update_trans_bbox,@function
clist_update_trans_bbox:                # @clist_update_trans_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
.Ltmp2:
	.cfi_offset %rbx, -24
.Ltmp3:
	.cfi_offset %r14, -16
	movl	4(%rsi), %ecx
	movl	12(%rsi), %r9d
	movl	10132(%rdi), %r10d
	movl	10144(%rdi), %r14d
	movl	%ecx, %eax
	cltd
	idivl	%r10d
	movl	%eax, %r8d
	xorl	%r11d, %r11d
	testl	%r8d, %r8d
	movl	%r8d, %ebx
	cmovsl	%r11d, %ebx
	movl	%r9d, %eax
	cltd
	idivl	%r10d
	leal	-1(%r14), %edx
	cmpl	%eax, %r14d
	cmovgl	%eax, %edx
	cmpl	%edx, %ebx
	jg	.LBB0_13
# BB#1:                                 # %for.body.lr.ph
	imull	%r10d, %ebx
	subl	%ebx, %ecx
	movq	10200(%rdi), %rdi
	testl	%r8d, %r8d
	cmovnsl	%r8d, %r11d
	movl	%r11d, %eax
	movslq	%edx, %r9
	movl	%r10d, %r8d
	imull	%edx, %r8d
	decl	%r10d
	imulq	$1808, %rax, %rbx       # imm = 0x710
	leaq	1800(%rdi,%rbx), %rdi
	movl	%edx, %edx
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -8(%rdi)
	jle	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, -8(%rdi)
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	(%rsi), %ecx
	cmpl	%ecx, -12(%rdi)
	jle	.LBB0_6
# BB#5:                                 # %if.then.51
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, -12(%rdi)
.LBB0_6:                                # %if.end.61
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%eax, %edx
	movl	%r10d, %ecx
	jne	.LBB0_8
# BB#7:                                 # %cond.true.63
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	12(%rsi), %ecx
	subl	%r8d, %ecx
.LBB0_8:                                # %cond.end.76
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ecx, (%rdi)
	jge	.LBB0_10
# BB#9:                                 # %if.then.86
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, (%rdi)
.LBB0_10:                               # %if.end.94
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	8(%rsi), %ecx
	cmpl	%ecx, -4(%rdi)
	jge	.LBB0_12
# BB#11:                                # %if.then.105
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, -4(%rdi)
.LBB0_12:                               # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	$1808, %rdi             # imm = 0x710
	xorl	%ecx, %ecx
	cmpq	%r9, %rax
	leaq	1(%rax), %rax
	jl	.LBB0_2
.LBB0_13:                               # %for.end
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	clist_update_trans_bbox, .Lfunc_end0-clist_update_trans_bbox
	.cfi_endproc

	.globl	cmd_write_pseudo_band
	.align	16, 0x90
	.type	cmd_write_pseudo_band,@function
cmd_write_pseudo_band:                  # @cmd_write_pseudo_band
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp7:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 80
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	5984(%rbx), %r14
	testq	%r14, %r14
	movl	$-12, %ebp
	je	.LBB1_4
# BB#1:                                 # %entry
	movq	10088(%rbx), %r13
	testq	%r13, %r13
	je	.LBB1_4
# BB#2:                                 # %if.end
	addl	10260(%rbx), %ecx
	movl	%ecx, 8(%rsp)
	movl	%ecx, 12(%rsp)
	movq	10096(%rbx), %rax
	movq	%r14, %rdi
	callq	*56(%rax)
	movq	%rax, 16(%rsp)
	movq	10096(%rbx), %rax
	leaq	8(%rsp), %rdi
	movl	$16, %esi
	movq	%r13, %rdx
	callq	*24(%rax)
	movq	10096(%rbx), %rax
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	*24(%rax)
	movq	10096(%rbx), %rax
	movq	%r13, %rdi
	callq	*48(%rax)
	movl	%eax, %ebp
	movq	10096(%rbx), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%ebp, %ebp
	js	.LBB1_4
# BB#3:                                 # %if.end.28
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovsl	%ecx, %ebp
	orl	%eax, %ebp
.LBB1_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmd_write_pseudo_band, .Lfunc_end1-cmd_write_pseudo_band
	.cfi_endproc

	.globl	cmd_write_buffer
	.align	16, 0x90
	.type	cmd_write_buffer,@function
cmd_write_buffer:                       # @cmd_write_buffer
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
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
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
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	10144(%r14), %r12d
	movl	10256(%r14), %esi
	movl	10260(%r14), %edx
	leaq	10240(%r14), %rcx
	xorl	%ebx, %ebx
	xorl	%r8d, %r8d
	callq	cmd_write_band
	movl	%eax, %r13d
	movq	10200(%r14), %rbp
	testl	%r12d, %r12d
	jle	.LBB2_2
# BB#1:                                 # %entry
	testl	%r13d, %r13d
	js	.LBB2_2
# BB#11:
	movzbl	%r15b, %r15d
	.align	16, 0x90
.LBB2_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	1760(%rbp), %rcx
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%ebx, %edx
	movl	%r15d, %r8d
	callq	cmd_write_band
	orl	%eax, %r13d
	incl	%ebx
	addq	$1808, %rbp             # imm = 0x710
	cmpl	%r12d, %ebx
	jge	.LBB2_3
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB2_12 Depth=1
	testl	%eax, %eax
	jns	.LBB2_12
	jmp	.LBB2_3
.LBB2_2:
	movl	%r13d, %eax
.LBB2_3:                                # %for.cond.4.preheader
	movl	%r12d, %edx
	subl	%ebx, %edx
	jle	.LBB2_10
# BB#4:                                 # %for.body.6.preheader
	leal	-1(%r12), %ecx
	subl	%ebx, %ecx
	testb	$7, %dl
	je	.LBB2_7
# BB#5:                                 # %for.body.6.prol.preheader
	andl	$7, %edx
	negl	%edx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB2_6:                                # %for.body.6.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 1760(%rbp)
	incl	%ebx
	addq	$1808, %rbp             # imm = 0x710
	incl	%edx
	jne	.LBB2_6
.LBB2_7:                                # %for.body.6.preheader.split
	cmpl	$7, %ecx
	jb	.LBB2_10
# BB#8:                                 # %for.body.6.preheader.split.split
	subl	%ebx, %r12d
	addq	$14416, %rbp            # imm = 0x3850
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB2_9:                                # %for.body.6
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -12656(%rbp)
	movups	%xmm0, -10848(%rbp)
	movups	%xmm0, -9040(%rbp)
	movups	%xmm0, -7232(%rbp)
	movups	%xmm0, -5424(%rbp)
	movups	%xmm0, -3616(%rbp)
	movups	%xmm0, -1808(%rbp)
	movups	%xmm0, (%rbp)
	addq	$14464, %rbp            # imm = 0x3880
	addl	$-8, %r12d
	jne	.LBB2_9
.LBB2_10:                               # %for.end.12
	movq	10208(%r14), %rcx
	movq	%rcx, 10216(%r14)
	movq	$0, 10232(%r14)
	testl	%eax, %eax
	cmovnel	%eax, %r13d
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cmd_write_buffer, .Lfunc_end2-cmd_write_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_write_band,@function
cmd_write_band:                         # @cmd_write_band
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 80
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdi, %rbx
	movq	(%r15), %rbp
	testq	%rbp, %rbp
	sete	%al
	testb	%r8b, %r8b
	jne	.LBB3_2
# BB#1:                                 # %entry
	xorl	%r13d, %r13d
	testb	%al, %al
	movl	$0, %eax
	jne	.LBB3_11
.LBB3_2:                                # %if.then
	movq	5984(%rbx), %r14
	movq	10088(%rbx), %r12
	movb	%r8b, 7(%rsp)
	testq	%r14, %r14
	movl	$-12, %r13d
	je	.LBB3_9
# BB#3:                                 # %if.then
	testq	%r12, %r12
	je	.LBB3_9
# BB#4:                                 # %if.end
	movl	%esi, 8(%rsp)
	movl	%edx, 12(%rsp)
	movq	10096(%rbx), %rax
	movq	%r14, %rdi
	callq	*56(%rax)
	movq	%rax, 16(%rsp)
	movq	10096(%rbx), %rax
	leaq	8(%rsp), %rdi
	movl	$16, %esi
	movq	%r12, %rdx
	callq	*24(%rax)
	testq	%rbp, %rbp
	je	.LBB3_8
# BB#5:                                 # %do.end.25.lr.ph
	movq	8(%r15), %rax
	movq	$0, (%rax)
	.align	16, 0x90
.LBB3_6:                                # %do.end.25
                                        # =>This Inner Loop Header: Depth=1
	movq	10096(%rbx), %rax
	leaq	24(%rbp), %rdi
	movl	8(%rbp), %esi
	movq	%r14, %rdx
	callq	*24(%rax)
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB3_6
# BB#7:                                 # %for.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
.LBB3_8:                                # %if.end.33
	movq	10096(%rbx), %rax
	leaq	7(%rsp), %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	*24(%rax)
	movq	10096(%rbx), %rax
	movq	%r12, %rdi
	callq	*48(%rax)
	movl	%eax, %r13d
	movq	10096(%rbx), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%r13d, %r13d
	js	.LBB3_9
# BB#10:                                # %cleanup
	testl	%eax, %eax
	js	.LBB3_12
.LBB3_11:                               # %if.end.59
	orl	%r13d, %eax
	jmp	.LBB3_12
.LBB3_9:                                # %cleanup.thread
	movl	%r13d, %eax
.LBB3_12:                               # %cleanup.60
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cmd_write_band, .Lfunc_end3-cmd_write_band
	.cfi_endproc

	.globl	cmd_put_list_op
	.align	16, 0x90
	.type	cmd_put_list_op,@function
cmd_put_list_op:                        # @cmd_put_list_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	%r12d, %r15d
	leaq	32(%r15), %rbp
	movq	10216(%rbx), %rax
	movq	10224(%rbx), %rcx
	.align	16, 0x90
.LBB4_1:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	subq	%rax, %rcx
	cmpq	%rcx, %rbp
	jbe	.LBB4_9
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmd_write_buffer
	movl	%eax, 10192(%rbx)
	testl	%eax, %eax
	jne	.LBB4_7
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	10216(%rbx), %rax
	movq	10224(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	cmpq	%rdx, %rbp
	jbe	.LBB4_1
	jmp	.LBB4_4
.LBB4_9:                                # %if.end.24
	cmpq	%r14, 10232(%rbx)
	je	.LBB4_10
# BB#11:                                # %if.else.33
	movl	10208(%rbx), %ecx
	subl	%eax, %ecx
	andl	$7, %ecx
	leaq	(%rax,%rcx), %rdx
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_13
# BB#12:                                # %if.then.44
	movq	%rdx, (%rsi)
	jmp	.LBB4_14
.LBB4_7:                                # %if.then.13
	js	.LBB4_8
.LBB4_4:                                # %if.else
	cmpl	$0, 12156(%rbx)
	jne	.LBB4_6
# BB#5:                                 # %if.then.18
	movl	$-25, 10192(%rbx)
.LBB4_6:                                # %if.end
	movl	$1, 12144(%rbx)
	xorl	%eax, %eax
	jmp	.LBB4_16
.LBB4_10:                               # %do.end.30
	movq	8(%r14), %rcx
	addl	%r12d, 8(%rcx)
	jmp	.LBB4_15
.LBB4_8:                                # %if.then.17
	movl	$0, 12144(%rbx)
	xorl	%eax, %eax
	jmp	.LBB4_16
.LBB4_13:                               # %if.else.46
	movq	%rdx, (%r14)
.LBB4_14:                               # %if.end.47
	leaq	24(%rax,%rcx), %rax
	movq	%rdx, 8(%r14)
	movq	%r14, 10232(%rbx)
	movl	%r12d, 8(%rdx)
	movq	12216(%rbx), %rcx
	movq	%rcx, 16(%rdx)
	incq	%rcx
	movq	%rcx, 12216(%rbx)
.LBB4_15:                               # %if.end.55
	leaq	(%r15,%rax), %rcx
	movq	%rcx, 10216(%rbx)
.LBB4_16:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmd_put_list_op, .Lfunc_end4-cmd_put_list_op
	.cfi_endproc

	.globl	cmd_get_buffer_space
	.align	16, 0x90
	.type	cmd_get_buffer_space,@function
cmd_get_buffer_space:                   # @cmd_get_buffer_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	%edx, %edx
	addq	$32, %rdx
	movq	10216(%rbx), %rcx
	movq	10224(%rbx), %rax
	movq	%rax, %rsi
	subq	%rcx, %rsi
	cmpq	%rsi, %rdx
	jbe	.LBB5_3
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmd_write_buffer
	movl	%eax, 10192(%rbx)
	testl	%eax, %eax
	js	.LBB5_5
# BB#2:                                 # %if.then.if.end.7_crit_edge
	movq	10216(%rbx), %rcx
	movq	10224(%rbx), %rax
.LBB5_3:                                # %if.end.7
	addl	$-32, %eax
	subl	%ecx, %eax
	popq	%rbx
	retq
.LBB5_5:                                # %if.then.5
	movl	$0, 12144(%rbx)
	popq	%rbx
	retq
.Lfunc_end5:
	.size	cmd_get_buffer_space, .Lfunc_end5-cmd_get_buffer_space
	.cfi_endproc

	.globl	cmd_put_range_op
	.align	16, 0x90
	.type	cmd_put_range_op,@function
cmd_put_range_op:                       # @cmd_put_range_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 48
.Ltmp60:
	.cfi_offset %rbx, -48
.Ltmp61:
	.cfi_offset %r12, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r14d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	10232(%rbx), %rax
	leaq	10240(%rbx), %rbp
	testq	%rax, %rax
	je	.LBB6_8
# BB#1:                                 # %land.lhs.true
	cmpq	%rbp, %rax
	jne	.LBB6_4
# BB#2:                                 # %lor.lhs.false
	cmpl	%r12d, 10256(%rbx)
	jne	.LBB6_4
# BB#3:                                 # %lor.lhs.false.4
	cmpl	%r14d, 10260(%rbx)
	je	.LBB6_8
.LBB6_4:                                # %if.then
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmd_write_buffer
	movl	%eax, 10192(%rbx)
	testl	%eax, %eax
	je	.LBB6_7
# BB#5:                                 # %if.then.7
	js	.LBB6_6
# BB#9:                                 # %if.else
	movl	$-25, 10192(%rbx)
	movl	$1, 12144(%rbx)
	jmp	.LBB6_10
.LBB6_7:                                # %if.end.13
	movl	%r12d, 10256(%rbx)
	movl	%r14d, 10260(%rbx)
.LBB6_8:                                # %if.end.16
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r15d, %edx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cmd_put_list_op         # TAILCALL
.LBB6_6:                                # %if.then.10
	movl	$0, 12144(%rbx)
.LBB6_10:                               # %return
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cmd_put_range_op, .Lfunc_end6-cmd_put_range_op
	.cfi_endproc

	.globl	cmd_size_w
	.align	16, 0x90
	.type	cmd_size_w,@function
cmd_size_w:                             # @cmd_size_w
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	cmpl	$128, %edi
	jb	.LBB7_2
	.align	16, 0x90
.LBB7_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %ecx
	shrl	$7, %ecx
	incl	%eax
	cmpl	$16383, %edi            # imm = 0x3FFF
	movl	%ecx, %edi
	ja	.LBB7_1
.LBB7_2:                                # %while.end
	retq
.Lfunc_end7:
	.size	cmd_size_w, .Lfunc_end7-cmd_size_w
	.cfi_endproc

	.globl	cmd_put_w
	.align	16, 0x90
	.type	cmd_put_w,@function
cmd_put_w:                              # @cmd_put_w
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$128, %edi
	jb	.LBB8_1
	.align	16, 0x90
.LBB8_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	orl	$128, %eax
	movb	%al, (%rsi)
	incq	%rsi
	movl	%edi, %eax
	shrl	$7, %eax
	cmpl	$16383, %edi            # imm = 0x3FFF
	movl	%eax, %edi
	ja	.LBB8_2
	jmp	.LBB8_3
.LBB8_1:
	movl	%edi, %eax
.LBB8_3:                                # %while.end
	movb	%al, (%rsi)
	incq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end8:
	.size	cmd_put_w, .Lfunc_end8-cmd_put_w
	.cfi_endproc

	.globl	cmd_size_frac31
	.align	16, 0x90
	.type	cmd_size_frac31,@function
cmd_size_frac31:                        # @cmd_size_frac31
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	testl	$33554431, %edi         # imm = 0x1FFFFFF
	je	.LBB9_2
	.align	16, 0x90
.LBB9_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	shll	$7, %edi
	incl	%eax
	testl	$33554304, %edi         # imm = 0x1FFFF80
	jne	.LBB9_1
.LBB9_2:                                # %while.end
	retq
.Lfunc_end9:
	.size	cmd_size_frac31, .Lfunc_end9-cmd_size_frac31
	.cfi_endproc

	.globl	cmd_put_frac31
	.align	16, 0x90
	.type	cmd_put_frac31,@function
cmd_put_frac31:                         # @cmd_put_frac31
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	shrl	$24, %eax
	testl	$33554431, %edi         # imm = 0x1FFFFFF
	je	.LBB10_2
	.align	16, 0x90
.LBB10_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	orl	$1, %eax
	movb	%al, (%rsi)
	incq	%rsi
	movl	%edi, %ecx
	shll	$7, %ecx
	shrl	$17, %edi
	movzbl	%dil, %eax
	testl	$33554304, %ecx         # imm = 0x1FFFF80
	movl	%ecx, %edi
	jne	.LBB10_1
.LBB10_2:                               # %while.end
	movb	%al, (%rsi)
	incq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end10:
	.size	cmd_put_frac31, .Lfunc_end10-cmd_put_frac31
	.cfi_endproc

	.globl	cmd_put_color
	.align	16, 0x90
	.type	cmd_put_color,@function
cmd_put_color:                          # @cmd_put_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 80
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rcx, %rax
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	(%r8), %rbx
	xorl	%ecx, %ecx
	cmpq	%rax, %rbx
	je	.LBB11_34
# BB#1:                                 # %if.end
	movq	%r8, 16(%rsp)           # 8-byte Spill
	cmpl	$0, 4(%r14)
	je	.LBB11_5
# BB#2:                                 # %if.then.1
	movq	%rax, %rbp
	leaq	1760(%r13), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB11_4
# BB#3:                                 # %cond.end.thread
	movb	$5, (%rax)
	movq	%rbp, %rax
	jmp	.LBB11_5
.LBB11_4:                               # %cond.end
	movl	10192(%r15), %ecx
	testl	%ecx, %ecx
	movq	%rbp, %rax
	js	.LBB11_34
.LBB11_5:                               # %if.end.6
	movzbl	(%r14), %ebp
	cmpq	$-1, %rax
	je	.LBB11_6
# BB#9:                                 # %if.else
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	%rax, %rbp
	subq	%rbx, %rbp
	movb	1(%r14), %cl
	movb	%cl, 3(%rsp)            # 1-byte Spill
	movzwl	12252(%r15), %ecx
	movq	%r15, %rsi
	cmpl	$64, %ecx
	movl	$8, %r15d
	ja	.LBB11_11
# BB#10:                                # %cond.true.26
	addl	$7, %ecx
	shrl	$3, %ecx
	movl	%ecx, %r15d
.LBB11_11:                              # %cond.end.31
	movl	%r15d, %edx
	movq	cmd_delta_offsets(,%rdx,8), %rcx
	addq	%rcx, %rbp
	andq	cmd_delta_masks(,%rdx,8), %rbp
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	addq	(%rcx), %rdx
	xorl	%r12d, %r12d
	testq	%rax, %rax
	movl	%r15d, %r14d
	je	.LBB11_16
# BB#12:                                # %while.cond.preheader
	testb	%al, %al
	je	.LBB11_14
# BB#13:
	xorl	%r14d, %r14d
	movq	%rax, %r12
	jmp	.LBB11_16
.LBB11_6:                               # %if.then.8
	movq	%rax, %rbx
	addq	$1760, %r13             # imm = 0x6E0
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB11_8
# BB#7:                                 # %cond.end.16.thread
	addb	$15, %bpl
	movb	%bpl, (%rax)
	movq	%rbx, %r8
	jmp	.LBB11_33
.LBB11_14:
	movq	%rax, %r12
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB11_15:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%r14d
	shrq	$8, %r12
	testb	%r12b, %r12b
	je	.LBB11_15
.LBB11_16:                              # %if.end.51
	movl	%r15d, %ebx
	subl	%r14d, %ebx
	addq	$1760, %r13             # imm = 0x6E0
	cmpq	%rax, %rdx
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jne	.LBB11_27
# BB#17:                                # %if.end.51
	leal	1(%r15), %eax
	shrl	%eax
	cmpl	%ebx, %eax
	jge	.LBB11_27
# BB#18:                                # %if.then.56
	leal	1(%rax), %edx
	movq	%rax, %r14
	movq	%rsi, %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB11_20
# BB#19:                                # %cond.end.65.thread
	movb	3(%rsp), %cl            # 1-byte Reload
	movb	%cl, (%rax)
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	%r14, %rbx
	jmp	.LBB11_21
.LBB11_27:                              # %if.else.105
	leal	1(%rbx), %edx
	movq	%rsi, %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB11_29
# BB#28:                                # %cond.end.118.thread
	addl	4(%rsp), %r14d          # 4-byte Folded Reload
	movb	%r14b, (%rax)
	movq	8(%rsp), %r8            # 8-byte Reload
	jmp	.LBB11_30
.LBB11_8:                               # %cond.end.16
	movl	10192(%r15), %ecx
	testl	%ecx, %ecx
	movq	%rbx, %r8
	jns	.LBB11_33
	jmp	.LBB11_34
.LBB11_20:                              # %cond.end.65
	movl	10192(%rbx), %ecx
	testl	%ecx, %ecx
	movq	8(%rsp), %r8            # 8-byte Reload
	movq	%r14, %rbx
	js	.LBB11_34
.LBB11_21:                              # %if.end.70
	cmpl	$3, %r15d
	jb	.LBB11_24
# BB#22:                                # %if.end.70
	movl	%r15d, %ecx
	andl	$1, %ecx
	je	.LBB11_24
# BB#23:                                # %if.then.76
	leal	-24(,%r15,8), %ecx
	movq	%rbp, %rdx
	shrq	%cl, %rdx
	movl	%edx, %ecx
	shrl	$13, %ecx
	andl	$248, %ecx
	movl	%edx, %esi
	shrl	$11, %esi
	andl	$7, %esi
	orl	%ecx, %esi
	movslq	%ebx, %rcx
	movl	%ebx, %edi
	movb	%sil, (%rax,%rdi)
	movl	%edx, %esi
	shrl	$3, %esi
	andl	$224, %esi
	andl	$31, %edx
	orl	%esi, %edx
	addl	$-2, %ebx
	movb	%dl, -1(%rcx,%rax)
.LBB11_24:                              # %for.cond.preheader
	testl	%ebx, %ebx
	jle	.LBB11_33
# BB#25:                                # %for.body.lr.ph
	movslq	%ebx, %rcx
	incq	%rcx
	.align	16, 0x90
.LBB11_26:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edx
	shrl	$4, %edx
	addl	%ebp, %edx
	movb	%dl, -1(%rax,%rcx)
	shrq	$16, %rbp
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB11_26
	jmp	.LBB11_33
.LBB11_29:                              # %cond.end.118
	movl	10192(%rbp), %ecx
	testl	%ecx, %ecx
	movq	8(%rsp), %r8            # 8-byte Reload
	js	.LBB11_34
.LBB11_30:                              # %for.cond.124.preheader
	testl	%ebx, %ebx
	jle	.LBB11_33
# BB#31:                                # %for.body.127.lr.ph
	movslq	%ebx, %rcx
	incq	%rcx
	.align	16, 0x90
.LBB11_32:                              # %for.body.127
                                        # =>This Inner Loop Header: Depth=1
	movb	%r12b, -1(%rax,%rcx)
	shrq	$8, %r12
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB11_32
.LBB11_33:                              # %if.end.144
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r8, (%rax)
	xorl	%ecx, %ecx
.LBB11_34:                              # %cleanup.145
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cmd_put_color, .Lfunc_end11-cmd_put_color
	.cfi_endproc

	.globl	cmd_set_tile_colors
	.align	16, 0x90
	.type	cmd_set_tile_colors,@function
cmd_set_tile_colors:                    # @cmd_set_tile_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 32
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
.Ltmp83:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpq	%rax, 392(%rbx)
	je	.LBB12_2
# BB#1:                                 # %if.then
	leaq	392(%rbx), %r8
	movl	$clist_select_tile_color0, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rcx
	callq	cmd_put_color
	testl	%eax, %eax
	jne	.LBB12_3
.LBB12_2:                               # %if.end.5
	xorl	%eax, %eax
	cmpq	%r14, 400(%rbx)
	jne	.LBB12_4
.LBB12_3:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB12_4:                               # %if.then.9
	leaq	400(%rbx), %r8
	movl	$clist_select_tile_color1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	cmd_put_color           # TAILCALL
.Lfunc_end12:
	.size	cmd_set_tile_colors, .Lfunc_end12-cmd_set_tile_colors
	.cfi_endproc

	.globl	cmd_set_tile_phase_generic
	.align	16, 0x90
	.type	cmd_set_tile_phase_generic,@function
cmd_set_tile_phase_generic:             # @cmd_set_tile_phase_generic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 80
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %ebp
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	%r12d, %r14d
	orl	%ebp, %r14d
	movl	$3, %ebx
	cmpl	$128, %r14d
	jb	.LBB13_9
# BB#1:                                 # %cond.false
	movl	$2, %ebx
	cmpl	$128, %ebp
	jb	.LBB13_5
# BB#2:
	xorl	%ebx, %ebx
	movl	%ebp, %eax
	.align	16, 0x90
.LBB13_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	$7, %ecx
	incl	%ebx
	cmpl	$16383, %eax            # imm = 0x3FFF
	movl	%ecx, %eax
	ja	.LBB13_3
# BB#4:                                 # %cmd_size_w.exit.loopexit
	addl	$2, %ebx
.LBB13_5:                               # %cmd_size_w.exit
	movl	$1, %eax
	cmpl	$128, %r12d
	jb	.LBB13_8
# BB#6:
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB13_7:                               # %while.body.i.49
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	shrl	$7, %edx
	incl	%eax
	cmpl	$16383, %ecx            # imm = 0x3FFF
	movl	%edx, %ecx
	ja	.LBB13_7
.LBB13_8:                               # %cmd_size_w.exit51
	addl	%eax, %ebx
.LBB13_9:                               # %cond.end
	testl	%r8d, %r8d
	je	.LBB13_20
# BB#10:                                # %if.then
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	10232(%r15), %rax
	leaq	10240(%r15), %rsi
	testq	%rax, %rax
	je	.LBB13_18
# BB#11:                                # %land.lhs.true.i
	movl	10144(%r15), %r13d
	decl	%r13d
	cmpq	%rsi, %rax
	jne	.LBB13_14
# BB#12:                                # %lor.lhs.false.i
	cmpl	$0, 10256(%r15)
	jne	.LBB13_14
# BB#13:                                # %lor.lhs.false.4.i
	cmpl	%r13d, 10260(%r15)
	je	.LBB13_18
.LBB13_14:                              # %if.then.i
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	cmd_write_buffer
	movl	%eax, 10192(%r15)
	testl	%eax, %eax
	je	.LBB13_17
# BB#15:                                # %if.then.7.i
	movq	16(%rsp), %r13          # 8-byte Reload
	js	.LBB13_16
# BB#22:                                # %if.else.i
	movl	$-25, 10192(%r15)
	movl	$1, 12144(%r15)
	jmp	.LBB13_23
.LBB13_20:                              # %if.else
	leaq	1760(%r13), %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB13_23
# BB#21:                                # %cond.false.13
	movb	$2, (%rax)
	jmp	.LBB13_24
.LBB13_17:                              # %if.end.13.i
	movl	$0, 10256(%r15)
	movl	%r13d, 10260(%r15)
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB13_18:                              # %cmd_put_range_op.exit
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	movq	16(%rsp), %r13          # 8-byte Reload
	je	.LBB13_23
# BB#19:                                # %cond.false.6
	movb	$2, (%rax)
	jmp	.LBB13_24
.LBB13_16:                              # %if.then.10.i
	movl	$0, 12144(%r15)
.LBB13_23:                              # %if.end
	movl	10192(%r15), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB13_34
.LBB13_24:                              # %if.end.18
	cmpl	$127, %r14d
	movl	%ebp, 384(%r13)
	movl	%r12d, 388(%r13)
	jbe	.LBB13_25
# BB#26:                                # %cond.false.34
	leaq	1(%rax), %rcx
	cmpl	$128, %ebp
	jb	.LBB13_27
	.align	16, 0x90
.LBB13_28:                              # %while.body.i.37
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	orl	$128, %eax
	movb	%al, (%rcx)
	movl	%ebp, %edx
	shrl	$7, %edx
	cmpl	$16383, %ebp            # imm = 0x3FFF
	movq	%rcx, %rax
	leaq	1(%rcx), %rcx
	movl	%edx, %ebp
	ja	.LBB13_28
	jmp	.LBB13_29
.LBB13_25:                              # %cond.true.27
	movb	%bpl, 1(%rax)
	movb	388(%r13), %cl
	movb	%cl, 2(%rax)
	jmp	.LBB13_33
.LBB13_27:
	movl	%ebp, %edx
.LBB13_29:                              # %cmd_put_w.exit42
	movb	%dl, (%rcx)
	addq	$2, %rax
	cmpl	$128, %r12d
	jb	.LBB13_30
	.align	16, 0x90
.LBB13_31:                              # %while.body.i.28
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %ecx
	orl	$128, %ecx
	movb	%cl, (%rax)
	incq	%rax
	movl	%r12d, %ecx
	shrl	$7, %ecx
	cmpl	$16383, %r12d           # imm = 0x3FFF
	movl	%ecx, %r12d
	ja	.LBB13_31
	jmp	.LBB13_32
.LBB13_30:
	movl	%r12d, %ecx
.LBB13_32:                              # %cmd_put_w.exit
	movb	%cl, (%rax)
.LBB13_33:                              # %cleanup
	xorl	%ecx, %ecx
.LBB13_34:                              # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cmd_set_tile_phase_generic, .Lfunc_end13-cmd_set_tile_phase_generic
	.cfi_endproc

	.globl	cmd_set_tile_phase
	.align	16, 0x90
	.type	cmd_set_tile_phase,@function
cmd_set_tile_phase:                     # @cmd_set_tile_phase
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r8d, %r8d
	jmp	cmd_set_tile_phase_generic # TAILCALL
.Lfunc_end14:
	.size	cmd_set_tile_phase, .Lfunc_end14-cmd_set_tile_phase
	.cfi_endproc

	.globl	cmd_put_enable_lop
	.align	16, 0x90
	.type	cmd_put_enable_lop,@function
cmd_put_enable_lop:                     # @cmd_put_enable_lop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 32
.Ltmp100:
	.cfi_offset %rbx, -32
.Ltmp101:
	.cfi_offset %r14, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	leaq	1760(%rbx), %rsi
	movl	$1, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB15_2
# BB#1:                                 # %cond.end.thread
	testl	%r14d, %r14d
	sete	%cl
	addb	$7, %cl
	movb	%cl, (%rax)
	jmp	.LBB15_3
.LBB15_2:                               # %cond.end
	movl	10192(%rbp), %eax
	testl	%eax, %eax
	js	.LBB15_4
.LBB15_3:                               # %if.end
	movw	%r14w, 1740(%rbx)
	xorl	%eax, %eax
.LBB15_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	cmd_put_enable_lop, .Lfunc_end15-cmd_put_enable_lop
	.cfi_endproc

	.globl	cmd_put_enable_clip
	.align	16, 0x90
	.type	cmd_put_enable_clip,@function
cmd_put_enable_clip:                    # @cmd_put_enable_clip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 32
.Ltmp106:
	.cfi_offset %rbx, -32
.Ltmp107:
	.cfi_offset %r14, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	leaq	1760(%rbx), %rsi
	movl	$1, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB16_2
# BB#1:                                 # %cond.end.thread
	testl	%r14d, %r14d
	sete	%cl
	addb	$-41, %cl
	movb	%cl, (%rax)
	jmp	.LBB16_3
.LBB16_2:                               # %cond.end
	movl	10192(%rbp), %eax
	testl	%eax, %eax
	js	.LBB16_4
.LBB16_3:                               # %if.end
	movw	%r14w, 1742(%rbx)
	xorl	%eax, %eax
.LBB16_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	cmd_put_enable_clip, .Lfunc_end16-cmd_put_enable_clip
	.cfi_endproc

	.globl	cmd_set_lop
	.align	16, 0x90
	.type	cmd_set_lop,@function
cmd_set_lop:                            # @cmd_set_lop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp113:
	.cfi_def_cfa_offset 48
.Ltmp114:
	.cfi_offset %rbx, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	%ebx, %ebp
	shrl	$6, %ebp
	leaq	1760(%r14), %rsi
	movl	$3, %edx
	cmpl	$8192, %ebx             # imm = 0x2000
	jb	.LBB17_4
# BB#1:
	xorl	%edx, %edx
	movl	%ebp, %eax
	.align	16, 0x90
.LBB17_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	$7, %ecx
	incl	%edx
	cmpl	$16383, %eax            # imm = 0x3FFF
	movl	%ecx, %eax
	ja	.LBB17_2
# BB#3:                                 # %cmd_size_w.exit.loopexit
	addl	$3, %edx
.LBB17_4:                               # %cmd_size_w.exit
	movq	%r15, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB17_6
# BB#5:                                 # %cond.end.thread
	movb	$6, (%rax)
	jmp	.LBB17_7
.LBB17_6:                               # %cond.end
	movl	10192(%r15), %ecx
	testl	%ecx, %ecx
	js	.LBB17_11
.LBB17_7:                               # %if.end
	movb	%bl, %cl
	andb	$63, %cl
	movb	%cl, 1(%rax)
	addq	$2, %rax
	cmpl	$8192, %ebx             # imm = 0x2000
	jb	.LBB17_8
	.align	16, 0x90
.LBB17_9:                               # %while.body.i.14
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	orl	$128, %ecx
	movb	%cl, (%rax)
	incq	%rax
	movl	%ebp, %ecx
	shrl	$7, %ecx
	cmpl	$16383, %ebp            # imm = 0x3FFF
	movl	%ecx, %ebp
	ja	.LBB17_9
	jmp	.LBB17_10
.LBB17_8:
	movl	%ebp, %ecx
.LBB17_10:                              # %cmd_put_w.exit
	movb	%cl, (%rax)
	movl	%ebx, 1736(%r14)
	xorl	%ecx, %ecx
.LBB17_11:                              # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	cmd_set_lop, .Lfunc_end17-cmd_set_lop
	.cfi_endproc

	.globl	cmd_update_lop
	.align	16, 0x90
	.type	cmd_update_lop,@function
cmd_update_lop:                         # @cmd_update_lop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 48
.Ltmp123:
	.cfi_offset %rbx, -48
.Ltmp124:
	.cfi_offset %r12, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpl	$252, %ebp
	jne	.LBB18_6
# BB#1:                                 # %if.then
	xorl	%ecx, %ecx
	movzwl	1740(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB18_22
# BB#2:                                 # %land.lhs.true
	leaq	1760(%r12), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB18_4
# BB#3:                                 # %cond.end.thread.i
	movb	$8, (%rax)
	movw	$0, 1740(%r12)
	jmp	.LBB18_21
.LBB18_6:                               # %if.end
	movl	%ebp, %ebx
	shrl	$6, %ebx
	leaq	1760(%r12), %r15
	movl	$3, %edx
	cmpl	$8192, %ebp             # imm = 0x2000
	jb	.LBB18_10
# BB#7:
	xorl	%edx, %edx
	movl	%ebx, %eax
	.align	16, 0x90
.LBB18_8:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	$7, %ecx
	incl	%edx
	cmpl	$16383, %eax            # imm = 0x3FFF
	movl	%ecx, %eax
	ja	.LBB18_8
# BB#9:                                 # %cmd_size_w.exit.loopexit.i
	addl	$3, %edx
.LBB18_10:                              # %cmd_size_w.exit.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB18_12
# BB#11:                                # %cond.end.thread.i.14
	movb	$6, (%rax)
	jmp	.LBB18_13
.LBB18_12:                              # %cond.end.i.17
	movl	10192(%r14), %ecx
	testl	%ecx, %ecx
	js	.LBB18_22
.LBB18_13:                              # %if.end.i.18
	movb	%bpl, %cl
	andb	$63, %cl
	movb	%cl, 1(%rax)
	addq	$2, %rax
	cmpl	$8192, %ebp             # imm = 0x2000
	jb	.LBB18_14
	.align	16, 0x90
.LBB18_15:                              # %while.body.i.14.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	orl	$128, %ecx
	movb	%cl, (%rax)
	incq	%rax
	movl	%ebx, %ecx
	shrl	$7, %ecx
	cmpl	$16383, %ebx            # imm = 0x3FFF
	movl	%ecx, %ebx
	ja	.LBB18_15
	jmp	.LBB18_16
.LBB18_14:
	movl	%ebx, %ecx
.LBB18_16:                              # %if.end.9
	movb	%cl, (%rax)
	movl	%ebp, 1736(%r12)
	xorl	%ecx, %ecx
	cmpw	$0, 1740(%r12)
	jne	.LBB18_22
# BB#17:                                # %land.lhs.true.14
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB18_19
# BB#18:                                # %cond.end.thread.i.23
	movb	$7, (%rax)
	jmp	.LBB18_20
.LBB18_4:                               # %cond.end.i
	movl	10192(%r14), %ecx
	testl	%ecx, %ecx
	js	.LBB18_22
# BB#5:                                 # %cmd_put_enable_lop.exit
	movw	$0, 1740(%r12)
	jmp	.LBB18_21
.LBB18_19:                              # %cond.end.i.26
	movl	10192(%r14), %ecx
	testl	%ecx, %ecx
	js	.LBB18_22
.LBB18_20:                              # %cmd_put_enable_lop.exit30
	movw	$1, 1740(%r12)
.LBB18_21:                              # %cleanup
	xorl	%ecx, %ecx
.LBB18_22:                              # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	cmd_update_lop, .Lfunc_end18-cmd_update_lop
	.cfi_endproc

	.globl	cmd_put_params
	.align	16, 0x90
	.type	cmd_put_params,@function
cmd_put_params:                         # @cmd_put_params
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
	pushq	%r12
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 48
	subq	$528, %rsp              # imm = 0x210
.Ltmp133:
	.cfi_def_cfa_offset 576
.Ltmp134:
	.cfi_offset %rbx, -48
.Ltmp135:
	.cfi_offset %r12, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	16(%rsp), %rsi
	movl	$512, %edx              # imm = 0x200
	movq	%r14, %rdi
	callq	gs_param_list_serialize
	movl	%eax, %ebp
	movl	%ebp, 12(%rsp)
	testl	%ebp, %ebp
	jle	.LBB19_16
# BB#1:                                 # %if.then
	movq	10232(%rbx), %rax
	leaq	10240(%rbx), %r15
	testq	%rax, %rax
	je	.LBB19_10
# BB#2:                                 # %land.lhs.true.i
	movl	10144(%rbx), %r12d
	decl	%r12d
	cmpq	%r15, %rax
	jne	.LBB19_5
# BB#3:                                 # %lor.lhs.false.i
	cmpl	$0, 10256(%rbx)
	jne	.LBB19_5
# BB#4:                                 # %lor.lhs.false.4.i
	cmpl	%r12d, 10260(%rbx)
	je	.LBB19_10
.LBB19_5:                               # %if.then.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmd_write_buffer
	movl	%eax, 10192(%rbx)
	testl	%eax, %eax
	je	.LBB19_9
# BB#6:                                 # %if.then.7.i
	js	.LBB19_7
# BB#8:                                 # %if.else.i
	movl	$-25, 10192(%rbx)
	movl	$1, 12144(%rbx)
	movl	$-25, %ebp
	jmp	.LBB19_16
.LBB19_9:                               # %if.end.13.i
	movl	$0, 10256(%rbx)
	movl	%r12d, 10260(%rbx)
.LBB19_10:                              # %cmd_put_range_op.exit
	addl	$6, %ebp
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	cmd_put_list_op
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB19_11
# BB#12:                                # %cond.end.thread
	movw	$223, (%rbp)
	leaq	2(%rbp), %r15
	leaq	12(%rsp), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	addq	$6, %rbp
	movslq	12(%rsp), %r12
	cmpq	$513, %r12              # imm = 0x201
	jb	.LBB19_15
# BB#13:                                # %if.then.13
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	gs_param_list_serialize
	movl	%eax, 12(%rsp)
	xorl	%ecx, %ecx
	cmpl	%eax, %r12d
	movl	$-1, %ebp
	cmovel	%ecx, %ebp
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB19_16
# BB#14:                                # %if.then.24
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memset
	movq	10248(%rbx), %rax
	subl	%r12d, 8(%rax)
	subq	%r12, 10216(%rbx)
	jmp	.LBB19_16
.LBB19_11:                              # %cmd_put_range_op.exit.cond.end_crit_edge
	movl	10192(%rbx), %ebp
	jmp	.LBB19_16
.LBB19_15:                              # %if.else
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memcpy
	xorl	%ebp, %ebp
	jmp	.LBB19_16
.LBB19_7:                               # %if.then.10.i
	movl	$0, 12144(%rbx)
	movl	%eax, %ebp
.LBB19_16:                              # %cleanup
	movl	%ebp, %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cmd_put_params, .Lfunc_end19-cmd_put_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI20_0:
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI20_1:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.globl	clist_cfe_init
	.align	16, 0x90
	.type	clist_cfe_init,@function
clist_cfe_init:                         # @clist_cfe_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp141:
	.cfi_def_cfa_offset 32
.Ltmp142:
	.cfi_offset %rbx, -24
.Ltmp143:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$s_CFE_template, %esi
	callq	s_init_state
	movl	$0, 108(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rbx)
	movb	$0, 28(%rbx)
	movq	$0, 192(%rbx)
	movaps	.LCPI20_0(%rip), %xmm0  # xmm0 = [0,4294967295,0,0]
	movups	%xmm0, 120(%rbx)
	movl	%ebp, 136(%rbx)
	movaps	.LCPI20_1(%rip), %xmm0  # xmm0 = [0,1,1,0]
	movups	%xmm0, 140(%rbx)
	movl	$8, 156(%rbx)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*s_CFE_template+8(%rip) # TAILCALL
.Lfunc_end20:
	.size	clist_cfe_init, .Lfunc_end20-clist_cfe_init
	.cfi_endproc

	.globl	clist_cfd_init
	.align	16, 0x90
	.type	clist_cfd_init,@function
clist_cfd_init:                         # @clist_cfd_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 32
.Ltmp147:
	.cfi_offset %rbx, -32
.Ltmp148:
	.cfi_offset %r14, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$s_CFD_template, %esi
	movq	%rcx, %rdx
	callq	s_init_state
	movq	%rbx, %rdi
	callq	*s_CFD_template+40(%rip)
	movl	$-1, 124(%rbx)
	movl	%ebp, 136(%rbx)
	movl	$1, 144(%rbx)
	movl	$1, 148(%rbx)
	movl	$8, 156(%rbx)
	movl	%r14d, 140(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*s_CFD_template+8(%rip) # TAILCALL
.Lfunc_end21:
	.size	clist_cfd_init, .Lfunc_end21-clist_cfd_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_0:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
	.text
	.globl	clist_rle_init
	.align	16, 0x90
	.type	clist_rle_init,@function
clist_rle_init:                         # @clist_rle_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$s_RLE_template, %esi
	xorl	%edx, %edx
	callq	s_init_state
	movl	$1, 108(%rbx)
	movaps	.LCPI22_0(%rip), %xmm0  # xmm0 = [4294967295,4294967295]
	movups	%xmm0, 112(%rbx)
	movl	$0, 128(%rbx)
	popq	%rbx
	retq
.Lfunc_end22:
	.size	clist_rle_init, .Lfunc_end22-clist_rle_init
	.cfi_endproc

	.globl	clist_rld_init
	.align	16, 0x90
	.type	clist_rld_init,@function
clist_rld_init:                         # @clist_rld_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$s_RLD_template, %esi
	xorl	%edx, %edx
	callq	s_init_state
	movl	$1, 108(%rbx)
	movl	$1, 24(%rbx)
	movl	$0, 112(%rbx)
	popq	%rbx
	retq
.Lfunc_end23:
	.size	clist_rld_init, .Lfunc_end23-clist_rld_init
	.cfi_endproc

	.globl	cmd_read_matrix
	.align	16, 0x90
	.type	cmd_read_matrix,@function
cmd_read_matrix:                        # @cmd_read_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 32
	subq	$352, %rsp              # imm = 0x160
.Ltmp157:
	.cfi_def_cfa_offset 384
.Ltmp158:
	.cfi_offset %rbx, -32
.Ltmp159:
	.cfi_offset %r14, -24
.Ltmp160:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	movl	$25, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	sread_string
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sget_matrix
	movq	%rbx, %rdi
	callq	stell
	leaq	(%rax,%r15), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	cmd_read_matrix, .Lfunc_end24-cmd_read_matrix
	.cfi_endproc

	.type	cmd_delta_offsets,@object # @cmd_delta_offsets
	.section	.rodata,"a",@progbits
	.globl	cmd_delta_offsets
	.align	16
cmd_delta_offsets:
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	2056                    # 0x808
	.quad	1056784                 # 0x102010
	.quad	134744072               # 0x8080808
	.quad	69257398280             # 0x1020100808
	.quad	8830587504648           # 0x80808080808
	.quad	4538852853680136        # 0x10201008080808
	.quad	578721382704613384      # 0x808080808080808
	.size	cmd_delta_offsets, 72

	.type	clist_select_color0,@object # @clist_select_color0
	.globl	clist_select_color0
	.align	4
clist_select_color0:
	.byte	16                      # 0x10
	.byte	12                      # 0xc
	.zero	2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	clist_select_color0, 12

	.type	clist_select_color1,@object # @clist_select_color1
	.globl	clist_select_color1
	.align	4
clist_select_color1:
	.byte	32                      # 0x20
	.byte	13                      # 0xd
	.zero	2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	clist_select_color1, 12

	.type	clist_select_tile_color0,@object # @clist_select_tile_color0
	.globl	clist_select_tile_color0
	.align	4
clist_select_tile_color0:
	.byte	16                      # 0x10
	.byte	12                      # 0xc
	.zero	2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	clist_select_tile_color0, 12

	.type	clist_select_tile_color1,@object # @clist_select_tile_color1
	.globl	clist_select_tile_color1
	.align	4
clist_select_tile_color1:
	.byte	32                      # 0x20
	.byte	13                      # 0xd
	.zero	2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	clist_select_tile_color1, 12

	.type	cmd_delta_masks,@object # @cmd_delta_masks
	.align	16
cmd_delta_masks:
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	3855                    # 0xf0f
	.quad	2047775                 # 0x1f3f1f
	.quad	252645135               # 0xf0f0f0f
	.quad	134202986255            # 0x1f3f1f0f0f
	.quad	16557351571215          # 0xf0f0f0f0f0f
	.quad	8795126907211535        # 0x1f3f1f0f0f0f0f
	.quad	1085102592571150095     # 0xf0f0f0f0f0f0f0f
	.size	cmd_delta_masks, 72


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
