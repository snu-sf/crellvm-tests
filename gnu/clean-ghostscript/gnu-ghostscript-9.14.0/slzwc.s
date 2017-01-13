	.text
	.file	"slzwc.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.text
	.globl	s_LZW_set_defaults
	.align	16, 0x90
	.type	s_LZW_set_defaults,@function
s_LZW_set_defaults:                     # @s_LZW_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [8,0,0,1]
	movups	%xmm0, 108(%rdi)
	movq	$0, 136(%rdi)
	retq
.Lfunc_end0:
	.size	s_LZW_set_defaults, .Lfunc_end0-s_LZW_set_defaults
	.cfi_endproc

	.globl	s_LZW_release
	.align	16, 0x90
	.type	s_LZW_release,@function
s_LZW_release:                          # @s_LZW_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	136(%rdi), %rsi
	movq	24(%rax), %rcx
	movl	$.L.str.1, %edx
	movq	%rax, %rdi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end1:
	.size	s_LZW_release, .Lfunc_end1-s_LZW_release
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LZWDecode state"
	.size	.L.str, 16

	.type	lzwd_reloc_ptrs,@object # @lzwd_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
lzwd_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	lzwd_enum_ptrs
	.size	lzwd_reloc_ptrs, 24

	.type	st_LZW_state,@object    # @st_LZW_state
	.globl	st_LZW_state
	.align	8
st_LZW_state:
	.long	176                     # 0xb0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	lzwd_reloc_ptrs
	.size	st_LZW_state, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"LZW(close)"
	.size	.L.str.1, 11

	.type	lzwd_enum_ptrs,@object  # @lzwd_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
lzwd_enum_ptrs:
	.short	0                       # 0x0
	.short	136                     # 0x88
	.size	lzwd_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
