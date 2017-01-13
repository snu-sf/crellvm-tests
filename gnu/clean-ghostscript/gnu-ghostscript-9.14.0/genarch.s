	.text
	.file	"genarch.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$1032, %rsp             # imm = 0x408
.Ltmp4:
	.cfi_def_cfa_offset 1072
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	movl	%ebp, %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %r15
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	fopen64
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_3
# BB#4:                                 # %if.end.9
	cmpl	$3, %ebp
	jne	.LBB0_12
# BB#5:                                 # %if.then.11
	movq	16(%rbx), %rbx
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	fopen64
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_14
# BB#6:                                 # %while.cond.preheader.i
	movq	%rbp, %rdi
	callq	feof
	testl	%eax, %eax
	jne	.LBB0_11
# BB#7:
	leaq	(%rsp), %rbx
	.align	16, 0x90
.LBB0_8:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	callq	fread
	testq	%rax, %rax
	je	.LBB0_10
# BB#9:                                 # %if.then.6.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	fwrite
.LBB0_10:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%rbp, %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB0_8
.LBB0_11:                               # %while.end.i
	movq	%rbp, %rdi
	callq	fclose
	movq	%r14, %rdi
	callq	fclose
	xorl	%ebp, %ebp
	jmp	.LBB0_13
.LBB0_1:                                # %if.then
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %ebp
	jmp	.LBB0_13
.LBB0_3:                                # %if.then.7
	movq	stderr(%rip), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	fprintf
	movl	$1, %ebp
	jmp	.LBB0_13
.LBB0_12:                               # %if.end.14
	xorl	%ebp, %ebp
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.44, %esi
	movl	$.L.str.5, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.6, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.7, %edx
	movl	$4, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.8, %edx
	movl	$8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.9, %edx
	movl	$8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.10, %edx
	movl	$4, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.11, %edx
	movl	$8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.44, %esi
	movl	$.L.str.12, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.15, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.16, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.17, %edx
	movl	$3, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.18, %edx
	movl	$8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.19, %edx
	movl	$8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.20, %edx
	movl	$4, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.21, %edx
	movl	$8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.22, %edx
	movl	$24, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.23, %edx
	movl	$53, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.44, %esi
	movl	$.L.str.24, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.46, %esi
	movl	$.L.str.25, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.26, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.28, %esi
	movl	$.L.str.29, %edx
	movl	$.L.str.27, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.46, %esi
	movl	$.L.str.30, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.26, %esi
	movl	$.L.str.31, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.28, %esi
	movl	$.L.str.29, %edx
	movl	$.L.str.31, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.46, %esi
	movl	$.L.str.32, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.46, %esi
	movl	$.L.str.34, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.44, %esi
	movl	$.L.str.36, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.37, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.38, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.39, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.40, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.45, %esi
	movl	$.L.str.41, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movq	%r14, %rdi
	callq	fclose
	jmp	.LBB0_13
.LBB0_14:                               # %if.then.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.43, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	fprintf
	movq	%r14, %rdi
	callq	fclose
	movl	$1, %ebp
.LBB0_13:                               # %cleanup
	movl	%ebp, %eax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"genarch: Invalid invocation\ngenarch <output-file> [ <existing-config-file> ]\n"
	.size	.L.str, 78

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"genarch.c: can't open %s for writing\n"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/* Parameters derived from machine and compiler architecture. */\n"
	.size	.L.str.3, 66

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/* This file is generated mechanically by genarch.c. */\n"
	.size	.L.str.4, 57

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Scalar alignments"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ARCH_ALIGN_SHORT_MOD"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ARCH_ALIGN_INT_MOD"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ARCH_ALIGN_LONG_MOD"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ARCH_ALIGN_PTR_MOD"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ARCH_ALIGN_FLOAT_MOD"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ARCH_ALIGN_DOUBLE_MOD"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Scalar sizes"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ARCH_LOG2_SIZEOF_CHAR"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ARCH_LOG2_SIZEOF_SHORT"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ARCH_LOG2_SIZEOF_INT"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ARCH_LOG2_SIZEOF_LONG"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ARCH_LOG2_SIZEOF_LONG_LONG"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ARCH_SIZEOF_GX_COLOR_INDEX"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ARCH_SIZEOF_PTR"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ARCH_SIZEOF_FLOAT"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ARCH_SIZEOF_DOUBLE"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ARCH_FLOAT_MANTISSA_BITS"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"ARCH_DOUBLE_MANTISSA_BITS"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Unsigned max values"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ARCH_MAX_UCHAR"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"((%s)0x"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"unsigned char"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s + (%s)0)\n"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.zero	1
	.size	.L.str.29, 1

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ARCH_MAX_USHORT"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unsigned short"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"ARCH_MAX_UINT"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"((unsigned int)~0 + (unsigned int)0)\n"
	.size	.L.str.33, 38

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"ARCH_MAX_ULONG"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"((unsigned long)~0L + (unsigned long)0)\n"
	.size	.L.str.35, 41

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Miscellaneous"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"ARCH_IS_BIG_ENDIAN"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ARCH_PTRS_ARE_SIGNED"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ARCH_FLOATS_ARE_IEEE"
	.size	.L.str.39, 21

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"ARCH_ARITH_RSHIFT"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"ARCH_DIV_NEG_POS_TRUNCATES"
	.size	.L.str.41, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"r"
	.size	.L.str.42, 2

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"genarch.c: can't open %s for reading\n"
	.size	.L.str.43, 38

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\n\t /* ---------------- %s ---------------- */\n\n"
	.size	.L.str.44, 48

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"#define %s %d\n"
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"#define %s "
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"ff"
	.size	.L.str.47, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
