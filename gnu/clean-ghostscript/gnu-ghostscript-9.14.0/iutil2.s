	.text
	.file	"iutil2.bc"
	.globl	param_read_password
	.align	16, 0x90
	.type	param_read_password,@function
param_read_password:                    # @param_read_password
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
	subq	$32, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 64
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	leaq	16(%rsp), %rdx
	callq	param_read_string
	cmpl	$-20, %eax
	je	.LBB0_5
# BB#1:                                 # %entry
	movl	$1, %ebp
	cmpl	$1, %eax
	je	.LBB0_7
# BB#2:                                 # %entry
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.LBB0_7
# BB#3:                                 # %sw.bb
	movl	24(%rsp), %edx
	cmpq	$64, %rdx
	movl	$-13, %ebp
	ja	.LBB0_7
# BB#4:                                 # %if.end
	leaq	4(%r14), %rdi
	movq	16(%rsp), %rsi
	callq	memcpy
	movl	24(%rsp), %eax
	movl	%eax, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB0_7
.LBB0_5:                                # %if.end.10
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	param_read_long
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_7
# BB#6:                                 # %if.end.15
	leaq	4(%r14), %rbx
	movq	8(%rsp), %rdx
	xorl	%ebp, %ebp
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, (%r14)
.LBB0_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	param_read_password, .Lfunc_end0-param_read_password
	.cfi_endproc

	.globl	param_write_password
	.align	16, 0x90
	.type	param_write_password,@function
param_write_password:                   # @param_write_password
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 32
	leaq	4(%rdx), %rax
	movq	%rax, 8(%rsp)
	movl	(%rdx), %ecx
	movl	%ecx, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$-13, %eax
	cmpl	$64, %ecx
	ja	.LBB1_2
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdx
	callq	param_write_string
.LBB1_2:                                # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end1:
	.size	param_write_password, .Lfunc_end1-param_write_password
	.cfi_endproc

	.globl	param_check_password
	.align	16, 0x90
	.type	param_check_password,@function
param_check_password:                   # @param_check_password
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 96
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	cmpl	$0, (%rbx)
	je	.LBB2_4
# BB#1:                                 # %if.then
	leaq	8(%rsp), %rdx
	movl	$.L.str.1, %esi
	callq	param_read_password
	testl	%eax, %eax
	jne	.LBB2_5
# BB#2:                                 # %if.end
	movl	8(%rsp), %esi
	movl	$1, %eax
	cmpl	(%rbx), %esi
	jne	.LBB2_5
# BB#3:                                 # %cleanup
	leaq	12(%rsp), %rdi
	addq	$4, %rbx
	movq	%rbx, %rdx
	movl	%esi, %ecx
	callq	bytes_compare
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB2_5
.LBB2_4:                                # %if.end.14
	xorl	%eax, %eax
.LBB2_5:                                # %return
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	param_check_password, .Lfunc_end2-param_check_password
	.cfi_endproc

	.globl	dict_read_password
	.align	16, 0x90
	.type	dict_read_password,@function
dict_read_password:                     # @dict_read_password
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-21, %eax
	testl	%ecx, %ecx
	jle	.LBB3_6
# BB#1:                                 # %if.end.i
	movq	8(%rsp), %rcx
	movl	$-15, %eax
	movzbl	1(%rcx), %edx
	cmpl	$18, %edx
	jne	.LBB3_6
# BB#2:                                 # %lor.lhs.false.i
	testb	$32, (%rcx)
	jne	.LBB3_6
# BB#3:                                 # %lor.lhs.false.6.i
	movq	8(%rcx), %rdx
	movzbl	(%rdx), %edx
	cmpl	4(%rcx), %edx
	jae	.LBB3_6
# BB#4:                                 # %if.end
	movq	8(%rcx), %rsi
	movzbl	(%rsi), %edx
	cmpl	$64, %edx
	movl	$-15, %eax
	ja	.LBB3_6
# BB#5:                                 # %if.end.4
	incq	%rsi
	movl	%edx, (%rbx)
	addq	$4, %rbx
	movq	%rbx, %rdi
	callq	memcpy
	xorl	%eax, %eax
.LBB3_6:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	dict_read_password, .Lfunc_end3-dict_read_password
	.cfi_endproc

	.globl	dict_write_password
	.align	16, 0x90
	.type	dict_write_password,@function
dict_write_password:                    # @dict_write_password
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdi, %r14
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-21, %eax
	testl	%ecx, %ecx
	jle	.LBB4_10
# BB#1:                                 # %if.end.i
	movq	8(%rsp), %rbx
	movl	$-15, %eax
	movzbl	1(%rbx), %ecx
	cmpl	$18, %ecx
	jne	.LBB4_10
# BB#2:                                 # %lor.lhs.false.i
	testb	$32, (%rbx)
	jne	.LBB4_10
# BB#3:                                 # %lor.lhs.false.6.i
	movq	8(%rbx), %rcx
	movzbl	(%rcx), %ecx
	cmpl	4(%rbx), %ecx
	jae	.LBB4_10
# BB#4:                                 # %if.end
	movl	(%r14), %ecx
	movl	$-15, %eax
	cmpl	4(%rbx), %ecx
	jae	.LBB4_10
# BB#5:                                 # %if.end.3
	testl	%ebp, %ebp
	je	.LBB4_7
# BB#6:                                 # %if.end.3.if.end.11_crit_edge
	addq	$4, %r14
	movq	%r14, %rbp
	jmp	.LBB4_9
.LBB4_7:                                # %land.lhs.true
	movq	8(%rbx), %rdi
	movzbl	(%rdi), %esi
	incq	%rdi
	leaq	4(%r14), %rbp
	movq	%rbp, %rdx
	callq	bytes_compare
	movl	%eax, %ecx
	movl	$-7, %eax
	testl	%ecx, %ecx
	jne	.LBB4_10
# BB#8:                                 # %land.lhs.true.if.end.11_crit_edge
	movl	(%r14), %ecx
.LBB4_9:                                # %if.end.11
	movq	8(%rbx), %rdi
	movb	%cl, (%rdi)
	incq	%rdi
	movzbl	%cl, %edx
	movq	%rbp, %rsi
	callq	memcpy
	xorl	%eax, %eax
.LBB4_10:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dict_write_password, .Lfunc_end4-dict_write_password
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%ld"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Password"
	.size	.L.str.1, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
