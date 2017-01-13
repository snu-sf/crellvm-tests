	.text
	.file	"useropt.bc"
	.globl	user_options_table_new
	.align	16, 0x90
	.type	user_options_table_new,@function
user_options_table_new:                 # @user_options_table_new
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
	callq	pair_table_new
	popq	%rbp
	retq
.Lfunc_end0:
	.size	user_options_table_new, .Lfunc_end0-user_options_table_new
	.cfi_endproc

	.globl	user_options_table_free
	.align	16, 0x90
	.type	user_options_table_free,@function
user_options_table_free:                # @user_options_table_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	pair_table_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	user_options_table_free, .Lfunc_end1-user_options_table_free
	.cfi_endproc

	.globl	user_option_add
	.align	16, 0x90
	.type	user_option_add,@function
user_option_add:                        # @user_option_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	pair_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	user_option_add, .Lfunc_end2-user_option_add
	.cfi_endproc

	.globl	user_option_get
	.align	16, 0x90
	.type	user_option_get,@function
user_option_get:                        # @user_option_get
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
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	pair_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	user_option_get, .Lfunc_end3-user_option_get
	.cfi_endproc

	.globl	user_options_list_short
	.align	16, 0x90
	.type	user_options_list_short,@function
user_options_list_short:                # @user_options_list_short
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
	subq	$32, %rsp
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pair_table_list_short
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	user_options_list_short, .Lfunc_end4-user_options_list_short
	.cfi_endproc

	.globl	user_options_list_long
	.align	16, 0x90
	.type	user_options_list_long,@function
user_options_list_long:                 # @user_options_list_long
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
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pair_table_list_long
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	user_options_list_long, .Lfunc_end5-user_options_list_long
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown user option `%s'"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Known User Options"
	.size	.L.str.1, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
