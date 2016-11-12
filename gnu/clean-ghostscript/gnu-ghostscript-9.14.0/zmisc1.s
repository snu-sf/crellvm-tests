	.text
	.file	"zmisc1.bc"
	.align	16, 0x90
	.type	ztype1encrypt,@function
ztype1encrypt:                          # @ztype1encrypt
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end.i
	movq	-24(%rbx), %rcx
	movw	%cx, 6(%rsp)
	movzwl	%cx, %edx
	movl	$-15, %eax
	cmpq	%rdx, %rcx
	jne	.LBB0_11
# BB#3:                                 # %if.end.13.i
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$4640, %ecx             # imm = 0x1220
	jne	.LBB0_4
# BB#6:                                 # %if.end.30.i
	movzwl	(%rbx), %ecx
	andl	$16144, %ecx            # imm = 0x3F10
	cmpl	$4624, %ecx             # imm = 0x1210
	jne	.LBB0_7
# BB#9:                                 # %if.end.49.i
	movl	-12(%rbx), %ebp
	cmpl	%ebp, 4(%rbx)
	jb	.LBB0_11
# BB#10:                                # %if.end.56.i
	movq	-8(%rbx), %rsi
	movq	8(%rbx), %rdi
	leaq	6(%rsp), %rcx
	movl	%ebp, %edx
	callq	gs_type1_encrypt
	movzwl	6(%rsp), %eax
	movq	%rax, -24(%rbx)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	movl	%ebp, -12(%rbx)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_11
.LBB0_1:                                # %if.then.i
	addq	$-32, %rbx
.LBB0_8:                                # %cond.true.44.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_11:                               # %type1crypt.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:                                # %if.then.20.i
	movzbl	1(%r15), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB0_11
# BB#5:                                 # %cond.true.i
	movq	%r15, %rdi
	callq	check_type_failed
	jmp	.LBB0_11
.LBB0_7:                                # %if.then.37.i
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB0_11
	jmp	.LBB0_8
.Lfunc_end0:
	.size	ztype1encrypt, .Lfunc_end0-ztype1encrypt
	.cfi_endproc

	.align	16, 0x90
	.type	ztype1decrypt,@function
ztype1decrypt:                          # @ztype1decrypt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_1
# BB#2:                                 # %if.end.i
	movq	-24(%rbx), %rcx
	movw	%cx, 6(%rsp)
	movzwl	%cx, %edx
	movl	$-15, %eax
	cmpq	%rdx, %rcx
	jne	.LBB1_11
# BB#3:                                 # %if.end.13.i
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$4640, %ecx             # imm = 0x1220
	jne	.LBB1_4
# BB#6:                                 # %if.end.30.i
	movzwl	(%rbx), %ecx
	andl	$16144, %ecx            # imm = 0x3F10
	cmpl	$4624, %ecx             # imm = 0x1210
	jne	.LBB1_7
# BB#9:                                 # %if.end.49.i
	movl	-12(%rbx), %ebp
	cmpl	%ebp, 4(%rbx)
	jb	.LBB1_11
# BB#10:                                # %if.end.56.i
	movq	-8(%rbx), %rsi
	movq	8(%rbx), %rdi
	leaq	6(%rsp), %rcx
	movl	%ebp, %edx
	callq	gs_type1_decrypt
	movzwl	6(%rsp), %eax
	movq	%rax, -24(%rbx)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	movl	%ebp, -12(%rbx)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB1_11
.LBB1_1:                                # %if.then.i
	addq	$-32, %rbx
.LBB1_8:                                # %cond.true.44.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB1_11:                               # %type1crypt.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_4:                                # %if.then.20.i
	movzbl	1(%r15), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB1_11
# BB#5:                                 # %cond.true.i
	movq	%r15, %rdi
	callq	check_type_failed
	jmp	.LBB1_11
.LBB1_7:                                # %if.then.37.i
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB1_11
	jmp	.LBB1_8
.Lfunc_end1:
	.size	ztype1decrypt, .Lfunc_end1-ztype1decrypt
	.cfi_endproc

	.align	16, 0x90
	.type	zexE,@function
zexE:                                   # @zexE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 128
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rcx
	movzbl	1(%rcx), %eax
	leaq	-16(%rcx), %rdi
	cmpl	$2, %eax
	cmovneq	%rcx, %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$11, %ecx
	jne	.LBB2_3
# BB#1:                                 # %if.end.9.i
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%cl
	movq	8(%rdi), %rdx
	movw	%dx, 108(%rsp)
	movzwl	%dx, %esi
	movl	$-15, %eax
	cmpq	%rsi, %rdx
	jne	.LBB2_5
# BB#2:
	movzbl	%cl, %eax
	incl	%eax
	jmp	.LBB2_4
