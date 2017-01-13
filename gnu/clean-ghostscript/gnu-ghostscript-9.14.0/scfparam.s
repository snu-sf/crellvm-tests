	.text
	.file	"scfparam.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1728                    # 0x6c0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.globl	s_CF_get_params
	.align	16, 0x90
	.type	s_CF_get_params,@function
s_CF_get_params:                        # @s_CF_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 208
	movl	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.else
	leaq	8(%rsp), %rdx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 128(%rsp)
	movaps	.LCPI0_0(%rip), %xmm1   # xmm1 = [1728,0,1,0]
	movups	%xmm1, 144(%rsp)
	movl	$0, 160(%rsp)
	movl	$0, 116(%rsp)
	movl	$1, 164(%rsp)
	movups	%xmm0, 176(%rsp)
	movb	$0, 36(%rsp)
.LBB0_2:                                # %if.end
	movl	$s_CF_param_items, %ecx
	callq	gs_param_write_items
	addq	$200, %rsp
	retq
.Lfunc_end0:
	.size	s_CF_get_params, .Lfunc_end0-s_CF_get_params
	.cfi_endproc

	.globl	s_CF_put_params
	.align	16, 0x90
	.type	s_CF_put_params,@function
s_CF_put_params:                        # @s_CF_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 32
	subq	$192, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 224
.Ltmp5:
	.cfi_offset %rbx, -32
.Ltmp6:
	.cfi_offset %r14, -24
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	leaq	(%rsp), %rbx
	movl	$192, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$s_CF_param_items, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gs_param_read_items
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_7
# BB#1:                                 # %land.lhs.true
	movl	$1000000, %ecx          # imm = 0xF4240
	addl	124(%rsp), %ecx
	movl	$-15, %eax
	cmpl	$2000000, %ecx          # imm = 0x1E8480
	ja	.LBB1_8
# BB#2:                                 # %lor.lhs.false.4
	movq	136(%rsp), %rcx
	cmpl	$54613333, %ecx         # imm = 0x3415555
	ja	.LBB1_8
# BB#3:                                 # %lor.lhs.false.9
	shrq	$32, %rcx
	cmpl	$1000000, %ecx          # imm = 0xF4240
	ja	.LBB1_8
# BB#4:                                 # %lor.lhs.false.14
	movq	152(%rsp), %rcx
	cmpl	$1000000, %ecx          # imm = 0xF4240
	ja	.LBB1_8
# BB#5:                                 # %lor.lhs.false.19
	shrq	$32, %rcx
	leal	-1(%rcx), %edx
	orl	$-16, %ecx
	testl	%ecx, %edx
	jne	.LBB1_8
# BB#6:                                 # %if.then.29
	leaq	(%rsp), %rsi
	movl	$192, %edx
	movq	%r14, %rdi
	callq	memcpy
.LBB1_7:                                # %if.end.30
	movl	%ebp, %eax
.LBB1_8:                                # %if.end.30
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_CF_put_params, .Lfunc_end1-s_CF_put_params
	.cfi_endproc

	.type	s_CF_param_items,@object # @s_CF_param_items
	.section	.rodata,"a",@progbits
	.align	16
s_CF_param_items:
	.quad	.L.str
	.byte	1                       # 0x1
	.zero	1
	.short	120                     # 0x78
	.zero	4
	.quad	.L.str.1
	.byte	2                       # 0x2
	.zero	1
	.short	124                     # 0x7c
	.zero	4
	.quad	.L.str.2
	.byte	1                       # 0x1
	.zero	1
	.short	128                     # 0x80
	.zero	4
	.quad	.L.str.3
	.byte	1                       # 0x1
	.zero	1
	.short	132                     # 0x84
	.zero	4
	.quad	.L.str.4
	.byte	2                       # 0x2
	.zero	1
	.short	136                     # 0x88
	.zero	4
	.quad	.L.str.5
	.byte	2                       # 0x2
	.zero	1
	.short	140                     # 0x8c
	.zero	4
	.quad	.L.str.6
	.byte	1                       # 0x1
	.zero	1
	.short	144                     # 0x90
	.zero	4
	.quad	.L.str.7
	.byte	1                       # 0x1
	.zero	1
	.short	148                     # 0x94
	.zero	4
	.quad	.L.str.8
	.byte	2                       # 0x2
	.zero	1
	.short	152                     # 0x98
	.zero	4
	.quad	.L.str.9
	.byte	1                       # 0x1
	.zero	1
	.short	108                     # 0x6c
	.zero	4
	.quad	.L.str.10
	.byte	2                       # 0x2
	.zero	1
	.short	156                     # 0x9c
	.zero	4
	.zero	16
	.size	s_CF_param_items, 192

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Uncompressed"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"K"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"EndOfLine"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"EncodedByteAlign"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Columns"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Rows"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"EndOfBlock"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"BlackIs1"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DamagedRowsBeforeError"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"FirstBitLowOrder"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"DecodedByteAlign"
	.size	.L.str.10, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
