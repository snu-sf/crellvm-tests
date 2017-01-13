	.text
	.file	"zfarc4.bc"
	.align	16, 0x90
	.type	z_arcfour_d,@function
z_arcfour_d:                            # @z_arcfour_d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$392, %rsp              # imm = 0x188
.Ltmp2:
	.cfi_def_cfa_offset 416
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movq	$0, 384(%rsp)
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %do.body
	movq	8(%rdi), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB0_6
# BB#3:                                 # %do.end
	leaq	384(%rsp), %rdx
	movl	$.L.str.3, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	jle	.LBB0_6
# BB#4:                                 # %if.end.11
	movq	384(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$18, %edx
	jne	.LBB0_6
# BB#5:                                 # %if.end.19
	movq	8(%rcx), %rsi
	movl	4(%rcx), %edx
	leaq	8(%rsp), %r14
	movq	%r14, %rdi
	callq	s_arcfour_set_key
	xorl	%esi, %esi
	movl	$s_arcfour_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	filter_read
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	callq	check_type_failed
.LBB0_6:                                # %cleanup
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	z_arcfour_d, .Lfunc_end0-z_arcfour_d
	.cfi_endproc

	.align	16, 0x90
	.type	z_arcfour_e,@function
z_arcfour_e:                            # @z_arcfour_e
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	subq	$392, %rsp              # imm = 0x188
.Ltmp7:
	.cfi_def_cfa_offset 416
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movq	$0, 384(%rsp)
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB1_1
# BB#2:                                 # %do.body
	movq	8(%rdi), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB1_6
# BB#3:                                 # %do.end
	leaq	384(%rsp), %rdx
	movl	$.L.str.3, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	jle	.LBB1_6
# BB#4:                                 # %if.end.11
	movq	384(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$18, %edx
	jne	.LBB1_6
# BB#5:                                 # %if.end.19
	movq	8(%rcx), %rsi
	movl	4(%rcx), %edx
	leaq	8(%rsp), %r14
	movq	%r14, %rdi
	callq	s_arcfour_set_key
	xorl	%esi, %esi
	movl	$s_arcfour_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	filter_write
	jmp	.LBB1_6
.LBB1_1:                                # %if.then
	callq	check_type_failed
.LBB1_6:                                # %cleanup
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	z_arcfour_e, .Lfunc_end1-z_arcfour_e
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2ArcfourDecode"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2ArcfourEncode"
	.size	.L.str.2, 15

	.type	zfarc4_op_defs,@object  # @zfarc4_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfarc4_op_defs
	.align	16
zfarc4_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	z_arcfour_d
	.quad	.L.str.2
	.quad	z_arcfour_e
	.zero	16
	.size	zfarc4_op_defs, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Key"
	.size	.L.str.3, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
