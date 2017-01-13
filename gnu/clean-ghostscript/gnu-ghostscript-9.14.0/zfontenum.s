	.text
	.file	"zfontenum.bc"
	.align	16, 0x90
	.type	z_fontenum,@function
z_fontenum:                             # @z_fontenum
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
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
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
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	callq	gp_enumerate_fonts_init
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_1
# BB#4:                                 # %if.end.10
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	8(%rbx), %rax
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$24, %edx
	movl	$.L.str.1, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	leaq	80(%rsp), %rsi
	leaq	72(%rsp), %rdx
	movq	%rbp, %rdi
	callq	gp_enumerate_fonts_next
	xorl	%r13d, %r13d
	testl	%eax, %eax
	jle	.LBB0_5
# BB#6:
	movq	%rbx, %r15
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %r14
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	72(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_9
# BB#10:                                # %if.end.24
                                        #   in Loop: Header=BB0_7 Depth=1
	callq	strlen
	movq	%rax, %r12
	incq	%r12
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	8(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, (%r15)
	movq	80(%rsp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %r12
	movq	%rax, %rdi
	movq	%r12, %rdx
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	callq	memcpy
	movq	72(%rsp), %rdi
	callq	strlen
	movq	%rax, %rbx
	incq	%rbx
	movq	8(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, 8(%r15)
	movq	72(%rsp), %rsi
	andq	%r12, %rbx
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	8(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$24, %edx
	movl	$.L.str.1, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 16(%r15)
	incl	%r13d
	movq	%r14, %rbp
	movq	%rbp, %rdi
	leaq	80(%rsp), %rsi
	leaq	72(%rsp), %rdx
	callq	gp_enumerate_fonts_next
	testl	%eax, %eax
	movq	%rbx, %r15
	jg	.LBB0_7
	jmp	.LBB0_11
.LBB0_1:                                # %do.body
	leaq	16(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB0_3
# BB#2:                                 # %if.then.4
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB0_21
.LBB0_5:
	movq	%rbx, 24(%rsp)          # 8-byte Spill
.LBB0_11:                               # %while.end
	movq	%rbp, %rdi
	callq	gp_enumerate_fonts_free
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movl	56(%rax), %edx
	movq	%rax, %rbp
	orl	$112, %edx
	leaq	56(%rsp), %rsi
	movl	$.L.str.4, %r8d
	movl	%r13d, %ecx
	callq	gs_alloc_ref_array
	testl	%r13d, %r13d
	jle	.LBB0_12
# BB#13:                                # %for.body.lr.ph
	movslq	%r13d, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	%rbp, %r13
	.align	16, 0x90
.LBB0_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r13), %rdi
	movl	56(%r13), %edx
	orl	$112, %edx
	movl	$2, %ecx
	movl	$.L.str.5, %r8d
	leaq	40(%rsp), %rsi
	callq	gs_alloc_ref_array
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	(%r14), %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	8(%r13), %rdi
	movl	$.L.str.2, %edx
	movl	%ebp, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	je	.LBB0_16
# BB#15:                                # %if.end.96
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	(%r14), %rsi
	movq	%rbp, %rdx
	andq	%rax, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	48(%rsp), %rax
	movq	%rbx, 8(%rax)
	movl	56(%r13), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movq	48(%rsp), %rcx
	movw	%ax, (%rcx)
	movl	%ebp, 4(%rcx)
	movq	8(%r14), %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	8(%r13), %rdi
	movl	$.L.str.3, %edx
	movl	%ebp, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	testq	%rbx, %rbx
	je	.LBB0_16
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	8(%r14), %rsi
	movq	%rbp, %rdx
	andq	%rax, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	48(%rsp), %rax
	movq	%rbx, 24(%rax)
	movl	56(%r13), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movq	48(%rsp), %rcx
	movw	%ax, 16(%rcx)
	movl	%ebp, 20(%rcx)
	movq	64(%rsp), %rax
	movups	40(%rsp), %xmm0
	movups	%xmm0, (%rax,%r15)
	movq	(%r14), %rsi
	movq	16(%r14), %rbx
	movq	8(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movq	8(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	8(%r14), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	8(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.1, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	incq	%r12
	addq	$16, %r15
	cmpq	16(%rsp), %r12          # 8-byte Folded Reload
	movq	%rbx, %r14
	jl	.LBB0_14
	jmp	.LBB0_18
.LBB0_9:                                # %if.then.23
	movq	%r14, %rdi
	callq	gp_enumerate_fonts_free
	movl	$-12, %eax
	jmp	.LBB0_21
.LBB0_3:                                # %if.else
	movq	%rax, 624(%rbx)
	movw	$0, 24(%r14)
	movw	$256, 16(%r14)          # imm = 0x100
	xorl	%eax, %eax
	jmp	.LBB0_21
.LBB0_16:                               # %cleanup.thread
	movl	$-25, %eax
	jmp	.LBB0_21
.LBB0_12:
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	%rbp, %r13
.LBB0_18:                               # %do.body.188
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	32(%rcx), %rax
	cmpq	640(%r13), %rax
	jbe	.LBB0_20
# BB#19:                                # %if.then.195
	movl	$2, 688(%r13)
	movl	$-16, %eax
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.199
	movq	%rax, 624(%r13)
	movups	56(%rsp), %xmm0
	movups	%xmm0, 16(%rcx)
	movw	$1, 40(%rcx)
	movw	$256, 32(%rcx)          # imm = 0x100
	movl	24(%rsp), %eax          # 4-byte Reload
.LBB0_21:                               # %cleanup.211
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	z_fontenum, .Lfunc_end0-z_fontenum
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0.getnativefonts"
	.size	.L.str, 17

	.type	zfontenum_op_defs,@object # @zfontenum_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfontenum_op_defs
	.align	16
zfontenum_op_defs:
	.quad	.L.str
	.quad	z_fontenum
	.zero	16
	.size	zfontenum_op_defs, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"fontenum list"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"native font name"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"native font path"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"native fontmap"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"native font mapping"
	.size	.L.str.5, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
