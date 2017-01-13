	.text
	.file	"jutils.bc"
	.globl	jdiv_round_up
	.align	16, 0x90
	.type	jdiv_round_up,@function
jdiv_round_up:                          # @jdiv_round_up
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	-1(%rdi,%rsi), %rax
	cqto
	idivq	%rsi
	retq
.Lfunc_end0:
	.size	jdiv_round_up, .Lfunc_end0-jdiv_round_up
	.cfi_endproc

	.globl	jround_up
	.align	16, 0x90
	.type	jround_up,@function
jround_up:                              # @jround_up
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	-1(%rdi,%rsi), %rcx
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	subq	%rdx, %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	jround_up, .Lfunc_end1-jround_up
	.cfi_endproc

	.globl	jcopy_sample_rows
	.align	16, 0x90
	.type	jcopy_sample_rows,@function
jcopy_sample_rows:                      # @jcopy_sample_rows
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
	movl	%r8d, %r15d
	movl	%r9d, %r14d
	testl	%r15d, %r15d
	jle	.LBB2_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%ecx, %rax
	leaq	(%rdx,%rax,8), %rbx
	movslq	%esi, %rax
	leaq	(%rdi,%rax,8), %rbp
	incl	%r15d
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rsi
	addq	$8, %rbp
	movq	(%rbx), %rdi
	addq	$8, %rbx
	movq	%r14, %rdx
	callq	memcpy
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB2_2
.LBB2_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jcopy_sample_rows, .Lfunc_end2-jcopy_sample_rows
	.cfi_endproc

	.globl	jcopy_block_row
	.align	16, 0x90
	.type	jcopy_block_row,@function
jcopy_block_row:                        # @jcopy_block_row
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	%edx, %edx
	shlq	$7, %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	memcpy                  # TAILCALL
.Lfunc_end3:
	.size	jcopy_block_row, .Lfunc_end3-jcopy_block_row
	.cfi_endproc

	.type	jpeg_natural_order,@object # @jpeg_natural_order
	.section	.rodata,"a",@progbits
	.globl	jpeg_natural_order
	.align	16
jpeg_natural_order:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	10                      # 0xa
	.long	17                      # 0x11
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	25                      # 0x19
	.long	18                      # 0x12
	.long	11                      # 0xb
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	12                      # 0xc
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	33                      # 0x21
	.long	40                      # 0x28
	.long	48                      # 0x30
	.long	41                      # 0x29
	.long	34                      # 0x22
	.long	27                      # 0x1b
	.long	20                      # 0x14
	.long	13                      # 0xd
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	14                      # 0xe
	.long	21                      # 0x15
	.long	28                      # 0x1c
	.long	35                      # 0x23
	.long	42                      # 0x2a
	.long	49                      # 0x31
	.long	56                      # 0x38
	.long	57                      # 0x39
	.long	50                      # 0x32
	.long	43                      # 0x2b
	.long	36                      # 0x24
	.long	29                      # 0x1d
	.long	22                      # 0x16
	.long	15                      # 0xf
	.long	23                      # 0x17
	.long	30                      # 0x1e
	.long	37                      # 0x25
	.long	44                      # 0x2c
	.long	51                      # 0x33
	.long	58                      # 0x3a
	.long	59                      # 0x3b
	.long	52                      # 0x34
	.long	45                      # 0x2d
	.long	38                      # 0x26
	.long	31                      # 0x1f
	.long	39                      # 0x27
	.long	46                      # 0x2e
	.long	53                      # 0x35
	.long	60                      # 0x3c
	.long	61                      # 0x3d
	.long	54                      # 0x36
	.long	47                      # 0x2f
	.long	55                      # 0x37
	.long	62                      # 0x3e
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.size	jpeg_natural_order, 320

	.type	jpeg_natural_order7,@object # @jpeg_natural_order7
	.globl	jpeg_natural_order7
	.align	16
jpeg_natural_order7:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	10                      # 0xa
	.long	17                      # 0x11
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	25                      # 0x19
	.long	18                      # 0x12
	.long	11                      # 0xb
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	12                      # 0xc
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	33                      # 0x21
	.long	40                      # 0x28
	.long	48                      # 0x30
	.long	41                      # 0x29
	.long	34                      # 0x22
	.long	27                      # 0x1b
	.long	20                      # 0x14
	.long	13                      # 0xd
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	21                      # 0x15
	.long	28                      # 0x1c
	.long	35                      # 0x23
	.long	42                      # 0x2a
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	43                      # 0x2b
	.long	36                      # 0x24
	.long	29                      # 0x1d
	.long	22                      # 0x16
	.long	30                      # 0x1e
	.long	37                      # 0x25
	.long	44                      # 0x2c
	.long	51                      # 0x33
	.long	52                      # 0x34
	.long	45                      # 0x2d
	.long	38                      # 0x26
	.long	46                      # 0x2e
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.size	jpeg_natural_order7, 260

	.type	jpeg_natural_order6,@object # @jpeg_natural_order6
	.globl	jpeg_natural_order6
	.align	16
jpeg_natural_order6:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	10                      # 0xa
	.long	17                      # 0x11
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	25                      # 0x19
	.long	18                      # 0x12
	.long	11                      # 0xb
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	12                      # 0xc
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	33                      # 0x21
	.long	40                      # 0x28
	.long	41                      # 0x29
	.long	34                      # 0x22
	.long	27                      # 0x1b
	.long	20                      # 0x14
	.long	13                      # 0xd
	.long	21                      # 0x15
	.long	28                      # 0x1c
	.long	35                      # 0x23
	.long	42                      # 0x2a
	.long	43                      # 0x2b
	.long	36                      # 0x24
	.long	29                      # 0x1d
	.long	37                      # 0x25
	.long	44                      # 0x2c
	.long	45                      # 0x2d
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.size	jpeg_natural_order6, 208

	.type	jpeg_natural_order5,@object # @jpeg_natural_order5
	.globl	jpeg_natural_order5
	.align	16
jpeg_natural_order5:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	10                      # 0xa
	.long	17                      # 0x11
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	25                      # 0x19
	.long	18                      # 0x12
	.long	11                      # 0xb
	.long	4                       # 0x4
	.long	12                      # 0xc
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	27                      # 0x1b
	.long	20                      # 0x14
	.long	28                      # 0x1c
	.long	35                      # 0x23
	.long	36                      # 0x24
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.size	jpeg_natural_order5, 164

	.type	jpeg_natural_order4,@object # @jpeg_natural_order4
	.globl	jpeg_natural_order4
	.align	16
jpeg_natural_order4:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	10                      # 0xa
	.long	17                      # 0x11
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	18                      # 0x12
	.long	11                      # 0xb
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	27                      # 0x1b
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.size	jpeg_natural_order4, 128

	.type	jpeg_natural_order3,@object # @jpeg_natural_order3
	.globl	jpeg_natural_order3
	.align	16
jpeg_natural_order3:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	9                       # 0x9
	.long	2                       # 0x2
	.long	10                      # 0xa
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.size	jpeg_natural_order3, 100

	.type	jpeg_natural_order2,@object # @jpeg_natural_order2
	.globl	jpeg_natural_order2
	.align	16
jpeg_natural_order2:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.size	jpeg_natural_order2, 80


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
