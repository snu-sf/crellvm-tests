	.text
	.file	"zfbcp.bc"
	.align	16, 0x90
	.type	zBCPE,@function
zBCPE:                                  # @zBCPE
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$s_BCPE_template, %esi
	jmp	filter_write_simple     # TAILCALL
.Lfunc_end0:
	.size	zBCPE, .Lfunc_end0-zBCPE
	.cfi_endproc

	.align	16, 0x90
	.type	zBCPD,@function
zBCPD:                                  # @zBCPD
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$152, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 160
	movl	$no_bcp_request_status, %eax
	movd	%rax, %xmm0
	movl	$no_bcp_signal_interrupt, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 112(%rsp)
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_BCPD_template, %edx
	xorl	%r8d, %r8d
	callq	filter_read
	addq	$152, %rsp
	retq
.Lfunc_end1:
	.size	zBCPD, .Lfunc_end1-zBCPD
	.cfi_endproc

	.align	16, 0x90
	.type	zTBCPE,@function
zTBCPE:                                 # @zTBCPE
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$s_TBCPE_template, %esi
	jmp	filter_write_simple     # TAILCALL
.Lfunc_end2:
	.size	zTBCPE, .Lfunc_end2-zTBCPE
	.cfi_endproc

	.align	16, 0x90
	.type	zTBCPD,@function
zTBCPD:                                 # @zTBCPD
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$152, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 160
	movl	$no_bcp_request_status, %eax
	movd	%rax, %xmm0
	movl	$no_bcp_signal_interrupt, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 112(%rsp)
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_TBCPD_template, %edx
	xorl	%r8d, %r8d
	callq	filter_read
	addq	$152, %rsp
	retq
.Lfunc_end3:
	.size	zTBCPD, .Lfunc_end3-zTBCPD
	.cfi_endproc

	.align	16, 0x90
	.type	no_bcp_signal_interrupt,@function
no_bcp_signal_interrupt:                # @no_bcp_signal_interrupt
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	no_bcp_signal_interrupt, .Lfunc_end4-no_bcp_signal_interrupt
	.cfi_endproc

	.align	16, 0x90
	.type	no_bcp_request_status,@function
no_bcp_request_status:                  # @no_bcp_request_status
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	no_bcp_request_status, .Lfunc_end5-no_bcp_request_status
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1BCPEncode"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1BCPDecode"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1TBCPEncode"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1TBCPDecode"
	.size	.L.str.4, 12

	.type	zfbcp_op_defs,@object   # @zfbcp_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfbcp_op_defs
	.align	16
zfbcp_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zBCPE
	.quad	.L.str.2
	.quad	zBCPD
	.quad	.L.str.3
	.quad	zTBCPE
	.quad	.L.str.4
	.quad	zTBCPD
	.zero	16
	.size	zfbcp_op_defs, 96


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