.LBB2_3:                                # %eexec_param.exit
	callq	check_type_failed
	testl	%eax, %eax
	js	.LBB2_5
.LBB2_4:                                # %if.end
	leaq	(%rsp), %rcx
	movl	$s_exE_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	filter_write
.LBB2_5:                                # %cleanup
	addq	$112, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zexE, .Lfunc_end2-zexE
	.cfi_endproc

	.align	16, 0x90
	.type	zexD,@function
zexD:                                   # @zexD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 32
	subq	$160, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 192
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	8(%rsp), %rdi
	callq	*s_exD_template+40(%rip)
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB3_9
# BB#1:                                 # %if.then
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB3_23
# BB#2:                                 # %do.end
	leaq	4(%rsp), %r9
	movl	$.L.str.5, %esi
	xorl	%edx, %edx
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$65536, %r8d            # imm = 0x10000
	movq	%rbx, %rdi
	callq	dict_uint_param
	testl	%eax, %eax
	js	.LBB3_23
# BB#3:                                 # %lor.lhs.false
	leaq	124(%rsp), %r9
	movl	$.L.str.6, %esi
	xorl	%edx, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$4, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB3_23
# BB#4:                                 # %lor.lhs.false.11
	leaq	(%rsp), %rcx
	movl	$.L.str.7, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB3_23
# BB#5:                                 # %lor.lhs.false.15
	leaq	136(%rsp), %rcx
	movl	$.L.str.8, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB3_23
# BB#6:                                 # %cleanup
	movw	4(%rsp), %ax
	movw	%ax, 116(%rsp)
	movl	$-1, %eax
	cmpl	$0, (%rsp)
	jne	.LBB3_8
# BB#7:                                 # %select.mid
	movl	$1, %eax
.LBB3_8:                                # %select.end
	movl	%eax, 120(%rsp)
	leaq	-16(%rbx), %r15
	movl	$1, %eax
	jmp	.LBB3_13
.LBB3_9:                                # %if.else
	movl	$1, 120(%rsp)
	movzbl	1(%rbx), %eax
	leaq	-16(%rbx), %r15
	cmpl	$2, %eax
	movq	%rbx, %rdi
	cmoveq	%r15, %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$11, %ecx
	jne	.LBB3_12
# BB#10:                                # %if.end.9.i
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%cl
	movq	8(%rdi), %rdx
	movw	%dx, 116(%rsp)
	movzwl	%dx, %esi
	movl	$-15, %eax
	cmpq	%rsi, %rdx
	jne	.LBB3_23
# BB#11:
	movzbl	%cl, %eax
	incl	%eax
	jmp	.LBB3_13
.LBB3_12:                               # %if.end.28
	callq	check_type_failed
	testl	%eax, %eax
	js	.LBB3_23
.LBB3_13:                               # %if.end.32
	movzbl	1(%r15), %ecx
	cmpl	$3, %ecx
	jne	.LBB3_22
# BB#14:                                # %if.then.39
	movq	-8(%rbx), %rdx
	movq	256(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_22
# BB#15:                                # %land.lhs.true
	movl	$s_PFBD_template, %esi
	cmpq	%rsi, (%rcx)
	jne	.LBB3_22
# BB#16:                                # %if.then.48
	movq	%rcx, 128(%rsp)
	cmpl	$2, 112(%rcx)
	jne	.LBB3_22
# BB#17:                                # %if.then.52
	cmpl	$0, 108(%rcx)
	je	.LBB3_20
# BB#18:                                # %land.lhs.true.54
	movq	120(%rdx), %rsi
	subq	112(%rdx), %rsi
	testq	%rsi, %rsi
	jle	.LBB3_20
# BB#19:                                # %if.then.59
	movl	$0, 120(%rsp)
	movq	%rsi, 144(%rsp)
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.70
	movl	$1, 120(%rsp)
.LBB3_21:                               # %if.end.72
	movl	$0, 108(%rcx)
.LBB3_22:                               # %if.end.76
	leaq	8(%rsp), %rcx
	movl	$s_exD_template, %edx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	filter_read
.LBB3_23:                               # %cleanup.78
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	zexD, .Lfunc_end3-zexD
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"3.type1encrypt"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"3.type1decrypt"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filterdict"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2eexecEncode"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2eexecDecode"
	.size	.L.str.4, 13

	.type	zmisc1_op_defs,@object  # @zmisc1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmisc1_op_defs
	.align	16
zmisc1_op_defs:
	.quad	.L.str
	.quad	ztype1encrypt
	.quad	.L.str.1
	.quad	ztype1decrypt
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.3
	.quad	zexE
	.quad	.L.str.4
	.quad	zexD
	.zero	16
	.size	zmisc1_op_defs, 96

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"seed"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"lenIV"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"eexec"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"keep_spaces"
	.size	.L.str.8, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
