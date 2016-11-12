	.text
	.file	"szlibd.bc"
	.align	16, 0x90
	.type	s_zlibD_init,@function
s_zlibD_init:                           # @s_zlibD_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	s_zlib_alloc_dynamic_state
	movl	$-2, %ebp
	testl	%eax, %eax
	js	.LBB0_6
# BB#1:                                 # %if.end
	movq	136(%rbx), %rdi
	addq	$16, %rdi
	movl	108(%rbx), %esi
	cmpl	$0, 112(%rbx)
	je	.LBB0_3
# BB#2:
	negl	%esi
.LBB0_3:                                # %select.end
	movl	$.L.str, %edx
	movl	$112, %ecx
	callq	inflateInit2_
	testl	%eax, %eax
	je	.LBB0_5
# BB#4:                                 # %if.then.4
	movq	%rbx, %rdi
	callq	s_zlib_free_dynamic_state
	jmp	.LBB0_6
.LBB0_5:                                # %if.end.5
	movl	$1, 24(%rbx)
	xorl	%ebp, %ebp
.LBB0_6:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_zlibD_init, .Lfunc_end0-s_zlibD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_zlibD_process,@function
s_zlibD_process:                        # @s_zlibD_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 64
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	8(%rbx), %rax
	movq	16(%rbx), %rcx
	movl	$1, %r15d
	cmpq	%rcx, %rax
	je	.LBB1_23
# BB#1:                                 # %if.end
	movq	(%rbp), %r13
	movq	8(%rbp), %rdx
	xorl	%r15d, %r15d
	cmpq	%rdx, %r13
	je	.LBB1_23
# BB#2:                                 # %if.end.6
	movq	136(%r14), %r12
	leaq	1(%r13), %rdi
	movq	%rdi, 16(%r12)
	subl	%r13d, %edx
	movl	%edx, 24(%r12)
	leaq	1(%rax), %rsi
	movq	%rsi, 40(%r12)
	subl	%eax, %ecx
	movl	%ecx, 48(%r12)
	cmpq	$0, 32(%r12)
	jne	.LBB1_6
# BB#3:                                 # %if.end.6
	cmpl	$10, %edx
	jb	.LBB1_6
# BB#4:                                 # %land.lhs.true.21
	movl	$s_zlibD_process.jaws_empty, %esi
	movl	$10, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_5
.LBB1_6:                                # %if.end.26
	leaq	16(%r12), %rdi
	movl	$1, %esi
	callq	inflate
	movq	16(%r12), %rcx
	decq	%rcx
	movq	%rcx, (%rbp)
	movq	40(%r12), %rdx
	decq	%rdx
	movq	%rdx, 8(%rbx)
	movl	$-1, %r15d
	cmpl	$1, %eax
	je	.LBB1_23
# BB#7:                                 # %if.end.26
	testl	%eax, %eax
	jne	.LBB1_10
# BB#8:                                 # %sw.bb
	movl	$1, %r15d
	cmpq	16(%rbx), %rdx
	je	.LBB1_23
# BB#9:                                 # %cond.false
	cmpq	%r13, %rcx
	setbe	%al
	movzbl	%al, %r15d
	jmp	.LBB1_23
.LBB1_10:                               # %sw.default
	movq	64(%r12), %rbx
	movl	$-2, %r15d
	testq	%rbx, %rbx
	je	.LBB1_23
# BB#11:                                # %land.lhs.true.45
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_19
# BB#12:                                # %cond.true.49
	movzbl	(%rbx), %edx
	movl	$105, %eax
	subl	%edx, %eax
	testq	%rcx, %rcx
	je	.LBB1_20
# BB#13:                                # %cond.true.49
	testl	%eax, %eax
	jne	.LBB1_20
# BB#14:                                # %if.then.60
	movzbl	1(%rbx), %edx
	movl	$110, %eax
	subl	%edx, %eax
	cmpq	$2, %rcx
	jb	.LBB1_20
# BB#15:                                # %if.then.60
	testl	%eax, %eax
	jne	.LBB1_20
# BB#16:                                # %if.then.70
	movzbl	2(%rbx), %edx
	movl	$99, %eax
	subl	%edx, %eax
	cmpq	$3, %rcx
	jb	.LBB1_20
# BB#17:                                # %if.then.70
	testl	%eax, %eax
	jne	.LBB1_20
# BB#18:                                # %if.then.80
	movzbl	3(%rbx), %ecx
	movl	$111, %eax
	subl	%ecx, %eax
	jmp	.LBB1_20
.LBB1_5:                                # %if.then.23
	addq	$10, %r13
	movq	%r13, (%rbp)
	jmp	.LBB1_22
.LBB1_19:                               # %cond.false.89
	movl	$.L.str.1, %edi
	movq	%rbx, %rsi
	callq	strcmp
.LBB1_20:                               # %cond.end.92
	testl	%eax, %eax
	jne	.LBB1_23
# BB#21:                                # %if.then.95
	movq	8(%r14), %rdi
	movq	64(%r12), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB1_22:                               # %cleanup
	movl	$-1, %r15d
.LBB1_23:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_zlibD_process, .Lfunc_end1-s_zlibD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_zlibD_release,@function
s_zlibD_release:                        # @s_zlibD_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_2
# BB#1:                                 # %if.then
	addq	$16, %rdi
	callq	inflateEnd
.LBB2_2:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	s_zlib_free_dynamic_state # TAILCALL
.Lfunc_end2:
	.size	s_zlibD_release, .Lfunc_end2-s_zlibD_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_zlibD_reset,@function
s_zlibD_reset:                          # @s_zlibD_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 16
	movq	136(%rdi), %rdi
	addq	$16, %rdi
	callq	inflateReset
	testl	%eax, %eax
	movl	$-2, %ecx
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	s_zlibD_reset, .Lfunc_end3-s_zlibD_reset
	.cfi_endproc

	.type	s_zlibD_template,@object # @s_zlibD_template
	.section	.rodata,"a",@progbits
	.globl	s_zlibD_template
	.align	8
s_zlibD_template:
	.quad	st_zlib_state
	.quad	s_zlibD_init
	.quad	s_zlibD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_zlibD_release
	.quad	s_zlib_set_defaults
	.quad	s_zlibD_reset
	.size	s_zlibD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.2.7"
	.size	.L.str, 6

	.type	s_zlibD_process.jaws_empty,@object # @s_zlibD_process.jaws_empty
	.section	.rodata,"a",@progbits
s_zlibD_process.jaws_empty:
	.ascii	"X\205\001\000\000\000\000\000\001\n"
	.size	s_zlibD_process.jaws_empty, 10

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"incorrect data check"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"warning: ignoring zlib error: %s\n"
	.size	.L.str.2, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
