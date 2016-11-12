	.text
	.file	"ttfmemd.bc"
	.align	16, 0x90
	.type	TInstance_enum_ptrs,@function
TInstance_enum_ptrs:                    # @TInstance_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$7, %ecx
	ja	.LBB0_11
# BB#1:                                 # %entry
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_2:                                # %sw.bb
	movq	(%rsi), %rax
	jmp	.LBB0_10
.LBB0_3:                                # %sw.bb.1
	movq	152(%rsi), %rax
	jmp	.LBB0_10
.LBB0_4:                                # %sw.bb.3
	movq	168(%rsi), %rax
	jmp	.LBB0_10
.LBB0_5:                                # %sw.bb.5
	movq	440(%rsi), %rax
	jmp	.LBB0_10
.LBB0_6:                                # %sw.bb.7
	movq	456(%rsi), %rax
	jmp	.LBB0_10
.LBB0_7:                                # %sw.bb.12
	movq	472(%rsi), %rax
	jmp	.LBB0_10
.LBB0_8:                                # %sw.bb.17
	movq	672(%rsi), %rax
	jmp	.LBB0_10
.LBB0_9:                                # %sw.bb.19
	movq	688(%rsi), %rax
.LBB0_10:                               # %return
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_11:                               # %return
	retq
.Lfunc_end0:
	.size	TInstance_enum_ptrs, .Lfunc_end0-TInstance_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9

	.text
	.align	16, 0x90
	.type	TInstance_reloc_ptrs,@function
