	.text
	.file	"zfaes.bc"
	.align	16, 0x90
	.type	z_aes_d,@function
z_aes_d:                                # @z_aes_d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$192, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 224
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	$0, 184(%rsp)
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB0_7
# BB#3:                                 # %do.end
	leaq	184(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-15, %ebp
	testl	%eax, %eax
	jle	.LBB0_7
# BB#4:                                 # %if.end.11
	movq	184(%rsp), %rax
	movq	8(%rax), %rsi
	movl	4(%rax), %edx
	leaq	8(%rsp), %rdi
	callq	s_aes_set_key
	leaq	4(%rsp), %rcx
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB0_7
# BB#5:                                 # %if.end.19
	movl	4(%rsp), %esi
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_aes_set_padding
	xorl	%esi, %esi
	movl	$s_aes_template, %edx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	filter_read
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_6:                                # %cleanup
	movl	%eax, %ebp
.LBB0_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	z_aes_d, .Lfunc_end0-z_aes_d
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2AESDecode"
	.size	.L.str.1, 11

	.type	zfaes_op_defs,@object   # @zfaes_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfaes_op_defs
	.align	16
zfaes_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	z_aes_d
	.zero	16
	.size	zfaes_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Key"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Padding"
	.size	.L.str.3, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
