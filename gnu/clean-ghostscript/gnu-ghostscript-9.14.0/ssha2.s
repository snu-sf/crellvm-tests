	.text
	.file	"ssha2.bc"
	.align	16, 0x90
	.type	s_SHA256E_init,@function
s_SHA256E_init:                         # @s_SHA256E_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	addq	$112, %rdi
	callq	pSHA256_Init
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	s_SHA256E_init, .Lfunc_end0-s_SHA256E_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_SHA256E_process,@function
s_SHA256E_process:                      # @s_SHA256E_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 48
.Ltmp6:
	.cfi_offset %rbx, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	cmpq	%rdx, %rsi
	jae	.LBB1_2
# BB#1:                                 # %if.then
	leaq	112(%r15), %rdi
	subq	%rsi, %rdx
	incq	%rsi
	callq	pSHA256_Update
	movq	8(%rbx), %rax
	movq	%rax, (%rbx)
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB1_5
# BB#3:                                 # %if.then.6
	movq	8(%r14), %rdi
	movq	16(%r14), %rcx
	subq	%rdi, %rcx
	movl	$1, %eax
	cmpq	$32, %rcx
	jl	.LBB1_5
# BB#4:                                 # %if.then.13
	incq	%rdi
	addq	$112, %r15
	movq	%r15, %rsi
	callq	pSHA256_Final
	addq	$32, 8(%r14)
	movl	$-1, %eax
.LBB1_5:                                # %if.end.20
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_SHA256E_process, .Lfunc_end1-s_SHA256E_process
	.cfi_endproc

	.globl	s_SHA256E_make_stream
	.align	16, 0x90
	.type	s_SHA256E_make_stream,@function
s_SHA256E_make_stream:                  # @s_SHA256E_make_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	callq	s_alloc
	movq	%rax, %r14
	movl	$st_SHA256E_state, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	testq	%r14, %r14
	je	.LBB2_4
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB2_4
# BB#2:                                 # %if.end
	movq	$s_SHA256E_template, (%rbp)
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	s_init_filter
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:                                 # %if.end.6
	movq	%r14, 240(%r14)
	jmp	.LBB2_5
.LBB2_4:                                # %err
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB2_5:                                # %cleanup
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	s_SHA256E_make_stream, .Lfunc_end2-s_SHA256E_make_stream
	.cfi_endproc

	.type	st_SHA256E_state,@object # @st_SHA256E_state
	.section	.rodata,"a",@progbits
	.align	8
st_SHA256E_state:
	.long	216                     # 0xd8
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_SHA256E_state, 64

	.type	s_SHA256E_template,@object # @s_SHA256E_template
	.globl	s_SHA256E_template
	.align	8
s_SHA256E_template:
	.quad	st_SHA256E_state
	.quad	s_SHA256E_init
	.quad	s_SHA256E_process
	.long	1                       # 0x1
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.quad	0
	.size	s_SHA256E_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"s_SHA256E_make_stream"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SHA256Encode state"
	.size	.L.str.1, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
