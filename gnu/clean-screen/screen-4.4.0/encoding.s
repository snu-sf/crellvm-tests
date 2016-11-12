	.text
	.file	"encoding.bc"
	.globl	InitBuiltinTabs
	.align	16, 0x90
	.type	InitBuiltinTabs,@function
InitBuiltinTabs:                        # @InitBuiltinTabs
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
	movabsq	$builtin_tabs, %rax
	movq	%rax, -8(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-8(%rbp), %rax
	cmpw	$0, (%rax)
	je	.LBB0_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$recodetabs, %rax
	movq	-8(%rbp), %rcx
	movzwl	(%rcx), %edx
	movl	%edx, %ecx
	shlq	$4, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movl	$2, 8(%rsi)
	movq	-8(%rbp), %rcx
	addq	$4, %rcx
	movq	-8(%rbp), %rsi
	movzwl	(%rsi), %edx
	movl	%edx, %esi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
.LBB0_3:                                # %while.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	cmpw	$0, (%rax)
	je	.LBB0_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_5:                                # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	InitBuiltinTabs, .Lfunc_end0-InitBuiltinTabs
	.cfi_endproc

	.globl	recode_mchar
	.align	16, 0x90
	.type	recode_mchar,@function
recode_mchar:                           # @recode_mchar
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB1_2
.LBB1_2:                                # %do.end
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.LBB1_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$8, -20(%rbp)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	cmpl	$8, -24(%rbp)
	je	.LBB1_6
.LBB1_5:                                # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_19
.LBB1_6:                                # %if.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, recode_mchar.rmc
	movw	4(%rax), %dx
	movw	%dx, recode_mchar.rmc+4
	movzbl	recode_mchar.rmc+2, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_9
# BB#7:                                 # %land.lhs.true.5
	cmpl	$8, -20(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.8
	movabsq	$encodings, %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	movb	%dl, %sil
	movb	%sil, recode_mchar.rmc+2
.LBB1_9:                                # %if.end.10
	movzbl	recode_mchar.rmc+2, %eax
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.14
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_19
.LBB1_11:                               # %if.end.15
	movzbl	recode_mchar.rmc, %eax
	movzbl	recode_mchar.rmc+2, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -28(%rbp)
	cmpl	$8, -20(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.20
	movzbl	recode_mchar.rmc+3, %eax
	shll	$16, %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB1_13:                               # %if.end.24
	cmpb	$0, recode_mchar.rmc+5
	je	.LBB1_15
# BB#14:                                # %if.then.25
	leaq	-32(%rbp), %rsi
	movzbl	recode_mchar.rmc+5, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %edx
	callq	recode_char_dw_to_encoding
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movb	%cl, recode_mchar.rmc+5
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	recode_char_to_encoding
	movl	%eax, -28(%rbp)
.LBB1_16:                               # %if.end.29
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movb	%cl, recode_mchar.rmc
	movl	-28(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movb	%cl, recode_mchar.rmc+2
	cmpl	$8, -24(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.35
	movl	-28(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
	movb	%al, %cl
	movb	%cl, recode_mchar.rmc+3
.LBB1_18:                               # %if.end.39
	movabsq	$recode_mchar.rmc, %rax
	movq	%rax, -8(%rbp)
.LBB1_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	recode_mchar, .Lfunc_end1-recode_mchar
	.cfi_endproc

	.align	16, 0x90
	.type	recode_char_dw_to_encoding,@function
recode_char_dw_to_encoding:             # @recode_char_dw_to_encoding
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
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$8, -20(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	recode_char_dw
	movl	%eax, -4(%rbp)
	jmp	.LBB2_14
.LBB2_2:                                # %if.end
	movabsq	$encodings, %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB2_9
# BB#3:                                 # %if.then.2
	jmp	.LBB2_4
.LBB2_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	xorl	%edx, %edx
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %ecx
	callq	recode_char_dw
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	je	.LBB2_7
# BB#6:                                 # %if.then.6
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_14
.LBB2_7:                                # %if.end.7
                                        #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_4
.LBB2_8:                                # %while.end
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.8
	movabsq	$encodings, %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 16(%rax)
	je	.LBB2_13
# BB#10:                                # %if.then.12
	xorl	%edx, %edx
	movabsq	$encodings, %rax
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %ecx
	callq	recode_char_dw
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	je	.LBB2_12
# BB#11:                                # %if.then.19
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_14
.LBB2_12:                               # %if.end.20
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.21
	xorl	%edx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	recode_char_dw
	movl	%eax, -4(%rbp)
.LBB2_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	recode_char_dw_to_encoding, .Lfunc_end2-recode_char_dw_to_encoding
	.cfi_endproc

	.align	16, 0x90
	.type	recode_char_to_encoding,@function
recode_char_to_encoding:                # @recode_char_to_encoding
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$8, -12(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-8(%rbp), %edi
	callq	recode_char
	movl	%eax, -4(%rbp)
	jmp	.LBB3_14
.LBB3_2:                                # %if.end
	movabsq	$encodings, %rax
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB3_9
# BB#3:                                 # %if.then.2
	jmp	.LBB3_4
.LBB3_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB3_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%esi, %esi
	movl	-8(%rbp), %edi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rax), %edx
	callq	recode_char
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.6
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_14
.LBB3_7:                                # %if.end.7
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_4
.LBB3_8:                                # %while.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.8
	movabsq	$encodings, %rax
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 16(%rax)
	je	.LBB3_13
# BB#10:                                # %if.then.12
	xorl	%esi, %esi
	movabsq	$encodings, %rax
	movl	-8(%rbp), %edi
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	callq	recode_char
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB3_12
# BB#11:                                # %if.then.19
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_14
.LBB3_12:                               # %if.end.20
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.21
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-8(%rbp), %edi
	callq	recode_char
	movl	%eax, -4(%rbp)
.LBB3_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	recode_char_to_encoding, .Lfunc_end3-recode_char_to_encoding
	.cfi_endproc

	.globl	recode_mline
	.align	16, 0x90
	.type	recode_mline,@function
recode_mline:                           # @recode_mline
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-24(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	je	.LBB4_4
# BB#1:                                 # %lor.lhs.false
	cmpl	$8, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %land.lhs.true
	cmpl	$8, -28(%rbp)
	jne	.LBB4_4
.LBB4_3:                                # %lor.lhs.false.3
	cmpl	$0, -20(%rbp)
	jne	.LBB4_5
.LBB4_4:                                # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_152
.LBB4_5:                                # %if.end
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	jne	.LBB4_9
# BB#6:                                 # %land.lhs.true.6
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	jne	.LBB4_9
# BB#7:                                 # %land.lhs.true.8
	movabsq	$encodings, %rax
	movslq	-24(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 16(%rax)
	jne	.LBB4_9
# BB#8:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_152
.LBB4_9:                                # %if.end.11
	movl	-20(%rbp), %eax
	cmpl	recode_mline.maxlen, %eax
	jle	.LBB4_28
# BB#10:                                # %if.then.13
	movl	$0, -32(%rbp)
.LBB4_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -32(%rbp)
	jge	.LBB4_27
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB4_14
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB4_11 Depth=1
	movslq	-20(%rbp), %rdi
	callq	malloc
	movabsq	$recode_mline.rml, %rdi
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdi
	movq	%rax, (%rdi)
	jmp	.LBB4_15
.LBB4_14:                               # %if.else
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movslq	-20(%rbp), %rsi
	callq	realloc
	movabsq	$recode_mline.rml, %rcx
	movslq	-32(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rcx
	movq	%rax, (%rcx)
.LBB4_15:                               # %if.end.30
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 16(%rax)
	jne	.LBB4_17
# BB#16:                                # %if.then.36
                                        #   in Loop: Header=BB4_11 Depth=1
	movslq	-20(%rbp), %rdi
	callq	malloc
	movabsq	$recode_mline.rml, %rdi
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.42
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdi
	movslq	-20(%rbp), %rsi
	callq	realloc
	movabsq	$recode_mline.rml, %rcx
	movslq	-32(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rcx
	movq	%rax, 16(%rcx)
.LBB4_18:                               # %if.end.51
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 24(%rax)
	jne	.LBB4_20
# BB#19:                                # %if.then.57
                                        #   in Loop: Header=BB4_11 Depth=1
	movslq	-20(%rbp), %rdi
	callq	malloc
	movabsq	$recode_mline.rml, %rdi
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.63
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rdi
	movslq	-20(%rbp), %rsi
	callq	realloc
	movabsq	$recode_mline.rml, %rcx
	movslq	-32(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rcx
	movq	%rax, 24(%rcx)
.LBB4_21:                               # %if.end.72
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB4_24
# BB#22:                                # %lor.lhs.false.78
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 16(%rax)
	je	.LBB4_24
# BB#23:                                # %lor.lhs.false.84
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$recode_mline.rml, %rax
	movslq	-32(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 24(%rax)
	jne	.LBB4_25
.LBB4_24:                               # %if.then.90
	movl	$0, recode_mline.maxlen
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_152
.LBB4_25:                               # %if.end.91
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_26
.LBB4_26:                               # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_11
.LBB4_27:                               # %for.end
	movl	-20(%rbp), %eax
	movl	%eax, recode_mline.maxlen
.LBB4_28:                               # %if.end.92
	jmp	.LBB4_29
.LBB4_29:                               # %do.body
	jmp	.LBB4_30
.LBB4_30:                               # %do.end
	movl	$0, -32(%rbp)
.LBB4_31:                               # %for.cond.93
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_36
# BB#32:                                # %for.body.96
                                        #   in Loop: Header=BB4_31 Depth=1
	jmp	.LBB4_33
.LBB4_33:                               # %do.body.97
                                        #   in Loop: Header=BB4_31 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %do.end.98
                                        #   in Loop: Header=BB4_31 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %for.inc.99
                                        #   in Loop: Header=BB4_31 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_31
.LBB4_36:                               # %for.end.101
	jmp	.LBB4_37
.LBB4_37:                               # %do.body.102
	jmp	.LBB4_38
.LBB4_38:                               # %do.end.103
	movl	$0, -32(%rbp)
.LBB4_39:                               # %for.cond.104
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_44
# BB#40:                                # %for.body.107
                                        #   in Loop: Header=BB4_39 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %do.body.108
                                        #   in Loop: Header=BB4_39 Depth=1
	jmp	.LBB4_42
.LBB4_42:                               # %do.end.109
                                        #   in Loop: Header=BB4_39 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               # %for.inc.110
                                        #   in Loop: Header=BB4_39 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_39
.LBB4_44:                               # %for.end.112
	jmp	.LBB4_45
.LBB4_45:                               # %do.body.113
	jmp	.LBB4_46
.LBB4_46:                               # %do.end.114
	movl	$0, -32(%rbp)
.LBB4_47:                               # %for.cond.115
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_52
# BB#48:                                # %for.body.118
                                        #   in Loop: Header=BB4_47 Depth=1
	jmp	.LBB4_49
.LBB4_49:                               # %do.body.119
                                        #   in Loop: Header=BB4_47 Depth=1
	jmp	.LBB4_50
.LBB4_50:                               # %do.end.120
                                        #   in Loop: Header=BB4_47 Depth=1
	jmp	.LBB4_51
.LBB4_51:                               # %for.inc.121
                                        #   in Loop: Header=BB4_47 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_47
.LBB4_52:                               # %for.end.123
	jmp	.LBB4_53
.LBB4_53:                               # %do.body.124
	jmp	.LBB4_54
.LBB4_54:                               # %do.end.125
	movl	$0, -32(%rbp)
.LBB4_55:                               # %for.cond.126
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_60
# BB#56:                                # %for.body.129
                                        #   in Loop: Header=BB4_55 Depth=1
	jmp	.LBB4_57
.LBB4_57:                               # %do.body.130
                                        #   in Loop: Header=BB4_55 Depth=1
	jmp	.LBB4_58
.LBB4_58:                               # %do.end.131
                                        #   in Loop: Header=BB4_55 Depth=1
	jmp	.LBB4_59
.LBB4_59:                               # %for.inc.132
                                        #   in Loop: Header=BB4_55 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_55
.LBB4_60:                               # %for.end.134
	jmp	.LBB4_61
.LBB4_61:                               # %do.body.135
	jmp	.LBB4_62
.LBB4_62:                               # %do.end.136
	movl	$0, -32(%rbp)
.LBB4_63:                               # %for.cond.137
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_68
# BB#64:                                # %for.body.140
                                        #   in Loop: Header=BB4_63 Depth=1
	jmp	.LBB4_65
.LBB4_65:                               # %do.body.141
                                        #   in Loop: Header=BB4_63 Depth=1
	jmp	.LBB4_66
.LBB4_66:                               # %do.end.142
                                        #   in Loop: Header=BB4_63 Depth=1
	jmp	.LBB4_67
.LBB4_67:                               # %for.inc.143
                                        #   in Loop: Header=BB4_63 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_63
.LBB4_68:                               # %for.end.145
	jmp	.LBB4_69
.LBB4_69:                               # %do.body.146
	jmp	.LBB4_70
.LBB4_70:                               # %do.end.147
	movl	$0, -32(%rbp)
.LBB4_71:                               # %for.cond.148
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_76
# BB#72:                                # %for.body.151
                                        #   in Loop: Header=BB4_71 Depth=1
	jmp	.LBB4_73
.LBB4_73:                               # %do.body.152
                                        #   in Loop: Header=BB4_71 Depth=1
	jmp	.LBB4_74
.LBB4_74:                               # %do.end.153
                                        #   in Loop: Header=BB4_71 Depth=1
	jmp	.LBB4_75
.LBB4_75:                               # %for.inc.154
                                        #   in Loop: Header=BB4_71 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_71
.LBB4_76:                               # %for.end.156
	jmp	.LBB4_77
.LBB4_77:                               # %do.body.157
	jmp	.LBB4_78
.LBB4_78:                               # %do.end.158
	movabsq	$recode_mline.rml, %rax
	movslq	recode_mline.last, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, recode_mline.rl
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	recode_mline.rl, %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	recode_mline.rl, %rcx
	movq	%rax, 32(%rcx)
	movl	$0, -32(%rbp)
.LBB4_79:                               # %for.cond.161
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_101
# BB#80:                                # %for.body.164
                                        #   in Loop: Header=BB4_79 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	shll	$8, %esi
	orl	%esi, %edx
	movl	%edx, -36(%rbp)
	cmpl	$8, -24(%rbp)
	jne	.LBB4_82
# BB#81:                                # %if.then.175
                                        #   in Loop: Header=BB4_79 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$16, %edx
	orl	-36(%rbp), %edx
	movl	%edx, -36(%rbp)
.LBB4_82:                               # %if.end.182
                                        #   in Loop: Header=BB4_79 Depth=1
	cmpl	$8, -24(%rbp)
	je	.LBB4_85
# BB#83:                                # %land.lhs.true.185
                                        #   in Loop: Header=BB4_79 Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB4_85
# BB#84:                                # %if.then.188
                                        #   in Loop: Header=BB4_79 Depth=1
	movabsq	$encodings, %rax
	movslq	-24(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	shll	$8, %edx
	orl	-36(%rbp), %edx
	movl	%edx, -36(%rbp)
.LBB4_85:                               # %if.end.194
                                        #   in Loop: Header=BB4_79 Depth=1
	cmpl	$8, -24(%rbp)
	je	.LBB4_88
# BB#86:                                # %land.lhs.true.197
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %eax
	andl	$7936, %eax             # imm = 0x1F00
	cmpl	$0, %eax
	je	.LBB4_88
# BB#87:                                # %land.lhs.true.200
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %eax
	andl	$57344, %eax            # imm = 0xE000
	cmpl	$0, %eax
	je	.LBB4_90
.LBB4_88:                               # %lor.lhs.false.204
                                        #   in Loop: Header=BB4_79 Depth=1
	cmpl	$8, -24(%rbp)
	jne	.LBB4_96
# BB#89:                                # %land.lhs.true.207
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	je	.LBB4_96
.LBB4_90:                               # %if.then.209
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB4_92
# BB#91:                                # %if.then.212
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	$63, -36(%rbp)
	jmp	.LBB4_95
.LBB4_92:                               # %if.else.213
                                        #   in Loop: Header=BB4_79 Depth=1
	leaq	-40(%rbp), %rsi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	shll	$8, %edi
	orl	%edi, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %edi
	movl	-28(%rbp), %edx
	callq	recode_char_dw_to_encoding
	movl	%eax, -36(%rbp)
	cmpl	$8, -28(%rbp)
	jne	.LBB4_94
# BB#93:                                # %if.then.228
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	recode_mline.rl, %rsi
	movq	24(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB4_94:                               # %if.end.234
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	recode_mline.rl, %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-36(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	recode_mline.rl, %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB4_95:                               # %if.end.248
                                        #   in Loop: Header=BB4_79 Depth=1
	jmp	.LBB4_97
.LBB4_96:                               # %if.else.249
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	recode_char_to_encoding
	movl	%eax, -36(%rbp)
.LBB4_97:                               # %if.end.251
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-32(%rbp), %rdx
	movq	recode_mline.rl, %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-36(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-32(%rbp), %rdx
	movq	recode_mline.rl, %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$8, -28(%rbp)
	jne	.LBB4_99
# BB#98:                                # %if.then.265
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-36(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-32(%rbp), %rdx
	movq	recode_mline.rl, %rsi
	movq	24(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB4_99:                               # %if.end.272
                                        #   in Loop: Header=BB4_79 Depth=1
	jmp	.LBB4_100
.LBB4_100:                              # %for.inc.273
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_79
.LBB4_101:                              # %for.end.275
	movl	recode_mline.last, %eax
	xorl	$1, %eax
	movl	%eax, recode_mline.last
# BB#102:                               # %do.body.276
	jmp	.LBB4_103
.LBB4_103:                              # %do.end.277
	movl	$0, -32(%rbp)
.LBB4_104:                              # %for.cond.278
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_109
# BB#105:                               # %for.body.281
                                        #   in Loop: Header=BB4_104 Depth=1
	jmp	.LBB4_106
.LBB4_106:                              # %do.body.282
                                        #   in Loop: Header=BB4_104 Depth=1
	jmp	.LBB4_107
.LBB4_107:                              # %do.end.283
                                        #   in Loop: Header=BB4_104 Depth=1
	jmp	.LBB4_108
.LBB4_108:                              # %for.inc.284
                                        #   in Loop: Header=BB4_104 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_104
.LBB4_109:                              # %for.end.286
	jmp	.LBB4_110
.LBB4_110:                              # %do.body.287
	jmp	.LBB4_111
.LBB4_111:                              # %do.end.288
	movl	$0, -32(%rbp)
.LBB4_112:                              # %for.cond.289
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_117
# BB#113:                               # %for.body.292
                                        #   in Loop: Header=BB4_112 Depth=1
	jmp	.LBB4_114
.LBB4_114:                              # %do.body.293
                                        #   in Loop: Header=BB4_112 Depth=1
	jmp	.LBB4_115
.LBB4_115:                              # %do.end.294
                                        #   in Loop: Header=BB4_112 Depth=1
	jmp	.LBB4_116
.LBB4_116:                              # %for.inc.295
                                        #   in Loop: Header=BB4_112 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_112
.LBB4_117:                              # %for.end.297
	jmp	.LBB4_118
.LBB4_118:                              # %do.body.298
	jmp	.LBB4_119
.LBB4_119:                              # %do.end.299
	movl	$0, -32(%rbp)
.LBB4_120:                              # %for.cond.300
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_125
# BB#121:                               # %for.body.303
                                        #   in Loop: Header=BB4_120 Depth=1
	jmp	.LBB4_122
.LBB4_122:                              # %do.body.304
                                        #   in Loop: Header=BB4_120 Depth=1
	jmp	.LBB4_123
.LBB4_123:                              # %do.end.305
                                        #   in Loop: Header=BB4_120 Depth=1
	jmp	.LBB4_124
.LBB4_124:                              # %for.inc.306
                                        #   in Loop: Header=BB4_120 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_120
.LBB4_125:                              # %for.end.308
	jmp	.LBB4_126
.LBB4_126:                              # %do.body.309
	jmp	.LBB4_127
.LBB4_127:                              # %do.end.310
	movl	$0, -32(%rbp)
.LBB4_128:                              # %for.cond.311
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_133
# BB#129:                               # %for.body.314
                                        #   in Loop: Header=BB4_128 Depth=1
	jmp	.LBB4_130
.LBB4_130:                              # %do.body.315
                                        #   in Loop: Header=BB4_128 Depth=1
	jmp	.LBB4_131
.LBB4_131:                              # %do.end.316
                                        #   in Loop: Header=BB4_128 Depth=1
	jmp	.LBB4_132
.LBB4_132:                              # %for.inc.317
                                        #   in Loop: Header=BB4_128 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_128
.LBB4_133:                              # %for.end.319
	jmp	.LBB4_134
.LBB4_134:                              # %do.body.320
	jmp	.LBB4_135
.LBB4_135:                              # %do.end.321
	movl	$0, -32(%rbp)
.LBB4_136:                              # %for.cond.322
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_141
# BB#137:                               # %for.body.325
                                        #   in Loop: Header=BB4_136 Depth=1
	jmp	.LBB4_138
.LBB4_138:                              # %do.body.326
                                        #   in Loop: Header=BB4_136 Depth=1
	jmp	.LBB4_139
.LBB4_139:                              # %do.end.327
                                        #   in Loop: Header=BB4_136 Depth=1
	jmp	.LBB4_140
.LBB4_140:                              # %for.inc.328
                                        #   in Loop: Header=BB4_136 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_136
.LBB4_141:                              # %for.end.330
	jmp	.LBB4_142
.LBB4_142:                              # %do.body.331
	jmp	.LBB4_143
.LBB4_143:                              # %do.end.332
	movl	$0, -32(%rbp)
.LBB4_144:                              # %for.cond.333
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_149
# BB#145:                               # %for.body.336
                                        #   in Loop: Header=BB4_144 Depth=1
	jmp	.LBB4_146
.LBB4_146:                              # %do.body.337
                                        #   in Loop: Header=BB4_144 Depth=1
	jmp	.LBB4_147
.LBB4_147:                              # %do.end.338
                                        #   in Loop: Header=BB4_144 Depth=1
	jmp	.LBB4_148
.LBB4_148:                              # %for.inc.339
                                        #   in Loop: Header=BB4_144 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_144
.LBB4_149:                              # %for.end.341
	jmp	.LBB4_150
.LBB4_150:                              # %do.body.342
	jmp	.LBB4_151
.LBB4_151:                              # %do.end.343
	movq	recode_mline.rl, %rax
	movq	%rax, -8(%rbp)
.LBB4_152:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	recode_mline, .Lfunc_end4-recode_mline
	.cfi_endproc

	.globl	utf8_isdouble
	.align	16, 0x90
	.type	utf8_isdouble,@function
utf8_isdouble:                          # @utf8_isdouble
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
	movl	%edi, -4(%rbp)
	cmpl	$4352, -4(%rbp)         # imm = 0x1100
	jl	.LBB5_21
# BB#1:                                 # %land.lhs.true
	movb	$1, %al
	cmpl	$4447, -4(%rbp)         # imm = 0x115F
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
# BB#2:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$9001, -4(%rbp)         # imm = 0x2329
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB5_24
# BB#3:                                 # %lor.lhs.false.3
	movb	$1, %al
	cmpl	$9002, -4(%rbp)         # imm = 0x232A
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB5_24
# BB#4:                                 # %lor.lhs.false.5
	cmpl	$11904, -4(%rbp)        # imm = 0x2E80
	jl	.LBB5_7
# BB#5:                                 # %land.lhs.true.7
	cmpl	$42191, -4(%rbp)        # imm = 0xA4CF
	jg	.LBB5_7
# BB#6:                                 # %land.lhs.true.9
	movb	$1, %al
	cmpl	$12351, -4(%rbp)        # imm = 0x303F
	movb	%al, -5(%rbp)           # 1-byte Spill
	jne	.LBB5_24
.LBB5_7:                                # %lor.lhs.false.11
	cmpl	$44032, -4(%rbp)        # imm = 0xAC00
	jl	.LBB5_9
# BB#8:                                 # %land.lhs.true.13
	movb	$1, %al
	cmpl	$55203, -4(%rbp)        # imm = 0xD7A3
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
.LBB5_9:                                # %lor.lhs.false.15
	cmpl	$63744, -4(%rbp)        # imm = 0xF900
	jl	.LBB5_11
# BB#10:                                # %land.lhs.true.17
	movb	$1, %al
	cmpl	$64255, -4(%rbp)        # imm = 0xFAFF
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
.LBB5_11:                               # %lor.lhs.false.19
	cmpl	$65072, -4(%rbp)        # imm = 0xFE30
	jl	.LBB5_13
# BB#12:                                # %land.lhs.true.21
	movb	$1, %al
	cmpl	$65135, -4(%rbp)        # imm = 0xFE6F
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
.LBB5_13:                               # %lor.lhs.false.23
	cmpl	$65280, -4(%rbp)        # imm = 0xFF00
	jl	.LBB5_15
# BB#14:                                # %land.lhs.true.25
	movb	$1, %al
	cmpl	$65376, -4(%rbp)        # imm = 0xFF60
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
.LBB5_15:                               # %lor.lhs.false.27
	cmpl	$65504, -4(%rbp)        # imm = 0xFFE0
	jl	.LBB5_17
# BB#16:                                # %land.lhs.true.29
	movb	$1, %al
	cmpl	$65510, -4(%rbp)        # imm = 0xFFE6
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
.LBB5_17:                               # %lor.lhs.false.31
	cmpl	$131072, -4(%rbp)       # imm = 0x20000
	jl	.LBB5_19
# BB#18:                                # %land.lhs.true.33
	movb	$1, %al
	cmpl	$196605, -4(%rbp)       # imm = 0x2FFFD
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
.LBB5_19:                               # %lor.lhs.false.35
	cmpl	$196608, -4(%rbp)       # imm = 0x30000
	jl	.LBB5_21
# BB#20:                                # %land.lhs.true.37
	movb	$1, %al
	cmpl	$262141, -4(%rbp)       # imm = 0x3FFFD
	movb	%al, -5(%rbp)           # 1-byte Spill
	jle	.LBB5_24
.LBB5_21:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, cjkwidth
	movb	%cl, -6(%rbp)           # 1-byte Spill
	je	.LBB5_23
# BB#22:                                # %land.rhs
	movabsq	$utf8_isdouble.ambiguous, %rsi
	movl	$155, %edx
	movl	-4(%rbp), %edi
	callq	bisearch
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -6(%rbp)           # 1-byte Spill
.LBB5_23:                               # %land.end
	movb	-6(%rbp), %al           # 1-byte Reload
	movb	%al, -5(%rbp)           # 1-byte Spill
.LBB5_24:                               # %lor.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	utf8_isdouble, .Lfunc_end5-utf8_isdouble
	.cfi_endproc

	.globl	AddUtf8
	.align	16, 0x90
	.type	AddUtf8,@function
AddUtf8:                                # @AddUtf8
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB6_2
.LBB6_2:                                # %do.end
	cmpl	$55296, -4(%rbp)        # imm = 0xD800
	jl	.LBB6_7
# BB#3:                                 # %land.lhs.true
	cmpl	$57344, -4(%rbp)        # imm = 0xE000
	jge	.LBB6_7
# BB#4:                                 # %land.lhs.true.2
	cmpq	$0, combchars
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true.3
	movl	-4(%rbp), %eax
	subl	$55296, %eax            # imm = 0xD800
	movslq	%eax, %rcx
	movq	combchars, %rdx
	cmpq	$0, (%rdx,%rcx,8)
	je	.LBB6_7
# BB#6:                                 # %if.then
	movl	-4(%rbp), %eax
	subl	$55296, %eax            # imm = 0xD800
	movslq	%eax, %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	(%rcx), %edi
	callq	AddUtf8
	movl	-4(%rbp), %eax
	subl	$55296, %eax            # imm = 0xD800
	movslq	%eax, %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -4(%rbp)
.LBB6_7:                                # %if.end
	cmpl	$65536, -4(%rbp)        # imm = 0x10000
	jl	.LBB6_19
# BB#8:                                 # %if.then.12
	cmpl	$2097152, -4(%rbp)      # imm = 0x200000
	jl	.LBB6_14
# BB#9:                                 # %if.then.14
	jmp	.LBB6_10
.LBB6_10:                               # %do.body.15
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB6_12
# BB#11:                                # %if.then.17
	callq	Resize_obuf
.LBB6_12:                               # %if.end.18
	movl	-4(%rbp), %eax
	andl	$50331648, %eax         # imm = 0x3000000
	sarl	$12, %eax
	xorl	$248, %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#13:                                # %do.end.19
	movl	-4(%rbp), %eax
	andl	$16777215, %eax         # imm = 0xFFFFFF
	xorl	$29360128, %eax         # imm = 0x1C00000
	movl	%eax, -4(%rbp)
.LBB6_14:                               # %if.end.22
	jmp	.LBB6_15
.LBB6_15:                               # %do.body.23
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB6_17
# BB#16:                                # %if.then.28
	callq	Resize_obuf
.LBB6_17:                               # %if.end.29
	movl	-4(%rbp), %eax
	andl	$33292288, %eax         # imm = 0x1FC0000
	sarl	$18, %eax
	xorl	$240, %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#18:                                # %do.end.36
	movl	-4(%rbp), %eax
	andl	$262143, %eax           # imm = 0x3FFFF
	xorl	$393216, %eax           # imm = 0x60000
	movl	%eax, -4(%rbp)
.LBB6_19:                               # %if.end.39
	cmpl	$2048, -4(%rbp)         # imm = 0x800
	jl	.LBB6_25
# BB#20:                                # %if.then.42
	jmp	.LBB6_21
.LBB6_21:                               # %do.body.43
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB6_23
# BB#22:                                # %if.then.48
	callq	Resize_obuf
.LBB6_23:                               # %if.end.49
	movl	-4(%rbp), %eax
	andl	$520192, %eax           # imm = 0x7F000
	sarl	$12, %eax
	xorl	$224, %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#24:                                # %do.end.56
	movl	-4(%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	xorl	$4096, %eax             # imm = 0x1000
	movl	%eax, -4(%rbp)
.LBB6_25:                               # %if.end.59
	cmpl	$128, -4(%rbp)
	jl	.LBB6_31
# BB#26:                                # %if.then.62
	jmp	.LBB6_27
.LBB6_27:                               # %do.body.63
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB6_29
# BB#28:                                # %if.then.68
	callq	Resize_obuf
.LBB6_29:                               # %if.end.69
	movl	-4(%rbp), %eax
	andl	$8128, %eax             # imm = 0x1FC0
	sarl	$6, %eax
	xorl	$192, %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#30:                                # %do.end.76
	movl	-4(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movl	%eax, -4(%rbp)
.LBB6_31:                               # %if.end.78
	jmp	.LBB6_32
.LBB6_32:                               # %do.body.79
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB6_34
# BB#33:                                # %if.then.84
	callq	Resize_obuf
.LBB6_34:                               # %if.end.85
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#35:                                # %do.end.89
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	AddUtf8, .Lfunc_end6-AddUtf8
	.cfi_endproc

	.globl	ToUtf8_comb
	.align	16, 0x90
	.type	ToUtf8_comb,@function
ToUtf8_comb:                            # @ToUtf8_comb
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$55296, -20(%rbp)       # imm = 0xD800
	jl	.LBB7_8
# BB#1:                                 # %land.lhs.true
	cmpl	$57344, -20(%rbp)       # imm = 0xE000
	jge	.LBB7_8
# BB#2:                                 # %land.lhs.true.2
	cmpq	$0, combchars
	je	.LBB7_8
# BB#3:                                 # %land.lhs.true.3
	movl	-20(%rbp), %eax
	subl	$55296, %eax            # imm = 0xD800
	movslq	%eax, %rcx
	movq	combchars, %rdx
	cmpq	$0, (%rdx,%rcx,8)
	je	.LBB7_8
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	subl	$55296, %eax            # imm = 0xD800
	movslq	%eax, %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	(%rcx), %esi
	callq	ToUtf8_comb
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpq	$0, -16(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB7_6
# BB#5:                                 # %cond.true
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_7
.LBB7_7:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	-20(%rbp), %ecx
	subl	$55296, %ecx            # imm = 0xD800
	movslq	%ecx, %rdx
	movq	combchars, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movl	4(%rdx), %esi
	movq	%rax, %rdi
	callq	ToUtf8
	movl	-28(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB7_9
.LBB7_8:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ToUtf8
	movl	%eax, -4(%rbp)
.LBB7_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ToUtf8_comb, .Lfunc_end7-ToUtf8_comb
	.cfi_endproc

	.globl	ToUtf8
	.align	16, 0x90
	.type	ToUtf8,@function
ToUtf8:                                 # @ToUtf8
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, -16(%rbp)
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jl	.LBB8_8
# BB#1:                                 # %if.then
	cmpl	$2097152, -12(%rbp)     # imm = 0x200000
	jl	.LBB8_5
# BB#2:                                 # %if.then.2
	cmpq	$0, -8(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movl	-12(%rbp), %eax
	andl	$50331648, %eax         # imm = 0x3000000
	sarl	$12, %eax
	xorl	$248, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
.LBB8_4:                                # %if.end
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	andl	$16777215, %eax         # imm = 0xFFFFFF
	xorl	$29360128, %eax         # imm = 0x1C00000
	movl	%eax, -12(%rbp)
.LBB8_5:                                # %if.end.6
	cmpq	$0, -8(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.8
	movl	-12(%rbp), %eax
	andl	$33292288, %eax         # imm = 0x1FC0000
	sarl	$18, %eax
	xorl	$240, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
.LBB8_7:                                # %if.end.14
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	andl	$262143, %eax           # imm = 0x3FFFF
	xorl	$393216, %eax           # imm = 0x60000
	movl	%eax, -12(%rbp)
.LBB8_8:                                # %if.end.18
	cmpl	$2048, -12(%rbp)        # imm = 0x800
	jl	.LBB8_12
# BB#9:                                 # %if.then.21
	cmpq	$0, -8(%rbp)
	je	.LBB8_11
# BB#10:                                # %if.then.23
	movl	-12(%rbp), %eax
	andl	$520192, %eax           # imm = 0x7F000
	sarl	$12, %eax
	xorl	$224, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
.LBB8_11:                               # %if.end.29
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	orl	$4096, %eax             # imm = 0x1000
	movl	%eax, -12(%rbp)
.LBB8_12:                               # %if.end.32
	cmpl	$128, -12(%rbp)
	jl	.LBB8_16
# BB#13:                                # %if.then.35
	cmpq	$0, -8(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.37
	movl	-12(%rbp), %eax
	andl	$8128, %eax             # imm = 0x1FC0
	sarl	$6, %eax
	xorl	$192, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
.LBB8_15:                               # %if.end.43
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movl	%eax, -12(%rbp)
.LBB8_16:                               # %if.end.47
	cmpq	$0, -8(%rbp)
	je	.LBB8_18
# BB#17:                                # %if.then.49
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
.LBB8_18:                               # %if.end.52
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ToUtf8, .Lfunc_end8-ToUtf8
	.cfi_endproc

	.globl	FromUtf8
	.align	16, 0x90
	.type	FromUtf8,@function
FromUtf8:                               # @FromUtf8
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
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB9_18
# BB#1:                                 # %if.then
	movl	-8(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$-2, -4(%rbp)
	jmp	.LBB9_55
.LBB9_3:                                # %if.else
	movl	-8(%rbp), %eax
	andl	$63, %eax
	movl	-20(%rbp), %ecx
	shll	$6, %ecx
	orl	%ecx, %eax
	movl	%eax, -8(%rbp)
# BB#4:                                 # %if.end
	movl	-20(%rbp), %eax
	andl	$1073741824, %eax       # imm = 0x40000000
	cmpl	$0, %eax
	jne	.LBB9_17
# BB#5:                                 # %if.then.5
	movl	-8(%rbp), %eax
	andl	$-2113395744, %eax      # imm = 0xFFFFFFFF820823E0
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jne	.LBB9_7
# BB#6:                                 # %if.then.8
	movl	$-33554433, -8(%rbp)    # imm = 0xFFFFFFFFFDFFFFFF
	jmp	.LBB9_16
.LBB9_7:                                # %if.else.9
	movl	-8(%rbp), %eax
	andl	$34087408, %eax         # imm = 0x20821F0
	cmpl	$33554432, %eax         # imm = 0x2000000
	jne	.LBB9_9
# BB#8:                                 # %if.then.12
	movl	$-524289, -8(%rbp)      # imm = 0xFFFFFFFFFFF7FFFF
	jmp	.LBB9_15
.LBB9_9:                                # %if.else.13
	movl	-8(%rbp), %eax
	andl	$532728, %eax           # imm = 0x820F8
	cmpl	$524288, %eax           # imm = 0x80000
	jne	.LBB9_11
# BB#10:                                # %if.then.16
	movl	$-12288, -8(%rbp)       # imm = 0xFFFFFFFFFFFFD000
	jmp	.LBB9_14
.LBB9_11:                               # %if.else.17
	movl	-8(%rbp), %eax
	andl	$8316, %eax             # imm = 0x207C
	cmpl	$8192, %eax             # imm = 0x2000
	jne	.LBB9_13
# BB#12:                                # %if.then.20
	movl	$-144, -8(%rbp)
.LBB9_13:                               # %if.end.21
	jmp	.LBB9_14
.LBB9_14:                               # %if.end.22
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.23
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.24
	jmp	.LBB9_17
.LBB9_17:                               # %if.end.25
	jmp	.LBB9_42
.LBB9_18:                               # %if.else.26
	cmpl	$254, -8(%rbp)
	jl	.LBB9_20
# BB#19:                                # %if.then.28
	movl	$65533, -8(%rbp)        # imm = 0xFFFD
	jmp	.LBB9_41
.LBB9_20:                               # %if.else.29
	cmpl	$252, -8(%rbp)
	jl	.LBB9_22
# BB#21:                                # %if.then.31
	movl	-8(%rbp), %eax
	andl	$1, %eax
	orl	$-1073741828, %eax      # imm = 0xFFFFFFFFBFFFFFFC
	movl	%eax, -8(%rbp)
	jmp	.LBB9_40
.LBB9_22:                               # %if.else.34
	cmpl	$248, -8(%rbp)
	jl	.LBB9_24
# BB#23:                                # %if.then.36
	movl	-8(%rbp), %eax
	andl	$3, %eax
	orl	$-1073742080, %eax      # imm = 0xFFFFFFFFBFFFFF00
	movl	%eax, -8(%rbp)
	jmp	.LBB9_39
.LBB9_24:                               # %if.else.39
	cmpl	$240, -8(%rbp)
	jl	.LBB9_26
# BB#25:                                # %if.then.41
	movl	-8(%rbp), %eax
	andl	$7, %eax
	orl	$-1073758208, %eax      # imm = 0xFFFFFFFFBFFFC000
	movl	%eax, -8(%rbp)
	jmp	.LBB9_38
.LBB9_26:                               # %if.else.44
	cmpl	$224, -8(%rbp)
	jl	.LBB9_28
# BB#27:                                # %if.then.46
	movl	-8(%rbp), %eax
	andl	$15, %eax
	orl	$-1074790400, %eax      # imm = 0xFFFFFFFFBFF00000
	movl	%eax, -8(%rbp)
	jmp	.LBB9_37
.LBB9_28:                               # %if.else.49
	cmpl	$194, -8(%rbp)
	jl	.LBB9_30
# BB#29:                                # %if.then.51
	movl	-8(%rbp), %eax
	andl	$31, %eax
	orl	$-67108864, %eax        # imm = 0xFFFFFFFFFC000000
	movl	%eax, -8(%rbp)
	jmp	.LBB9_36
.LBB9_30:                               # %if.else.54
	cmpl	$192, -8(%rbp)
	jl	.LBB9_32
# BB#31:                                # %if.then.56
	movl	$-33554433, -8(%rbp)    # imm = 0xFFFFFFFFFDFFFFFF
	jmp	.LBB9_35
.LBB9_32:                               # %if.else.57
	cmpl	$128, -8(%rbp)
	jl	.LBB9_34
# BB#33:                                # %if.then.59
	movl	$65533, -8(%rbp)        # imm = 0xFFFD
.LBB9_34:                               # %if.end.60
	jmp	.LBB9_35
.LBB9_35:                               # %if.end.61
	jmp	.LBB9_36
.LBB9_36:                               # %if.end.62
	jmp	.LBB9_37
.LBB9_37:                               # %if.end.63
	jmp	.LBB9_38
.LBB9_38:                               # %if.end.64
	jmp	.LBB9_39
.LBB9_39:                               # %if.end.65
	jmp	.LBB9_40
.LBB9_40:                               # %if.end.66
	jmp	.LBB9_41
.LBB9_41:                               # %if.end.67
	jmp	.LBB9_42
.LBB9_42:                               # %if.end.68
	movl	-8(%rbp), %eax
	andl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	cmpl	$0, %eax
	je	.LBB9_44
# BB#43:                                # %cond.true
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB9_45
.LBB9_44:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB9_45
.LBB9_45:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, -20(%rbp)
	je	.LBB9_47
# BB#46:                                # %if.then.72
	movl	$-1, -4(%rbp)
	jmp	.LBB9_55
.LBB9_47:                               # %if.end.73
	movl	-8(%rbp), %eax
	andl	$-8388608, %eax         # imm = 0xFFFFFFFFFF800000
	cmpl	$0, %eax
	je	.LBB9_49
# BB#48:                                # %if.then.76
	movl	$65533, -8(%rbp)        # imm = 0xFFFD
.LBB9_49:                               # %if.end.77
	cmpl	$55296, -8(%rbp)        # imm = 0xD800
	jl	.LBB9_54
# BB#50:                                # %land.lhs.true
	cmpl	$57343, -8(%rbp)        # imm = 0xDFFF
	jle	.LBB9_53
# BB#51:                                # %lor.lhs.false
	cmpl	$65534, -8(%rbp)        # imm = 0xFFFE
	je	.LBB9_53
# BB#52:                                # %lor.lhs.false.81
	cmpl	$65535, -8(%rbp)        # imm = 0xFFFF
	jne	.LBB9_54
.LBB9_53:                               # %if.then.83
	movl	$65533, -8(%rbp)        # imm = 0xFFFD
.LBB9_54:                               # %if.end.84
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB9_55:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	FromUtf8, .Lfunc_end9-FromUtf8
	.cfi_endproc

	.globl	WinSwitchEncoding
	.align	16, 0x90
	.type	WinSwitchEncoding,@function
WinSwitchEncoding:                      # @WinSwitchEncoding
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$8, 48(%rdi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	cmpl	$8, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	%ecx, %esi
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
	jmp	.LBB10_70
.LBB10_2:                               # %if.end
	movq	flayer, %rax
	movq	%rax, -56(%rbp)
	movq	displays, %rax
	movq	%rax, -40(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #       Child Loop BB10_8 Depth 3
	cmpq	$0, -40(%rbp)
	je	.LBB10_17
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB10_5:                               # %for.cond.7
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_8 Depth 3
	cmpq	$0, -48(%rbp)
	je	.LBB10_15
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	40(%rcx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_13
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
.LBB10_8:                               # %while.cond
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	flayer, %rax
	cmpq	$0, 48(%rax)
	je	.LBB10_12
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB10_8 Depth=3
	movq	-56(%rbp), %rax
	cmpq	flayer, %rax
	jne	.LBB10_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB10_8 Depth=3
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB10_11:                              # %if.end.19
                                        #   in Loop: Header=BB10_8 Depth=3
	callq	ExitOverlayPage
	jmp	.LBB10_8
.LBB10_12:                              # %while.end
                                        #   in Loop: Header=BB10_5 Depth=2
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.20
                                        #   in Loop: Header=BB10_5 Depth=2
	jmp	.LBB10_14
.LBB10_14:                              # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_5
.LBB10_15:                              # %for.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_16
.LBB10_16:                              # %for.inc.21
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_3
.LBB10_17:                              # %for.end.22
	movq	-56(%rbp), %rax
	movq	%rax, flayer
	movl	$0, -20(%rbp)
.LBB10_18:                              # %for.cond.23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_27 Depth 2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	10860(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_69
# BB#19:                                # %for.body.27
                                        #   in Loop: Header=BB10_18 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB10_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB10_18 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_22
.LBB10_21:                              # %cond.false
                                        #   in Loop: Header=BB10_18 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	36(%rcx), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	10872(%rdx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
.LBB10_22:                              # %cond.end
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	jne	.LBB10_26
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB10_26
# BB#24:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB10_18 Depth=1
	movabsq	$encodings, %rax
	movq	-8(%rbp), %rcx
	movslq	48(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 16(%rax)
	jne	.LBB10_26
# BB#25:                                # %if.then.47
                                        #   in Loop: Header=BB10_18 Depth=1
	jmp	.LBB10_68
.LBB10_26:                              # %if.end.48
                                        #   in Loop: Header=BB10_18 Depth=1
	movl	$0, -16(%rbp)
.LBB10_27:                              # %for.cond.49
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB10_67
# BB#28:                                # %for.body.53
                                        #   in Loop: Header=BB10_27 Depth=2
	movslq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	shll	$8, %esi
	orl	%esi, %edx
	movl	%edx, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB10_30
# BB#29:                                # %if.then.65
                                        #   in Loop: Header=BB10_27 Depth=2
	movslq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$16, %edx
	orl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
.LBB10_30:                              # %if.end.72
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	je	.LBB10_33
# BB#31:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB10_27 Depth=2
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB10_33
# BB#32:                                # %if.then.80
                                        #   in Loop: Header=BB10_27 Depth=2
	movabsq	$encodings, %rax
	movq	-8(%rbp), %rcx
	movslq	48(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	shll	$8, %edx
	orl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
.LBB10_33:                              # %if.end.88
                                        #   in Loop: Header=BB10_27 Depth=2
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB10_35
# BB#34:                                # %if.then.91
                                        #   in Loop: Header=BB10_27 Depth=2
	jmp	.LBB10_66
.LBB10_35:                              # %if.end.92
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	jne	.LBB10_39
# BB#36:                                # %if.then.96
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	calloc
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	cmpq	$0, %rax
	jne	.LBB10_38
# BB#37:                                # %if.then.104
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB10_67
.LBB10_38:                              # %if.end.106
                                        #   in Loop: Header=BB10_27 Depth=2
	jmp	.LBB10_39
.LBB10_39:                              # %if.end.107
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	je	.LBB10_42
# BB#40:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %eax
	andl	$7936, %eax             # imm = 0x1F00
	cmpl	$0, %eax
	je	.LBB10_42
# BB#41:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %eax
	andl	$57344, %eax            # imm = 0xE000
	cmpl	$0, %eax
	je	.LBB10_44
.LBB10_42:                              # %lor.lhs.false
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB10_56
# BB#43:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	je	.LBB10_56
.LBB10_44:                              # %if.then.126
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jne	.LBB10_46
# BB#45:                                # %if.then.132
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	$63, -24(%rbp)
	jmp	.LBB10_55
.LBB10_46:                              # %if.else
                                        #   in Loop: Header=BB10_27 Depth=2
	leaq	-60(%rbp), %rsi
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	shll	$8, %edi
	orl	%edi, %eax
	movslq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	shll	$16, %edi
	orl	%edi, %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %edi
	movl	-12(%rbp), %edx
	callq	recode_char_dw_to_encoding
	movl	%eax, -24(%rbp)
	cmpl	$8, -12(%rbp)
	jne	.LBB10_53
# BB#47:                                # %if.then.152
                                        #   in Loop: Header=BB10_27 Depth=2
	cmpl	$65536, -24(%rbp)       # imm = 0x10000
	jle	.LBB10_52
# BB#48:                                # %land.lhs.true.155
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	jne	.LBB10_52
# BB#49:                                # %if.then.159
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	calloc
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	cmpq	$0, %rax
	jne	.LBB10_51
# BB#50:                                # %if.then.168
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB10_67
.LBB10_51:                              # %if.end.170
                                        #   in Loop: Header=BB10_27 Depth=2
	jmp	.LBB10_52
.LBB10_52:                              # %if.end.171
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB10_54
.LBB10_53:                              # %if.else.178
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB10_54:                              # %if.end.180
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-60(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB10_55:                              # %if.end.194
                                        #   in Loop: Header=BB10_27 Depth=2
	jmp	.LBB10_57
.LBB10_56:                              # %if.else.195
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	recode_char_to_encoding
	movl	%eax, -24(%rbp)
.LBB10_57:                              # %if.end.197
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$8, -12(%rbp)
	jne	.LBB10_64
# BB#58:                                # %if.then.211
                                        #   in Loop: Header=BB10_27 Depth=2
	cmpl	$65536, -24(%rbp)       # imm = 0x10000
	jle	.LBB10_63
# BB#59:                                # %land.lhs.true.214
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	jne	.LBB10_63
# BB#60:                                # %if.then.218
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	calloc
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	cmpq	$0, %rax
	jne	.LBB10_62
# BB#61:                                # %if.then.227
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB10_67
.LBB10_62:                              # %if.end.229
                                        #   in Loop: Header=BB10_27 Depth=2
	jmp	.LBB10_63
.LBB10_63:                              # %if.end.230
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-24(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
	movb	%al, %cl
	movslq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB10_65
.LBB10_64:                              # %if.else.237
                                        #   in Loop: Header=BB10_27 Depth=2
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB10_65:                              # %if.end.239
                                        #   in Loop: Header=BB10_27 Depth=2
	jmp	.LBB10_66
.LBB10_66:                              # %for.inc.240
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB10_27
.LBB10_67:                              # %for.end.242
                                        #   in Loop: Header=BB10_18 Depth=1
	jmp	.LBB10_68
.LBB10_68:                              # %for.inc.243
                                        #   in Loop: Header=BB10_18 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_18
.LBB10_69:                              # %for.end.245
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
.LBB10_70:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	WinSwitchEncoding, .Lfunc_end10-WinSwitchEncoding
	.cfi_endproc

	.align	16, 0x90
	.type	bisearch,@function
bisearch:                               # @bisearch
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
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	cmpl	(%rsi), %edx
	jl	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movl	-8(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpl	4(%rdx,%rcx,8), %eax
	jle	.LBB11_3
.LBB11_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_13
.LBB11_3:                               # %if.end
	jmp	.LBB11_4
.LBB11_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB11_12
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	$2, %eax
	movl	-24(%rbp), %ecx
	addl	-20(%rbp), %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-32(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	movslq	-28(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpl	4(%rdi,%rsi,8), %eax
	jle	.LBB11_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB11_11
.LBB11_7:                               # %if.else
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-8(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpl	(%rdx,%rcx,8), %eax
	jge	.LBB11_9
# BB#8:                                 # %if.then.14
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB11_10
.LBB11_9:                               # %if.else.15
	movl	$1, -4(%rbp)
	jmp	.LBB11_13
.LBB11_10:                              # %if.end.16
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.17
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_4
.LBB11_12:                              # %while.end
	movl	$0, -4(%rbp)
.LBB11_13:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bisearch, .Lfunc_end11-bisearch
	.cfi_endproc

	.globl	utf8_iscomb
	.align	16, 0x90
	.type	utf8_iscomb,@function
utf8_iscomb:                            # @utf8_iscomb
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
	subq	$16, %rsp
	movabsq	$utf8_iscomb.combining, %rsi
	movl	$141, %edx
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	bisearch
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	utf8_iscomb, .Lfunc_end12-utf8_iscomb
	.cfi_endproc

	.globl	utf8_handle_comb
	.align	16, 0x90
	.type	utf8_handle_comb,@function
utf8_handle_comb:                       # @utf8_handle_comb
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzbl	2(%rsi), %edi
	shll	$8, %edi
	orl	%edi, %eax
	movq	-16(%rbp), %rsi
	movzbl	3(%rsi), %edi
	shll	$16, %edi
	orl	%edi, %eax
	movl	%eax, -28(%rbp)
	cmpl	$4352, -28(%rbp)        # imm = 0x1100
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jl	.LBB13_2
# BB#1:                                 # %land.rhs
	movl	-28(%rbp), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB13_2:                               # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -32(%rbp)
	cmpq	$0, combchars
	jne	.LBB13_13
# BB#3:                                 # %if.then
	movl	$2050, %eax             # imm = 0x802
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	calloc
	movq	%rax, combchars
	cmpq	$0, combchars
	jne	.LBB13_5
# BB#4:                                 # %if.then.9
	jmp	.LBB13_39
.LBB13_5:                               # %if.end
	movl	$16, %eax
	movl	%eax, %edi
	callq	malloc
	movl	$16, %ecx
	movl	%ecx, %edi
	movq	combchars, %rdx
	movq	%rax, 16384(%rdx)
	callq	malloc
	movq	combchars, %rdx
	movq	%rax, 16392(%rdx)
	movq	combchars, %rax
	cmpq	$0, 16384(%rax)
	je	.LBB13_7
# BB#6:                                 # %lor.lhs.false
	movq	combchars, %rax
	cmpq	$0, 16392(%rax)
	jne	.LBB13_12
.LBB13_7:                               # %if.then.17
	movq	combchars, %rax
	cmpq	$0, 16384(%rax)
	je	.LBB13_9
# BB#8:                                 # %if.then.20
	movq	combchars, %rax
	movq	16384(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_9:                               # %if.end.22
	movq	combchars, %rax
	cmpq	$0, 16392(%rax)
	je	.LBB13_11
# BB#10:                                # %if.then.25
	movq	combchars, %rax
	movq	16392(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_11:                              # %if.end.27
	movq	combchars, %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB13_39
.LBB13_12:                              # %if.end.28
	movq	combchars, %rax
	movq	16384(%rax), %rax
	movl	$0, (%rax)
	movq	combchars, %rax
	movq	16384(%rax), %rax
	movl	$1792, 4(%rax)          # imm = 0x700
	movq	combchars, %rax
	movq	16384(%rax), %rax
	movl	$2048, 8(%rax)          # imm = 0x800
	movq	combchars, %rax
	movq	16384(%rax), %rax
	movl	$2048, 12(%rax)         # imm = 0x800
	movq	combchars, %rax
	movq	16392(%rax), %rax
	movl	$1792, (%rax)           # imm = 0x700
	movq	combchars, %rax
	movq	16392(%rax), %rax
	movl	$2048, 4(%rax)          # imm = 0x800
	movq	combchars, %rax
	movq	16392(%rax), %rax
	movl	$2049, 8(%rax)          # imm = 0x801
	movq	combchars, %rax
	movq	16392(%rax), %rax
	movl	$2049, 12(%rax)         # imm = 0x801
.LBB13_13:                              # %if.end.42
	movl	$2048, %eax             # imm = 0x800
	movl	$2049, %ecx             # imm = 0x801
	cmpl	$0, -32(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rdx
	movq	combchars, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movl	(%rdx), %eax
	movl	%eax, -24(%rbp)
.LBB13_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB13_22
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB13_14 Depth=1
	movslq	-24(%rbp), %rax
	movq	combchars, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB13_17
# BB#16:                                # %if.then.54
	jmp	.LBB13_22
.LBB13_17:                              # %if.end.55
                                        #   in Loop: Header=BB13_14 Depth=1
	movslq	-24(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	(%rax), %edx
	cmpl	-28(%rbp), %edx
	jne	.LBB13_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_14 Depth=1
	movslq	-24(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	4(%rax), %edx
	cmpl	-4(%rbp), %edx
	jne	.LBB13_20
# BB#19:                                # %if.then.66
	jmp	.LBB13_22
.LBB13_20:                              # %if.end.67
                                        #   in Loop: Header=BB13_14 Depth=1
	jmp	.LBB13_21
.LBB13_21:                              # %for.inc
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_14
.LBB13_22:                              # %for.end
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB13_31
# BB#23:                                # %if.then.73
	cmpl	$55296, -28(%rbp)       # imm = 0xD800
	jl	.LBB13_26
# BB#24:                                # %land.lhs.true.76
	cmpl	$57344, -28(%rbp)       # imm = 0xE000
	jge	.LBB13_26
# BB#25:                                # %if.then.79
	movl	-20(%rbp), %edi
	movl	-28(%rbp), %eax
	subl	$55296, %eax            # imm = 0xD800
	movl	%eax, %esi
	callq	comb_tofront
.LBB13_26:                              # %if.end.80
	movslq	-20(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %edx
	movl	%edx, -24(%rbp)
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %esi
	addl	$55296, %esi            # imm = 0xD800
	cmpl	%esi, %edx
	jne	.LBB13_30
# BB#27:                                # %if.then.86
	jmp	.LBB13_28
.LBB13_28:                              # %do.body
	jmp	.LBB13_29
.LBB13_29:                              # %do.end
	movq	-16(%rbp), %rax
	movb	$63, (%rax)
	movq	-16(%rbp), %rax
	movb	$0, 2(%rax)
	jmp	.LBB13_39
.LBB13_30:                              # %if.end.89
	jmp	.LBB13_36
.LBB13_31:                              # %if.else
	movslq	-24(%rbp), %rax
	movq	combchars, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB13_35
# BB#32:                                # %if.then.93
	movl	$16, %eax
	movl	%eax, %edi
	callq	malloc
	movslq	-24(%rbp), %rdi
	movq	combchars, %rcx
	movq	%rax, (%rcx,%rdi,8)
	movslq	-24(%rbp), %rax
	movq	combchars, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB13_34
# BB#33:                                # %if.then.100
	jmp	.LBB13_39
.LBB13_34:                              # %if.end.101
	movl	-24(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 12(%rcx)
	movl	-24(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 8(%rcx)
.LBB13_35:                              # %if.end.108
	jmp	.LBB13_36
.LBB13_36:                              # %if.end.109
	movl	-28(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, (%rcx)
	movl	-4(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	combchars, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 4(%rcx)
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, %sil
	movq	-16(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	addl	$216, %eax
	movb	%al, %sil
	movq	-16(%rbp), %rcx
	movb	%sil, 2(%rcx)
	movq	-16(%rbp), %rcx
	movb	$0, 3(%rcx)
# BB#37:                                # %do.body.122
	jmp	.LBB13_38
.LBB13_38:                              # %do.end.123
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	comb_tofront
.LBB13_39:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	utf8_handle_comb, .Lfunc_end13-utf8_handle_comb
	.cfi_endproc

	.align	16, 0x90
	.type	comb_tofront,@function
comb_tofront:                           # @comb_tofront
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB14_2
.LBB14_2:                               # %do.body
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_3
.LBB14_3:                               # %do.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movslq	-8(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %edx
	movslq	-8(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %esi
	movl	%esi, %eax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, 8(%rax)
	movslq	-8(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %edx
	movslq	-8(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %esi
	movl	%esi, %eax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, 12(%rax)
	movslq	-4(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %edx
	movslq	-8(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, 8(%rax)
	movl	-4(%rbp), %edx
	movslq	-8(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, 12(%rax)
	movl	-8(%rbp), %edx
	movslq	-4(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %esi
	movl	%esi, %eax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, 12(%rax)
	movl	-8(%rbp), %edx
	movslq	-4(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, 8(%rax)
	movslq	-8(%rbp), %rax
	movq	combchars, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$55296, -8(%rbp)        # imm = 0xD800
	jl	.LBB14_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$57344, -8(%rbp)        # imm = 0xE000
	jl	.LBB14_6
.LBB14_5:                               # %if.then
	popq	%rbp
	retq
.LBB14_6:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-8(%rbp), %eax
	subl	$55296, %eax            # imm = 0xD800
	movl	%eax, -8(%rbp)
	jmp	.LBB14_1
.Lfunc_end14:
	.size	comb_tofront, .Lfunc_end14-comb_tofront
	.cfi_endproc

	.globl	FindEncoding
	.align	16, 0x90
	.type	FindEncoding,@function
FindEncoding:                           # @FindEncoding
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB15_2
.LBB15_2:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB15_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB15_5
.LBB15_4:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_17
.LBB15_5:                               # %if.end
	movabsq	$.L.str.33, %rsi
	movq	-16(%rbp), %rdi
	callq	encmatch
	cmpl	$0, %eax
	je	.LBB15_7
# BB#6:                                 # %if.then.3
	movabsq	$.L.str.1, %rax
	movq	%rax, -16(%rbp)
.LBB15_7:                               # %if.end.4
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rdi
	callq	encmatch
	cmpl	$0, %eax
	jne	.LBB15_9
# BB#8:                                 # %lor.lhs.false.7
	movabsq	$.L.str.35, %rsi
	movq	-16(%rbp), %rdi
	callq	encmatch
	cmpl	$0, %eax
	je	.LBB15_10
.LBB15_9:                               # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB15_17
.LBB15_10:                              # %if.end.11
	movl	$0, -20(%rbp)
.LBB15_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$21, -20(%rbp)
	jge	.LBB15_16
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB15_11 Depth=1
	movabsq	$encodings, %rax
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	encmatch
	cmpl	$0, %eax
	je	.LBB15_14
# BB#13:                                # %if.then.17
	movl	-20(%rbp), %edi
	callq	LoadFontTranslationsForEncoding
	movl	-20(%rbp), %edi
	movl	%edi, -4(%rbp)
	jmp	.LBB15_17
.LBB15_14:                              # %if.end.18
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_15
.LBB15_15:                              # %for.inc
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_11
.LBB15_16:                              # %for.end
	movl	$-1, -4(%rbp)
.LBB15_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	FindEncoding, .Lfunc_end15-FindEncoding
	.cfi_endproc

	.align	16, 0x90
	.type	encmatch,@function
encmatch:                               # @encmatch
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB16_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$65, -28(%rbp)
	jl	.LBB16_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$90, -28(%rbp)
	jg	.LBB16_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -28(%rbp)
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$97, -28(%rbp)
	jl	.LBB16_6
# BB#5:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$122, -28(%rbp)
	jle	.LBB16_9
.LBB16_6:                               # %land.lhs.true.9
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$48, -28(%rbp)
	jl	.LBB16_8
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$57, -28(%rbp)
	jle	.LBB16_9
.LBB16_8:                               # %if.then.15
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB16_20
.LBB16_9:                               # %if.end.16
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$65, -32(%rbp)
	jl	.LBB16_12
# BB#10:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$90, -32(%rbp)
	jg	.LBB16_12
# BB#11:                                # %if.then.23
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -32(%rbp)
.LBB16_12:                              # %if.end.25
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$97, -32(%rbp)
	jl	.LBB16_14
# BB#13:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$122, -32(%rbp)
	jle	.LBB16_17
.LBB16_14:                              # %land.lhs.true.31
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$48, -32(%rbp)
	jl	.LBB16_16
# BB#15:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$57, -32(%rbp)
	jle	.LBB16_17
.LBB16_16:                              # %if.then.37
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_20
.LBB16_17:                              # %if.end.39
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB16_19
# BB#18:                                # %if.then.42
	movl	$0, -4(%rbp)
	jmp	.LBB16_22
.LBB16_19:                              # %if.end.43
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB16_20:                              # %do.cond
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB16_1
# BB#21:                                # %do.end
	movl	$1, -4(%rbp)
.LBB16_22:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	encmatch, .Lfunc_end16-encmatch
	.cfi_endproc

	.globl	LoadFontTranslationsForEncoding
	.align	16, 0x90
	.type	LoadFontTranslationsForEncoding,@function
LoadFontTranslationsForEncoding:        # @LoadFontTranslationsForEncoding
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB17_2
.LBB17_2:                               # %do.end
	movabsq	$encodings, %rax
	movslq	-4(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB17_9
# BB#3:                                 # %if.then
	jmp	.LBB17_4
.LBB17_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -20(%rbp)
	cmpl	$0, %edx
	je	.LBB17_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB17_4 Depth=1
	movabsq	$recodetabs, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB17_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB17_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	callq	LoadFontTranslation
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB17_7:                               # %if.end
                                        #   in Loop: Header=BB17_4 Depth=1
	jmp	.LBB17_4
.LBB17_8:                               # %while.end
	jmp	.LBB17_9
.LBB17_9:                               # %if.end.8
	movabsq	$encodings, %rax
	movslq	-4(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB17_12
# BB#10:                                # %land.lhs.true
	movabsq	$recodetabs, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB17_12
# BB#11:                                # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	callq	LoadFontTranslation
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB17_12:                              # %if.end.20
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	LoadFontTranslationsForEncoding, .Lfunc_end17-LoadFontTranslationsForEncoding
	.cfi_endproc

	.globl	EncodingName
	.align	16, 0x90
	.type	EncodingName,@function
EncodingName:                           # @EncodingName
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
	movl	%edi, -12(%rbp)
	cmpl	$21, -12(%rbp)
	jl	.LBB18_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	movabsq	$encodings, %rax
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB18_3:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	EncodingName, .Lfunc_end18-EncodingName
	.cfi_endproc

	.globl	EncodingDefFont
	.align	16, 0x90
	.type	EncodingDefFont,@function
EncodingDefFont:                        # @EncodingDefFont
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
	movabsq	$encodings, %rax
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	EncodingDefFont, .Lfunc_end19-EncodingDefFont
	.cfi_endproc

	.globl	ResetEncoding
	.align	16, 0x90
	.type	ResetEncoding,@function
ResetEncoding:                          # @ResetEncoding
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
	movabsq	$encodings, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %ecx
	movl	%ecx, -20(%rbp)
	movslq	-20(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	SetCharsets
.LBB20_2:                               # %if.end
	movl	-20(%rbp), %edi
	callq	LoadFontTranslationsForEncoding
	movabsq	$encodings, %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 20(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.4
	movabsq	$encodings, %rax
	movq	-8(%rbp), %rcx
	movl	$2, 10008(%rcx)
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movb	1(%rax), %dl
	movq	-8(%rbp), %rax
	movb	%dl, 9880(%rax)
	jmp	.LBB20_5
.LBB20_4:                               # %if.else
	movq	-8(%rbp), %rax
	movb	$0, 9880(%rax)
.LBB20_5:                               # %if.end.10
	movabsq	$encodings, %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 24(%rax)
	je	.LBB20_7
# BB#6:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movl	$0, 10012(%rax)
.LBB20_7:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ResetEncoding, .Lfunc_end20-ResetEncoding
	.cfi_endproc

	.globl	DecodeChar
	.align	16, 0x90
	.type	DecodeChar,@function
DecodeChar:                             # @DecodeChar
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB21_2
.LBB21_2:                               # %do.end
	cmpl	$8, -12(%rbp)
	jne	.LBB21_6
# BB#3:                                 # %if.then
	movl	-8(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	FromUtf8
	movl	%eax, -8(%rbp)
	cmpl	$65536, -8(%rbp)        # imm = 0x10000
	jl	.LBB21_5
# BB#4:                                 # %if.then.2
	movl	-8(%rbp), %eax
	andl	$8323072, %eax          # imm = 0x7F0000
	shll	$8, %eax
	movl	-8(%rbp), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	%ecx, %eax
	movl	%eax, -8(%rbp)
.LBB21_5:                               # %if.end
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_6:                               # %if.end.4
	cmpl	$2, -12(%rbp)
	jne	.LBB21_30
# BB#7:                                 # %if.then.6
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB21_16
# BB#8:                                 # %if.then.7
	movl	$129, %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB21_10
# BB#9:                                 # %land.lhs.true
	cmpl	$159, -8(%rbp)
	jle	.LBB21_12
.LBB21_10:                              # %lor.lhs.false
	movl	$224, %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB21_13
# BB#11:                                # %land.lhs.true.11
	cmpl	$239, -8(%rbp)
	jg	.LBB21_13
.LBB21_12:                              # %if.then.13
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$-1, -4(%rbp)
	jmp	.LBB21_61
.LBB21_13:                              # %if.end.14
	cmpl	$128, -8(%rbp)
	jge	.LBB21_15
# BB#14:                                # %if.then.16
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_15:                              # %if.end.17
	movl	-8(%rbp), %eax
	orl	$4784128, %eax          # imm = 0x490000
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_16:                              # %if.end.19
	movl	$64, %eax
	movl	-8(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movl	$0, (%rdx)
	cmpl	-28(%rbp), %eax
	jg	.LBB21_29
# BB#17:                                # %land.lhs.true.21
	cmpl	$252, -28(%rbp)
	jg	.LBB21_29
# BB#18:                                # %land.lhs.true.23
	cmpl	$127, -28(%rbp)
	je	.LBB21_29
# BB#19:                                # %if.then.25
	cmpl	$159, -8(%rbp)
	jg	.LBB21_21
# BB#20:                                # %if.then.27
	movl	-8(%rbp), %eax
	subl	$129, %eax
	shll	$1, %eax
	addl	$33, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB21_22
.LBB21_21:                              # %if.else
	movl	-8(%rbp), %eax
	subl	$193, %eax
	shll	$1, %eax
	addl	$33, %eax
	movl	%eax, -8(%rbp)
.LBB21_22:                              # %if.end.31
	cmpl	$126, -28(%rbp)
	jg	.LBB21_24
# BB#23:                                # %if.then.33
	movl	-28(%rbp), %eax
	subl	$31, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB21_28
.LBB21_24:                              # %if.else.35
	cmpl	$158, -28(%rbp)
	jg	.LBB21_26
# BB#25:                                # %if.then.37
	movl	-28(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB21_27
.LBB21_26:                              # %if.else.39
	movl	-28(%rbp), %eax
	subl	$126, %eax
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB21_27:                              # %if.end.41
	jmp	.LBB21_28
.LBB21_28:                              # %if.end.42
	movl	-8(%rbp), %eax
	shll	$8, %eax
	orl	-28(%rbp), %eax
	orl	$131072, %eax           # imm = 0x20000
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_29:                              # %if.end.46
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_30:                              # %if.end.47
	cmpl	$1, -12(%rbp)
	je	.LBB21_33
# BB#31:                                # %lor.lhs.false.49
	cmpl	$3, -12(%rbp)
	je	.LBB21_33
# BB#32:                                # %lor.lhs.false.51
	cmpl	$4, -12(%rbp)
	jne	.LBB21_50
.LBB21_33:                              # %if.then.53
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB21_37
# BB#34:                                # %if.then.55
	movl	-8(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB21_36
# BB#35:                                # %if.then.58
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$-1, -4(%rbp)
	jmp	.LBB21_61
.LBB21_36:                              # %if.end.59
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_37:                              # %if.end.60
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rcx
	movl	$0, (%rcx)
	cmpl	$1, -12(%rbp)
	jne	.LBB21_43
# BB#38:                                # %if.then.62
	cmpl	$142, -8(%rbp)
	jne	.LBB21_40
# BB#39:                                # %if.then.64
	movl	-28(%rbp), %eax
	orl	$4784128, %eax          # imm = 0x490000
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_40:                              # %if.end.66
	cmpl	$143, -8(%rbp)
	jne	.LBB21_42
# BB#41:                                # %if.then.68
	movl	-28(%rbp), %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$-1, -4(%rbp)
	jmp	.LBB21_61
.LBB21_42:                              # %if.end.70
	jmp	.LBB21_43
.LBB21_43:                              # %if.end.71
	movl	-8(%rbp), %eax
	andl	$65407, %eax            # imm = 0xFF7F
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	shll	$8, %eax
	orl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$3, -12(%rbp)
	jne	.LBB21_45
# BB#44:                                # %if.then.77
	movl	-8(%rbp), %eax
	orl	$196608, %eax           # imm = 0x30000
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_45:                              # %if.end.79
	cmpl	$4, -12(%rbp)
	jne	.LBB21_47
# BB#46:                                # %if.then.81
	movl	-8(%rbp), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_47:                              # %if.end.83
	movl	-8(%rbp), %eax
	andl	$262144, %eax           # imm = 0x40000
	cmpl	$0, %eax
	je	.LBB21_49
# BB#48:                                # %if.then.86
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_49:                              # %if.else.87
	movl	-8(%rbp), %eax
	orl	$131072, %eax           # imm = 0x20000
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_50:                              # %if.end.89
	cmpl	$5, -12(%rbp)
	je	.LBB21_52
# BB#51:                                # %lor.lhs.false.91
	cmpl	$20, -12(%rbp)
	jne	.LBB21_60
.LBB21_52:                              # %if.then.93
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB21_59
# BB#53:                                # %if.then.95
	movl	-8(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB21_58
# BB#54:                                # %if.then.98
	cmpl	$20, -12(%rbp)
	jne	.LBB21_57
# BB#55:                                # %land.lhs.true.100
	cmpl	$128, -8(%rbp)
	jne	.LBB21_57
# BB#56:                                # %if.then.102
	movl	$14811300, -4(%rbp)     # imm = 0xE200A4
	jmp	.LBB21_61
.LBB21_57:                              # %if.end.103
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$-1, -4(%rbp)
	jmp	.LBB21_61
.LBB21_58:                              # %if.end.104
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_61
.LBB21_59:                              # %if.end.105
	movl	$1638400, %eax          # imm = 0x190000
	movl	$1572864, %ecx          # imm = 0x180000
	movl	-8(%rbp), %edx
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edx
	movl	%edx, -8(%rbp)
	movq	-24(%rbp), %rsi
	movl	$0, (%rsi)
	movl	-8(%rbp), %edx
	andl	$127, %edx
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %edx
	shll	$8, %edx
	orl	-28(%rbp), %edx
	cmpl	$5, -12(%rbp)
	cmovel	%ecx, %eax
	orl	%eax, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB21_61
.LBB21_60:                              # %if.end.111
	movabsq	$encodings, %rax
	movl	-8(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rax
	movl	16(%rax), %esi
	shll	$16, %esi
	orl	%esi, %ecx
	movl	%ecx, -4(%rbp)
.LBB21_61:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	DecodeChar, .Lfunc_end21-DecodeChar
	.cfi_endproc

	.globl	EncodeChar
	.align	16, 0x90
	.type	EncodeChar,@function
EncodeChar:                             # @EncodeChar
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB22_2
.LBB22_2:                               # %do.end
	cmpl	$-1, -20(%rbp)
	jne	.LBB22_9
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB22_9
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB22_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB22_97
.LBB22_6:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB22_8
# BB#7:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$27, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$40, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$66, (%rax)
.LBB22_8:                               # %if.end.7
	movl	$3, -4(%rbp)
	jmp	.LBB22_97
.LBB22_9:                               # %if.end.8
	movl	-20(%rbp), %eax
	sarl	$16, %eax
	andl	$255, %eax
	movl	%eax, -40(%rbp)
	cmpl	$8, -24(%rbp)
	jne	.LBB22_17
# BB#10:                                # %if.then.10
	cmpl	$0, -40(%rbp)
	je	.LBB22_16
# BB#11:                                # %if.then.12
	cmpl	$0, -40(%rbp)
	je	.LBB22_14
# BB#12:                                # %land.lhs.true.14
	movl	-40(%rbp), %eax
	andl	$96, %eax
	cmpl	$0, %eax
	jne	.LBB22_14
# BB#13:                                # %if.then.17
	leaq	-48(%rbp), %rsi
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movl	-40(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %edx
	callq	recode_char_dw_to_encoding
	movl	%eax, -20(%rbp)
	jmp	.LBB22_15
.LBB22_14:                              # %if.else
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movl	-40(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	recode_char_to_encoding
	movl	%eax, -20(%rbp)
.LBB22_15:                              # %if.end.25
	jmp	.LBB22_16
.LBB22_16:                              # %if.end.26
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ToUtf8
	movl	%eax, -4(%rbp)
	jmp	.LBB22_97
.LBB22_17:                              # %if.end.28
	cmpl	$0, -40(%rbp)
	jne	.LBB22_27
# BB#18:                                # %land.lhs.true.30
	movl	-20(%rbp), %eax
	andl	$2130771712, %eax       # imm = 0x7F00FF00
	cmpl	$0, %eax
	je	.LBB22_27
# BB#19:                                # %if.then.33
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jl	.LBB22_21
# BB#20:                                # %if.then.35
	movl	-20(%rbp), %eax
	andl	$8323072, %eax          # imm = 0x7F0000
	sarl	$8, %eax
	movl	-20(%rbp), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	orl	%ecx, %eax
	movl	%eax, -20(%rbp)
.LBB22_21:                              # %if.end.40
	movl	-20(%rbp), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	je	.LBB22_23
# BB#22:                                # %if.then.43
	leaq	-52(%rbp), %rsi
	movl	$65535, -52(%rbp)       # imm = 0xFFFF
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %edx
	callq	recode_char_dw_to_encoding
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shll	$8, %eax
	movl	-52(%rbp), %edx
	andl	$255, %edx
	orl	%edx, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_24
.LBB22_23:                              # %if.else.49
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	recode_char_to_encoding
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	shll	$8, %eax
	movl	-20(%rbp), %esi
	andl	$255, %esi
	orl	%esi, %eax
	movl	%eax, -20(%rbp)
.LBB22_24:                              # %if.end.55
	jmp	.LBB22_25
.LBB22_25:                              # %do.body.56
	jmp	.LBB22_26
.LBB22_26:                              # %do.end.57
	movl	-20(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, -40(%rbp)
.LBB22_27:                              # %if.end.59
	movl	-40(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB22_29
# BB#28:                                # %if.then.62
	movl	$0, -40(%rbp)
.LBB22_29:                              # %if.end.63
	cmpl	$2, -24(%rbp)
	jne	.LBB22_41
# BB#30:                                # %if.then.65
	cmpl	$73, -40(%rbp)
	jne	.LBB22_32
# BB#31:                                # %if.then.67
	movl	-20(%rbp), %eax
	andl	$255, %eax
	orl	$128, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_40
.LBB22_32:                              # %if.else.70
	cmpl	$2, -40(%rbp)
	jne	.LBB22_39
# BB#33:                                # %if.then.72
	cmpq	$0, -16(%rbp)
	jne	.LBB22_35
# BB#34:                                # %if.then.74
	movl	$2, -4(%rbp)
	jmp	.LBB22_97
.LBB22_35:                              # %if.end.75
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB22_37
# BB#36:                                # %cond.true
	movl	$32, %eax
	movl	$31, %ecx
	cmpl	$95, -36(%rbp)
	cmovlel	%ecx, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB22_38
.LBB22_37:                              # %cond.false
	movl	$126, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB22_38
.LBB22_38:                              # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	$193, %ecx
	movl	$129, %edx
	movl	$2, %esi
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	subl	$33, %eax
	movl	%edx, -60(%rbp)         # 4-byte Spill
	cltd
	idivl	%esi
	cmpl	$95, -20(%rbp)
	movl	-60(%rbp), %esi         # 4-byte Reload
	cmovll	%esi, %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movb	%al, %dil
	movq	-16(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -16(%rbp)
	movb	%dil, (%r8)
	movl	-36(%rbp), %eax
	movb	%al, %dil
	movq	-16(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -16(%rbp)
	movb	%dil, (%r8)
	movl	$2, -4(%rbp)
	jmp	.LBB22_97
.LBB22_39:                              # %if.end.89
	jmp	.LBB22_40
.LBB22_40:                              # %if.end.90
	jmp	.LBB22_41
.LBB22_41:                              # %if.end.91
	cmpl	$1, -24(%rbp)
	jne	.LBB22_55
# BB#42:                                # %if.then.94
	cmpl	$73, -40(%rbp)
	jne	.LBB22_46
# BB#43:                                # %if.then.97
	cmpq	$0, -16(%rbp)
	je	.LBB22_45
# BB#44:                                # %if.then.99
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$-114, (%rax)
	movl	-20(%rbp), %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%sil, (%rax)
.LBB22_45:                              # %if.end.103
	movl	$2, -4(%rbp)
	jmp	.LBB22_97
.LBB22_46:                              # %if.end.104
	cmpl	$2, -40(%rbp)
	jne	.LBB22_50
# BB#47:                                # %if.then.107
	cmpq	$0, -16(%rbp)
	je	.LBB22_49
# BB#48:                                # %if.then.109
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-20(%rbp), %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
.LBB22_49:                              # %if.end.117
	movl	$2, -4(%rbp)
	jmp	.LBB22_97
.LBB22_50:                              # %if.end.118
	cmpl	$4, -40(%rbp)
	jne	.LBB22_54
# BB#51:                                # %if.then.121
	cmpq	$0, -16(%rbp)
	je	.LBB22_53
# BB#52:                                # %if.then.123
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$-113, (%rax)
	movl	-20(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%sil, (%rax)
	movl	-20(%rbp), %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%sil, (%rax)
.LBB22_53:                              # %if.end.130
	movl	$3, -4(%rbp)
	jmp	.LBB22_97
.LBB22_54:                              # %if.end.131
	jmp	.LBB22_55
.LBB22_55:                              # %if.end.132
	cmpl	$3, -24(%rbp)
	jne	.LBB22_57
# BB#56:                                # %land.lhs.true.135
	cmpl	$3, -40(%rbp)
	je	.LBB22_59
.LBB22_57:                              # %lor.lhs.false
	cmpl	$4, -24(%rbp)
	jne	.LBB22_62
# BB#58:                                # %land.lhs.true.140
	cmpl	$1, -40(%rbp)
	jne	.LBB22_62
.LBB22_59:                              # %if.then.143
	cmpq	$0, -16(%rbp)
	je	.LBB22_61
# BB#60:                                # %if.then.145
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-20(%rbp), %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
.LBB22_61:                              # %if.end.153
	movl	$2, -4(%rbp)
	jmp	.LBB22_97
.LBB22_62:                              # %if.end.154
	cmpl	$5, -24(%rbp)
	jne	.LBB22_64
# BB#63:                                # %land.lhs.true.157
	cmpl	$24, -40(%rbp)
	je	.LBB22_66
.LBB22_64:                              # %lor.lhs.false.160
	cmpl	$20, -24(%rbp)
	jne	.LBB22_69
# BB#65:                                # %land.lhs.true.163
	cmpl	$25, -40(%rbp)
	jne	.LBB22_69
.LBB22_66:                              # %if.then.166
	cmpq	$0, -16(%rbp)
	je	.LBB22_68
# BB#67:                                # %if.then.168
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
.LBB22_68:                              # %if.end.175
	movl	$2, -4(%rbp)
	jmp	.LBB22_97
.LBB22_69:                              # %if.end.176
	cmpl	$20, -24(%rbp)
	jne	.LBB22_73
# BB#70:                                # %land.lhs.true.179
	cmpl	$0, -40(%rbp)
	jne	.LBB22_73
# BB#71:                                # %land.lhs.true.182
	cmpl	$164, -20(%rbp)
	jne	.LBB22_73
# BB#72:                                # %if.then.185
	movl	$128, -20(%rbp)
.LBB22_73:                              # %if.end.186
	movl	$0, -44(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB22_90
# BB#74:                                # %land.lhs.true.188
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB22_90
# BB#75:                                # %if.then.191
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, -40(%rbp)
	je	.LBB22_82
# BB#76:                                # %land.lhs.true.193
	cmpl	$32, -40(%rbp)
	jge	.LBB22_82
# BB#77:                                # %if.then.196
	cmpq	$0, -16(%rbp)
	je	.LBB22_81
# BB#78:                                # %if.then.198
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$27, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$36, (%rax)
	cmpl	$2, -40(%rbp)
	jle	.LBB22_80
# BB#79:                                # %if.then.203
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$40, (%rax)
.LBB22_80:                              # %if.end.205
	movl	-40(%rbp), %eax
	addl	$64, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
.LBB22_81:                              # %if.end.209
	movl	$3, %eax
	movl	$4, %ecx
	cmpl	$2, -40(%rbp)
	cmovgl	%ecx, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB22_89
.LBB22_82:                              # %if.else.214
	cmpl	$128, -40(%rbp)
	jge	.LBB22_88
# BB#83:                                # %if.then.217
	cmpl	$0, -40(%rbp)
	jne	.LBB22_85
# BB#84:                                # %if.then.220
	movl	$66, -40(%rbp)
.LBB22_85:                              # %if.end.221
	cmpq	$0, -16(%rbp)
	je	.LBB22_87
# BB#86:                                # %if.then.223
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$27, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$40, (%rax)
	movl	-40(%rbp), %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%sil, (%rax)
.LBB22_87:                              # %if.end.228
	movl	-44(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -44(%rbp)
.LBB22_88:                              # %if.end.230
	jmp	.LBB22_89
.LBB22_89:                              # %if.end.231
	jmp	.LBB22_90
.LBB22_90:                              # %if.end.232
	movl	-20(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	cmpl	$0, %eax
	je	.LBB22_94
# BB#91:                                # %if.then.235
	cmpq	$0, -16(%rbp)
	je	.LBB22_93
# BB#92:                                # %if.then.237
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
.LBB22_93:                              # %if.end.241
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB22_94:                              # %if.end.242
	cmpq	$0, -16(%rbp)
	je	.LBB22_96
# BB#95:                                # %if.then.244
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
.LBB22_96:                              # %if.end.247
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB22_97:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	EncodeChar, .Lfunc_end22-EncodeChar
	.cfi_endproc

	.globl	CanEncodeFont
	.align	16, 0x90
	.type	CanEncodeFont,@function
CanEncodeFont:                          # @CanEncodeFont
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, %edi
	subl	$1, %edi
	movl	%esi, -16(%rbp)         # 4-byte Spill
	movl	%edi, -20(%rbp)         # 4-byte Spill
	je	.LBB23_5
	jmp	.LBB23_16
.LBB23_16:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB23_2
	jmp	.LBB23_17
.LBB23_17:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB23_9
	jmp	.LBB23_18
.LBB23_18:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB23_10
	jmp	.LBB23_19
.LBB23_19:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB23_11
	jmp	.LBB23_20
.LBB23_20:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB23_1
	jmp	.LBB23_21
.LBB23_21:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$20, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB23_12
	jmp	.LBB23_13
.LBB23_1:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB23_15
.LBB23_2:                               # %sw.bb.1
	movb	$1, %al
	cmpl	$2, -12(%rbp)
	movb	%al, -45(%rbp)          # 1-byte Spill
	je	.LBB23_4
# BB#3:                                 # %lor.rhs
	cmpl	$73, -12(%rbp)
	sete	%al
	movb	%al, -45(%rbp)          # 1-byte Spill
.LBB23_4:                               # %lor.end
	movb	-45(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_15
.LBB23_5:                               # %sw.bb.3
	movb	$1, %al
	cmpl	$2, -12(%rbp)
	movb	%al, -46(%rbp)          # 1-byte Spill
	je	.LBB23_8
# BB#6:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$73, -12(%rbp)
	movb	%al, -46(%rbp)          # 1-byte Spill
	je	.LBB23_8
# BB#7:                                 # %lor.rhs.6
	cmpl	$4, -12(%rbp)
	sete	%al
	movb	%al, -46(%rbp)          # 1-byte Spill
.LBB23_8:                               # %lor.end.8
	movb	-46(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_15
.LBB23_9:                               # %sw.bb.10
	cmpl	$3, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_15
.LBB23_10:                              # %sw.bb.12
	cmpl	$1, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_15
.LBB23_11:                              # %sw.bb.15
	cmpl	$24, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_15
.LBB23_12:                              # %sw.bb.18
	cmpl	$25, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_15
.LBB23_13:                              # %sw.default
	jmp	.LBB23_14
.LBB23_14:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB23_15:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	CanEncodeFont, .Lfunc_end23-CanEncodeFont
	.cfi_endproc

	.globl	PrepareEncodedChar
	.align	16, 0x90
	.type	PrepareEncodedChar,@function
PrepareEncodedChar:                     # @PrepareEncodedChar
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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	$0, -16(%rbp)
	movq	display, %rax
	movl	496(%rax), %edi
	movl	%edi, -12(%rbp)
	movq	display, %rax
	movzbl	478(%rax), %edi
	movl	%edi, -20(%rbp)
	movq	display, %rax
	movl	492(%rax), %edi
	movl	%edi, -16(%rbp)
	cmpl	$2, -12(%rbp)
	jne	.LBB24_10
# BB#1:                                 # %if.then
	cmpl	$73, -20(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then.4
	movl	-8(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_37
.LBB24_3:                               # %if.else
	cmpl	$2, -20(%rbp)
	jne	.LBB24_8
# BB#4:                                 # %if.then.7
	movl	-8(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB24_6
# BB#5:                                 # %cond.true
	movl	$32, %eax
	movl	$31, %ecx
	cmpl	$95, -16(%rbp)
	cmovlel	%ecx, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB24_7
.LBB24_6:                               # %cond.false
	movl	$126, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB24_7
.LBB24_7:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	$193, %ecx
	movl	$129, %edx
	movl	$2, %esi
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	subl	$33, %eax
	movl	%edx, -28(%rbp)         # 4-byte Spill
	cltd
	idivl	%esi
	cmpl	$95, -8(%rbp)
	movl	-28(%rbp), %esi         # 4-byte Reload
	cmovll	%esi, %ecx
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	movq	display, %rdi
	movl	%eax, 492(%rdi)
.LBB24_8:                               # %if.end
	jmp	.LBB24_9
.LBB24_9:                               # %if.end.16
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_37
.LBB24_10:                              # %if.end.17
	cmpl	$1, -12(%rbp)
	jne	.LBB24_26
# BB#11:                                # %if.then.20
	cmpl	$73, -20(%rbp)
	jne	.LBB24_17
# BB#12:                                # %if.then.23
	jmp	.LBB24_13
.LBB24_13:                              # %do.body
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB24_15
# BB#14:                                # %if.then.26
	callq	Resize_obuf
.LBB24_15:                              # %if.end.27
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$-114, (%rcx)
# BB#16:                                # %do.end
	movl	-8(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_37
.LBB24_17:                              # %if.end.29
	cmpl	$2, -20(%rbp)
	jne	.LBB24_19
# BB#18:                                # %if.then.32
	movl	-16(%rbp), %eax
	orl	$128, %eax
	movq	display, %rcx
	movl	%eax, 492(%rcx)
	movl	-8(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_37
.LBB24_19:                              # %if.end.36
	cmpl	$4, -20(%rbp)
	jne	.LBB24_25
# BB#20:                                # %if.then.39
	jmp	.LBB24_21
.LBB24_21:                              # %do.body.40
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB24_23
# BB#22:                                # %if.then.45
	callq	Resize_obuf
.LBB24_23:                              # %if.end.46
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$-113, (%rcx)
# BB#24:                                # %do.end.49
	movl	-16(%rbp), %eax
	orl	$128, %eax
	movq	display, %rcx
	movl	%eax, 492(%rcx)
	movl	-8(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_37
.LBB24_25:                              # %if.end.53
	jmp	.LBB24_26
.LBB24_26:                              # %if.end.54
	cmpl	$3, -12(%rbp)
	jne	.LBB24_28
# BB#27:                                # %land.lhs.true
	cmpl	$3, -20(%rbp)
	je	.LBB24_30
.LBB24_28:                              # %lor.lhs.false
	cmpl	$4, -12(%rbp)
	jne	.LBB24_31
# BB#29:                                # %land.lhs.true.61
	cmpl	$1, -20(%rbp)
	jne	.LBB24_31
.LBB24_30:                              # %if.then.64
	movl	-16(%rbp), %eax
	orl	$128, %eax
	movq	display, %rcx
	movl	%eax, 492(%rcx)
	movl	-8(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_37
.LBB24_31:                              # %if.end.68
	cmpl	$5, -12(%rbp)
	jne	.LBB24_33
# BB#32:                                # %land.lhs.true.71
	cmpl	$24, -20(%rbp)
	je	.LBB24_35
.LBB24_33:                              # %lor.lhs.false.74
	cmpl	$20, -12(%rbp)
	jne	.LBB24_36
# BB#34:                                # %land.lhs.true.77
	cmpl	$25, -20(%rbp)
	jne	.LBB24_36
.LBB24_35:                              # %if.then.80
	movl	-8(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_37
.LBB24_36:                              # %if.end.82
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB24_37:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	PrepareEncodedChar, .Lfunc_end24-PrepareEncodedChar
	.cfi_endproc

	.globl	RecodeBuf
	.align	16, 0x90
	.type	RecodeBuf,@function
RecodeBuf:                              # @RecodeBuf
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB25_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	leaq	-48(%rbp), %rdx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	DecodeChar
	movl	%eax, -36(%rbp)
	cmpl	$-2, -36(%rbp)
	jne	.LBB25_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB25_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_10
.LBB25_6:                               # %if.end.6
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB25_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB25_9
.LBB25_8:                               # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB25_9
.LBB25_9:                               # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	-52(%rbp), %rcx
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	EncodeChar
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB25_10:                              # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB25_1
.LBB25_11:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB25_13
# BB#12:                                # %cond.true.9
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB25_14
.LBB25_13:                              # %cond.false.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB25_14
.LBB25_14:                              # %cond.end.13
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-52(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	EncodeChar
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	RecodeBuf, .Lfunc_end25-RecodeBuf
	.cfi_endproc

	.globl	ContainsSpecialDeffont
	.align	16, 0x90
	.type	ContainsSpecialDeffont,@function
ContainsSpecialDeffont:                 # @ContainsSpecialDeffont
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpl	$8, -28(%rbp)
	je	.LBB26_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$encodings, %rax
	movslq	-28(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 16(%rax)
	jne	.LBB26_3
.LBB26_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB26_15
.LBB26_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %edx
	subl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -60(%rbp)
.LBB26_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB26_12
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	cmpb	$0, (%rax)
	je	.LBB26_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB26_4 Depth=1
	jmp	.LBB26_4
.LBB26_7:                               # %if.end.6
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	$8, %esi
	movabsq	$encodings, %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %edi
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %edi
	movslq	-28(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %r8d
	shll	$8, %r8d
	orl	%r8d, %edi
	callq	recode_char_to_encoding
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB26_11
# BB#8:                                 # %if.then.13
	jmp	.LBB26_9
.LBB26_9:                               # %do.body
	jmp	.LBB26_10
.LBB26_10:                              # %do.end
	movl	$1, -4(%rbp)
	jmp	.LBB26_15
.LBB26_11:                              # %if.end.14
                                        #   in Loop: Header=BB26_4 Depth=1
	jmp	.LBB26_4
.LBB26_12:                              # %while.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.15
	jmp	.LBB26_14
.LBB26_14:                              # %do.end.16
	movl	$0, -4(%rbp)
.LBB26_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	ContainsSpecialDeffont, .Lfunc_end26-ContainsSpecialDeffont
	.cfi_endproc

	.globl	LoadFontTranslation
	.align	16, 0x90
	.type	LoadFontTranslation,@function
LoadFontTranslation:                    # @LoadFontTranslation
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
	subq	$1120, %rsp             # imm = 0x460
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -1048(%rbp)
	cmpq	$0, -1048(%rbp)
	jne	.LBB27_7
# BB#1:                                 # %if.then
	cmpl	$0, -8(%rbp)
	je	.LBB27_3
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, screenencodings
	jne	.LBB27_4
.LBB27_3:                               # %if.then.3
	movl	$-1, -4(%rbp)
	jmp	.LBB27_57
.LBB27_4:                               # %if.end
	movq	screenencodings, %rdi
	callq	strlen
	cmpq	$1014, %rax             # imm = 0x3F6
	jbe	.LBB27_6
# BB#5:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB27_57
.LBB27_6:                               # %if.end.6
	movabsq	$.L.str.36, %rsi
	leaq	-1040(%rbp), %rdi
	movq	screenencodings, %rdx
	movl	-8(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	sprintf
	leaq	-1040(%rbp), %rdx
	movq	%rdx, -1048(%rbp)
	movl	%eax, -1100(%rbp)       # 4-byte Spill
.LBB27_7:                               # %if.end.9
	jmp	.LBB27_8
.LBB27_8:                               # %do.body
	jmp	.LBB27_9
.LBB27_9:                               # %do.end
	movabsq	$.L.str.37, %rsi
	movq	-1048(%rbp), %rdi
	callq	secfopen
	movq	%rax, -1056(%rbp)
	cmpq	$0, %rax
	jne	.LBB27_11
# BB#10:                                # %if.then.12
	movl	$-1, -4(%rbp)
	jmp	.LBB27_57
.LBB27_11:                              # %if.end.13
	movl	$0, -1080(%rbp)
	movl	$0, -1060(%rbp)
.LBB27_12:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_13 Depth 2
                                        #     Child Loop BB27_28 Depth 2
                                        #     Child Loop BB27_35 Depth 2
	jmp	.LBB27_13
.LBB27_13:                              # %for.cond.14
                                        #   Parent Loop BB27_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$12, -1060(%rbp)
	jge	.LBB27_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB27_13 Depth=2
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movslq	-1060(%rbp), %rdi
	movsbl	.L.str.38(,%rdi), %ecx
	cmpl	%ecx, %eax
	je	.LBB27_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB27_12 Depth=1
	jmp	.LBB27_18
.LBB27_16:                              # %if.end.20
                                        #   in Loop: Header=BB27_13 Depth=2
	jmp	.LBB27_17
.LBB27_17:                              # %for.inc
                                        #   in Loop: Header=BB27_13 Depth=2
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB27_13
.LBB27_18:                              # %for.end
                                        #   in Loop: Header=BB27_12 Depth=1
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	cmpl	$0, %eax
	je	.LBB27_20
# BB#19:                                # %if.then.24
	jmp	.LBB27_52
.LBB27_20:                              # %if.end.25
                                        #   in Loop: Header=BB27_12 Depth=1
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1064(%rbp)
	cmpl	$-1, -1064(%rbp)
	jne	.LBB27_22
# BB#21:                                # %if.then.29
	jmp	.LBB27_52
.LBB27_22:                              # %if.end.30
                                        #   in Loop: Header=BB27_12 Depth=1
	cmpl	$-1, -8(%rbp)
	je	.LBB27_25
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB27_12 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-1064(%rbp), %eax
	je	.LBB27_25
# BB#24:                                # %if.then.35
	jmp	.LBB27_52
.LBB27_25:                              # %if.end.36
                                        #   in Loop: Header=BB27_12 Depth=1
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1060(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1068(%rbp)
	cmpl	$-1, -1068(%rbp)
	jne	.LBB27_27
# BB#26:                                # %if.then.41
	jmp	.LBB27_52
.LBB27_27:                              # %if.end.42
                                        #   in Loop: Header=BB27_12 Depth=1
	movl	-1060(%rbp), %eax
	shll	$8, %eax
	orl	-1068(%rbp), %eax
	movl	%eax, -1060(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1104(%rbp)       # 4-byte Spill
.LBB27_28:                              # %while.cond
                                        #   Parent Loop BB27_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -1068(%rbp)
	cmpl	$0, %eax
	movb	%dl, -1105(%rbp)        # 1-byte Spill
	je	.LBB27_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB27_28 Depth=2
	cmpl	$-1, -1068(%rbp)
	setne	%al
	movb	%al, -1105(%rbp)        # 1-byte Spill
.LBB27_30:                              # %land.end
                                        #   in Loop: Header=BB27_28 Depth=2
	movb	-1105(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_31
	jmp	.LBB27_32
.LBB27_31:                              # %while.body
                                        #   in Loop: Header=BB27_28 Depth=2
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	jmp	.LBB27_28
.LBB27_32:                              # %while.end
                                        #   in Loop: Header=BB27_12 Depth=1
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -1088(%rbp)
	cmpq	$0, %rax
	jne	.LBB27_34
# BB#33:                                # %if.then.52
	jmp	.LBB27_52
.LBB27_34:                              # %if.end.53
                                        #   in Loop: Header=BB27_12 Depth=1
	movq	-1088(%rbp), %rax
	movq	%rax, -1096(%rbp)
.LBB27_35:                              # %while.cond.54
                                        #   Parent Loop BB27_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -1060(%rbp)
	jle	.LBB27_39
# BB#36:                                # %while.body.57
                                        #   in Loop: Header=BB27_35 Depth=2
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1068(%rbp)
	movl	-1068(%rbp), %eax
	shll	$8, %eax
	movq	-1056(%rbp), %rdi
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	callq	_IO_getc
	movl	-1116(%rbp), %ecx       # 4-byte Reload
	orl	%eax, %ecx
	movl	%ecx, -1068(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1072(%rbp)
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1076(%rbp)
	movl	-1072(%rbp), %eax
	shll	$8, %eax
	orl	-1076(%rbp), %eax
	movl	%eax, -1072(%rbp)
	cmpl	$-1, -1076(%rbp)
	jne	.LBB27_38
# BB#37:                                # %if.then.68
                                        #   in Loop: Header=BB27_12 Depth=1
	jmp	.LBB27_39
.LBB27_38:                              # %if.end.69
                                        #   in Loop: Header=BB27_35 Depth=2
	movl	-1068(%rbp), %eax
	movw	%ax, %cx
	movq	-1088(%rbp), %rdx
	movw	%cx, (%rdx)
	movl	-1072(%rbp), %eax
	movw	%ax, %cx
	movq	-1088(%rbp), %rdx
	movw	%cx, 2(%rdx)
	movq	-1088(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -1088(%rbp)
	movl	-1060(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB27_35
.LBB27_39:                              # %while.end.74
                                        #   in Loop: Header=BB27_12 Depth=1
	movq	-1088(%rbp), %rax
	movw	$0, (%rax)
	movq	-1088(%rbp), %rax
	movw	$0, 2(%rax)
	cmpl	$0, -1060(%rbp)
	jne	.LBB27_41
# BB#40:                                # %lor.lhs.false.78
                                        #   in Loop: Header=BB27_12 Depth=1
	movq	-1096(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	je	.LBB27_42
.LBB27_41:                              # %if.then.84
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB27_52
.LBB27_42:                              # %if.end.85
                                        #   in Loop: Header=BB27_12 Depth=1
	movabsq	$recodetabs, %rax
	movslq	-1064(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB27_45
# BB#43:                                # %land.lhs.true.90
                                        #   in Loop: Header=BB27_12 Depth=1
	movabsq	$recodetabs, %rax
	movslq	-1064(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB27_45
# BB#44:                                # %if.then.96
                                        #   in Loop: Header=BB27_12 Depth=1
	movabsq	$recodetabs, %rax
	movslq	-1064(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB27_45:                              # %if.end.100
                                        #   in Loop: Header=BB27_12 Depth=1
	movabsq	$recodetabs, %rax
	movq	-1096(%rbp), %rcx
	movslq	-1064(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movslq	-1064(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	$1, 8(%rax)
# BB#46:                                # %do.body.107
                                        #   in Loop: Header=BB27_12 Depth=1
	jmp	.LBB27_47
.LBB27_47:                              # %do.end.108
                                        #   in Loop: Header=BB27_12 Depth=1
	movq	-1056(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1076(%rbp)
	cmpl	$-1, -1076(%rbp)
	jne	.LBB27_49
# BB#48:                                # %if.then.112
	movl	$1, -1080(%rbp)
	jmp	.LBB27_52
.LBB27_49:                              # %if.end.113
                                        #   in Loop: Header=BB27_12 Depth=1
	cmpl	$83, -1076(%rbp)
	je	.LBB27_51
# BB#50:                                # %if.then.116
	jmp	.LBB27_52
.LBB27_51:                              # %if.end.117
                                        #   in Loop: Header=BB27_12 Depth=1
	movl	$1, -1060(%rbp)
	jmp	.LBB27_12
.LBB27_52:                              # %for.end.118
	movq	-1056(%rbp), %rdi
	callq	fclose
	cmpl	$-1, -8(%rbp)
	movl	%eax, -1120(%rbp)       # 4-byte Spill
	je	.LBB27_56
# BB#53:                                # %land.lhs.true.122
	cmpq	$0, -16(%rbp)
	jne	.LBB27_56
# BB#54:                                # %land.lhs.true.125
	movabsq	$recodetabs, %rax
	movslq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB27_56
# BB#55:                                # %if.then.131
	movabsq	$recodetabs, %rax
	movslq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	$4, 8(%rax)
.LBB27_56:                              # %if.end.135
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	cmpl	$0, -1080(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB27_57:                              # %return
	movl	-4(%rbp), %eax
	addq	$1120, %rsp             # imm = 0x460
	popq	%rbp
	retq
.Lfunc_end27:
	.size	LoadFontTranslation, .Lfunc_end27-LoadFontTranslation
	.cfi_endproc

	.align	16, 0x90
	.type	recode_char_dw,@function
recode_char_dw:                         # @recode_char_dw
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
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB28_15
# BB#1:                                 # %if.then
	movabsq	$recodetabs, %rax
	movl	-8(%rbp), %ecx
	sarl	$8, %ecx
	andl	$255, %ecx
	movl	%ecx, -28(%rbp)
	movl	-8(%rbp), %ecx
	andl	$255, %ecx
	shll	$8, %ecx
	movq	-16(%rbp), %rdx
	movl	(%rdx), %esi
	andl	$255, %esi
	orl	%esi, %ecx
	movl	%ecx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movl	$65535, (%rdx)          # imm = 0xFFFF
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB28_4
# BB#2:                                 # %land.lhs.true
	movabsq	$recodetabs, %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB28_4
# BB#3:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %edi
	callq	LoadFontTranslation
	movabsq	$recodetabs, %rsi
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, -40(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB28_4:                               # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB28_14
# BB#5:                                 # %if.then.11
	jmp	.LBB28_6
.LBB28_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpw	$0, (%rax)
	je	.LBB28_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB28_6 Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB28_11
# BB#8:                                 # %if.then.17
	movq	-40(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	jne	.LBB28_10
# BB#9:                                 # %if.then.22
	movq	-16(%rbp), %rax
	movl	$32, (%rax)
.LBB28_10:                              # %if.end.23
	movq	-40(%rbp), %rax
	movzwl	2(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB28_43
.LBB28_11:                              # %if.end.26
                                        #   in Loop: Header=BB28_6 Depth=1
	jmp	.LBB28_12
.LBB28_12:                              # %for.inc
                                        #   in Loop: Header=BB28_6 Depth=1
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB28_6
.LBB28_13:                              # %for.end
	jmp	.LBB28_14
.LBB28_14:                              # %if.end.27
	movl	$65311, -4(%rbp)        # imm = 0xFF1F
	jmp	.LBB28_43
.LBB28_15:                              # %if.end.28
	cmpl	$-1, -24(%rbp)
	jne	.LBB28_29
# BB#16:                                # %if.then.31
	movl	$0, -24(%rbp)
.LBB28_17:                              # %for.cond.32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_20 Depth 2
	cmpl	$24, -24(%rbp)
	jge	.LBB28_28
# BB#18:                                # %for.body.35
                                        #   in Loop: Header=BB28_17 Depth=1
	movabsq	$recodetabs, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB28_26
# BB#19:                                # %if.then.40
                                        #   in Loop: Header=BB28_17 Depth=1
	jmp	.LBB28_20
.LBB28_20:                              # %for.cond.41
                                        #   Parent Loop BB28_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	cmpw	$0, 2(%rax)
	je	.LBB28_25
# BB#21:                                # %for.body.44
                                        #   in Loop: Header=BB28_20 Depth=2
	movq	-40(%rbp), %rax
	movzwl	2(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB28_23
# BB#22:                                # %if.then.49
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$255, %ecx
	movl	-24(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	orl	$32768, %ecx            # imm = 0x8000
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	sarl	$8, %ecx
	movl	-24(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB28_43
.LBB28_23:                              # %if.end.61
                                        #   in Loop: Header=BB28_20 Depth=2
	jmp	.LBB28_24
.LBB28_24:                              # %for.inc.62
                                        #   in Loop: Header=BB28_20 Depth=2
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB28_20
.LBB28_25:                              # %for.end.64
                                        #   in Loop: Header=BB28_17 Depth=1
	jmp	.LBB28_26
.LBB28_26:                              # %if.end.65
                                        #   in Loop: Header=BB28_17 Depth=1
	jmp	.LBB28_27
.LBB28_27:                              # %for.inc.66
                                        #   in Loop: Header=BB28_17 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB28_17
.LBB28_28:                              # %for.end.67
	movq	-16(%rbp), %rax
	movl	$63, (%rax)
	movl	$63, -4(%rbp)
	jmp	.LBB28_43
.LBB28_29:                              # %if.end.68
	cmpl	$32, -24(%rbp)
	jge	.LBB28_42
# BB#30:                                # %if.then.71
	movabsq	$recodetabs, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB28_33
# BB#31:                                # %land.lhs.true.77
	movabsq	$recodetabs, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB28_33
# BB#32:                                # %if.then.83
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-24(%rbp), %edi
	callq	LoadFontTranslation
	movabsq	$recodetabs, %rsi
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, -40(%rbp)
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB28_33:                              # %if.end.88
	cmpq	$0, -40(%rbp)
	je	.LBB28_41
# BB#34:                                # %if.then.90
	jmp	.LBB28_35
.LBB28_35:                              # %for.cond.91
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpw	$0, 2(%rax)
	je	.LBB28_40
# BB#36:                                # %for.body.94
                                        #   in Loop: Header=BB28_35 Depth=1
	movq	-40(%rbp), %rax
	movzwl	2(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB28_38
# BB#37:                                # %if.then.99
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$255, %ecx
	movl	-24(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	orl	$32768, %ecx            # imm = 0x8000
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	sarl	$8, %ecx
	movl	-24(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB28_43
.LBB28_38:                              # %if.end.111
                                        #   in Loop: Header=BB28_35 Depth=1
	jmp	.LBB28_39
.LBB28_39:                              # %for.inc.112
                                        #   in Loop: Header=BB28_35 Depth=1
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB28_35
.LBB28_40:                              # %for.end.114
	jmp	.LBB28_41
.LBB28_41:                              # %if.end.115
	jmp	.LBB28_42
.LBB28_42:                              # %if.end.116
	movl	$-1, -4(%rbp)
.LBB28_43:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	recode_char_dw, .Lfunc_end28-recode_char_dw
	.cfi_endproc

	.align	16, 0x90
	.type	recode_char,@function
recode_char:                            # @recode_char
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
	subq	$80, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB29_24
# BB#1:                                 # %if.then
	cmpl	$256, -8(%rbp)          # imm = 0x100
	jge	.LBB29_3
# BB#2:                                 # %if.then.1
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_71
.LBB29_3:                               # %if.end
	movl	-8(%rbp), %eax
	movb	%ah, %cl  # NOREX
	movzbl	%cl, %eax  # NOREX
	movl	%eax, -20(%rbp)
	movzbl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	subl	$67, %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, -40(%rbp)         # 4-byte Spill
	je	.LBB29_4
	jmp	.LBB29_72
.LBB29_72:                              # %if.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$69, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB29_5
	jmp	.LBB29_73
.LBB29_73:                              # %if.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB29_6
	jmp	.LBB29_7
.LBB29_4:                               # %sw.bb
	movl	-20(%rbp), %eax
	xorl	$118, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB29_8
.LBB29_5:                               # %sw.bb.3
	movl	-20(%rbp), %eax
	xorl	$115, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB29_8
.LBB29_6:                               # %sw.bb.5
	movl	-20(%rbp), %eax
	xorl	$127, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB29_8
.LBB29_7:                               # %sw.default
	jmp	.LBB29_8
.LBB29_8:                               # %sw.epilog
	movabsq	$recodetabs, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_11
# BB#9:                                 # %land.lhs.true
	movabsq	$recodetabs, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB29_11
# BB#10:                                # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	callq	LoadFontTranslation
	movabsq	$recodetabs, %rsi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB29_11:                              # %if.end.15
	cmpq	$0, -32(%rbp)
	je	.LBB29_23
# BB#12:                                # %if.then.17
	jmp	.LBB29_13
.LBB29_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpw	$0, (%rax)
	je	.LBB29_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB29_13 Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	je	.LBB29_18
# BB#15:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB29_13 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	(%rcx), %edx
	andl	$32767, %edx            # imm = 0x7FFF
	cmpl	%edx, %eax
	jg	.LBB29_18
# BB#16:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB29_13 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	-4(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB29_18
# BB#17:                                # %if.then.37
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	-4(%rcx), %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movzwl	-2(%rcx), %edx
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_71
.LBB29_18:                              # %if.end.44
                                        #   in Loop: Header=BB29_13 Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB29_20
# BB#19:                                # %if.then.49
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB29_71
.LBB29_20:                              # %if.end.52
                                        #   in Loop: Header=BB29_13 Depth=1
	jmp	.LBB29_21
.LBB29_21:                              # %for.inc
                                        #   in Loop: Header=BB29_13 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB29_13
.LBB29_22:                              # %for.end
	jmp	.LBB29_23
.LBB29_23:                              # %if.end.53
	movl	-8(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_71
.LBB29_24:                              # %if.end.55
	cmpl	$-1, -16(%rbp)
	jne	.LBB29_44
# BB#25:                                # %if.then.58
	cmpl	$256, -8(%rbp)          # imm = 0x100
	jge	.LBB29_27
# BB#26:                                # %if.then.61
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_71
.LBB29_27:                              # %if.end.62
	movl	$32, -16(%rbp)
.LBB29_28:                              # %for.cond.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_31 Depth 2
	cmpl	$128, -16(%rbp)
	jge	.LBB29_43
# BB#29:                                # %for.body.66
                                        #   in Loop: Header=BB29_28 Depth=1
	movabsq	$recodetabs, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB29_41
# BB#30:                                # %if.then.71
                                        #   in Loop: Header=BB29_28 Depth=1
	jmp	.LBB29_31
.LBB29_31:                              # %for.cond.72
                                        #   Parent Loop BB29_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	cmpw	$0, 2(%rax)
	je	.LBB29_40
# BB#32:                                # %for.body.75
                                        #   in Loop: Header=BB29_31 Depth=2
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	je	.LBB29_36
# BB#33:                                # %land.lhs.true.81
                                        #   in Loop: Header=BB29_31 Depth=2
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	2(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB29_36
# BB#34:                                # %land.lhs.true.87
                                        #   in Loop: Header=BB29_31 Depth=2
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	-2(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB29_36
# BB#35:                                # %if.then.93
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	-2(%rcx), %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movzwl	-4(%rcx), %edx
	addl	%edx, %eax
	movl	-16(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_71
.LBB29_36:                              # %if.end.102
                                        #   in Loop: Header=BB29_31 Depth=2
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB29_38
# BB#37:                                # %if.then.107
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	movl	-16(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB29_71
.LBB29_38:                              # %if.end.112
                                        #   in Loop: Header=BB29_31 Depth=2
	jmp	.LBB29_39
.LBB29_39:                              # %for.inc.113
                                        #   in Loop: Header=BB29_31 Depth=2
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB29_31
.LBB29_40:                              # %for.end.115
                                        #   in Loop: Header=BB29_28 Depth=1
	jmp	.LBB29_41
.LBB29_41:                              # %if.end.116
                                        #   in Loop: Header=BB29_28 Depth=1
	jmp	.LBB29_42
.LBB29_42:                              # %for.inc.117
                                        #   in Loop: Header=BB29_28 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB29_28
.LBB29_43:                              # %for.end.118
	movl	$63, -4(%rbp)
	jmp	.LBB29_71
.LBB29_44:                              # %if.end.119
	cmpl	$128, -8(%rbp)
	jge	.LBB29_47
# BB#45:                                # %land.lhs.true.122
	movl	-16(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB29_47
# BB#46:                                # %if.then.126
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_71
.LBB29_47:                              # %if.end.127
	cmpl	$32, -16(%rbp)
	jl	.LBB29_70
# BB#48:                                # %if.then.130
	movabsq	$recodetabs, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_51
# BB#49:                                # %land.lhs.true.136
	movabsq	$recodetabs, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB29_51
# BB#50:                                # %if.then.142
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-16(%rbp), %edi
	callq	LoadFontTranslation
	movabsq	$recodetabs, %rsi
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rbp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB29_51:                              # %if.end.147
	cmpq	$0, -32(%rbp)
	je	.LBB29_69
# BB#52:                                # %if.then.149
	jmp	.LBB29_53
.LBB29_53:                              # %for.cond.150
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpw	$0, 2(%rax)
	je	.LBB29_68
# BB#54:                                # %for.body.153
                                        #   in Loop: Header=BB29_53 Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$32768, %ecx            # imm = 0x8000
	cmpl	$0, %ecx
	je	.LBB29_61
# BB#55:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB29_53 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	2(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB29_61
# BB#56:                                # %land.lhs.true.165
                                        #   in Loop: Header=BB29_53 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	-2(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB29_61
# BB#57:                                # %if.then.171
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	-2(%rcx), %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movzwl	-4(%rcx), %edx
	addl	%edx, %eax
	movl	-16(%rbp), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB29_59
# BB#58:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB29_60
.LBB29_59:                              # %cond.false
	movl	-16(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB29_60:                              # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB29_71
.LBB29_61:                              # %if.end.184
                                        #   in Loop: Header=BB29_53 Depth=1
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB29_66
# BB#62:                                # %if.then.189
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	movl	-16(%rbp), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB29_64
# BB#63:                                # %cond.true.194
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB29_65
.LBB29_64:                              # %cond.false.195
	movl	-16(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB29_65:                              # %cond.end.197
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB29_71
.LBB29_66:                              # %if.end.200
                                        #   in Loop: Header=BB29_53 Depth=1
	jmp	.LBB29_67
.LBB29_67:                              # %for.inc.201
                                        #   in Loop: Header=BB29_53 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB29_53
.LBB29_68:                              # %for.end.203
	jmp	.LBB29_69
.LBB29_69:                              # %if.end.204
	jmp	.LBB29_70
.LBB29_70:                              # %if.end.205
	movl	$-1, -4(%rbp)
.LBB29_71:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	recode_char, .Lfunc_end29-recode_char
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"C"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"eucJP"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"B\002I\00401"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\002\004I"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SJIS"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BIBB01"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\002I"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"eucKR"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"B\003BB01"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\003"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"eucCN"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"B\001BB01"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\001"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Big5"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"B\030BB01"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\030"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"KOI8-R"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"CP1251"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ISO8859-2"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ISO8859-3"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ISO8859-4"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ISO8859-5"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"ISO8859-6"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"ISO8859-7"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ISO8859-8"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ISO8859-9"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"ISO8859-10"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ISO8859-15"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"jis"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GBK"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"B\031BB01"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\031"
	.size	.L.str.32, 2

	.type	encodings,@object       # @encodings
	.data
	.globl	encodings
	.align	16
encodings:
	.quad	.L.str
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	.L.str.2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	0
	.long	161                     # 0xa1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.quad	.L.str.17
	.quad	0
	.long	191                     # 0xbf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.quad	.L.str.18
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.19
	.quad	0
	.long	194                     # 0xc2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.20
	.quad	0
	.long	195                     # 0xc3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.21
	.quad	0
	.long	196                     # 0xc4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.22
	.quad	0
	.long	204                     # 0xcc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.23
	.quad	0
	.long	199                     # 0xc7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.24
	.quad	0
	.long	198                     # 0xc6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.25
	.quad	0
	.long	200                     # 0xc8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.26
	.quad	0
	.long	205                     # 0xcd
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.27
	.quad	0
	.long	214                     # 0xd6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.28
	.quad	0
	.long	226                     # 0xe2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.29
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.30
	.quad	.L.str.31
	.long	226                     # 0xe2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.size	encodings, 840

	.type	builtin_tabs,@object    # @builtin_tabs
	.align	16
builtin_tabs:
	.short	48                      # 0x30
	.short	0                       # 0x0
	.short	95                      # 0x5f
	.short	9646                    # 0x25ae
	.short	96                      # 0x60
	.short	9670                    # 0x25c6
	.short	97                      # 0x61
	.short	9618                    # 0x2592
	.short	98                      # 0x62
	.short	9225                    # 0x2409
	.short	99                      # 0x63
	.short	9228                    # 0x240c
	.short	100                     # 0x64
	.short	9229                    # 0x240d
	.short	101                     # 0x65
	.short	9226                    # 0x240a
	.short	102                     # 0x66
	.short	176                     # 0xb0
	.short	103                     # 0x67
	.short	177                     # 0xb1
	.short	104                     # 0x68
	.short	9252                    # 0x2424
	.short	105                     # 0x69
	.short	9227                    # 0x240b
	.short	106                     # 0x6a
	.short	9496                    # 0x2518
	.short	107                     # 0x6b
	.short	9488                    # 0x2510
	.short	108                     # 0x6c
	.short	9484                    # 0x250c
	.short	109                     # 0x6d
	.short	9492                    # 0x2514
	.short	110                     # 0x6e
	.short	9532                    # 0x253c
	.short	111                     # 0x6f
	.short	9146                    # 0x23ba
	.short	112                     # 0x70
	.short	9147                    # 0x23bb
	.short	113                     # 0x71
	.short	9472                    # 0x2500
	.short	114                     # 0x72
	.short	9148                    # 0x23bc
	.short	115                     # 0x73
	.short	9149                    # 0x23bd
	.short	116                     # 0x74
	.short	9500                    # 0x251c
	.short	117                     # 0x75
	.short	9508                    # 0x2524
	.short	118                     # 0x76
	.short	9524                    # 0x2534
	.short	119                     # 0x77
	.short	9516                    # 0x252c
	.short	120                     # 0x78
	.short	9474                    # 0x2502
	.short	121                     # 0x79
	.short	8804                    # 0x2264
	.short	122                     # 0x7a
	.short	8805                    # 0x2265
	.short	123                     # 0x7b
	.short	960                     # 0x3c0
	.short	124                     # 0x7c
	.short	8800                    # 0x2260
	.short	125                     # 0x7d
	.short	163                     # 0xa3
	.short	126                     # 0x7e
	.short	183                     # 0xb7
	.zero	4
	.short	52                      # 0x34
	.short	0                       # 0x0
	.short	35                      # 0x23
	.short	163                     # 0xa3
	.short	64                      # 0x40
	.short	190                     # 0xbe
	.short	91                      # 0x5b
	.short	255                     # 0xff
	.short	92                      # 0x5c
	.short	189                     # 0xbd
	.short	93                      # 0x5d
	.short	124                     # 0x7c
	.short	123                     # 0x7b
	.short	168                     # 0xa8
	.short	124                     # 0x7c
	.short	102                     # 0x66
	.short	125                     # 0x7d
	.short	188                     # 0xbc
	.short	126                     # 0x7e
	.short	180                     # 0xb4
	.zero	4
	.short	53                      # 0x35
	.short	0                       # 0x0
	.short	91                      # 0x5b
	.short	196                     # 0xc4
	.short	92                      # 0x5c
	.short	214                     # 0xd6
	.short	93                      # 0x5d
	.short	197                     # 0xc5
	.short	94                      # 0x5e
	.short	220                     # 0xdc
	.short	96                      # 0x60
	.short	233                     # 0xe9
	.short	123                     # 0x7b
	.short	228                     # 0xe4
	.short	124                     # 0x7c
	.short	246                     # 0xf6
	.short	125                     # 0x7d
	.short	229                     # 0xe5
	.short	126                     # 0x7e
	.short	252                     # 0xfc
	.zero	4
	.short	54                      # 0x36
	.short	0                       # 0x0
	.short	64                      # 0x40
	.short	196                     # 0xc4
	.short	91                      # 0x5b
	.short	198                     # 0xc6
	.short	92                      # 0x5c
	.short	216                     # 0xd8
	.short	93                      # 0x5d
	.short	197                     # 0xc5
	.short	94                      # 0x5e
	.short	220                     # 0xdc
	.short	96                      # 0x60
	.short	228                     # 0xe4
	.short	123                     # 0x7b
	.short	230                     # 0xe6
	.short	124                     # 0x7c
	.short	248                     # 0xf8
	.short	125                     # 0x7d
	.short	229                     # 0xe5
	.short	126                     # 0x7e
	.short	252                     # 0xfc
	.zero	4
	.short	55                      # 0x37
	.short	0                       # 0x0
	.short	64                      # 0x40
	.short	201                     # 0xc9
	.short	91                      # 0x5b
	.short	196                     # 0xc4
	.short	92                      # 0x5c
	.short	214                     # 0xd6
	.short	93                      # 0x5d
	.short	197                     # 0xc5
	.short	94                      # 0x5e
	.short	220                     # 0xdc
	.short	96                      # 0x60
	.short	233                     # 0xe9
	.short	123                     # 0x7b
	.short	228                     # 0xe4
	.short	124                     # 0x7c
	.short	246                     # 0xf6
	.short	125                     # 0x7d
	.short	229                     # 0xe5
	.short	126                     # 0x7e
	.short	252                     # 0xfc
	.zero	4
	.short	61                      # 0x3d
	.short	0                       # 0x0
	.short	35                      # 0x23
	.short	249                     # 0xf9
	.short	64                      # 0x40
	.short	224                     # 0xe0
	.short	91                      # 0x5b
	.short	233                     # 0xe9
	.short	92                      # 0x5c
	.short	231                     # 0xe7
	.short	93                      # 0x5d
	.short	234                     # 0xea
	.short	94                      # 0x5e
	.short	238                     # 0xee
	.short	95                      # 0x5f
	.short	232                     # 0xe8
	.short	96                      # 0x60
	.short	244                     # 0xf4
	.short	123                     # 0x7b
	.short	228                     # 0xe4
	.short	124                     # 0x7c
	.short	246                     # 0xf6
	.short	125                     # 0x7d
	.short	252                     # 0xfc
	.short	126                     # 0x7e
	.short	251                     # 0xfb
	.zero	4
	.short	65                      # 0x41
	.short	0                       # 0x0
	.short	35                      # 0x23
	.short	163                     # 0xa3
	.zero	4
	.short	75                      # 0x4b
	.short	0                       # 0x0
	.short	64                      # 0x40
	.short	167                     # 0xa7
	.short	91                      # 0x5b
	.short	196                     # 0xc4
	.short	92                      # 0x5c
	.short	214                     # 0xd6
	.short	93                      # 0x5d
	.short	220                     # 0xdc
	.short	123                     # 0x7b
	.short	228                     # 0xe4
	.short	124                     # 0x7c
	.short	246                     # 0xf6
	.short	125                     # 0x7d
	.short	252                     # 0xfc
	.short	126                     # 0x7e
	.short	223                     # 0xdf
	.zero	4
	.short	81                      # 0x51
	.short	0                       # 0x0
	.short	64                      # 0x40
	.short	224                     # 0xe0
	.short	91                      # 0x5b
	.short	226                     # 0xe2
	.short	92                      # 0x5c
	.short	231                     # 0xe7
	.short	93                      # 0x5d
	.short	234                     # 0xea
	.short	94                      # 0x5e
	.short	238                     # 0xee
	.short	96                      # 0x60
	.short	244                     # 0xf4
	.short	123                     # 0x7b
	.short	233                     # 0xe9
	.short	124                     # 0x7c
	.short	249                     # 0xf9
	.short	125                     # 0x7d
	.short	232                     # 0xe8
	.short	126                     # 0x7e
	.short	251                     # 0xfb
	.zero	4
	.short	82                      # 0x52
	.short	0                       # 0x0
	.short	35                      # 0x23
	.short	163                     # 0xa3
	.short	64                      # 0x40
	.short	224                     # 0xe0
	.short	91                      # 0x5b
	.short	176                     # 0xb0
	.short	92                      # 0x5c
	.short	231                     # 0xe7
	.short	93                      # 0x5d
	.short	167                     # 0xa7
	.short	123                     # 0x7b
	.short	233                     # 0xe9
	.short	124                     # 0x7c
	.short	249                     # 0xf9
	.short	125                     # 0x7d
	.short	232                     # 0xe8
	.short	126                     # 0x7e
	.short	168                     # 0xa8
	.zero	4
	.short	89                      # 0x59
	.short	0                       # 0x0
	.short	35                      # 0x23
	.short	163                     # 0xa3
	.short	64                      # 0x40
	.short	167                     # 0xa7
	.short	91                      # 0x5b
	.short	176                     # 0xb0
	.short	92                      # 0x5c
	.short	231                     # 0xe7
	.short	93                      # 0x5d
	.short	233                     # 0xe9
	.short	96                      # 0x60
	.short	249                     # 0xf9
	.short	123                     # 0x7b
	.short	224                     # 0xe0
	.short	124                     # 0x7c
	.short	242                     # 0xf2
	.short	125                     # 0x7d
	.short	232                     # 0xe8
	.short	126                     # 0x7e
	.short	236                     # 0xec
	.zero	4
	.short	90                      # 0x5a
	.short	0                       # 0x0
	.short	35                      # 0x23
	.short	163                     # 0xa3
	.short	64                      # 0x40
	.short	167                     # 0xa7
	.short	91                      # 0x5b
	.short	161                     # 0xa1
	.short	92                      # 0x5c
	.short	209                     # 0xd1
	.short	93                      # 0x5d
	.short	191                     # 0xbf
	.short	123                     # 0x7b
	.short	176                     # 0xb0
	.short	124                     # 0x7c
	.short	241                     # 0xf1
	.short	125                     # 0x7d
	.short	231                     # 0xe7
	.zero	4
	.short	226                     # 0xe2
	.short	0                       # 0x0
	.short	164                     # 0xa4
	.short	8364                    # 0x20ac
	.short	166                     # 0xa6
	.short	352                     # 0x160
	.short	168                     # 0xa8
	.short	353                     # 0x161
	.short	180                     # 0xb4
	.short	381                     # 0x17d
	.short	184                     # 0xb8
	.short	382                     # 0x17e
	.short	188                     # 0xbc
	.short	338                     # 0x152
	.short	189                     # 0xbd
	.short	339                     # 0x153
	.short	190                     # 0xbe
	.short	376                     # 0x178
	.zero	4
	.short	74                      # 0x4a
	.short	0                       # 0x0
	.short	92                      # 0x5c
	.short	165                     # 0xa5
	.short	126                     # 0x7e
	.short	8254                    # 0x203e
	.zero	4
	.short	73                      # 0x49
	.short	0                       # 0x0
	.short	33                      # 0x21
	.short	65377                   # 0xff61
	.short	32863                   # 0x805f
	.short	65439                   # 0xff9f
	.zero	4
	.zero	4
	.size	builtin_tabs, 684

	.type	recodetabs,@object      # @recodetabs
	.local	recodetabs
	.comm	recodetabs,4096,16
	.type	recode_mchar.rmc,@object # @recode_mchar.rmc
	.local	recode_mchar.rmc
	.comm	recode_mchar.rmc,6,1
	.type	recode_mline.maxlen,@object # @recode_mline.maxlen
	.local	recode_mline.maxlen
	.comm	recode_mline.maxlen,4,4
	.type	recode_mline.last,@object # @recode_mline.last
	.local	recode_mline.last
	.comm	recode_mline.last,4,4
	.type	recode_mline.rml,@object # @recode_mline.rml
	.local	recode_mline.rml
	.comm	recode_mline.rml,80,16
	.type	recode_mline.rl,@object # @recode_mline.rl
	.local	recode_mline.rl
	.comm	recode_mline.rl,8,8
	.type	combchars,@object       # @combchars
	.comm	combchars,8,8
	.type	utf8_isdouble.ambiguous,@object # @utf8_isdouble.ambiguous
	.section	.rodata,"a",@progbits
	.align	16
utf8_isdouble.ambiguous:
	.long	161                     # 0xa1
	.long	161                     # 0xa1
	.long	164                     # 0xa4
	.long	164                     # 0xa4
	.long	167                     # 0xa7
	.long	168                     # 0xa8
	.long	170                     # 0xaa
	.long	170                     # 0xaa
	.long	174                     # 0xae
	.long	174                     # 0xae
	.long	176                     # 0xb0
	.long	180                     # 0xb4
	.long	182                     # 0xb6
	.long	186                     # 0xba
	.long	188                     # 0xbc
	.long	191                     # 0xbf
	.long	198                     # 0xc6
	.long	198                     # 0xc6
	.long	208                     # 0xd0
	.long	208                     # 0xd0
	.long	215                     # 0xd7
	.long	216                     # 0xd8
	.long	222                     # 0xde
	.long	225                     # 0xe1
	.long	230                     # 0xe6
	.long	230                     # 0xe6
	.long	232                     # 0xe8
	.long	234                     # 0xea
	.long	236                     # 0xec
	.long	237                     # 0xed
	.long	240                     # 0xf0
	.long	240                     # 0xf0
	.long	242                     # 0xf2
	.long	243                     # 0xf3
	.long	247                     # 0xf7
	.long	250                     # 0xfa
	.long	252                     # 0xfc
	.long	252                     # 0xfc
	.long	254                     # 0xfe
	.long	254                     # 0xfe
	.long	257                     # 0x101
	.long	257                     # 0x101
	.long	273                     # 0x111
	.long	273                     # 0x111
	.long	275                     # 0x113
	.long	275                     # 0x113
	.long	283                     # 0x11b
	.long	283                     # 0x11b
	.long	294                     # 0x126
	.long	295                     # 0x127
	.long	299                     # 0x12b
	.long	299                     # 0x12b
	.long	305                     # 0x131
	.long	307                     # 0x133
	.long	312                     # 0x138
	.long	312                     # 0x138
	.long	319                     # 0x13f
	.long	322                     # 0x142
	.long	324                     # 0x144
	.long	324                     # 0x144
	.long	328                     # 0x148
	.long	331                     # 0x14b
	.long	333                     # 0x14d
	.long	333                     # 0x14d
	.long	338                     # 0x152
	.long	339                     # 0x153
	.long	358                     # 0x166
	.long	359                     # 0x167
	.long	363                     # 0x16b
	.long	363                     # 0x16b
	.long	462                     # 0x1ce
	.long	462                     # 0x1ce
	.long	464                     # 0x1d0
	.long	464                     # 0x1d0
	.long	466                     # 0x1d2
	.long	466                     # 0x1d2
	.long	468                     # 0x1d4
	.long	468                     # 0x1d4
	.long	470                     # 0x1d6
	.long	470                     # 0x1d6
	.long	472                     # 0x1d8
	.long	472                     # 0x1d8
	.long	474                     # 0x1da
	.long	474                     # 0x1da
	.long	476                     # 0x1dc
	.long	476                     # 0x1dc
	.long	593                     # 0x251
	.long	593                     # 0x251
	.long	609                     # 0x261
	.long	609                     # 0x261
	.long	708                     # 0x2c4
	.long	708                     # 0x2c4
	.long	711                     # 0x2c7
	.long	711                     # 0x2c7
	.long	713                     # 0x2c9
	.long	715                     # 0x2cb
	.long	717                     # 0x2cd
	.long	717                     # 0x2cd
	.long	720                     # 0x2d0
	.long	720                     # 0x2d0
	.long	728                     # 0x2d8
	.long	731                     # 0x2db
	.long	733                     # 0x2dd
	.long	733                     # 0x2dd
	.long	735                     # 0x2df
	.long	735                     # 0x2df
	.long	913                     # 0x391
	.long	929                     # 0x3a1
	.long	931                     # 0x3a3
	.long	937                     # 0x3a9
	.long	945                     # 0x3b1
	.long	961                     # 0x3c1
	.long	963                     # 0x3c3
	.long	969                     # 0x3c9
	.long	1025                    # 0x401
	.long	1025                    # 0x401
	.long	1040                    # 0x410
	.long	1103                    # 0x44f
	.long	1105                    # 0x451
	.long	1105                    # 0x451
	.long	8208                    # 0x2010
	.long	8208                    # 0x2010
	.long	8211                    # 0x2013
	.long	8214                    # 0x2016
	.long	8216                    # 0x2018
	.long	8217                    # 0x2019
	.long	8220                    # 0x201c
	.long	8221                    # 0x201d
	.long	8224                    # 0x2020
	.long	8226                    # 0x2022
	.long	8228                    # 0x2024
	.long	8231                    # 0x2027
	.long	8240                    # 0x2030
	.long	8240                    # 0x2030
	.long	8242                    # 0x2032
	.long	8243                    # 0x2033
	.long	8245                    # 0x2035
	.long	8245                    # 0x2035
	.long	8251                    # 0x203b
	.long	8251                    # 0x203b
	.long	8254                    # 0x203e
	.long	8254                    # 0x203e
	.long	8308                    # 0x2074
	.long	8308                    # 0x2074
	.long	8319                    # 0x207f
	.long	8319                    # 0x207f
	.long	8321                    # 0x2081
	.long	8324                    # 0x2084
	.long	8364                    # 0x20ac
	.long	8364                    # 0x20ac
	.long	8451                    # 0x2103
	.long	8451                    # 0x2103
	.long	8453                    # 0x2105
	.long	8453                    # 0x2105
	.long	8457                    # 0x2109
	.long	8457                    # 0x2109
	.long	8467                    # 0x2113
	.long	8467                    # 0x2113
	.long	8470                    # 0x2116
	.long	8470                    # 0x2116
	.long	8481                    # 0x2121
	.long	8482                    # 0x2122
	.long	8486                    # 0x2126
	.long	8486                    # 0x2126
	.long	8491                    # 0x212b
	.long	8491                    # 0x212b
	.long	8531                    # 0x2153
	.long	8532                    # 0x2154
	.long	8539                    # 0x215b
	.long	8542                    # 0x215e
	.long	8544                    # 0x2160
	.long	8555                    # 0x216b
	.long	8560                    # 0x2170
	.long	8569                    # 0x2179
	.long	8592                    # 0x2190
	.long	8601                    # 0x2199
	.long	8632                    # 0x21b8
	.long	8633                    # 0x21b9
	.long	8658                    # 0x21d2
	.long	8658                    # 0x21d2
	.long	8660                    # 0x21d4
	.long	8660                    # 0x21d4
	.long	8679                    # 0x21e7
	.long	8679                    # 0x21e7
	.long	8704                    # 0x2200
	.long	8704                    # 0x2200
	.long	8706                    # 0x2202
	.long	8707                    # 0x2203
	.long	8711                    # 0x2207
	.long	8712                    # 0x2208
	.long	8715                    # 0x220b
	.long	8715                    # 0x220b
	.long	8719                    # 0x220f
	.long	8719                    # 0x220f
	.long	8721                    # 0x2211
	.long	8721                    # 0x2211
	.long	8725                    # 0x2215
	.long	8725                    # 0x2215
	.long	8730                    # 0x221a
	.long	8730                    # 0x221a
	.long	8733                    # 0x221d
	.long	8736                    # 0x2220
	.long	8739                    # 0x2223
	.long	8739                    # 0x2223
	.long	8741                    # 0x2225
	.long	8741                    # 0x2225
	.long	8743                    # 0x2227
	.long	8748                    # 0x222c
	.long	8750                    # 0x222e
	.long	8750                    # 0x222e
	.long	8756                    # 0x2234
	.long	8759                    # 0x2237
	.long	8764                    # 0x223c
	.long	8765                    # 0x223d
	.long	8776                    # 0x2248
	.long	8776                    # 0x2248
	.long	8780                    # 0x224c
	.long	8780                    # 0x224c
	.long	8786                    # 0x2252
	.long	8786                    # 0x2252
	.long	8800                    # 0x2260
	.long	8801                    # 0x2261
	.long	8804                    # 0x2264
	.long	8807                    # 0x2267
	.long	8810                    # 0x226a
	.long	8811                    # 0x226b
	.long	8814                    # 0x226e
	.long	8815                    # 0x226f
	.long	8834                    # 0x2282
	.long	8835                    # 0x2283
	.long	8838                    # 0x2286
	.long	8839                    # 0x2287
	.long	8853                    # 0x2295
	.long	8853                    # 0x2295
	.long	8857                    # 0x2299
	.long	8857                    # 0x2299
	.long	8869                    # 0x22a5
	.long	8869                    # 0x22a5
	.long	8895                    # 0x22bf
	.long	8895                    # 0x22bf
	.long	8978                    # 0x2312
	.long	8978                    # 0x2312
	.long	9312                    # 0x2460
	.long	9449                    # 0x24e9
	.long	9451                    # 0x24eb
	.long	9547                    # 0x254b
	.long	9552                    # 0x2550
	.long	9587                    # 0x2573
	.long	9600                    # 0x2580
	.long	9615                    # 0x258f
	.long	9618                    # 0x2592
	.long	9621                    # 0x2595
	.long	9632                    # 0x25a0
	.long	9633                    # 0x25a1
	.long	9635                    # 0x25a3
	.long	9641                    # 0x25a9
	.long	9650                    # 0x25b2
	.long	9651                    # 0x25b3
	.long	9654                    # 0x25b6
	.long	9655                    # 0x25b7
	.long	9660                    # 0x25bc
	.long	9661                    # 0x25bd
	.long	9664                    # 0x25c0
	.long	9665                    # 0x25c1
	.long	9670                    # 0x25c6
	.long	9672                    # 0x25c8
	.long	9675                    # 0x25cb
	.long	9675                    # 0x25cb
	.long	9678                    # 0x25ce
	.long	9681                    # 0x25d1
	.long	9698                    # 0x25e2
	.long	9701                    # 0x25e5
	.long	9711                    # 0x25ef
	.long	9711                    # 0x25ef
	.long	9733                    # 0x2605
	.long	9734                    # 0x2606
	.long	9737                    # 0x2609
	.long	9737                    # 0x2609
	.long	9742                    # 0x260e
	.long	9743                    # 0x260f
	.long	9748                    # 0x2614
	.long	9749                    # 0x2615
	.long	9756                    # 0x261c
	.long	9756                    # 0x261c
	.long	9758                    # 0x261e
	.long	9758                    # 0x261e
	.long	9792                    # 0x2640
	.long	9792                    # 0x2640
	.long	9794                    # 0x2642
	.long	9794                    # 0x2642
	.long	9824                    # 0x2660
	.long	9825                    # 0x2661
	.long	9827                    # 0x2663
	.long	9829                    # 0x2665
	.long	9831                    # 0x2667
	.long	9834                    # 0x266a
	.long	9836                    # 0x266c
	.long	9837                    # 0x266d
	.long	9839                    # 0x266f
	.long	9839                    # 0x266f
	.long	10045                   # 0x273d
	.long	10045                   # 0x273d
	.long	10102                   # 0x2776
	.long	10111                   # 0x277f
	.long	57344                   # 0xe000
	.long	63743                   # 0xf8ff
	.long	65533                   # 0xfffd
	.long	65533                   # 0xfffd
	.long	983040                  # 0xf0000
	.long	1048573                 # 0xffffd
	.long	1048576                 # 0x100000
	.long	1114109                 # 0x10fffd
	.size	utf8_isdouble.ambiguous, 1248

	.type	utf8_iscomb.combining,@object # @utf8_iscomb.combining
	.align	16
utf8_iscomb.combining:
	.long	768                     # 0x300
	.long	879                     # 0x36f
	.long	1155                    # 0x483
	.long	1158                    # 0x486
	.long	1160                    # 0x488
	.long	1161                    # 0x489
	.long	1425                    # 0x591
	.long	1469                    # 0x5bd
	.long	1471                    # 0x5bf
	.long	1471                    # 0x5bf
	.long	1473                    # 0x5c1
	.long	1474                    # 0x5c2
	.long	1476                    # 0x5c4
	.long	1477                    # 0x5c5
	.long	1479                    # 0x5c7
	.long	1479                    # 0x5c7
	.long	1536                    # 0x600
	.long	1539                    # 0x603
	.long	1552                    # 0x610
	.long	1557                    # 0x615
	.long	1611                    # 0x64b
	.long	1630                    # 0x65e
	.long	1648                    # 0x670
	.long	1648                    # 0x670
	.long	1750                    # 0x6d6
	.long	1764                    # 0x6e4
	.long	1767                    # 0x6e7
	.long	1768                    # 0x6e8
	.long	1770                    # 0x6ea
	.long	1773                    # 0x6ed
	.long	1807                    # 0x70f
	.long	1807                    # 0x70f
	.long	1809                    # 0x711
	.long	1809                    # 0x711
	.long	1840                    # 0x730
	.long	1866                    # 0x74a
	.long	1958                    # 0x7a6
	.long	1968                    # 0x7b0
	.long	2027                    # 0x7eb
	.long	2035                    # 0x7f3
	.long	2305                    # 0x901
	.long	2306                    # 0x902
	.long	2364                    # 0x93c
	.long	2364                    # 0x93c
	.long	2369                    # 0x941
	.long	2376                    # 0x948
	.long	2381                    # 0x94d
	.long	2381                    # 0x94d
	.long	2385                    # 0x951
	.long	2388                    # 0x954
	.long	2402                    # 0x962
	.long	2403                    # 0x963
	.long	2433                    # 0x981
	.long	2433                    # 0x981
	.long	2492                    # 0x9bc
	.long	2492                    # 0x9bc
	.long	2497                    # 0x9c1
	.long	2500                    # 0x9c4
	.long	2509                    # 0x9cd
	.long	2509                    # 0x9cd
	.long	2530                    # 0x9e2
	.long	2531                    # 0x9e3
	.long	2561                    # 0xa01
	.long	2562                    # 0xa02
	.long	2620                    # 0xa3c
	.long	2620                    # 0xa3c
	.long	2625                    # 0xa41
	.long	2626                    # 0xa42
	.long	2631                    # 0xa47
	.long	2632                    # 0xa48
	.long	2635                    # 0xa4b
	.long	2637                    # 0xa4d
	.long	2672                    # 0xa70
	.long	2673                    # 0xa71
	.long	2689                    # 0xa81
	.long	2690                    # 0xa82
	.long	2748                    # 0xabc
	.long	2748                    # 0xabc
	.long	2753                    # 0xac1
	.long	2757                    # 0xac5
	.long	2759                    # 0xac7
	.long	2760                    # 0xac8
	.long	2765                    # 0xacd
	.long	2765                    # 0xacd
	.long	2786                    # 0xae2
	.long	2787                    # 0xae3
	.long	2817                    # 0xb01
	.long	2817                    # 0xb01
	.long	2876                    # 0xb3c
	.long	2876                    # 0xb3c
	.long	2879                    # 0xb3f
	.long	2879                    # 0xb3f
	.long	2881                    # 0xb41
	.long	2883                    # 0xb43
	.long	2893                    # 0xb4d
	.long	2893                    # 0xb4d
	.long	2902                    # 0xb56
	.long	2902                    # 0xb56
	.long	2946                    # 0xb82
	.long	2946                    # 0xb82
	.long	3008                    # 0xbc0
	.long	3008                    # 0xbc0
	.long	3021                    # 0xbcd
	.long	3021                    # 0xbcd
	.long	3134                    # 0xc3e
	.long	3136                    # 0xc40
	.long	3142                    # 0xc46
	.long	3144                    # 0xc48
	.long	3146                    # 0xc4a
	.long	3149                    # 0xc4d
	.long	3157                    # 0xc55
	.long	3158                    # 0xc56
	.long	3260                    # 0xcbc
	.long	3260                    # 0xcbc
	.long	3263                    # 0xcbf
	.long	3263                    # 0xcbf
	.long	3270                    # 0xcc6
	.long	3270                    # 0xcc6
	.long	3276                    # 0xccc
	.long	3277                    # 0xccd
	.long	3298                    # 0xce2
	.long	3299                    # 0xce3
	.long	3393                    # 0xd41
	.long	3395                    # 0xd43
	.long	3405                    # 0xd4d
	.long	3405                    # 0xd4d
	.long	3530                    # 0xdca
	.long	3530                    # 0xdca
	.long	3538                    # 0xdd2
	.long	3540                    # 0xdd4
	.long	3542                    # 0xdd6
	.long	3542                    # 0xdd6
	.long	3633                    # 0xe31
	.long	3633                    # 0xe31
	.long	3636                    # 0xe34
	.long	3642                    # 0xe3a
	.long	3655                    # 0xe47
	.long	3662                    # 0xe4e
	.long	3761                    # 0xeb1
	.long	3761                    # 0xeb1
	.long	3764                    # 0xeb4
	.long	3769                    # 0xeb9
	.long	3771                    # 0xebb
	.long	3772                    # 0xebc
	.long	3784                    # 0xec8
	.long	3789                    # 0xecd
	.long	3864                    # 0xf18
	.long	3865                    # 0xf19
	.long	3893                    # 0xf35
	.long	3893                    # 0xf35
	.long	3895                    # 0xf37
	.long	3895                    # 0xf37
	.long	3897                    # 0xf39
	.long	3897                    # 0xf39
	.long	3953                    # 0xf71
	.long	3966                    # 0xf7e
	.long	3968                    # 0xf80
	.long	3972                    # 0xf84
	.long	3974                    # 0xf86
	.long	3975                    # 0xf87
	.long	3984                    # 0xf90
	.long	3991                    # 0xf97
	.long	3993                    # 0xf99
	.long	4028                    # 0xfbc
	.long	4038                    # 0xfc6
	.long	4038                    # 0xfc6
	.long	4141                    # 0x102d
	.long	4144                    # 0x1030
	.long	4146                    # 0x1032
	.long	4146                    # 0x1032
	.long	4150                    # 0x1036
	.long	4151                    # 0x1037
	.long	4153                    # 0x1039
	.long	4153                    # 0x1039
	.long	4184                    # 0x1058
	.long	4185                    # 0x1059
	.long	4448                    # 0x1160
	.long	4607                    # 0x11ff
	.long	4959                    # 0x135f
	.long	4959                    # 0x135f
	.long	5906                    # 0x1712
	.long	5908                    # 0x1714
	.long	5938                    # 0x1732
	.long	5940                    # 0x1734
	.long	5970                    # 0x1752
	.long	5971                    # 0x1753
	.long	6002                    # 0x1772
	.long	6003                    # 0x1773
	.long	6068                    # 0x17b4
	.long	6069                    # 0x17b5
	.long	6071                    # 0x17b7
	.long	6077                    # 0x17bd
	.long	6086                    # 0x17c6
	.long	6086                    # 0x17c6
	.long	6089                    # 0x17c9
	.long	6099                    # 0x17d3
	.long	6109                    # 0x17dd
	.long	6109                    # 0x17dd
	.long	6155                    # 0x180b
	.long	6157                    # 0x180d
	.long	6313                    # 0x18a9
	.long	6313                    # 0x18a9
	.long	6432                    # 0x1920
	.long	6434                    # 0x1922
	.long	6439                    # 0x1927
	.long	6440                    # 0x1928
	.long	6450                    # 0x1932
	.long	6450                    # 0x1932
	.long	6457                    # 0x1939
	.long	6459                    # 0x193b
	.long	6679                    # 0x1a17
	.long	6680                    # 0x1a18
	.long	6912                    # 0x1b00
	.long	6915                    # 0x1b03
	.long	6964                    # 0x1b34
	.long	6964                    # 0x1b34
	.long	6966                    # 0x1b36
	.long	6970                    # 0x1b3a
	.long	6972                    # 0x1b3c
	.long	6972                    # 0x1b3c
	.long	6978                    # 0x1b42
	.long	6978                    # 0x1b42
	.long	7019                    # 0x1b6b
	.long	7027                    # 0x1b73
	.long	7616                    # 0x1dc0
	.long	7626                    # 0x1dca
	.long	7678                    # 0x1dfe
	.long	7679                    # 0x1dff
	.long	8203                    # 0x200b
	.long	8207                    # 0x200f
	.long	8234                    # 0x202a
	.long	8238                    # 0x202e
	.long	8288                    # 0x2060
	.long	8291                    # 0x2063
	.long	8298                    # 0x206a
	.long	8303                    # 0x206f
	.long	8400                    # 0x20d0
	.long	8431                    # 0x20ef
	.long	12330                   # 0x302a
	.long	12335                   # 0x302f
	.long	12441                   # 0x3099
	.long	12442                   # 0x309a
	.long	43014                   # 0xa806
	.long	43014                   # 0xa806
	.long	43019                   # 0xa80b
	.long	43019                   # 0xa80b
	.long	43045                   # 0xa825
	.long	43046                   # 0xa826
	.long	64286                   # 0xfb1e
	.long	64286                   # 0xfb1e
	.long	65024                   # 0xfe00
	.long	65039                   # 0xfe0f
	.long	65056                   # 0xfe20
	.long	65059                   # 0xfe23
	.long	65279                   # 0xfeff
	.long	65279                   # 0xfeff
	.long	65529                   # 0xfff9
	.long	65531                   # 0xfffb
	.long	68097                   # 0x10a01
	.long	68099                   # 0x10a03
	.long	68101                   # 0x10a05
	.long	68102                   # 0x10a06
	.long	68108                   # 0x10a0c
	.long	68111                   # 0x10a0f
	.long	68152                   # 0x10a38
	.long	68154                   # 0x10a3a
	.long	68159                   # 0x10a3f
	.long	68159                   # 0x10a3f
	.long	119143                  # 0x1d167
	.long	119145                  # 0x1d169
	.long	119155                  # 0x1d173
	.long	119170                  # 0x1d182
	.long	119173                  # 0x1d185
	.long	119179                  # 0x1d18b
	.long	119210                  # 0x1d1aa
	.long	119213                  # 0x1d1ad
	.long	119362                  # 0x1d242
	.long	119364                  # 0x1d244
	.long	917505                  # 0xe0001
	.long	917505                  # 0xe0001
	.long	917536                  # 0xe0020
	.long	917631                  # 0xe007f
	.long	917760                  # 0xe0100
	.long	917999                  # 0xe01ef
	.size	utf8_iscomb.combining, 1136

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"euc"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"off"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"iso8859-1"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s/%02x"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"r"
	.size	.L.str.37, 2

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ScreenI2UTF8"
	.size	.L.str.38, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
