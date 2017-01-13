	.text
	.file	"zfjbig2.bc"
	.align	16, 0x90
	.type	z_jbig2makeglobalctx,@function
z_jbig2makeglobalctx:                   # @z_jbig2makeglobalctx
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
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	$0, (%rsp)
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$9, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*120(%rdi)
	movl	%eax, %ebp
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	%ebp, %esi
	callq	s_jbig2decode_make_global_data
	movl	%eax, %r15d
	movq	8(%r14), %rdi
	testl	%ebp, %ebp
	jle	.LBB0_5
# BB#3:                                 # %if.end
	movq	(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB0_5
# BB#4:                                 # %if.then.12
	movl	$.L.str.3, %esi
	movl	$108, %edx
	callq	dmprintf_file_and_line
	movq	8(%r14), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-1, %eax
	jmp	.LBB0_7
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB0_7
.LBB0_5:                                # %if.end.18
	movl	$st_jbig2_global_data_t, %esi
	movl	$.L.str.5, %edx
	callq	*72(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_7
# BB#6:                                 # %if.end.28
	movq	(%rsp), %rax
	movq	%rax, (%rcx)
	movq	%rcx, 8(%rbx)
	movl	56(%r14), %eax
	orl	$96, %eax
	addl	$2304, %eax             # imm = 0x900
	movw	%ax, (%rbx)
	movl	%r15d, %eax
.LBB0_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	z_jbig2makeglobalctx, .Lfunc_end0-z_jbig2makeglobalctx
	.cfi_endproc

	.align	16, 0x90
	.type	z_jbig2decode,@function
z_jbig2decode:                          # @z_jbig2decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
	subq	$176, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 208
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	$0, 168(%rsp)
	xorl	%r15d, %r15d
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	s_jbig2decode_set_global_data
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB1_4
# BB#1:                                 # %do.body
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB1_7
# BB#2:                                 # %do.end
	leaq	168(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_4
# BB#3:                                 # %if.then.9
	movq	168(%rsp), %rax
	movq	8(%rax), %rsi
	leaq	8(%rsp), %rdi
	callq	s_jbig2decode_set_global_data
.LBB1_4:                                # %if.end.13
	movq	168(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_6
# BB#5:                                 # %cond.true
	movzwl	(%rax), %r15d
	andl	$12, %r15d
.LBB1_6:                                # %cond.end
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_jbig2decode_template, %edx
	movq	%r14, %rdi
	movl	%r15d, %r8d
	callq	filter_read
.LBB1_7:                                # %cleanup
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	z_jbig2decode, .Lfunc_end1-z_jbig2decode
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_global_data_finalize,@function
jbig2_global_data_finalize:             # @jbig2_global_data_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_2
# BB#1:                                 # %if.then
	callq	s_jbig2decode_free_global_data
.LBB2_2:                                # %if.end
	movq	$0, (%rbx)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	jbig2_global_data_finalize, .Lfunc_end2-jbig2_global_data_finalize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.jbig2makeglobalctx"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filterdict"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2JBIG2Decode"
	.size	.L.str.2, 13

	.type	zfjbig2_op_defs,@object # @zfjbig2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfjbig2_op_defs
	.align	16
zfjbig2_op_defs:
	.quad	.L.str
	.quad	z_jbig2makeglobalctx
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.2
	.quad	z_jbig2decode
	.zero	16
	.size	zfjbig2_op_defs, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"./psi/zfjbig2.c"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"failed to create parsed JBIG2GLOBALS object."
	.size	.L.str.4, 45

	.type	st_jbig2_global_data_t,@object # @st_jbig2_global_data_t
	.section	.rodata,"a",@progbits
	.align	8
st_jbig2_global_data_t:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	jbig2_global_data_finalize
	.quad	0
	.size	st_jbig2_global_data_t, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"jbig2decode parsed global context"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"jbig2globaldata"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".jbig2globalctx"
	.size	.L.str.7, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
