	.text
	.file	"common.bc"
	.globl	a2ps_common_reset
	.align	16, 0x90
	.type	a2ps_common_reset,@function
a2ps_common_reset:                      # @a2ps_common_reset
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, (%rdi)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	a2ps_common_reset, .Lfunc_end0-a2ps_common_reset
	.cfi_endproc

	.globl	a2ps_common_new
	.align	16, 0x90
	.type	a2ps_common_new,@function
a2ps_common_new:                        # @a2ps_common_new
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
	movl	$8, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	a2ps_common_reset
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	a2ps_common_new, .Lfunc_end1-a2ps_common_new
	.cfi_endproc

	.globl	a2ps_common_free
	.align	16, 0x90
	.type	a2ps_common_free,@function
a2ps_common_free:                       # @a2ps_common_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	pw_free_path
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	a2ps_common_free, .Lfunc_end2-a2ps_common_free
	.cfi_endproc

	.globl	a2ps_common_finalize
	.align	16, 0x90
	.type	a2ps_common_finalize,@function
a2ps_common_finalize:                   # @a2ps_common_finalize
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
	subq	$544, %rsp              # imm = 0x220
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	getenv
	cmpq	$0, %rax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rsi
	movl	$47, %ecx
	leaq	-528(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-528(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	pw_prepend_string_to_path
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.LBB3_2:                                # %if.end
	addq	$544, %rsp              # imm = 0x220
	popq	%rbp
	retq
.Lfunc_end3:
	.size	a2ps_common_finalize, .Lfunc_end3-a2ps_common_finalize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"NO_HOME_CONF"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s%c.a2ps"
	.size	.L.str.1, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
