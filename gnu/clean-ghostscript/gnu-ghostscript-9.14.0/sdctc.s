	.text
	.file	"sdctc.bc"
	.align	16, 0x90
	.type	stream_dct_finalize,@function
stream_dct_finalize:                    # @stream_dct_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	(%r14), %rax
	movq	16(%rax), %rbx
	movq	%r14, %rdi
	callq	gs_jpeg_destroy
	cmpq	s_DCTE_template+16(%rip), %rbx
	je	.LBB0_1
# BB#3:                                 # %if.else
	movq	152(%r14), %rsi
	cmpq	$0, 1416(%rsi)
	je	.LBB0_5
# BB#4:                                 # %if.then.12
	movq	432(%rsi), %rdi
	callq	*32(%rdi)
	movq	24(%rax), %rbx
	movq	152(%r14), %rax
	movq	432(%rax), %rdi
	callq	*32(%rdi)
	movq	152(%r14), %rcx
	movq	1416(%rcx), %rsi
	movl	$.L.str.2, %edx
	movq	%rax, %rdi
	callq	*%rbx
	movq	152(%r14), %rsi
.LBB0_5:                                # %if.end.35
	movq	432(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movl	$s_DCTD_template, %eax
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	movq	152(%r14), %rsi
	movl	$s_DCTE_template, %eax
	testq	%rsi, %rsi
	je	.LBB0_6
# BB#2:                                 # %if.then.1
	movq	432(%rsi), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	movl	$s_DCTE_template, %eax
.LBB0_6:                                # %if.end.47
	movq	%rax, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	stream_dct_finalize, .Lfunc_end0-stream_dct_finalize
	.cfi_endproc

	.globl	s_DCT_set_defaults
	.align	16, 0x90
	.type	s_DCT_set_defaults,@function
s_DCT_set_defaults:                     # @s_DCT_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	200(%rax), %rax
	movq	%rax, 144(%rdi)
	movq	$0, 152(%rdi)
	movl	$-1, 132(%rdi)
	movl	$1065353216, 128(%rdi)  # imm = 0x3F800000
	movq	$0, 112(%rdi)
	movl	$0, 120(%rdi)
	retq
.Lfunc_end1:
	.size	s_DCT_set_defaults, .Lfunc_end1-s_DCT_set_defaults
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DCTEncode/Decode state"
	.size	.L.str, 23

	.type	dct_reloc_ptrs,@object  # @dct_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
dct_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	dct_enum_ptrs
	.size	dct_reloc_ptrs, 24

	.type	st_DCT_state,@object    # @st_DCT_state
	.globl	st_DCT_state
	.align	8
st_DCT_state:
	.long	192                     # 0xc0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	stream_dct_finalize
	.quad	dct_reloc_ptrs
	.size	st_DCT_state, 64

	.type	dct_enum_ptrs,@object   # @dct_enum_ptrs
	.align	2
dct_enum_ptrs:
	.short	2                       # 0x2
	.short	112                     # 0x70
	.short	0                       # 0x0
	.short	152                     # 0x98
	.size	dct_enum_ptrs, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"s_DCTE_release"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"s_DCTD_release(scanline_buffer)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"s_DCTD_release"
	.size	.L.str.3, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
