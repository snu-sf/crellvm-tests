	.text
	.file	"zfont32.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.text
	.align	16, 0x90
	.type	zbuildfont32,@function
zbuildfont32:                           # @zbuildfont32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 80
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%r14), %rdi
	leaq	24(%rsp), %rsi
	xorl	%edx, %edx
	movl	$.L.str.2, %ecx
	callq	build_proc_name_refs
	testl	%eax, %eax
	js	.LBB0_5
# BB#3:                                 # %if.end.6
	movl	$1, (%rsp)
	leaq	16(%rsp), %rdx
	leaq	24(%rsp), %r9
	movl	$32, %ecx
	movl	$st_gs_font_base, %r8d
	movq	%rbx, %rsi
	movq	%r14, %rdi
	callq	build_gs_simple_font
	testl	%eax, %eax
	js	.LBB0_5
# BB#4:                                 # %if.end.11
	movq	16(%rsp), %rax
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,2,2,2]
	movups	%xmm0, 132(%rax)
	movq	$zfont_no_encode_char, 200(%rax)
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	define_gs_font
	jmp	.LBB0_5
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_5:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zbuildfont32, .Lfunc_end0-zbuildfont32
	.cfi_endproc

	.align	16, 0x90
	.type	zgetshowoperator,@function
zgetshowoperator:                       # @zgetshowoperator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	callq	op_show_find
	leaq	16(%r14), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB1_6
.LBB1_2:                                # %if.else
	movq	%rcx, 624(%rbx)
	testq	%rax, %rax
	je	.LBB1_3
# BB#4:                                 # %if.else.10
	movq	184(%rax), %rax
	movq	%rax, 24(%r14)
	movw	$3968, 16(%r14)         # imm = 0xF80
	movl	$0, 20(%r14)
	jmp	.LBB1_5
.LBB1_3:                                # %if.then.9
	movw	$3584, (%rcx)           # imm = 0xE00
.LBB1_5:                                # %cleanup
	xorl	%eax, %eax
.LBB1_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zgetshowoperator, .Lfunc_end1-zgetshowoperator
	.cfi_endproc

	.align	16, 0x90
	.type	zfont_no_encode_char,@function
zfont_no_encode_char:                   # @zfont_no_encode_char
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	retq
.Lfunc_end2:
	.size	zfont_no_encode_char, .Lfunc_end2-zfont_no_encode_char
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2.buildfont32"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.getshowoperator"
	.size	.L.str.1, 18

	.type	zfont32_op_defs,@object # @zfont32_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfont32_op_defs
	.align	16
zfont32_op_defs:
	.quad	.L.str
	.quad	zbuildfont32
	.quad	.L.str.1
	.quad	zgetshowoperator
	.zero	16
	.size	zfont32_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%Type32BuildGlyph"
	.size	.L.str.2, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
