	.text
	.file	"zfzlib.bc"
	.align	16, 0x90
	.type	zzlibE,@function
zzlibE:                                 # @zzlibE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 176
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	8(%rsp), %rdi
	callq	*s_zlibE_template+40(%rip)
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_2
# BB#1:                                 # %filter_zlib.exit
	leaq	124(%rsp), %r9
	movl	$.L.str.5, %esi
	movl	$-1, %edx
	movl	$9, %ecx
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB0_3
.LBB0_2:                                # %if.end
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_zlibE_template, %edx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	filter_write
.LBB0_3:                                # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zzlibE, .Lfunc_end0-zzlibE
	.cfi_endproc

	.align	16, 0x90
	.type	zzlibD,@function
zzlibD:                                 # @zzlibD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 176
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %r14
	movq	%r14, %rdi
	callq	*s_zlibD_template+40(%rip)
	xorl	%esi, %esi
	movl	$s_zlibD_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	filter_read
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zzlibD, .Lfunc_end1-zzlibD
	.cfi_endproc

	.align	16, 0x90
	.type	zFlateE,@function
zFlateE:                                # @zFlateE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 176
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	8(%rsp), %rdi
	callq	*s_zlibE_template+40(%rip)
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB2_2
# BB#1:                                 # %filter_zlib.exit
	leaq	124(%rsp), %r9
	movl	$.L.str.5, %esi
	movl	$-1, %edx
	movl	$9, %ecx
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB2_3
.LBB2_2:                                # %if.end
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_zlibE_template, %edx
	movq	%r14, %rdi
	callq	filter_write_predictor
.LBB2_3:                                # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	zFlateE, .Lfunc_end2-zFlateE
	.cfi_endproc

	.align	16, 0x90
	.type	zFlateD,@function
zFlateD:                                # @zFlateD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 176
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %r14
	movq	%r14, %rdi
	callq	*s_zlibD_template+40(%rip)
	xorl	%esi, %esi
	movl	$s_zlibD_template, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	filter_read_predictor
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zFlateD, .Lfunc_end3-zFlateD
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1zlibEncode"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1zlibDecode"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1FlateEncode"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1FlateDecode"
	.size	.L.str.4, 13

	.type	zfzlib_op_defs,@object  # @zfzlib_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfzlib_op_defs
	.align	16
zfzlib_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zzlibE
	.quad	.L.str.2
	.quad	zzlibD
	.quad	.L.str.3
	.quad	zFlateE
	.quad	.L.str.4
	.quad	zFlateD
	.zero	16
	.size	zfzlib_op_defs, 96

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Effort"
	.size	.L.str.5, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
