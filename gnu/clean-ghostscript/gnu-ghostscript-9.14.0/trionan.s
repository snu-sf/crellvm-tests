	.text
	.file	"trionan.bc"
	.globl	trio_fpclassify_and_signbit
	.align	16, 0x90
	.type	trio_fpclassify_and_signbit,@function
trio_fpclassify_and_signbit:            # @trio_fpclassify_and_signbit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	#APP
	pmovmskb	%xmm0, %eax
	#NO_APP
	shrl	$7, %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	callq	__fpclassify
	movl	%eax, %ecx
	movl	$2, %eax
	cmpl	$3, %ecx
	ja	.LBB0_2
# BB#1:                                 # %switch.lookup.i
	movslq	%ecx, %rax
	movl	.Lswitch.table(,%rax,4), %eax
.LBB0_2:                                # %c99_fpclassify_and_signbit.exit
	popq	%rdx
	retq
.Lfunc_end0:
	.size	trio_fpclassify_and_signbit, .Lfunc_end0-trio_fpclassify_and_signbit
	.cfi_endproc

	.globl	trio_isnan
	.align	16, 0x90
	.type	trio_isnan,@function
trio_isnan:                             # @trio_isnan
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	callq	__fpclassify
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	trio_isnan, .Lfunc_end1-trio_isnan
	.cfi_endproc

	.globl	trio_isinf
	.align	16, 0x90
	.type	trio_isinf,@function
trio_isinf:                             # @trio_isinf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	__fpclassify
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	#APP
	pmovmskb	%xmm0, %eax
	#NO_APP
	shrl	$6, %eax
	notl	%eax
	andl	$2, %eax
	decl	%eax
.LBB2_2:                                # %cleanup
	popq	%rdx
	retq
.Lfunc_end2:
	.size	trio_isinf, .Lfunc_end2-trio_isinf
	.cfi_endproc

	.globl	trio_isfinite
	.align	16, 0x90
	.type	trio_isfinite,@function
trio_isfinite:                          # @trio_isfinite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp3:
	.cfi_def_cfa_offset 16
	callq	__fpclassify
	cmpl	$1, %eax
	seta	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	trio_isfinite, .Lfunc_end3-trio_isfinite
	.cfi_endproc

	.globl	trio_signbit
	.align	16, 0x90
	.type	trio_signbit,@function
trio_signbit:                           # @trio_signbit
	.cfi_startproc
# BB#0:                                 # %entry
	#APP
	pmovmskb	%xmm0, %eax
	#NO_APP
	shrl	$7, %eax
	andl	$1, %eax
	retq
.Lfunc_end4:
	.size	trio_signbit, .Lfunc_end4-trio_signbit
	.cfi_endproc

	.globl	trio_fpclassify
	.align	16, 0x90
	.type	trio_fpclassify,@function
trio_fpclassify:                        # @trio_fpclassify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 16
	callq	__fpclassify
	movl	%eax, %ecx
	movl	$2, %eax
	cmpl	$3, %ecx
	ja	.LBB5_2
# BB#1:                                 # %switch.lookup.i.i
	movslq	%ecx, %rax
	movl	.Lswitch.table(,%rax,4), %eax
.LBB5_2:                                # %trio_fpclassify_and_signbit.exit
	popq	%rdx
	retq
.Lfunc_end5:
	.size	trio_fpclassify, .Lfunc_end5-trio_fpclassify
	.cfi_endproc

	.globl	trio_nzero
	.align	16, 0x90
	.type	trio_nzero,@function
trio_nzero:                             # @trio_nzero
	.cfi_startproc
# BB#0:                                 # %entry
	movb	$-128, -1(%rsp)
	movb	$0, -2(%rsp)
	movb	$0, -3(%rsp)
	movb	$0, -4(%rsp)
	movb	$0, -5(%rsp)
	movb	$0, -6(%rsp)
	movb	$0, -7(%rsp)
	movb	$0, -8(%rsp)
	movsd	-8(%rsp), %xmm0         # xmm0 = mem[0],zero
	retq
.Lfunc_end6:
	.size	trio_nzero, .Lfunc_end6-trio_nzero
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	9218868437227405312     # double +Inf
	.text
	.globl	trio_pinf
	.align	16, 0x90
	.type	trio_pinf,@function
trio_pinf:                              # @trio_pinf
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB7_2
	jp	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB7_2:                                # %if.end
	retq
.Lfunc_end7:
	.size	trio_pinf, .Lfunc_end7-trio_pinf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	9218868437227405312     # double +Inf
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	trio_ninf
	.align	16, 0x90
	.type	trio_ninf,@function
trio_ninf:                              # @trio_ninf
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	trio_ninf.ninf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_4
	jp	.LBB8_4
# BB#1:                                 # %if.then
	movsd	trio_pinf.pinf_value(%rip), %xmm0 # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_3
	jp	.LBB8_3
# BB#2:                                 # %if.then.i
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, trio_pinf.pinf_value(%rip)
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB8_3:                                # %trio_pinf.exit
	xorpd	.LCPI8_1(%rip), %xmm0
	movlpd	%xmm0, trio_ninf.ninf_value(%rip)
.LBB8_4:                                # %if.end
	retq
.Lfunc_end8:
	.size	trio_ninf, .Lfunc_end8-trio_ninf
	.cfi_endproc

	.globl	trio_nan
	.align	16, 0x90
	.type	trio_nan,@function
trio_nan:                               # @trio_nan
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 16
	movsd	trio_nan.nan_value(%rip), %xmm0 # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB9_2
	jp	.LBB9_2
# BB#1:                                 # %if.then
	movl	$.L.str, %edi
	callq	nan
	movsd	%xmm0, trio_nan.nan_value(%rip)
.LBB9_2:                                # %if.end
	popq	%rax
	retq
.Lfunc_end9:
	.size	trio_nan, .Lfunc_end9-trio_nan
	.cfi_endproc

	.type	trio_pinf.pinf_value,@object # @trio_pinf.pinf_value
	.local	trio_pinf.pinf_value
	.comm	trio_pinf.pinf_value,8,8
	.type	trio_ninf.ninf_value,@object # @trio_ninf.ninf_value
	.local	trio_ninf.ninf_value
	.comm	trio_ninf.ninf_value,8,8
	.type	trio_nan.nan_value,@object # @trio_nan.nan_value
	.local	trio_nan.nan_value
	.comm	trio_nan.nan_value,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.Lswitch.table:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	3                       # 0x3
	.size	.Lswitch.table, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
