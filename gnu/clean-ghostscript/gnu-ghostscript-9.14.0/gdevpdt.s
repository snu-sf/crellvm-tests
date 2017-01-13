	.text
	.file	"gdevpdt.bc"
	.globl	pdf_text_data_alloc
	.align	16, 0x90
	.type	pdf_text_data_alloc,@function
pdf_text_data_alloc:                    # @pdf_text_data_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r13, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$st_pdf_text_data, %esi
	movl	$.L.str, %edx
	callq	*72(%rbx)
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	pdf_outline_fonts_alloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	pdf_bitmap_fonts_alloc
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	pdf_text_state_alloc
	movq	%rax, %r13
	testq	%r14, %r14
	je	.LBB0_4
# BB#1:                                 # %entry
	testq	%r15, %r15
	je	.LBB0_4
# BB#2:                                 # %entry
	testq	%r12, %r12
	je	.LBB0_4
# BB#3:                                 # %entry
	testq	%r13, %r13
	je	.LBB0_4
# BB#5:                                 # %if.end
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%r14, %rdi
	callq	memset
	movq	%r15, (%r14)
	movq	%r12, 8(%r14)
	movq	%r13, 16(%r14)
	jmp	.LBB0_6
.LBB0_4:                                # %if.then
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB0_6:                                # %cleanup
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	pdf_text_data_alloc, .Lfunc_end0-pdf_text_data_alloc
	.cfi_endproc

	.globl	text_data_free
	.align	16, 0x90
	.type	text_data_free,@function
text_data_free:                         # @text_data_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	(%rax), %rsi
	movl	$.L.str.1, %edx
	callq	*24(%rbx)
	movq	(%r14), %rsi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	8(%r14), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	16(%r14), %rsi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	text_data_free, .Lfunc_end1-text_data_free
	.cfi_endproc

	.type	st_pdf_text_data,@object # @st_pdf_text_data
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_text_data:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_text_data_reloc_ptrs
	.size	st_pdf_text_data, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_text_data_alloc"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Free text Outline standard fonts"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Free text Outline fonts"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Free text Bitmap fotns"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Free text state"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Free text"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdf_text_data_t"
	.size	.L.str.6, 16

	.type	pdf_text_data_reloc_ptrs,@object # @pdf_text_data_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_text_data_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_text_data_enum_ptrs
	.size	pdf_text_data_reloc_ptrs, 24

	.type	pdf_text_data_enum_ptrs,@object # @pdf_text_data_enum_ptrs
	.align	2
pdf_text_data_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	pdf_text_data_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
