	.text
	.file	"message.bc"
	.globl	msg_verbosity_argmatch
	.align	16, 0x90
	.type	msg_verbosity_argmatch,@function
msg_verbosity_argmatch:                 # @msg_verbosity_argmatch
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rsi
	movsbl	(%rsi), %eax
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movzwl	(%rax,%rsi,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	get_integer_in_range
	movl	%eax, -20(%rbp)
	jmp	.LBB0_6
.LBB0_2:                                # %if.else
	movabsq	$.L.str.14, %rsi
	movq	-16(%rbp), %rdi
	callq	strtok
	movq	%rax, -32(%rbp)
.LBB0_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$_msg_verbosity_args, %rdx
	movabsq	$_msg_verbosity_types, %rax
	movl	$4, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	argmatch_die, %r10
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movl	_msg_verbosity_types(,%rcx,4), %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
# BB#4:                                 # %do.cond
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.14, %rsi
	callq	strtok
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_3
# BB#5:                                 # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %if.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	msg_verbosity_argmatch, .Lfunc_end0-msg_verbosity_argmatch
	.cfi_endproc

	.type	msg_verbosity,@object   # @msg_verbosity
	.bss
	.globl	msg_verbosity
	.align	4
msg_verbosity:
	.long	0                       # 0x0
	.size	msg_verbosity, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sheets"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pathwalk"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"pw"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"encodings"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"configuration"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"options"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"files"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tools"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"fonts"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ppd"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"variables"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"meta-sequences"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"parsers"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"all"
	.size	.L.str.13, 4

	.type	_msg_verbosity_args,@object # @_msg_verbosity_args
	.section	.rodata,"a",@progbits
	.globl	_msg_verbosity_args
	.align	16
_msg_verbosity_args:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	0
	.size	_msg_verbosity_args, 120

	.type	_msg_verbosity_types,@object # @_msg_verbosity_types
	.globl	_msg_verbosity_types
	.align	16
_msg_verbosity_types:
	.long	4                       # 0x4
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	64                      # 0x40
	.long	128                     # 0x80
	.long	256                     # 0x100
	.long	512                     # 0x200
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	2048                    # 0x800
	.long	65535                   # 0xffff
	.size	_msg_verbosity_types, 56

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	",:;+"
	.size	.L.str.14, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
