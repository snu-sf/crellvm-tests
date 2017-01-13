	.text
	.file	"zfimscale.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.align	16, 0x90
	.type	z_imscale_d,@function
z_imscale_d:                            # @z_imscale_d
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
	subq	$272, %rsp              # imm = 0x110
.Ltmp3:
	.cfi_def_cfa_offset 304
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB0_7
# BB#3:                                 # %do.end
	leaq	268(%rsp), %r9
	movl	$.L.str.2, %esi
	xorl	%edx, %edx
	movl	$16777216, %ecx         # imm = 0x1000000
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	$-15, %ebp
	testl	%eax, %eax
	js	.LBB0_7
# BB#4:                                 # %if.end.11
	leaq	264(%rsp), %r9
	movl	$.L.str.3, %esi
	xorl	%edx, %edx
	movl	$16777216, %ecx         # imm = 0x1000000
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB0_7
# BB#5:                                 # %if.end.16
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 116(%rsp)
	movl	268(%rsp), %eax
	movl	%eax, 156(%rsp)
	movl	264(%rsp), %ecx
	movl	%ecx, 160(%rsp)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movups	%xmm0, 140(%rsp)
	shll	$2, %eax
	movl	%eax, 164(%rsp)
	shll	$2, %ecx
	movl	%ecx, 168(%rsp)
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_imscale_template, %edx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	filter_read
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_6:                                # %cleanup
	movl	%eax, %ebp
.LBB0_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	z_imscale_d, .Lfunc_end0-z_imscale_d
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2ImscaleDecode"
	.size	.L.str.1, 15

	.type	zfimscale_op_defs,@object # @zfimscale_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfimscale_op_defs
	.align	16
zfimscale_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	z_imscale_d
	.zero	16
	.size	zfimscale_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Width"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Height"
	.size	.L.str.3, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
