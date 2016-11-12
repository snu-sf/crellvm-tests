	.text
	.file	"fli.bc"
	.globl	fli_read_header
	.align	16, 0x90
	.type	fli_read_header,@function
fli_read_header:                        # @fli_read_header
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_long
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movq	-16(%rbp), %rsi
	movw	%ax, 8(%rsi)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movq	-16(%rbp), %rsi
	movw	%ax, 10(%rsi)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movq	-16(%rbp), %rsi
	movw	%ax, 12(%rsi)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movq	-16(%rbp), %rsi
	movw	%ax, 14(%rsi)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movq	-16(%rbp), %rsi
	movw	%ax, 16(%rsi)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movq	-16(%rbp), %rsi
	movw	%ax, 18(%rsi)
	movq	-16(%rbp), %rsi
	movzwl	8(%rsi), %ecx
	cmpl	$44817, %ecx            # imm = 0xAF11
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movzwl	%ax, %ecx
	imull	$14, %ecx, %ecx
	movslq	%ecx, %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, 24(%rdx)
	jmp	.LBB0_6
.LBB0_2:                                # %if.else
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %ecx
	cmpl	$44818, %ecx            # imm = 0xAF12
	jne	.LBB0_4
# BB#3:                                 # %if.then.16
	movq	-8(%rbp), %rdi
	callq	fli_read_long
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB0_5
.LBB0_4:                                # %if.else.19
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rsi
	movw	$0, 8(%rsi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %if.end.22
	movq	-16(%rbp), %rax
	movzwl	12(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_8
# BB#7:                                 # %if.then.27
	movq	-16(%rbp), %rax
	movw	$320, 12(%rax)          # imm = 0x140
.LBB0_8:                                # %if.end.29
	movq	-16(%rbp), %rax
	movzwl	14(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_10
# BB#9:                                 # %if.then.34
	movq	-16(%rbp), %rax
	movw	$200, 14(%rax)
.LBB0_10:                               # %if.end.36
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fli_read_header, .Lfunc_end0-fli_read_header
	.cfi_endproc

	.align	16, 0x90
	.type	fli_read_long,@function
fli_read_long:                          # @fli_read_long
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-12(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movzbl	-9(%rbp), %r8d
	shll	$24, %r8d
	movslq	%r8d, %rcx
	movzbl	-10(%rbp), %r8d
	shll	$16, %r8d
	movslq	%r8d, %rdx
	orq	%rdx, %rcx
	movzbl	-11(%rbp), %r8d
	shll	$8, %r8d
	movslq	%r8d, %rdx
	orq	%rdx, %rcx
	movzbl	-12(%rbp), %r8d
	movl	%r8d, %edx
	orq	%rdx, %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fli_read_long, .Lfunc_end1-fli_read_long
	.cfi_endproc

	.align	16, 0x90
	.type	fli_read_short,@function
fli_read_short:                         # @fli_read_short
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
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-10(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movzbl	-9(%rbp), %r8d
	shll	$8, %r8d
	movw	%r8w, %r9w
	movzwl	%r9w, %r8d
	movzbl	-10(%rbp), %r10d
	orl	%r10d, %r8d
	movw	%r8w, %r9w
	movzwl	%r9w, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fli_read_short, .Lfunc_end2-fli_read_short
	.cfi_endproc

	.globl	fli_write_header
	.align	16, 0x90
	.type	fli_write_header,@function
fli_write_header:                       # @fli_write_header
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
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	fli_write_long
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movzwl	8(%rsi), %esi
	callq	fli_write_short
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzwl	10(%r8), %esi
	callq	fli_write_short
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzwl	12(%r8), %esi
	callq	fli_write_short
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzwl	14(%r8), %esi
	callq	fli_write_short
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzwl	16(%r8), %esi
	callq	fli_write_short
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzwl	18(%r8), %esi
	callq	fli_write_short
	movq	-16(%rbp), %rdi
	movzwl	8(%rdi), %eax
	cmpl	$44817, %eax            # imm = 0xAF11
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$14, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	%rcx
	movw	%ax, %r8w
	movzwl	%r8w, %esi
	callq	fli_write_short
	jmp	.LBB3_6
.LBB3_2:                                # %if.else
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %ecx
	cmpl	$44818, %ecx            # imm = 0xAF12
	jne	.LBB3_4
# BB#3:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	fli_write_long
	movl	$80, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	fli_write_long
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	callq	fli_write_long
	jmp	.LBB3_5
.LBB3_4:                                # %if.else.13
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fli_write_header, .Lfunc_end3-fli_write_header
	.cfi_endproc

	.align	16, 0x90
	.type	fli_write_long,@function
fli_write_long:                         # @fli_write_long
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
	subq	$48, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-20(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	andq	$255, %rsi
	movb	%sil, %r9b
	movb	%r9b, -20(%rbp)
	movq	-16(%rbp), %rsi
	shrq	$8, %rsi
	andq	$255, %rsi
	movb	%sil, %r9b
	movb	%r9b, -19(%rbp)
	movq	-16(%rbp), %rsi
	shrq	$16, %rsi
	andq	$255, %rsi
	movb	%sil, %r9b
	movb	%r9b, -18(%rbp)
	movq	-16(%rbp), %rsi
	shrq	$24, %rsi
	andq	$255, %rsi
	movb	%sil, %r9b
	movb	%r9b, -17(%rbp)
	movq	-8(%rbp), %rsi
	movq	%r8, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	fwrite
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fli_write_long, .Lfunc_end4-fli_write_long
	.cfi_endproc

	.align	16, 0x90
	.type	fli_write_short,@function
fli_write_short:                        # @fli_write_short
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
	subq	$32, %rsp
	movw	%si, %ax
	movl	$1, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$2, %ecx
	movl	%ecx, %edx
	leaq	-12(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %ecx
	andl	$255, %ecx
	movb	%cl, %r9b
	movb	%r9b, -12(%rbp)
	movzwl	-10(%rbp), %ecx
	sarl	$8, %ecx
	andl	$255, %ecx
	movb	%cl, %r9b
	movb	%r9b, -11(%rbp)
	movq	-8(%rbp), %rcx
	movq	%r8, %rdi
	callq	fwrite
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fli_write_short, .Lfunc_end5-fli_write_short
	.cfi_endproc

	.globl	fli_read_frame
	.align	16, 0x90
	.type	fli_read_frame,@function
fli_read_frame:                         # @fli_read_frame
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftell
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_long
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -54(%rbp)
	movzwl	-56(%rbp), %r10d
	cmpl	$61946, %r10d           # imm = 0xF1FA
	jne	.LBB6_18
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	fseek
	movl	$0, -76(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movzwl	-54(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_17
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	callq	ftell
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_long
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -96(%rbp)
	movzwl	-96(%rbp), %ecx
	addl	$-4, %ecx
	movl	%ecx, %edi
	subl	$14, %ecx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB6_12
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_4:                                # %sw.bb
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	fli_read_color
	jmp	.LBB6_13
.LBB6_5:                                # %sw.bb.18
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	fli_read_color_2
	jmp	.LBB6_13
.LBB6_6:                                # %sw.bb.19
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	fli_read_black
	jmp	.LBB6_13
.LBB6_7:                                # %sw.bb.20
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	fli_read_brun
	jmp	.LBB6_13
.LBB6_8:                                # %sw.bb.21
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	fli_read_copy
	jmp	.LBB6_13
.LBB6_9:                                # %sw.bb.22
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fli_read_lc
	jmp	.LBB6_13
.LBB6_10:                               # %sw.bb.23
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fli_read_lc_2
	jmp	.LBB6_13
.LBB6_11:                               # %sw.bb.24
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_13
.LBB6_12:                               # %sw.default
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_13
.LBB6_13:                               # %sw.epilog
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-104(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB6_15
# BB#14:                                # %if.then.26
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
.LBB6_15:                               # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	%rax, %rsi
	callq	fseek
	movl	%eax, -136(%rbp)        # 4-byte Spill
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB6_2
.LBB6_17:                               # %for.end
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.32
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	fseek
	movl	%eax, -140(%rbp)        # 4-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fli_read_frame, .Lfunc_end6-fli_read_frame
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_5
	.quad	.LBB6_12
	.quad	.LBB6_12
	.quad	.LBB6_10
	.quad	.LBB6_12
	.quad	.LBB6_12
	.quad	.LBB6_12
	.quad	.LBB6_4
	.quad	.LBB6_9
	.quad	.LBB6_6
	.quad	.LBB6_12
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_12
	.quad	.LBB6_11

	.text
	.globl	fli_read_color
	.align	16, 0x90
	.type	fli_read_color,@function
fli_read_color:                         # @fli_read_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movw	$0, -38(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -34(%rbp)
	movw	-34(%rbp), %ax
	movw	%ax, -36(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #     Child Loop BB7_15 Depth 2
	movzwl	-36(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB7_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, %sil
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -42(%rbp)
	movzwl	-42(%rbp), %ecx
	cmpl	$0, %ecx
	movb	%sil, -45(%rbp)         # 1-byte Spill
	jne	.LBB7_8
# BB#3:                                 # %if.then
	movw	$0, -38(%rbp)
.LBB7_4:                                # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-38(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	jge	.LBB7_7
# BB#5:                                 # %for.body.13
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	shll	$2, %ecx
	movb	%cl, %al
	movzwl	-38(%rbp), %ecx
	movl	%ecx, %edi
	movq	-32(%rbp), %rdx
	movb	%al, (%rdx,%rdi)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=1
	movw	-38(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -38(%rbp)
	jmp	.LBB7_4
.LBB7_7:                                # %for.end
	jmp	.LBB7_22
.LBB7_8:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movw	-40(%rbp), %ax
	movw	%ax, -44(%rbp)
.LBB7_9:                                # %for.cond.17
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-44(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -46(%rbp)          # 1-byte Spill
	jle	.LBB7_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB7_9 Depth=2
	movzwl	-38(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	setl	%cl
	movb	%cl, -46(%rbp)          # 1-byte Spill
.LBB7_11:                               # %land.end
                                        #   in Loop: Header=BB7_9 Depth=2
	movb	-46(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_12
	jmp	.LBB7_14
.LBB7_12:                               # %for.body.24
                                        #   in Loop: Header=BB7_9 Depth=2
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movw	-38(%rbp), %di
	addw	$1, %di
	movw	%di, -38(%rbp)
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movw	-38(%rbp), %di
	addw	$1, %di
	movw	%di, -38(%rbp)
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movw	-38(%rbp), %di
	addw	$1, %di
	movw	%di, -38(%rbp)
# BB#13:                                # %for.inc.40
                                        #   in Loop: Header=BB7_9 Depth=2
	movw	-44(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -44(%rbp)
	jmp	.LBB7_9
.LBB7_14:                               # %for.end.41
                                        #   in Loop: Header=BB7_1 Depth=1
	movw	-42(%rbp), %ax
	movw	%ax, -44(%rbp)
.LBB7_15:                               # %for.cond.42
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-44(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -47(%rbp)          # 1-byte Spill
	jle	.LBB7_17
# BB#16:                                # %land.rhs.46
                                        #   in Loop: Header=BB7_15 Depth=2
	movzwl	-38(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	setl	%cl
	movb	%cl, -47(%rbp)          # 1-byte Spill
.LBB7_17:                               # %land.end.50
                                        #   in Loop: Header=BB7_15 Depth=2
	movb	-47(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_18
	jmp	.LBB7_20
.LBB7_18:                               # %for.body.51
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	shll	$2, %ecx
	movb	%cl, %al
	movw	-38(%rbp), %dx
	movw	%dx, %si
	addw	$1, %si
	movw	%si, -38(%rbp)
	movzwl	%dx, %ecx
	movl	%ecx, %edi
	movq	-32(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	shll	$2, %ecx
	movb	%cl, %al
	movw	-38(%rbp), %dx
	movw	%dx, %si
	addw	$1, %si
	movw	%si, -38(%rbp)
	movzwl	%dx, %ecx
	movl	%ecx, %edi
	movq	-32(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	shll	$2, %ecx
	movb	%cl, %al
	movw	-38(%rbp), %dx
	movw	%dx, %si
	addw	$1, %si
	movw	%si, -38(%rbp)
	movzwl	%dx, %ecx
	movl	%ecx, %edi
	movq	-32(%rbp), %r8
	movb	%al, (%r8,%rdi)
# BB#19:                                # %for.inc.73
                                        #   in Loop: Header=BB7_15 Depth=2
	movw	-44(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -44(%rbp)
	jmp	.LBB7_15
.LBB7_20:                               # %for.end.75
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_21
.LBB7_21:                               # %for.inc.76
                                        #   in Loop: Header=BB7_1 Depth=1
	movw	-36(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -36(%rbp)
	jmp	.LBB7_1
.LBB7_22:                               # %for.end.78
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fli_read_color, .Lfunc_end7-fli_read_color
	.cfi_endproc

	.globl	fli_read_color_2
	.align	16, 0x90
	.type	fli_read_color_2,@function
fli_read_color_2:                       # @fli_read_color_2
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -34(%rbp)
	movw	$0, -38(%rbp)
	movw	-34(%rbp), %ax
	movw	%ax, -36(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_15 Depth 2
	movzwl	-36(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB8_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, %sil
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -42(%rbp)
	movzwl	-42(%rbp), %ecx
	cmpl	$0, %ecx
	movb	%sil, -45(%rbp)         # 1-byte Spill
	jne	.LBB8_8
# BB#3:                                 # %if.then
	movw	$0, -38(%rbp)
.LBB8_4:                                # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-38(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	jge	.LBB8_7
# BB#5:                                 # %for.body.13
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzwl	-38(%rbp), %ecx
	movl	%ecx, %edi
	movq	-32(%rbp), %rdx
	movb	%al, (%rdx,%rdi)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	movw	-38(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -38(%rbp)
	jmp	.LBB8_4
.LBB8_7:                                # %for.end
	jmp	.LBB8_22
.LBB8_8:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movw	-40(%rbp), %ax
	movw	%ax, -44(%rbp)
.LBB8_9:                                # %for.cond.15
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-44(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -46(%rbp)          # 1-byte Spill
	jle	.LBB8_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB8_9 Depth=2
	movzwl	-38(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	setl	%cl
	movb	%cl, -46(%rbp)          # 1-byte Spill
.LBB8_11:                               # %land.end
                                        #   in Loop: Header=BB8_9 Depth=2
	movb	-46(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_12
	jmp	.LBB8_14
.LBB8_12:                               # %for.body.22
                                        #   in Loop: Header=BB8_9 Depth=2
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movw	-38(%rbp), %di
	addw	$1, %di
	movw	%di, -38(%rbp)
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movw	-38(%rbp), %di
	addw	$1, %di
	movw	%di, -38(%rbp)
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movzwl	-38(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movw	-38(%rbp), %di
	addw	$1, %di
	movw	%di, -38(%rbp)
# BB#13:                                # %for.inc.38
                                        #   in Loop: Header=BB8_9 Depth=2
	movw	-44(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -44(%rbp)
	jmp	.LBB8_9
.LBB8_14:                               # %for.end.39
                                        #   in Loop: Header=BB8_1 Depth=1
	movw	-42(%rbp), %ax
	movw	%ax, -44(%rbp)
.LBB8_15:                               # %for.cond.40
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-44(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -47(%rbp)          # 1-byte Spill
	jle	.LBB8_17
# BB#16:                                # %land.rhs.44
                                        #   in Loop: Header=BB8_15 Depth=2
	movzwl	-38(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	setl	%cl
	movb	%cl, -47(%rbp)          # 1-byte Spill
.LBB8_17:                               # %land.end.48
                                        #   in Loop: Header=BB8_15 Depth=2
	movb	-47(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_18
	jmp	.LBB8_20
.LBB8_18:                               # %for.body.49
                                        #   in Loop: Header=BB8_15 Depth=2
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movw	-38(%rbp), %cx
	movw	%cx, %dx
	addw	$1, %dx
	movw	%dx, -38(%rbp)
	movzwl	%cx, %esi
	movl	%esi, %edi
	movq	-32(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movw	-38(%rbp), %cx
	movw	%cx, %dx
	addw	$1, %dx
	movw	%dx, -38(%rbp)
	movzwl	%cx, %esi
	movl	%esi, %edi
	movq	-32(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movw	-38(%rbp), %cx
	movw	%cx, %dx
	addw	$1, %dx
	movw	%dx, -38(%rbp)
	movzwl	%cx, %esi
	movl	%esi, %edi
	movq	-32(%rbp), %r8
	movb	%al, (%r8,%rdi)
# BB#19:                                # %for.inc.62
                                        #   in Loop: Header=BB8_15 Depth=2
	movw	-44(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -44(%rbp)
	jmp	.LBB8_15
.LBB8_20:                               # %for.end.64
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_21
.LBB8_21:                               # %for.inc.65
                                        #   in Loop: Header=BB8_1 Depth=1
	movw	-36(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -36(%rbp)
	jmp	.LBB8_1
.LBB8_22:                               # %for.end.67
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fli_read_color_2, .Lfunc_end8-fli_read_color_2
	.cfi_endproc

	.globl	fli_read_black
	.align	16, 0x90
	.type	fli_read_black,@function
fli_read_black:                         # @fli_read_black
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movzwl	12(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movzwl	14(%rdx), %r8d
	imull	%r8d, %ecx
	movslq	%ecx, %rdx
	movl	%eax, %esi
	callq	memset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	fli_read_black, .Lfunc_end9-fli_read_black
	.cfi_endproc

	.globl	fli_read_brun
	.align	16, 0x90
	.type	fli_read_brun,@function
fli_read_brun:                          # @fli_read_brun
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movw	$0, -26(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #       Child Loop BB10_6 Depth 3
	movzwl	-26(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, %cl
	movzbl	%al, %edx
	movw	%dx, %si
	movw	%si, -44(%rbp)
	movw	$0, -42(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzwl	12(%r8), %edx
	movzwl	-26(%rbp), %r9d
	imull	%r9d, %edx
	movslq	%edx, %r8
	addq	%r8, %rdi
	movq	%rdi, -40(%rbp)
	movw	-44(%rbp), %si
	movw	%si, -46(%rbp)
	movb	%cl, -52(%rbp)          # 1-byte Spill
.LBB10_3:                               # %for.cond.6
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_6 Depth 3
	movzwl	-46(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB10_13
# BB#4:                                 # %for.body.10
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, %cl
	movzbl	%al, %edx
	movw	%dx, %si
	movw	%si, -48(%rbp)
	movzwl	-48(%rbp), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	movb	%cl, -53(%rbp)          # 1-byte Spill
	je	.LBB10_10
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB10_3 Depth=2
	xorl	%eax, %eax
	movw	-48(%rbp), %cx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movw	%ax, %cx
	movw	%cx, -50(%rbp)
.LBB10_6:                               # %for.cond.17
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	-50(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB10_9
# BB#7:                                 # %for.body.21
                                        #   in Loop: Header=BB10_6 Depth=3
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movw	-42(%rbp), %cx
	movw	%cx, %dx
	addw	$1, %dx
	movw	%dx, -42(%rbp)
	movzwl	%cx, %esi
	movl	%esi, %edi
	movq	-40(%rbp), %r8
	movb	%al, (%r8,%rdi)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB10_6 Depth=3
	movw	-50(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -50(%rbp)
	jmp	.LBB10_6
.LBB10_9:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=2
	jmp	.LBB10_11
.LBB10_10:                              # %if.else
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, -51(%rbp)
	movzwl	-42(%rbp), %ecx
	movl	%ecx, %edi
	addq	-40(%rbp), %rdi
	movzbl	-51(%rbp), %ecx
	movb	%cl, %al
	movzwl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movzbl	%al, %esi
	callq	memset
	movzwl	-48(%rbp), %ecx
	movzwl	-42(%rbp), %esi
	addl	%ecx, %esi
	movw	%si, %r8w
	movw	%r8w, -42(%rbp)
.LBB10_11:                              # %if.end
                                        #   in Loop: Header=BB10_3 Depth=2
	jmp	.LBB10_12
.LBB10_12:                              # %for.inc.31
                                        #   in Loop: Header=BB10_3 Depth=2
	movw	-46(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -46(%rbp)
	jmp	.LBB10_3
.LBB10_13:                              # %for.end.33
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_14
.LBB10_14:                              # %for.inc.34
                                        #   in Loop: Header=BB10_1 Depth=1
	movw	-26(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -26(%rbp)
	jmp	.LBB10_1
.LBB10_15:                              # %for.end.36
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fli_read_brun, .Lfunc_end10-fli_read_brun
	.cfi_endproc

	.globl	fli_read_copy
	.align	16, 0x90
	.type	fli_read_copy,@function
fli_read_copy:                          # @fli_read_copy
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movzwl	12(%rdx), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdx
	movzwl	14(%rdx), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	callq	fread
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	fli_read_copy, .Lfunc_end11-fli_read_copy
	.cfi_endproc

	.globl	fli_read_lc
	.align	16, 0x90
	.type	fli_read_lc,@function
fli_read_lc:                            # @fli_read_lc
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movzwl	12(%rcx), %eax
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %r8d
	imull	%r8d, %eax
	movslq	%eax, %rdx
	callq	memcpy
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -38(%rbp)
	movw	$0, -34(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	movzwl	-34(%rbp), %eax
	movzwl	-38(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, %cl
	movzbl	%al, %edx
	movw	%dx, %si
	movw	%si, -52(%rbp)
	movw	$0, -50(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r8
	movzwl	12(%r8), %edx
	movzwl	-36(%rbp), %r9d
	movzwl	-34(%rbp), %r10d
	addl	%r10d, %r9d
	imull	%r9d, %edx
	movslq	%edx, %r8
	addq	%r8, %rdi
	movq	%rdi, -48(%rbp)
	movw	-52(%rbp), %si
	movw	%si, -54(%rbp)
	movb	%cl, -60(%rbp)          # 1-byte Spill
.LBB12_3:                               # %for.cond.14
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-54(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB12_9
# BB#4:                                 # %for.body.18
                                        #   in Loop: Header=BB12_3 Depth=2
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -58(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, %sil
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -56(%rbp)
	movzwl	-58(%rbp), %ecx
	movzwl	-50(%rbp), %r8d
	addl	%ecx, %r8d
	movw	%r8w, %dx
	movw	%dx, -50(%rbp)
	movzwl	-56(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	movb	%sil, -61(%rbp)         # 1-byte Spill
	je	.LBB12_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB12_3 Depth=2
	xorl	%eax, %eax
	movw	-56(%rbp), %cx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movw	%ax, %cx
	movw	%cx, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, -59(%rbp)
	movzwl	-50(%rbp), %esi
	movl	%esi, %edi
	addq	-48(%rbp), %rdi
	movzbl	-59(%rbp), %esi
	movb	%sil, %al
	movzwl	-56(%rbp), %esi
	movl	%esi, %edx
	movzbl	%al, %esi
	callq	memset
	movzwl	-56(%rbp), %esi
	movzwl	-50(%rbp), %r8d
	addl	%esi, %r8d
	movw	%r8w, %cx
	movw	%cx, -50(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	$1, %eax
	movl	%eax, %edx
	movzwl	-50(%rbp), %eax
	movl	%eax, %ecx
	addq	-48(%rbp), %rcx
	movzwl	-56(%rbp), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movzwl	-56(%rbp), %r8d
	movzwl	-50(%rbp), %r9d
	addl	%r8d, %r9d
	movw	%r9w, %r10w
	movw	%r10w, -50(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB12_7:                               # %if.end
                                        #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_8
.LBB12_8:                               # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=2
	movw	-54(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -54(%rbp)
	jmp	.LBB12_3
.LBB12_9:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_10
.LBB12_10:                              # %for.inc.46
                                        #   in Loop: Header=BB12_1 Depth=1
	movw	-34(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -34(%rbp)
	jmp	.LBB12_1
.LBB12_11:                              # %for.end.47
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fli_read_lc, .Lfunc_end12-fli_read_lc
	.cfi_endproc

	.globl	fli_read_lc_2
	.align	16, 0x90
	.type	fli_read_lc_2,@function
fli_read_lc_2:                          # @fli_read_lc_2
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movzwl	12(%rcx), %eax
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %r8d
	imull	%r8d, %eax
	movslq	%eax, %rdx
	callq	memcpy
	movw	$0, -34(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -38(%rbp)
	movw	$0, -36(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
                                        #     Child Loop BB13_9 Depth 2
                                        #       Child Loop BB13_12 Depth 3
	movzwl	-36(%rbp), %eax
	movzwl	-38(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -52(%rbp)
	movw	$0, -56(%rbp)
	movw	$0, -58(%rbp)
.LBB13_3:                               # %while.cond
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-52(%rbp), %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	je	.LBB13_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=2
	movzwl	-52(%rbp), %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB13_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB13_3 Depth=2
	xorl	%eax, %eax
	movswl	-52(%rbp), %ecx
	subl	%ecx, %eax
	movzwl	-34(%rbp), %ecx
	addl	%eax, %ecx
	movw	%cx, %dx
	movw	%dx, -34(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else
                                        #   in Loop: Header=BB13_3 Depth=2
	movw	$1, -56(%rbp)
	movzwl	-52(%rbp), %eax
	andl	$255, %eax
	movw	%ax, %cx
	movw	%cx, -58(%rbp)
.LBB13_7:                               # %if.end
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	-8(%rbp), %rdi
	callq	fli_read_short
	movw	%ax, -52(%rbp)
	jmp	.LBB13_3
.LBB13_8:                               # %while.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movw	$0, -50(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzwl	12(%rcx), %edx
	movzwl	-34(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movw	-52(%rbp), %di
	movw	%di, -54(%rbp)
.LBB13_9:                               # %for.cond.22
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_12 Depth 3
	movzwl	-54(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB13_18
# BB#10:                                # %for.body.26
                                        #   in Loop: Header=BB13_9 Depth=2
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -62(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, %sil
	movzbl	%al, %ecx
	movw	%cx, %dx
	movw	%dx, -60(%rbp)
	movzwl	-62(%rbp), %ecx
	movzwl	-50(%rbp), %r8d
	addl	%ecx, %r8d
	movw	%r8w, %dx
	movw	%dx, -50(%rbp)
	movzwl	-60(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	movb	%sil, -65(%rbp)         # 1-byte Spill
	je	.LBB13_15
# BB#11:                                # %if.then.38
                                        #   in Loop: Header=BB13_9 Depth=2
	xorl	%eax, %eax
	movw	-60(%rbp), %cx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movw	%ax, %cx
	movw	%cx, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, -63(%rbp)
	movq	-8(%rbp), %rdi
	callq	fli_read_char
	movb	%al, -64(%rbp)
.LBB13_12:                              # %while.cond.45
                                        #   Parent Loop BB13_1 Depth=1
                                        #     Parent Loop BB13_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	-60(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB13_14
# BB#13:                                # %while.body.49
                                        #   in Loop: Header=BB13_12 Depth=3
	movb	-63(%rbp), %al
	movw	-50(%rbp), %cx
	movw	%cx, %dx
	addw	$1, %dx
	movw	%dx, -50(%rbp)
	movzwl	%cx, %esi
	movl	%esi, %edi
	movq	-48(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movb	-64(%rbp), %al
	movw	-50(%rbp), %cx
	movw	%cx, %dx
	addw	$1, %dx
	movw	%dx, -50(%rbp)
	movzwl	%cx, %esi
	movl	%esi, %edi
	movq	-48(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movw	-60(%rbp), %cx
	addw	$-1, %cx
	movw	%cx, -60(%rbp)
	jmp	.LBB13_12
.LBB13_14:                              # %while.end.53
                                        #   in Loop: Header=BB13_9 Depth=2
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.54
                                        #   in Loop: Header=BB13_9 Depth=2
	movl	$2, %eax
	movl	%eax, %edx
	movzwl	-50(%rbp), %eax
	movl	%eax, %ecx
	addq	-48(%rbp), %rcx
	movzwl	-60(%rbp), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movzwl	-60(%rbp), %r8d
	shll	$1, %r8d
	movzwl	-50(%rbp), %r9d
	addl	%r8d, %r9d
	movw	%r9w, %r10w
	movw	%r10w, -50(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB13_16:                              # %if.end.63
                                        #   in Loop: Header=BB13_9 Depth=2
	jmp	.LBB13_17
.LBB13_17:                              # %for.inc
                                        #   in Loop: Header=BB13_9 Depth=2
	movw	-54(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -54(%rbp)
	jmp	.LBB13_9
.LBB13_18:                              # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpw	$0, -56(%rbp)
	je	.LBB13_20
# BB#19:                                # %if.then.66
                                        #   in Loop: Header=BB13_1 Depth=1
	movw	-58(%rbp), %ax
	movb	%al, %cl
	movzwl	-50(%rbp), %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB13_20:                              # %if.end.70
                                        #   in Loop: Header=BB13_1 Depth=1
	movw	-34(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -34(%rbp)
# BB#21:                                # %for.inc.72
                                        #   in Loop: Header=BB13_1 Depth=1
	movw	-36(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -36(%rbp)
	jmp	.LBB13_1
.LBB13_22:                              # %for.end.74
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	fli_read_lc_2, .Lfunc_end13-fli_read_lc_2
	.cfi_endproc

	.globl	fli_write_frame
	.align	16, 0x90
	.type	fli_write_frame,@function
fli_write_frame:                        # @fli_write_frame
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
	subq	$112, %rsp
	movzwl	16(%rbp), %eax
	movw	%ax, %r10w
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movw	%r10w, -50(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftell
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	addq	$16, %rax
	xorl	%edx, %edx
	movq	%rax, %rsi
	callq	fseek
	movq	-16(%rbp), %rcx
	movzwl	10(%rcx), %edx
	testl	%edx, %edx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_17
.LBB14_17:                              # %entry
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_3
.LBB14_1:                               # %sw.bb
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	jmp	.LBB14_3
.LBB14_2:                               # %sw.bb.2
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB14_3:                               # %sw.epilog
	movq	$0, -72(%rbp)
	movw	$-3590, -64(%rbp)       # imm = 0xFFFFFFFFFFFFF1FA
	movw	$0, -62(%rbp)
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %ecx
	cmpl	$44817, %ecx            # imm = 0xAF11
	jne	.LBB14_7
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	fli_write_color
	cmpl	$0, %eax
	je	.LBB14_6
# BB#5:                                 # %if.then.7
	movw	-62(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -62(%rbp)
.LBB14_6:                               # %if.end
	jmp	.LBB14_13
.LBB14_7:                               # %if.else
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %ecx
	cmpl	$44818, %ecx            # imm = 0xAF12
	jne	.LBB14_11
# BB#8:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	fli_write_color_2
	cmpl	$0, %eax
	je	.LBB14_10
# BB#9:                                 # %if.then.16
	movw	-62(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -62(%rbp)
.LBB14_10:                              # %if.end.19
	jmp	.LBB14_12
.LBB14_11:                              # %if.else.20
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB14_12:                              # %if.end.22
	jmp	.LBB14_13
.LBB14_13:                              # %if.end.23
	cmpq	$0, -24(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.26
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	fli_write_brun
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.27
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fli_write_lc
.LBB14_16:                              # %if.end.28
	movw	-62(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -62(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	fli_write_long
	movq	-8(%rbp), %rdi
	movzwl	-64(%rbp), %esi
	callq	fli_write_short
	movq	-8(%rbp), %rdi
	movzwl	-62(%rbp), %esi
	callq	fli_write_short
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	fseek
	movq	-16(%rbp), %rsi
	movw	10(%rsi), %cx
	addw	$1, %cx
	movw	%cx, 10(%rsi)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	fli_write_frame, .Lfunc_end14-fli_write_frame
	.cfi_endproc

	.globl	fli_write_color
	.align	16, 0x90
	.type	fli_write_color,@function
fli_write_color:                        # @fli_write_color
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	fseek
	movw	$0, -50(%rbp)
	cmpq	$0, -32(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jne	.LBB15_6
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movw	$1, -50(%rbp)
	movq	-16(%rbp), %rdi
	callq	fli_write_char
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	fli_write_char
	movw	$0, -82(%rbp)
.LBB15_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-82(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	jge	.LBB15_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-16(%rbp), %rdi
	movzwl	-82(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movb	%al, %sil
	movzbl	%sil, %esi
	callq	fli_write_char
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	movw	-82(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -82(%rbp)
	jmp	.LBB15_2
.LBB15_5:                               # %for.end
	jmp	.LBB15_30
.LBB15_6:                               # %if.else
	movw	$0, -88(%rbp)
.LBB15_7:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
                                        #     Child Loop BB15_15 Depth 2
                                        #     Child Loop BB15_24 Depth 2
	movw	$0, -84(%rbp)
.LBB15_8:                               # %while.cond
                                        #   Parent Loop BB15_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jge	.LBB15_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_8 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$0, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB15_12
# BB#10:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB15_8 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB15_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB15_8 Depth=2
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzwl	-88(%rbp), %esi
	imull	$3, %esi, %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	sete	%dil
	movb	%dil, -97(%rbp)         # 1-byte Spill
.LBB15_12:                              # %land.end
                                        #   in Loop: Header=BB15_8 Depth=2
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_13
	jmp	.LBB15_14
.LBB15_13:                              # %while.body
                                        #   in Loop: Header=BB15_8 Depth=2
	movw	-84(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -84(%rbp)
	movw	-88(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -88(%rbp)
	jmp	.LBB15_8
.LBB15_14:                              # %while.end
                                        #   in Loop: Header=BB15_7 Depth=1
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	movw	%ax, %cx
	movw	%cx, -90(%rbp)
	movw	$0, -86(%rbp)
.LBB15_15:                              # %while.cond.57
                                        #   Parent Loop BB15_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	movb	%cl, -98(%rbp)          # 1-byte Spill
	jge	.LBB15_20
# BB#16:                                # %land.rhs.61
                                        #   in Loop: Header=BB15_15 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$0, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -99(%rbp)          # 1-byte Spill
	jne	.LBB15_19
# BB#17:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB15_15 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -99(%rbp)          # 1-byte Spill
	jne	.LBB15_19
# BB#18:                                # %land.rhs.91
                                        #   in Loop: Header=BB15_15 Depth=2
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzwl	-88(%rbp), %esi
	imull	$3, %esi, %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	sete	%dil
	movb	%dil, -99(%rbp)         # 1-byte Spill
.LBB15_19:                              # %land.end.106
                                        #   in Loop: Header=BB15_15 Depth=2
	movb	-99(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -98(%rbp)          # 1-byte Spill
.LBB15_20:                              # %land.end.107
                                        #   in Loop: Header=BB15_15 Depth=2
	movb	-98(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_21
	jmp	.LBB15_22
.LBB15_21:                              # %while.body.108
                                        #   in Loop: Header=BB15_15 Depth=2
	movw	-86(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -86(%rbp)
	movw	-88(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -88(%rbp)
	jmp	.LBB15_15
.LBB15_22:                              # %while.end.111
                                        #   in Loop: Header=BB15_7 Depth=1
	movzwl	-86(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB15_27
# BB#23:                                # %if.then.115
                                        #   in Loop: Header=BB15_7 Depth=1
	movw	-50(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -50(%rbp)
	movq	-16(%rbp), %rdi
	movzwl	-84(%rbp), %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
	movq	-16(%rbp), %rdi
	movzwl	-86(%rbp), %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
.LBB15_24:                              # %while.cond.122
                                        #   Parent Loop BB15_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-86(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB15_26
# BB#25:                                # %while.body.126
                                        #   in Loop: Header=BB15_24 Depth=2
	movq	-16(%rbp), %rdi
	movw	-90(%rbp), %ax
	movw	%ax, %cx
	addw	$1, %cx
	movw	%cx, -90(%rbp)
	movzwl	%ax, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %r8
	movzbl	(%r8,%rsi), %edx
	sarl	$2, %edx
	movb	%dl, %r9b
	movzbl	%r9b, %esi
	callq	fli_write_char
	movq	-16(%rbp), %rdi
	movw	-90(%rbp), %ax
	movw	%ax, %cx
	addw	$1, %cx
	movw	%cx, -90(%rbp)
	movzwl	%ax, %edx
	movl	%edx, %r8d
	movq	-40(%rbp), %r10
	movzbl	(%r10,%r8), %edx
	sarl	$2, %edx
	movb	%dl, %r9b
	movzbl	%r9b, %esi
	callq	fli_write_char
	movq	-16(%rbp), %rdi
	movw	-90(%rbp), %ax
	movw	%ax, %cx
	addw	$1, %cx
	movw	%cx, -90(%rbp)
	movzwl	%ax, %edx
	movl	%edx, %r8d
	movq	-40(%rbp), %r10
	movzbl	(%r10,%r8), %edx
	sarl	$2, %edx
	movb	%dl, %r9b
	movzbl	%r9b, %esi
	callq	fli_write_char
	movw	-86(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -86(%rbp)
	jmp	.LBB15_24
.LBB15_26:                              # %while.end.145
                                        #   in Loop: Header=BB15_7 Depth=1
	jmp	.LBB15_27
.LBB15_27:                              # %if.end
                                        #   in Loop: Header=BB15_7 Depth=1
	jmp	.LBB15_28
.LBB15_28:                              # %do.cond
                                        #   in Loop: Header=BB15_7 Depth=1
	movzwl	-88(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB15_7
# BB#29:                                # %do.end
	jmp	.LBB15_30
.LBB15_30:                              # %if.end.149
	movzwl	-50(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB15_34
# BB#31:                                # %if.then.153
	movq	-16(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	subq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movw	$11, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	fli_write_long
	movq	-16(%rbp), %rdi
	movzwl	-72(%rbp), %esi
	callq	fli_write_short
	movq	-16(%rbp), %rdi
	movzwl	-50(%rbp), %esi
	callq	fli_write_short
	movq	-80(%rbp), %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	je	.LBB15_33
# BB#32:                                # %if.then.160
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB15_33:                              # %if.end.163
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	fseek
	movl	$1, -4(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB15_35
.LBB15_34:                              # %if.end.167
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movl	$0, -4(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB15_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	fli_write_color, .Lfunc_end15-fli_write_color
	.cfi_endproc

	.globl	fli_write_color_2
	.align	16, 0x90
	.type	fli_write_color_2,@function
fli_write_color_2:                      # @fli_write_color_2
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	fseek
	movw	$0, -50(%rbp)
	cmpq	$0, -32(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jne	.LBB16_6
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movw	$1, -50(%rbp)
	movq	-16(%rbp), %rdi
	callq	fli_write_char
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	fli_write_char
	movw	$0, -82(%rbp)
.LBB16_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-82(%rbp), %eax
	cmpl	$768, %eax              # imm = 0x300
	jge	.LBB16_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-16(%rbp), %rdi
	movzwl	-82(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	callq	fli_write_char
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	movw	-82(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -82(%rbp)
	jmp	.LBB16_2
.LBB16_5:                               # %for.end
	jmp	.LBB16_30
.LBB16_6:                               # %if.else
	movw	$0, -88(%rbp)
.LBB16_7:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_8 Depth 2
                                        #     Child Loop BB16_15 Depth 2
                                        #     Child Loop BB16_24 Depth 2
	movw	$0, -84(%rbp)
.LBB16_8:                               # %while.cond
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jge	.LBB16_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_8 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$0, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB16_12
# BB#10:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB16_8 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB16_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB16_8 Depth=2
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzwl	-88(%rbp), %esi
	imull	$3, %esi, %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	sete	%dil
	movb	%dil, -97(%rbp)         # 1-byte Spill
.LBB16_12:                              # %land.end
                                        #   in Loop: Header=BB16_8 Depth=2
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_13
	jmp	.LBB16_14
.LBB16_13:                              # %while.body
                                        #   in Loop: Header=BB16_8 Depth=2
	movw	-84(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -84(%rbp)
	movw	-88(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -88(%rbp)
	jmp	.LBB16_8
.LBB16_14:                              # %while.end
                                        #   in Loop: Header=BB16_7 Depth=1
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	movw	%ax, %cx
	movw	%cx, -90(%rbp)
	movw	$0, -86(%rbp)
.LBB16_15:                              # %while.cond.55
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	movb	%cl, -98(%rbp)          # 1-byte Spill
	jge	.LBB16_20
# BB#16:                                # %land.rhs.59
                                        #   in Loop: Header=BB16_15 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$0, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -99(%rbp)          # 1-byte Spill
	jne	.LBB16_19
# BB#17:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB16_15 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-88(%rbp), %edi
	imull	$3, %edi, %edi
	addl	$1, %edi
	movslq	%edi, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -99(%rbp)          # 1-byte Spill
	jne	.LBB16_19
# BB#18:                                # %land.rhs.89
                                        #   in Loop: Header=BB16_15 Depth=2
	movzwl	-88(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movzwl	-88(%rbp), %esi
	imull	$3, %esi, %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	sete	%dil
	movb	%dil, -99(%rbp)         # 1-byte Spill
.LBB16_19:                              # %land.end.104
                                        #   in Loop: Header=BB16_15 Depth=2
	movb	-99(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -98(%rbp)          # 1-byte Spill
.LBB16_20:                              # %land.end.105
                                        #   in Loop: Header=BB16_15 Depth=2
	movb	-98(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_21
	jmp	.LBB16_22
.LBB16_21:                              # %while.body.106
                                        #   in Loop: Header=BB16_15 Depth=2
	movw	-86(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -86(%rbp)
	movw	-88(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -88(%rbp)
	jmp	.LBB16_15
.LBB16_22:                              # %while.end.109
                                        #   in Loop: Header=BB16_7 Depth=1
	movzwl	-86(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB16_27
# BB#23:                                # %if.then.113
                                        #   in Loop: Header=BB16_7 Depth=1
	movw	-50(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -50(%rbp)
	movq	-16(%rbp), %rdi
	movw	-84(%rbp), %ax
	movb	%al, %cl
	movzbl	%cl, %esi
	callq	fli_write_char
	movq	-16(%rbp), %rdi
	movw	-86(%rbp), %ax
	movb	%al, %cl
	movzbl	%cl, %esi
	callq	fli_write_char
.LBB16_24:                              # %while.cond.117
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-86(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB16_26
# BB#25:                                # %while.body.121
                                        #   in Loop: Header=BB16_24 Depth=2
	movq	-16(%rbp), %rdi
	movw	-90(%rbp), %ax
	movw	%ax, %cx
	addw	$1, %cx
	movw	%cx, -90(%rbp)
	movzwl	%ax, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %r8
	movzbl	(%r8,%rsi), %esi
	callq	fli_write_char
	movq	-16(%rbp), %rdi
	movw	-90(%rbp), %ax
	movw	%ax, %cx
	addw	$1, %cx
	movw	%cx, -90(%rbp)
	movzwl	%ax, %edx
	movl	%edx, %r8d
	movq	-40(%rbp), %r9
	movzbl	(%r9,%r8), %esi
	callq	fli_write_char
	movq	-16(%rbp), %rdi
	movw	-90(%rbp), %ax
	movw	%ax, %cx
	addw	$1, %cx
	movw	%cx, -90(%rbp)
	movzwl	%ax, %edx
	movl	%edx, %r8d
	movq	-40(%rbp), %r9
	movzbl	(%r9,%r8), %esi
	callq	fli_write_char
	movw	-86(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -86(%rbp)
	jmp	.LBB16_24
.LBB16_26:                              # %while.end.131
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_27
.LBB16_27:                              # %if.end
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_28
.LBB16_28:                              # %do.cond
                                        #   in Loop: Header=BB16_7 Depth=1
	movzwl	-88(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB16_7
# BB#29:                                # %do.end
	jmp	.LBB16_30
.LBB16_30:                              # %if.end.135
	movzwl	-50(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB16_34
# BB#31:                                # %if.then.139
	movq	-16(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	subq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movw	$4, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	fli_write_long
	movq	-16(%rbp), %rdi
	movzwl	-72(%rbp), %esi
	callq	fli_write_short
	movq	-16(%rbp), %rdi
	movzwl	-50(%rbp), %esi
	callq	fli_write_short
	movq	-80(%rbp), %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	je	.LBB16_33
# BB#32:                                # %if.then.145
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB16_33:                              # %if.end.148
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	fseek
	movl	$1, -4(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB16_35
.LBB16_34:                              # %if.end.152
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	movl	$0, -4(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB16_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	fli_write_color_2, .Lfunc_end16-fli_write_color_2
	.cfi_endproc

	.globl	fli_write_brun
	.align	16, 0x90
	.type	fli_write_brun,@function
fli_write_brun:                         # @fli_write_brun
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rsi
	callq	fseek
	movw	$0, -58(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB17_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
                                        #       Child Loop BB17_5 Depth 3
	movzwl	-58(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB17_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	ftell
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, -88(%rbp)
	movq	$0, -104(%rbp)
	movq	-8(%rbp), %rdi
	callq	fseek
	movq	-24(%rbp), %rsi
	movzwl	-58(%rbp), %ecx
	movq	-16(%rbp), %rdi
	movzwl	12(%rdi), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -72(%rbp)
	movw	$0, -74(%rbp)
	movw	$0, -80(%rbp)
	movw	$0, -76(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB17_3:                               # %while.cond
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_5 Depth 3
	movzwl	-74(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	12(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB17_18
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB17_3 Depth=2
	movw	$1, -78(%rbp)
.LBB17_5:                               # %while.cond.13
                                        #   Parent Loop BB17_1 Depth=1
                                        #     Parent Loop BB17_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-78(%rbp), %eax
	cmpl	$120, %eax
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jge	.LBB17_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_5 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-74(%rbp), %eax
	movzwl	-78(%rbp), %edx
	addl	%edx, %eax
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jge	.LBB17_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB17_5 Depth=3
	movzwl	-74(%rbp), %eax
	movzwl	-78(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-74(%rbp), %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cmpl	%ecx, %eax
	sete	%dil
	movb	%dil, -113(%rbp)        # 1-byte Spill
.LBB17_8:                               # %land.end
                                        #   in Loop: Header=BB17_5 Depth=3
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_9
	jmp	.LBB17_10
.LBB17_9:                               # %while.body.33
                                        #   in Loop: Header=BB17_5 Depth=3
	movw	-78(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -78(%rbp)
	jmp	.LBB17_5
.LBB17_10:                              # %while.end
                                        #   in Loop: Header=BB17_3 Depth=2
	movzwl	-78(%rbp), %eax
	cmpl	$2, %eax
	jle	.LBB17_14
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB17_3 Depth=2
	movzwl	-80(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB17_13
# BB#12:                                # %if.then.40
                                        #   in Loop: Header=BB17_3 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	movzwl	-80(%rbp), %ecx
	subl	$1, %ecx
	xorl	$255, %ecx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movzwl	-80(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	callq	fwrite
	movw	$0, -80(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB17_13:                              # %if.end
                                        #   in Loop: Header=BB17_3 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	movw	-78(%rbp), %cx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
	movq	-8(%rbp), %rdi
	movzwl	-74(%rbp), %esi
	movl	%esi, %eax
	movq	-72(%rbp), %r8
	movzbl	(%r8,%rax), %esi
	callq	fli_write_char
	movzwl	-74(%rbp), %esi
	movzwl	-78(%rbp), %r9d
	addl	%r9d, %esi
	movw	%si, %cx
	movw	%cx, -76(%rbp)
	jmp	.LBB17_17
.LBB17_14:                              # %if.else
                                        #   in Loop: Header=BB17_3 Depth=2
	movzwl	-78(%rbp), %eax
	movzwl	-80(%rbp), %ecx
	addl	%eax, %ecx
	movw	%cx, %dx
	movw	%dx, -80(%rbp)
	movzwl	-80(%rbp), %eax
	cmpl	$120, %eax
	jle	.LBB17_16
# BB#15:                                # %if.then.64
                                        #   in Loop: Header=BB17_3 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	movzwl	-80(%rbp), %ecx
	subl	$1, %ecx
	xorl	$255, %ecx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movzwl	-80(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	callq	fwrite
	movw	$0, -80(%rbp)
	movzwl	-74(%rbp), %r8d
	movzwl	-78(%rbp), %r9d
	addl	%r9d, %r8d
	movw	%r8w, %r10w
	movw	%r10w, -76(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB17_16:                              # %if.end.79
                                        #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_17
.LBB17_17:                              # %if.end.80
                                        #   in Loop: Header=BB17_3 Depth=2
	movzwl	-78(%rbp), %eax
	movzwl	-74(%rbp), %ecx
	addl	%eax, %ecx
	movw	%cx, %dx
	movw	%dx, -74(%rbp)
	jmp	.LBB17_3
.LBB17_18:                              # %while.end.85
                                        #   in Loop: Header=BB17_1 Depth=1
	movzwl	-80(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB17_20
# BB#19:                                # %if.then.89
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	movzwl	-80(%rbp), %ecx
	subl	$1, %ecx
	xorl	$255, %ecx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movzwl	-80(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	callq	fwrite
	movw	$0, -80(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB17_20:                              # %if.end.100
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movb	%sil, %cl
	movzbl	%cl, %esi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	fli_write_char
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	fseek
	movl	%eax, -152(%rbp)        # 4-byte Spill
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movw	-58(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -58(%rbp)
	jmp	.LBB17_1
.LBB17_22:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	subq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movw	$15, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	fli_write_long
	movq	-8(%rbp), %rdi
	movzwl	-48(%rbp), %esi
	callq	fli_write_short
	movq	-56(%rbp), %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	je	.LBB17_24
# BB#23:                                # %if.then.112
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB17_24:                              # %if.end.115
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	fseek
	movl	%eax, -160(%rbp)        # 4-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	fli_write_brun, .Lfunc_end17-fli_write_brun
	.cfi_endproc

	.globl	fli_write_lc
	.align	16, 0x90
	.type	fli_write_lc,@function
fli_write_lc:                           # @fli_write_lc
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rsi
	callq	fseek
	movw	$0, -68(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzwl	-68(%rbp), %eax
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edi
	imull	%edi, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	movzwl	-68(%rbp), %eax
	movq	-16(%rbp), %r8
	movzwl	12(%r8), %edi
	imull	%edi, %eax
	movslq	%eax, %r8
	addq	%r8, %rsi
	movq	-16(%rbp), %r8
	movzwl	12(%r8), %eax
	movl	%eax, %r8d
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movb	%cl, -125(%rbp)         # 1-byte Spill
	callq	memcmp
	cmpl	$0, %eax
	movb	-125(%rbp), %cl         # 1-byte Reload
	movb	%cl, -126(%rbp)         # 1-byte Spill
	jne	.LBB18_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB18_1 Depth=1
	movzwl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %edx
	cmpl	%edx, %eax
	setl	%sil
	movb	%sil, -126(%rbp)        # 1-byte Spill
.LBB18_3:                               # %land.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	-126(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_4
	jmp	.LBB18_5
.LBB18_4:                               # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movw	-68(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -68(%rbp)
	jmp	.LBB18_1
.LBB18_5:                               # %while.end
	movzwl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB18_12
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rax
	movzwl	14(%rax), %ecx
	subl	$1, %ecx
	movw	%cx, %dx
	movw	%dx, -72(%rbp)
.LBB18_7:                               # %while.cond.25
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movzwl	-72(%rbp), %eax
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edi
	imull	%edi, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	movzwl	-72(%rbp), %eax
	movq	-16(%rbp), %r8
	movzwl	12(%r8), %edi
	imull	%edi, %eax
	movslq	%eax, %r8
	addq	%r8, %rsi
	movq	-16(%rbp), %r8
	movzwl	12(%r8), %eax
	movl	%eax, %r8d
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movb	%cl, -127(%rbp)         # 1-byte Spill
	callq	memcmp
	cmpl	$0, %eax
	movb	-127(%rbp), %cl         # 1-byte Reload
	movb	%cl, -128(%rbp)         # 1-byte Spill
	jne	.LBB18_9
# BB#8:                                 # %land.rhs.43
                                        #   in Loop: Header=BB18_7 Depth=1
	movzwl	-72(%rbp), %eax
	movzwl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%dl
	movb	%dl, -128(%rbp)         # 1-byte Spill
.LBB18_9:                               # %land.end.48
                                        #   in Loop: Header=BB18_7 Depth=1
	movb	-128(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_10
	jmp	.LBB18_11
.LBB18_10:                              # %while.body.49
                                        #   in Loop: Header=BB18_7 Depth=1
	movw	-72(%rbp), %ax
	addw	$-1, %ax
	movw	%ax, -72(%rbp)
	jmp	.LBB18_7
.LBB18_11:                              # %while.end.50
	movzwl	-72(%rbp), %eax
	movzwl	-68(%rbp), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movw	%ax, %dx
	movw	%dx, -70(%rbp)
	jmp	.LBB18_13
.LBB18_12:                              # %if.else
	movw	$0, -70(%rbp)
.LBB18_13:                              # %if.end
	movzwl	-70(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB18_15
# BB#14:                                # %if.then.59
	movw	$0, -68(%rbp)
.LBB18_15:                              # %if.end.60
	movq	-8(%rbp), %rdi
	movzwl	-68(%rbp), %esi
	callq	fli_write_short
	movq	-8(%rbp), %rdi
	movzwl	-70(%rbp), %esi
	callq	fli_write_short
	movw	$0, -66(%rbp)
.LBB18_16:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_18 Depth 2
                                        #       Child Loop BB18_20 Depth 3
                                        #       Child Loop BB18_26 Depth 3
                                        #       Child Loop BB18_34 Depth 3
                                        #         Child Loop BB18_35 Depth 4
                                        #         Child Loop BB18_41 Depth 4
	movzwl	-66(%rbp), %eax
	movzwl	-70(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB18_56
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	-8(%rbp), %rdi
	callq	ftell
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, -104(%rbp)
	movq	$0, -120(%rbp)
	movq	-8(%rbp), %rdi
	callq	fseek
	movq	-32(%rbp), %rsi
	movzwl	-68(%rbp), %ecx
	movzwl	-66(%rbp), %edx
	addl	%edx, %ecx
	movq	-16(%rbp), %rdi
	movzwl	12(%rdi), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	movq	-24(%rbp), %rsi
	movzwl	-68(%rbp), %ecx
	movzwl	-66(%rbp), %edx
	addl	%edx, %ecx
	movq	-16(%rbp), %rdi
	movzwl	12(%rdi), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -88(%rbp)
	movw	$0, -90(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB18_18:                              # %while.cond.83
                                        #   Parent Loop BB18_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_20 Depth 3
                                        #       Child Loop BB18_26 Depth 3
                                        #       Child Loop BB18_34 Depth 3
                                        #         Child Loop BB18_35 Depth 4
                                        #         Child Loop BB18_41 Depth 4
	movzwl	-90(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	12(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB18_54
# BB#19:                                # %while.body.89
                                        #   in Loop: Header=BB18_18 Depth=2
	movw	$0, -92(%rbp)
.LBB18_20:                              # %while.cond.90
                                        #   Parent Loop BB18_16 Depth=1
                                        #     Parent Loop BB18_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-90(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-90(%rbp), %edi
	movl	%edi, %edx
	movq	-88(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jne	.LBB18_23
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB18_20 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-90(%rbp), %eax
	movq	-16(%rbp), %rdx
	movzwl	12(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jge	.LBB18_23
# BB#22:                                # %land.rhs.102
                                        #   in Loop: Header=BB18_20 Depth=3
	movzwl	-92(%rbp), %eax
	cmpl	$255, %eax
	setl	%cl
	movb	%cl, -133(%rbp)         # 1-byte Spill
.LBB18_23:                              # %land.end.106
                                        #   in Loop: Header=BB18_20 Depth=3
	movb	-133(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_24
	jmp	.LBB18_25
.LBB18_24:                              # %while.body.107
                                        #   in Loop: Header=BB18_20 Depth=3
	movw	-90(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -90(%rbp)
	movw	-92(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -92(%rbp)
	jmp	.LBB18_20
.LBB18_25:                              # %while.end.110
                                        #   in Loop: Header=BB18_18 Depth=2
	movq	-8(%rbp), %rdi
	movw	-92(%rbp), %ax
	movb	%al, %cl
	movzbl	%cl, %esi
	callq	fli_write_char
	movw	$1, -94(%rbp)
.LBB18_26:                              # %while.cond.112
                                        #   Parent Loop BB18_16 Depth=1
                                        #     Parent Loop BB18_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-90(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movzwl	-90(%rbp), %edi
	movzwl	-94(%rbp), %r8d
	addl	%r8d, %edi
	movslq	%edi, %rdx
	movq	-80(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -134(%rbp)         # 1-byte Spill
	jne	.LBB18_29
# BB#27:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB18_26 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-90(%rbp), %eax
	movzwl	-94(%rbp), %edx
	addl	%edx, %eax
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -134(%rbp)         # 1-byte Spill
	jge	.LBB18_29
# BB#28:                                # %land.rhs.132
                                        #   in Loop: Header=BB18_26 Depth=3
	movzwl	-94(%rbp), %eax
	cmpl	$120, %eax
	setl	%cl
	movb	%cl, -134(%rbp)         # 1-byte Spill
.LBB18_29:                              # %land.end.136
                                        #   in Loop: Header=BB18_26 Depth=3
	movb	-134(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_30
	jmp	.LBB18_31
.LBB18_30:                              # %while.body.137
                                        #   in Loop: Header=BB18_26 Depth=3
	movw	-94(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -94(%rbp)
	jmp	.LBB18_26
.LBB18_31:                              # %while.end.139
                                        #   in Loop: Header=BB18_18 Depth=2
	movzwl	-94(%rbp), %eax
	cmpl	$2, %eax
	jle	.LBB18_33
# BB#32:                                # %if.then.143
                                        #   in Loop: Header=BB18_18 Depth=2
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rdi
	movzwl	-94(%rbp), %ecx
	subl	$1, %ecx
	xorl	$255, %ecx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
	movq	-8(%rbp), %rdi
	movzwl	-90(%rbp), %ecx
	movl	%ecx, %eax
	movq	-80(%rbp), %r8
	movzbl	(%r8,%rax), %esi
	callq	fli_write_char
	movzwl	-94(%rbp), %ecx
	movzwl	-90(%rbp), %esi
	addl	%ecx, %esi
	movw	%si, %r9w
	movw	%r9w, -90(%rbp)
	jmp	.LBB18_53
.LBB18_33:                              # %if.else.154
                                        #   in Loop: Header=BB18_18 Depth=2
	movw	$0, -96(%rbp)
.LBB18_34:                              # %do.body
                                        #   Parent Loop BB18_16 Depth=1
                                        #     Parent Loop BB18_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_35 Depth 4
                                        #         Child Loop BB18_41 Depth 4
	movw	$0, -92(%rbp)
.LBB18_35:                              # %while.cond.155
                                        #   Parent Loop BB18_16 Depth=1
                                        #     Parent Loop BB18_18 Depth=2
                                        #       Parent Loop BB18_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-96(%rbp), %eax
	movzwl	-90(%rbp), %edx
	addl	%edx, %eax
	movzwl	-92(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-80(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movzwl	-96(%rbp), %edx
	movzwl	-90(%rbp), %r8d
	addl	%r8d, %edx
	movzwl	-92(%rbp), %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movq	-88(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -135(%rbp)         # 1-byte Spill
	jne	.LBB18_38
# BB#36:                                # %land.lhs.true.174
                                        #   in Loop: Header=BB18_35 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-96(%rbp), %eax
	movzwl	-90(%rbp), %edx
	addl	%edx, %eax
	movzwl	-92(%rbp), %edx
	addl	%edx, %eax
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -135(%rbp)         # 1-byte Spill
	jge	.LBB18_38
# BB#37:                                # %land.rhs.184
                                        #   in Loop: Header=BB18_35 Depth=4
	movzwl	-92(%rbp), %eax
	cmpl	$5, %eax
	setl	%cl
	movb	%cl, -135(%rbp)         # 1-byte Spill
.LBB18_38:                              # %land.end.188
                                        #   in Loop: Header=BB18_35 Depth=4
	movb	-135(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_39
	jmp	.LBB18_40
.LBB18_39:                              # %while.body.189
                                        #   in Loop: Header=BB18_35 Depth=4
	movw	-92(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -92(%rbp)
	jmp	.LBB18_35
.LBB18_40:                              # %while.end.191
                                        #   in Loop: Header=BB18_34 Depth=3
	movw	$1, -94(%rbp)
.LBB18_41:                              # %while.cond.192
                                        #   Parent Loop BB18_16 Depth=1
                                        #     Parent Loop BB18_18 Depth=2
                                        #       Parent Loop BB18_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-96(%rbp), %eax
	movzwl	-90(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-80(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movzwl	-96(%rbp), %edx
	movzwl	-90(%rbp), %r8d
	addl	%r8d, %edx
	movzwl	-94(%rbp), %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movq	-80(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -136(%rbp)         # 1-byte Spill
	jne	.LBB18_44
# BB#42:                                # %land.lhs.true.209
                                        #   in Loop: Header=BB18_41 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-96(%rbp), %eax
	movzwl	-90(%rbp), %edx
	addl	%edx, %eax
	movzwl	-94(%rbp), %edx
	addl	%edx, %eax
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -136(%rbp)         # 1-byte Spill
	jge	.LBB18_44
# BB#43:                                # %land.rhs.219
                                        #   in Loop: Header=BB18_41 Depth=4
	movzwl	-94(%rbp), %eax
	cmpl	$10, %eax
	setl	%cl
	movb	%cl, -136(%rbp)         # 1-byte Spill
.LBB18_44:                              # %land.end.223
                                        #   in Loop: Header=BB18_41 Depth=4
	movb	-136(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_45
	jmp	.LBB18_46
.LBB18_45:                              # %while.body.224
                                        #   in Loop: Header=BB18_41 Depth=4
	movw	-94(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -94(%rbp)
	jmp	.LBB18_41
.LBB18_46:                              # %while.end.226
                                        #   in Loop: Header=BB18_34 Depth=3
	movw	-96(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -96(%rbp)
# BB#47:                                # %do.cond
                                        #   in Loop: Header=BB18_34 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-96(%rbp), %eax
	cmpl	$120, %eax
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jge	.LBB18_51
# BB#48:                                # %land.lhs.true.231
                                        #   in Loop: Header=BB18_34 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-94(%rbp), %eax
	cmpl	$9, %eax
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jge	.LBB18_51
# BB#49:                                # %land.lhs.true.235
                                        #   in Loop: Header=BB18_34 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movzwl	-92(%rbp), %eax
	cmpl	$4, %eax
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jge	.LBB18_51
# BB#50:                                # %land.rhs.239
                                        #   in Loop: Header=BB18_34 Depth=3
	movzwl	-90(%rbp), %eax
	movzwl	-96(%rbp), %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movzwl	12(%rdx), %ecx
	cmpl	%ecx, %eax
	setl	%sil
	movb	%sil, -137(%rbp)        # 1-byte Spill
.LBB18_51:                              # %land.end.247
                                        #   in Loop: Header=BB18_34 Depth=3
	movb	-137(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_34
# BB#52:                                # %do.end
                                        #   in Loop: Header=BB18_18 Depth=2
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rdi
	movw	-96(%rbp), %cx
	movb	%cl, %dl
	movzbl	%dl, %esi
	callq	fli_write_char
	movl	$1, %esi
	movl	%esi, %edx
	movq	-80(%rbp), %rax
	movzwl	-90(%rbp), %esi
	movslq	%esi, %rdi
	addq	%rdi, %rax
	movzwl	-96(%rbp), %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	callq	fwrite
	movzwl	-96(%rbp), %r8d
	movzwl	-90(%rbp), %r9d
	addl	%r8d, %r9d
	movw	%r9w, %r10w
	movw	%r10w, -90(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB18_53:                              # %if.end.259
                                        #   in Loop: Header=BB18_18 Depth=2
	jmp	.LBB18_18
.LBB18_54:                              # %while.end.260
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movb	%sil, %cl
	movzbl	%cl, %esi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	fli_write_char
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	fseek
	movl	%eax, -160(%rbp)        # 4-byte Spill
# BB#55:                                # %for.inc
                                        #   in Loop: Header=BB18_16 Depth=1
	movw	-66(%rbp), %ax
	addw	$1, %ax
	movw	%ax, -66(%rbp)
	jmp	.LBB18_16
.LBB18_56:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	subq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movw	$12, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	fli_write_long
	movq	-8(%rbp), %rdi
	movzwl	-56(%rbp), %esi
	callq	fli_write_short
	movq	-64(%rbp), %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	je	.LBB18_58
# BB#57:                                # %if.then.272
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB18_58:                              # %if.end.275
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	fseek
	movl	%eax, -168(%rbp)        # 4-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	fli_write_lc, .Lfunc_end18-fli_write_lc
	.cfi_endproc

	.align	16, 0x90
	.type	fli_read_char,@function
fli_read_char:                          # @fli_read_char
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
	subq	$32, %rsp
	leaq	-9(%rbp), %rax
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	fread
	movzbl	-9(%rbp), %r8d
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	fli_read_char, .Lfunc_end19-fli_read_char
	.cfi_endproc

	.align	16, 0x90
	.type	fli_write_char,@function
fli_write_char:                         # @fli_write_char
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
	subq	$32, %rsp
	movb	%sil, %al
	leaq	-9(%rbp), %rcx
	movl	$1, %esi
	movl	%esi, %edx
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	fwrite
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	fli_write_char, .Lfunc_end20-fli_write_char
	.cfi_endproc

	.globl	fli_write_black
	.align	16, 0x90
	.type	fli_write_black,@function
fli_write_black:                        # @fli_write_black
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$6, -48(%rbp)
	movw	$13, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fli_write_long
	movq	-8(%rbp), %rdi
	movzwl	-40(%rbp), %esi
	callq	fli_write_short
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	fli_write_black, .Lfunc_end21-fli_write_black
	.cfi_endproc

	.globl	fli_write_copy
	.align	16, 0x90
	.type	fli_write_copy,@function
fli_write_copy:                         # @fli_write_copy
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rsi
	callq	fseek
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-8(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	fwrite
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	ftell
	xorl	%edx, %edx
	subq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movw	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	fseek
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	fli_write_long
	movq	-8(%rbp), %rdi
	movzwl	-48(%rbp), %esi
	callq	fli_write_short
	movq	-56(%rbp), %rcx
	andq	$1, %rcx
	cmpq	$0, %rcx
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB22_2:                               # %if.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	fseek
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	fli_write_copy, .Lfunc_end22-fli_write_copy
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error: magic number is wrong !\n"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"error: magic number in header is wrong !\n"
	.size	.L.str.1, 42


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
