	.text
	.file	"srld.bc"
	.align	16, 0x90
	.type	s_RLD_init,@function
s_RLD_init:                             # @s_RLD_init
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 108(%rdi)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 24(%rdi)
	movl	$0, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_RLD_init, .Lfunc_end0-s_RLD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_RLD_process,@function
s_RLD_process:                          # @s_RLD_process
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
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movq	(%rsi), %r14
	movq	8(%rsi), %r15
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	112(%r12), %r13d
	jmp	.LBB1_1
.LBB1_11:                               # %if.then.52
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r13d, 112(%r12)
	movl	$-1, %eax
	movl	%eax, 116(%r12)
	.align	16, 0x90
.LBB1_1:                                # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	testl	%r13d, %r13d
	jle	.LBB1_6
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebx
	subl	%ecx, %ebx
	cmpl	%ebx, %r13d
	cmovbel	%r13d, %ebx
	movl	116(%r12), %esi
	testl	%esi, %esi
	js	.LBB1_4
# BB#3:                                 # %if.then.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rcx, %r13
	leaq	1(%r13), %rdi
	movslq	%ebx, %rdx
	callq	memset
	movl	$1, %ebp
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r15d, %eax
	subl	%r14d, %eax
	cmpl	%eax, %ebx
	cmovael	%eax, %ebx
	sbbl	%ebp, %ebp
	andl	$1, %ebp
	movq	%rcx, %r13
	leaq	1(%r13), %rdi
	leaq	1(%r14), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	callq	memcpy
	addq	8(%rsp), %r14           # 8-byte Folded Reload
.LBB1_5:                                # %if.end.24
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	%ebx, %rax
	addq	%rax, %r13
	movl	112(%r12), %ecx
	subl	%eax, %ecx
	movl	%ecx, 112(%r12)
	testl	%ecx, %ecx
	movq	%r13, %rcx
	jle	.LBB1_6
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_12:                               # %if.end.55
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	%rcx, %rbp
	leaq	1(%rbp), %rdi
	addq	$2, %rbx
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	%rbp, %rcx
	addq	%r13, %r14
	addq	%r13, %rcx
.LBB1_6:                                # %while.cond.outer
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	incq	%r14
	.align	16, 0x90
.LBB1_7:                                # %while.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-1(%r14), %rbx
	cmpq	%r15, %rbx
	jae	.LBB1_20
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB1_7 Depth=3
	movzbl	(%r14), %eax
	testb	%al, %al
	jns	.LBB1_9
# BB#13:                                # %if.else.64
                                        #   in Loop: Header=BB1_7 Depth=3
	cmpl	$128, %eax
	jne	.LBB1_16
# BB#14:                                # %if.then.67
                                        #   in Loop: Header=BB1_7 Depth=3
	incq	%r14
	cmpl	$0, 108(%r12)
	je	.LBB1_7
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_9:                                # %if.then.39
                                        #   in Loop: Header=BB1_6 Depth=2
	leaq	1(%rax), %r13
	movq	%r15, %rax
	subq	%r14, %rax
	cmpq	%rax, %r13
	jg	.LBB1_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	subq	%rcx, %rax
	cmpq	%rax, %r13
	jle	.LBB1_12
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_16:                               # %if.else.70
                                        #   in Loop: Header=BB1_6 Depth=2
	xorl	%ebp, %ebp
	cmpq	%r15, %r14
	je	.LBB1_21
# BB#17:                                # %if.else.75
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	$257, %r13d             # imm = 0x101
	subl	%eax, %r13d
	movq	32(%rsp), %rax          # 8-byte Reload
	subq	%rcx, %rax
	cmpq	%rax, %r13
	jg	.LBB1_18
# BB#19:                                # %if.else.88
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	%rcx, %rbp
	leaq	1(%rbp), %rdi
	movzbl	2(%rbx), %esi
	addq	$2, %rbx
	movq	%r13, %rdx
	callq	memset
	movq	%rbp, %rcx
	addq	%r13, %rcx
	movq	%rbx, %r14
	jmp	.LBB1_6
.LBB1_18:                               # %if.then.83
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r13d, 112(%r12)
	movzbl	2(%rbx), %eax
	addq	$2, %rbx
	movl	%eax, 116(%r12)
	movq	%rbx, %r14
	jmp	.LBB1_1
.LBB1_20:                               # %while.cond.x.loopexit_crit_edge
	xorl	%ebp, %ebp
.LBB1_21:                               # %x
	movq	%rbx, %r14
	jmp	.LBB1_22
.LBB1_15:                               # %x.loopexitsplit
	decq	%r14
	movl	$-1, %ebp
.LBB1_22:                               # %x
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r14, (%rax)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rcx, 8(%rax)
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_RLD_process, .Lfunc_end1-s_RLD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_RLD_set_defaults,@function
s_RLD_set_defaults:                     # @s_RLD_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, 108(%rdi)
	retq
.Lfunc_end2:
	.size	s_RLD_set_defaults, .Lfunc_end2-s_RLD_set_defaults
	.cfi_endproc

	.type	st_RLD_state,@object    # @st_RLD_state
	.section	.rodata,"a",@progbits
	.align	8
st_RLD_state:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_RLD_state, 64

	.type	s_RLD_template,@object  # @s_RLD_template
	.globl	s_RLD_template
	.align	8
s_RLD_template:
	.quad	st_RLD_state
	.quad	s_RLD_init
	.quad	s_RLD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	s_RLD_set_defaults
	.quad	0
	.size	s_RLD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"RunLengthDecode state"
	.size	.L.str, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
