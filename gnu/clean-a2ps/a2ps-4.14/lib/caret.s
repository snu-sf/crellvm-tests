	.text
	.file	"caret.bc"
	.globl	unprintable_format_to_string
	.align	16, 0x90
	.type	unprintable_format_to_string,@function
unprintable_format_to_string:           # @unprintable_format_to_string
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$5, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB0_7
# BB#9:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_2:                                # %sw.bb.1
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %sw.bb.3
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_4:                                # %sw.bb.5
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_5:                                # %sw.bb.7
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_6:                                # %sw.bb.9
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %sw.epilog
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.6, %rdx
	movb	$0, %al
	callq	error
	movq	$0, -8(%rbp)
.LBB0_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	unprintable_format_to_string, .Lfunc_end0-unprintable_format_to_string
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_1
	.quad	.LBB0_6
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_5

	.text
	.globl	escape_unprintable
	.align	16, 0x90
	.type	escape_unprintable,@function
escape_unprintable:                     # @escape_unprintable
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rdx
	movl	304(%rdx), %esi
	movl	%esi, %edx
	movq	%rdx, %rdi
	subq	$5, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	ja	.LBB1_37
# BB#39:                                # %entry
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:                                # %sw.bb
	movabsq	$.L.str.7, %rsi
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	$4, -4(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB1_38
.LBB1_2:                                # %sw.bb.1
	movabsq	$.L.str.8, %rsi
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	$4, -4(%rbp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB1_38
.LBB1_3:                                # %sw.bb.3
	jmp	.LBB1_4
.LBB1_4:                                # %do.body
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rdi
	movb	$63, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#5:                                 # %do.end
	movl	$1, -4(%rbp)
	jmp	.LBB1_38
.LBB1_6:                                # %sw.bb.8
	jmp	.LBB1_7
.LBB1_7:                                # %do.body.9
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rdi
	movb	$32, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#8:                                 # %do.end.18
	movl	$1, -4(%rbp)
	jmp	.LBB1_38
.LBB1_9:                                # %sw.bb.19
	movl	$127, %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_11
# BB#10:                                # %if.then
	movabsq	$.L.str.9, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -36(%rbp)
	movl	-20(%rbp), %ecx
	andl	$127, %ecx
	movl	%ecx, -20(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB1_11:                               # %if.end
	cmpl	$32, -20(%rbp)
	jge	.LBB1_17
# BB#12:                                # %if.then.24
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.25
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rdi
	movb	$94, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#14:                                # %do.end.34
	jmp	.LBB1_15
.LBB1_15:                               # %do.body.35
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#16:                                # %do.end.45
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_23
.LBB1_17:                               # %if.else
	cmpl	$127, -20(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.49
	movabsq	$.L.str.10, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -36(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_22
.LBB1_19:                               # %if.else.52
	jmp	.LBB1_20
.LBB1_20:                               # %do.body.53
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movslq	-56(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-56(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#21:                                # %do.end.63
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB1_22:                               # %if.end.64
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.65
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_38
.LBB1_24:                               # %sw.bb.66
	movl	$127, %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_26
# BB#25:                                # %if.then.69
	movabsq	$.L.str.9, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -36(%rbp)
	movl	-20(%rbp), %ecx
	andl	$127, %ecx
	movl	%ecx, -20(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB1_26:                               # %if.end.73
	cmpl	$32, -20(%rbp)
	jge	.LBB1_30
# BB#27:                                # %if.then.76
	movabsq	$.L.str.11, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#28:                                # %do.body.78
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#29:                                # %do.end.88
	movl	-36(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_36
.LBB1_30:                               # %if.else.90
	cmpl	$127, -20(%rbp)
	jne	.LBB1_32
# BB#31:                                # %if.then.93
	movabsq	$.L.str.12, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -36(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_35
.LBB1_32:                               # %if.else.96
	jmp	.LBB1_33
.LBB1_33:                               # %do.body.97
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#34:                                # %do.end.107
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB1_35:                               # %if.end.109
	jmp	.LBB1_36
.LBB1_36:                               # %if.end.110
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_38
.LBB1_37:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB1_38:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	escape_unprintable, .Lfunc_end1-escape_unprintable
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_9
	.quad	.LBB1_6
	.quad	.LBB1_3
	.quad	.LBB1_1
	.quad	.LBB1_2
	.quad	.LBB1_24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"space (i.e., ` ')"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"octal (i.e., `\\001' etc.)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"hexadecimal (i.e., `\\x0a' etc.)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"caret (i.e., `^C', `M-^C' etc.)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"emacs (i.e., `C-c', `M-C-c' etc.)"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"question-mark (i.e., `?')"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"switch of unprintable_format_to_string"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\\\\%03o"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\\\\x%02x"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"M-"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"^?"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"C-"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"C-?"
	.size	.L.str.12, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
