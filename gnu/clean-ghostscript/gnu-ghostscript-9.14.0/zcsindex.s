	.text
	.file	"zcsindex.bc"
	.globl	zcs_begin_map
	.align	16, 0x90
	.type	zcs_begin_map,@function
zcs_begin_map:                          # @zcs_begin_map
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%r8, %rbp
	movl	%ecx, %r15d
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_state_memory
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	imemory_space
	movl	%eax, %r12d
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movl	%eax, %r13d
	movl	%r13d, %esi
	imull	%r15d, %esi
	leaq	32(%rsp), %rdi
	movl	$.L.str, %ecx
	movq	%r14, %rdx
	callq	alloc_indexed_map
	testl	%eax, %eax
	js	.LBB0_5
# BB#1:                                 # %if.end
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rcx, (%rax)
	movq	520(%rbx), %rax
	movq	536(%rbx), %rdx
	leaq	520(%rbx), %rbx
	addq	$-96, %rdx
	cmpq	%rdx, %rax
	jbe	.LBB0_4
# BB#2:                                 # %if.then.8
	movl	$6, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB0_5
# BB#3:                                 # %if.then.8.if.end.15_crit_edge
	movq	(%rbx), %rax
	movq	32(%rsp), %rcx
.LBB0_4:                                # %if.end.15
	leaq	80(%rax), %rdx
	movq	%rdx, (%rbx)
	movslq	%r13d, %rdx
	movq	%rdx, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	movq	%rcx, 40(%rax)
	addl	$2048, %r12d            # imm = 0x800
	movw	%r12w, 32(%rax)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movups	(%rcx), %xmm0
	movups	%xmm0, 48(%rax)
	decl	%r15d
	movslq	%r15d, %rcx
	movq	%rcx, 72(%rax)
	movw	$2816, 64(%rax)         # imm = 0xB00
	movq	$-1, 88(%rax)
	movw	$2816, 80(%rax)         # imm = 0xB00
	movq	(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB0_5:                                # %cleanup.57
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zcs_begin_map, .Lfunc_end0-zcs_begin_map
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"setcolorspace(mapped)"
	.size	.L.str, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
