	.text
	.file	"zfcid.bc"
	.globl	cid_font_system_info_param
	.align	16, 0x90
	.type	cid_font_system_info_param,@function
cid_font_system_info_param:             # @cid_font_system_info_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	jle	.LBB0_2
# BB#1:                                 # %if.end
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cid_system_info_param
.LBB0_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	cid_font_system_info_param, .Lfunc_end0-cid_font_system_info_param
	.cfi_endproc

	.globl	cid_font_data_param
	.align	16, 0x90
	.type	cid_font_data_param,@function
cid_font_data_param:                    # @cid_font_data_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 80
.Ltmp8:
	.cfi_offset %rbx, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB1_1
# BB#2:                                 # %if.end
	leaq	(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_3
# BB#4:                                 # %cid_font_system_info_param.exit
	movq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	cid_system_info_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_15
# BB#5:                                 # %lor.lhs.false
	leaq	40(%r14), %r9
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_15
# BB#6:                                 # %if.end.9
	movl	40(%r14), %eax
	incl	%eax
	movl	%eax, 44(%r14)
	leaq	32(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_7
# BB#8:                                 # %if.end.18
	movq	32(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	je	.LBB1_10
# BB#9:                                 # %lor.lhs.false.25
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %ebp
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_15
.LBB1_10:                               # %if.then.31
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
	leaq	48(%r14), %r9
	movl	$.L.str.3, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	movq	32(%rsp), %rdi
	callq	dict_first
	testl	%eax, %eax
	js	.LBB1_15
# BB#11:                                # %while.body.lr.ph
	movq	32(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	%eax, %esi
	callq	dict_next
	testl	%eax, %eax
	js	.LBB1_15
# BB#12:
	leaq	(%rsp), %rbx
	.align	16, 0x90
.LBB1_13:                               # %if.then.40
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rcx
	movslq	44(%r14), %rdx
	cmpq	%rdx, %rcx
	jle	.LBB1_14
# BB#16:                                # %if.then.46
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	%ecx, 44(%r14)
.LBB1_14:                               # %while.body.backedge
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	32(%rsp), %rdi
	movl	%eax, %esi
	movq	%rbx, %rdx
	callq	dict_next
	testl	%eax, %eax
	jns	.LBB1_13
	jmp	.LBB1_15
.LBB1_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB1_15
.LBB1_3:                                # %cid_font_system_info_param.exit.thread
	movl	$-15, %ebp
	jmp	.LBB1_15
.LBB1_7:                                # %if.then.14
	movw	$3584, (%r15)           # imm = 0xE00
	addq	$48, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %r9
	callq	dict_int_param
	movl	%eax, %ebp
.LBB1_15:                               # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cid_font_data_param, .Lfunc_end1-cid_font_data_param
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CIDSystemInfo"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"CIDCount"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GlyphDirectory"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GDBytes"
	.size	.L.str.3, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
