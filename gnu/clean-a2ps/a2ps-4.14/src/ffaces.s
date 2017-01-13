	.text
	.file	"ffaces.bc"
	.globl	fflag_self_print
	.align	16, 0x90
	.type	fflag_self_print,@function
fflag_self_print:                       # @fflag_self_print
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
	movl	$40, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	cmpl	$0, -4(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB0_12
.LBB0_2:                                # %if.else
	movl	$0, -20(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$fflag_and_name, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$fflag_and_name, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	-4(%rbp), %edx
	cmpl	$0, %edx
	je	.LBB0_9
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.10
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -24(%rbp)
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$fflag_and_name, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB0_9:                                # %if.end.14
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_11:                               # %for.end
	jmp	.LBB0_12
.LBB0_12:                               # %if.end.15
	movl	$41, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fflag_self_print, .Lfunc_end0-fflag_self_print
	.cfi_endproc

	.globl	fface_self_print
	.align	16, 0x90
	.type	fface_self_print,@function
fface_self_print:                       # @fface_self_print
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB1_8
# BB#1:                                 # %if.then
	movl	$40, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	face_self_print
	movl	$0, -20(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$fflag_and_name, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	je	.LBB1_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$fflag_and_name, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	andl	-4(%rbp), %edx
	cmpl	$0, %edx
	je	.LBB1_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB1_2 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movabsq	$fflag_and_name, %rsi
	movslq	-20(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fputs
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	jmp	.LBB1_6
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_2
.LBB1_7:                                # %for.end
	movl	$41, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	face_self_print
.LBB1_9:                                # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fface_self_print, .Lfunc_end1-fface_self_print
	.cfi_endproc

	.type	String_fface,@object    # @String_fface
	.data
	.globl	String_fface
	.align	4
String_fface:
	.long	5                       # 0x5
	.long	0                       # 0x0
	.size	String_fface, 8

	.type	Plain_fface,@object     # @Plain_fface
	.bss
	.globl	Plain_fface
	.align	4
Plain_fface:
	.zero	8
	.size	Plain_fface, 8

	.type	Symbol_fface,@object    # @Symbol_fface
	.data
	.globl	Symbol_fface
	.align	4
Symbol_fface:
	.long	6                       # 0x6
	.long	0                       # 0x0
	.size	Symbol_fface, 8

	.type	No_fface,@object        # @No_fface
	.globl	No_fface
	.align	4
No_fface:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.size	No_fface, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No_fflag"
	.size	.L.str, 9

	.type	fflag_and_name,@object  # @fflag_and_name
	.section	.rodata,"a",@progbits
	.align	16
fflag_and_name:
	.quad	.L.str.2
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.3
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.4
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.6
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.7
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.8
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.9
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.10
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.11
	.long	512                     # 0x200
	.zero	4
	.zero	16
	.size	fflag_and_name, 176

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	" + "
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Invisible"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Tag1"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Tag2"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Tag3"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Tag4"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Index1"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Index2"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Index3"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Index4"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Encoding"
	.size	.L.str.11, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
