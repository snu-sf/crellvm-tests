	.text
	.file	"zfjpx.bc"
	.align	16, 0x90
	.type	z_jpx_decode,@function
z_jpx_decode:                           # @z_jpx_decode
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp6:
	.cfi_def_cfa_offset 352
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	624(%r13), %rbx
	movq	$0, 288(%rsp)
	movq	8(%r13), %rax
	movq	200(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	s_jpxd_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.then
	leaq	48(%rsp), %rdi
	callq	*%rax
.LBB0_2:                                # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_41
# BB#3:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB0_43
# BB#4:                                 # %do.end
	leaq	288(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_9
# BB#5:                                 # %if.then.12
	movq	288(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB0_6
# BB#7:                                 # %if.end.21
	cmpw	$0, 8(%rdi)
	je	.LBB0_9
# BB#8:                                 # %if.then.24
	movl	$1, 204(%rsp)
.LBB0_9:                                # %if.end.26
	leaq	288(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_41
# BB#10:                                # %if.then.30
	movq	288(%rsp), %r14
	movzwl	(%r14), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_11
# BB#13:                                # %if.end.51
	movq	8(%r14), %r14
	testq	%r14, %r14
	jne	.LBB0_14
	jmp	.LBB0_41
.LBB0_6:                                # %if.then.19
	callq	check_type_failed
	jmp	.LBB0_42
.LBB0_11:                               # %if.else
	movzbl	1(%r14), %eax
	cmpl	$13, %eax
	jne	.LBB0_12
.LBB0_14:                               # %if.then.54
	movq	8(%r13), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %rdx
	movq	%r14, %rsi
	callq	names_string_ref
	movq	40(%rsp), %r15
	movl	$.L.str.5, %edi
	callq	strlen
	movl	36(%rsp), %r12d
	cmpq	%r12, %rax
	cmovaeq	%r12, %rax
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_15
# BB#16:                                # %if.else.70
	movl	$.L.str.6, %edi
	callq	strlen
	cmpq	%r12, %rax
	cmovaeq	%r12, %rax
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_17
# BB#18:                                # %if.else.91
	movl	$.L.str.7, %edi
	callq	strlen
	cmpq	%r12, %rax
	cmovaeq	%r12, %rax
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_19
# BB#20:                                # %if.else.112
	movl	$.L.str.8, %edi
	callq	strlen
	cmpq	%r12, %rax
	cmovaeq	%r12, %rax
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_40
# BB#21:                                # %if.else.133
	movl	$.L.str.9, %edi
	callq	strlen
	cmpq	%r12, %rax
	cmovbq	%rax, %r12
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_41
# BB#22:                                # %if.then.152
	movq	288(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_41
# BB#23:                                # %land.lhs.true
	cmpl	$2, 4(%rax)
	jb	.LBB0_41
# BB#24:                                # %land.lhs.true.165
	movq	8(%rax), %rax
	leaq	16(%rax), %r15
	movzbl	1(%r15), %ecx
	cmpl	$2, %ecx
	jne	.LBB0_41
# BB#25:                                # %do.body.173
	movq	24(%rax), %rax
	testb	$32, (%rax)
	je	.LBB0_43
# BB#26:                                # %do.end.185
	leaq	24(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_33
# BB#27:                                # %if.then.189
	movq	8(%r13), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rdx
	movq	%r14, %rsi
	callq	names_string_ref
	movq	16(%rsp), %rbx
	movl	$.L.str.6, %edi
	callq	strlen
	movl	12(%rsp), %ebp
	cmpq	%rbp, %rax
	cmovaeq	%rbp, %rax
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_28
# BB#29:                                # %if.else.214
	movl	$.L.str.7, %edi
	callq	strlen
	cmpq	%rbp, %rax
	cmovaeq	%rbp, %rax
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_30
# BB#31:                                # %if.else.235
	movl	$.L.str.8, %edi
	callq	strlen
	cmpq	%rbp, %rax
	cmovbq	%rax, %rbp
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_33
# BB#32:                                # %if.then.254
	movl	$3, 200(%rsp)
	jmp	.LBB0_33
.LBB0_12:                               # %if.end.51.thread
	movq	8(%r13), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB0_41
.LBB0_15:                               # %if.then.69
	movl	$4, 200(%rsp)
	jmp	.LBB0_41
.LBB0_17:                               # %if.then.89
	movl	$1, 200(%rsp)
	jmp	.LBB0_41
.LBB0_19:                               # %if.then.110
	movl	$2, 200(%rsp)
	jmp	.LBB0_41
.LBB0_28:                               # %if.then.212
	movl	$1, 200(%rsp)
	jmp	.LBB0_33
.LBB0_30:                               # %if.then.233
	movl	$2, 200(%rsp)
.LBB0_33:                               # %if.end.259
	cmpl	$0, 200(%rsp)
	jne	.LBB0_41
# BB#34:                                # %land.lhs.true.263
	leaq	24(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_41
# BB#35:                                # %do.end.270
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$4, %rax
	je	.LBB0_40
# BB#36:                                # %do.end.270
	cmpq	$3, %rax
	jne	.LBB0_37
# BB#39:                                # %sw.bb.273
	movl	$2, 200(%rsp)
	jmp	.LBB0_41
.LBB0_40:                               # %sw.bb.275
	movl	$3, 200(%rsp)
.LBB0_41:                               # %if.end.295
	leaq	48(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_jpxd_template, %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	filter_read
.LBB0_42:                               # %cleanup.297
	movl	%eax, %ebp
.LBB0_43:                               # %cleanup.297
	movl	%ebp, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_37:                               # %do.end.270
	cmpq	$1, %rax
	jne	.LBB0_41
# BB#38:                                # %sw.bb
	movl	$1, 200(%rsp)
	jmp	.LBB0_41
.Lfunc_end0:
	.size	z_jpx_decode, .Lfunc_end0-z_jpx_decode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2JPXDecode"
	.size	.L.str.1, 11

	.type	zfjpx_op_defs,@object   # @zfjpx_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfjpx_op_defs
	.align	16
zfjpx_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	z_jpx_decode
	.zero	16
	.size	zfjpx_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Alpha"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ColorSpace"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"warning: JPX ColorSpace value is an unhandled type!\n"
	.size	.L.str.4, 53

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Indexed"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DeviceGray"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"DeviceRGB"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DeviceCMYK"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ICCBased"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Alternate"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"N"
	.size	.L.str.11, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
