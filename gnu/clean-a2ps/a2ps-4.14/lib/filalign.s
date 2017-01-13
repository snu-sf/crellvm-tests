	.text
	.file	"filalign.bc"
	.globl	file_align_argmatch
	.align	16, 0x90
	.type	file_align_argmatch,@function
file_align_argmatch:                    # @file_align_argmatch
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
	subq	$32, %rsp
	movabsq	$file_align_args, %rax
	movabsq	$file_align_types, %rcx
	movl	$4, %edx
	movl	%edx, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	argcasematch
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB0_2
# BB#1:                                 # %if.then
	movslq	-28(%rbp), %rax
	movl	file_align_types(,%rax,4), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	get_integer_in_range
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_align_argmatch, .Lfunc_end0-file_align_argmatch
	.cfi_endproc

	.globl	file_align_to_string
	.align	16, 0x90
	.type	file_align_to_string,@function
file_align_to_string:                   # @file_align_to_string
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
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$file_align_args, %rsi
	movabsq	$file_align_types, %rax
	movl	$4, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	argmatch_to_argument
	movq	%rax, -8(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movabsq	$file_align_to_string.buf, %rdi
	movabsq	$.L.str, %rsi
	movl	-12(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$file_align_to_string.buf, %rsi
	movq	%rsi, -8(%rbp)
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB1_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_align_to_string, .Lfunc_end1-file_align_to_string
	.cfi_endproc

	.type	file_align_args,@object # @file_align_args
	.section	.rodata,"a",@progbits
	.align	16
file_align_args:
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	0
	.size	file_align_args, 64

	.type	file_align_types,@object # @file_align_types
	.align	16
file_align_types:
	.long	4294967295              # 0xffffffff
	.long	4294967294              # 0xfffffffe
	.long	4294967294              # 0xfffffffe
	.long	4294967293              # 0xfffffffd
	.long	4294967292              # 0xfffffffc
	.long	4294967292              # 0xfffffffc
	.long	4294967292              # 0xfffffffc
	.size	file_align_types, 28

	.type	file_align_to_string.buf,@object # @file_align_to_string.buf
	.local	file_align_to_string.buf
	.comm	file_align_to_string.buf,25,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sheet"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"page"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"no"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rank"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"virtual"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fill"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"yes"
	.size	.L.str.7, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