TInstance_reloc_ptrs:                   # @TInstance_reloc_ptrs
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
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, (%r14)
	movq	(%rbx), %rax
	movq	152(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 152(%r14)
	movq	(%rbx), %rax
	movq	168(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 168(%r14)
	movq	(%rbx), %rax
	movq	440(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 440(%r14)
	movq	(%rbx), %rax
	movq	456(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 456(%r14)
	movq	(%rbx), %rax
	movq	472(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 472(%r14)
	movq	(%rbx), %rax
	movq	672(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 672(%r14)
	movq	(%rbx), %rax
	movq	688(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 688(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	TInstance_reloc_ptrs, .Lfunc_end1-TInstance_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	TExecution_Context_enum_ptrs,@function
TExecution_Context_enum_ptrs:           # @TExecution_Context_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$22, %ecx
	ja	.LBB2_26
# BB#1:                                 # %entry
	jmpq	*.LJTI2_0(,%rdx,8)
.LBB2_2:                                # %sw.bb
	movq	(%rsi), %rax
	jmp	.LBB2_25
.LBB2_3:                                # %sw.bb.1
	movq	48(%rsi), %rax
	jmp	.LBB2_25
.LBB2_4:                                # %sw.bb.3
	movq	64(%rsi), %rax
	jmp	.LBB2_25
.LBB2_5:                                # %sw.bb.5
	movq	360(%rsi), %rax
	jmp	.LBB2_25
.LBB2_6:                                # %sw.bb.7
	movq	368(%rsi), %rax
	jmp	.LBB2_25
.LBB2_7:                                # %sw.bb.9
	movq	384(%rsi), %rax
	jmp	.LBB2_25
.LBB2_8:                                # %sw.bb.14
	movq	400(%rsi), %rax
	jmp	.LBB2_25
.LBB2_9:                                # %sw.bb.19
	movq	424(%rsi), %rax
	jmp	.LBB2_25
.LBB2_10:                               # %sw.bb.21
	movq	440(%rsi), %rax
	jmp	.LBB2_25
.LBB2_11:                               # %sw.bb.23
	movq	808(%rsi), %rax
	jmp	.LBB2_25
.LBB2_12:                               # %sw.bb.25
	movq	816(%rsi), %rax
	jmp	.LBB2_25
.LBB2_13:                               # %sw.bb.28
	movq	824(%rsi), %rax
	jmp	.LBB2_25
.LBB2_14:                               # %sw.bb.31
	movq	832(%rsi), %rax
	jmp	.LBB2_25
.LBB2_15:                               # %sw.bb.34
	movq	840(%rsi), %rax
	jmp	.LBB2_25
.LBB2_16:                               # %sw.bb.37
	movq	848(%rsi), %rax
	jmp	.LBB2_25
.LBB2_17:                               # %sw.bb.40
	movq	864(%rsi), %rax
	jmp	.LBB2_25
.LBB2_18:                               # %sw.bb.43
	movq	872(%rsi), %rax
	jmp	.LBB2_25
.LBB2_19:                               # %sw.bb.47
	movq	880(%rsi), %rax
	jmp	.LBB2_25
.LBB2_20:                               # %sw.bb.51
	movq	888(%rsi), %rax
	jmp	.LBB2_25
.LBB2_21:                               # %sw.bb.55
	movq	896(%rsi), %rax
	jmp	.LBB2_25
.LBB2_22:                               # %sw.bb.59
	movq	904(%rsi), %rax
	jmp	.LBB2_25
.LBB2_23:                               # %sw.bb.63
	movq	1104(%rsi), %rax
	jmp	.LBB2_25
.LBB2_24:                               # %sw.bb.65
	movq	1408(%rsi), %rax
.LBB2_25:                               # %return
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB2_26:                               # %return
	retq
.Lfunc_end2:
	.size	TExecution_Context_enum_ptrs, .Lfunc_end2-TExecution_Context_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_2
	.quad	.LBB2_3
	.quad	.LBB2_4
	.quad	.LBB2_5
	.quad	.LBB2_6
	.quad	.LBB2_7
	.quad	.LBB2_8
	.quad	.LBB2_9
	.quad	.LBB2_10
	.quad	.LBB2_11
	.quad	.LBB2_12
	.quad	.LBB2_13
	.quad	.LBB2_14
	.quad	.LBB2_15
	.quad	.LBB2_16
	.quad	.LBB2_17
	.quad	.LBB2_18
	.quad	.LBB2_19
	.quad	.LBB2_20
	.quad	.LBB2_21
	.quad	.LBB2_22
	.quad	.LBB2_23
	.quad	.LBB2_24

	.text
	.align	16, 0x90
	.type	TExecution_Context_reloc_ptrs,@function
TExecution_Context_reloc_ptrs:          # @TExecution_Context_reloc_ptrs
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
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, (%r14)
	movq	(%rbx), %rax
	movq	48(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 48(%r14)
	movq	(%rbx), %rax
	movq	64(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 64(%r14)
	movq	(%rbx), %rax
	movq	360(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 360(%r14)
	movq	(%rbx), %rax
	movq	368(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 368(%r14)
	movq	(%rbx), %rax
	movq	384(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 384(%r14)
	movq	(%rbx), %rax
	movq	400(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 400(%r14)
	movq	(%rbx), %rax
	movq	424(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 424(%r14)
	movq	(%rbx), %rax
	movq	440(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 440(%r14)
	movq	(%rbx), %rax
	movq	808(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 808(%r14)
	movq	(%rbx), %rax
	movq	816(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 816(%r14)
	movq	(%rbx), %rax
	movq	824(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 824(%r14)
	movq	(%rbx), %rax
	movq	832(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 832(%r14)
	movq	(%rbx), %rax
	movq	840(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 840(%r14)
	movq	(%rbx), %rax
	movq	848(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 848(%r14)
	movq	(%rbx), %rax
	movq	864(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 864(%r14)
	movq	(%rbx), %rax
	movq	872(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 872(%r14)
	movq	(%rbx), %rax
	movq	880(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 880(%r14)
	movq	(%rbx), %rax
	movq	888(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 888(%r14)
	movq	(%rbx), %rax
	movq	896(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 896(%r14)
	movq	(%rbx), %rax
	movq	904(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 904(%r14)
	movq	(%rbx), %rax
	movq	1104(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 1104(%r14)
	movq	(%rbx), %rax
	movq	1408(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 1408(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	TExecution_Context_reloc_ptrs, .Lfunc_end3-TExecution_Context_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	ttfFont_enum_ptrs,@function
ttfFont_enum_ptrs:                      # @ttfFont_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$3, %ecx
	ja	.LBB4_7
# BB#1:                                 # %entry
	jmpq	*.LJTI4_0(,%rdx,8)
.LBB4_2:                                # %sw.bb
	movq	136(%rsi), %rax
	jmp	.LBB4_6
.LBB4_3:                                # %sw.bb.1
	movq	144(%rsi), %rax
	jmp	.LBB4_6
.LBB4_4:                                # %sw.bb.3
	movq	152(%rsi), %rax
	jmp	.LBB4_6
.LBB4_5:                                # %sw.bb.5
	movq	160(%rsi), %rax
.LBB4_6:                                # %return
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB4_7:                                # %return
	retq
.Lfunc_end4:
	.size	ttfFont_enum_ptrs, .Lfunc_end4-ttfFont_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_5

	.text
	.align	16, 0x90
	.type	ttfFont_reloc_ptrs,@function
ttfFont_reloc_ptrs:                     # @ttfFont_reloc_ptrs
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
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	136(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 136(%r14)
	movq	(%rbx), %rax
	movq	144(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 144(%r14)
	movq	(%rbx), %rax
	movq	152(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 152(%r14)
	movq	(%rbx), %rax
	movq	160(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 160(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	ttfFont_reloc_ptrs, .Lfunc_end5-ttfFont_reloc_ptrs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TFace"
	.size	.L.str, 6

	.type	st_TFace_reloc_ptrs,@object # @st_TFace_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
st_TFace_reloc_ptrs:
	.short	5                       # 0x5
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	st_TFace_enum_ptrs
	.size	st_TFace_reloc_ptrs, 24

	.type	st_TFace,@object        # @st_TFace
	.globl	st_TFace
	.align	8
st_TFace:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	st_TFace_reloc_ptrs
	.size	st_TFace, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"TInstance"
	.size	.L.str.1, 10

	.type	st_TInstance,@object    # @st_TInstance
	.section	.rodata,"a",@progbits
	.globl	st_TInstance
	.align	8
st_TInstance:
	.long	696                     # 0x2b8
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	TInstance_enum_ptrs
	.quad	TInstance_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_TInstance, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"TExecution_Context"
	.size	.L.str.2, 19

	.type	st_TExecution_Context,@object # @st_TExecution_Context
	.section	.rodata,"a",@progbits
	.globl	st_TExecution_Context
	.align	8
st_TExecution_Context:
	.long	1416                    # 0x588
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	TExecution_Context_enum_ptrs
	.quad	TExecution_Context_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_TExecution_Context, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"ttfFont"
	.size	.L.str.3, 8

	.type	st_ttfFont,@object      # @st_ttfFont
	.section	.rodata,"a",@progbits
	.globl	st_ttfFont
	.align	8
st_ttfFont:
	.long	192                     # 0xc0
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	ttfFont_enum_ptrs
	.quad	ttfFont_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ttfFont, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"ttfInterpreter"
	.size	.L.str.4, 15

	.type	st_ttfInterpreter_reloc_ptrs,@object # @st_ttfInterpreter_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
st_ttfInterpreter_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	st_ttfInterpreter_enum_ptrs
	.size	st_ttfInterpreter_reloc_ptrs, 24

	.type	st_ttfInterpreter,@object # @st_ttfInterpreter
	.globl	st_ttfInterpreter
	.align	8
st_ttfInterpreter:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	st_ttfInterpreter_reloc_ptrs
	.size	st_ttfInterpreter, 64

	.type	st_TFace_enum_ptrs,@object # @st_TFace_enum_ptrs
	.align	16
st_TFace_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	56                      # 0x38
	.short	0                       # 0x0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.short	88                      # 0x58
	.size	st_TFace_enum_ptrs, 20

	.type	st_ttfInterpreter_enum_ptrs,@object # @st_ttfInterpreter_enum_ptrs
	.align	2
st_ttfInterpreter_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	st_ttfInterpreter_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
