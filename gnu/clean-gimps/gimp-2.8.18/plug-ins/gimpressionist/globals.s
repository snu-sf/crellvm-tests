	.text
	.file	"globals.bc"
	.globl	restore_default_values
	.align	16, 0x90
	.type	restore_default_values,@function
restore_default_values:                 # @restore_default_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	movabsq	$pcvals, %rax
	movabsq	$defaultpcvals, %rcx
	movl	$5088, %edx             # imm = 0x13E0
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	popq	%rbp
	retq
.Lfunc_end0:
	.size	restore_default_values, .Lfunc_end0-restore_default_values
	.cfi_endproc

	.type	img_has_alpha,@object   # @img_has_alpha
	.bss
	.globl	img_has_alpha
	.align	4
img_has_alpha:
	.long	0                       # 0x0
	.size	img_has_alpha, 4

	.type	pcvals,@object          # @pcvals
	.globl	pcvals
	.align	8
pcvals:
	.zero	5088
	.size	pcvals, 5088

	.type	defaultpcvals,@object   # @defaultpcvals
	.section	.rodata,"a",@progbits
	.align	8
defaultpcvals:
	.long	4                       # 0x4
	.zero	4
	.quad	0                       # double 0
	.quad	4633641066610819072     # double 60
	.long	0                       # 0x0
	.zero	4
	.quad	4622945017495814144     # double 12
	.quad	4626322717216342016     # double 20
	.quad	4626322717216342016     # double 20
	.quad	4607182418800017408     # double 1
	.long	1                       # 0x1
	.zero	4
	.quad	4591870180066957722     # double 0.10000000000000001
	.quad	0                       # double 0
	.quad	4629137466983448576     # double 30
	.long	0                       # 0x0
	.long	0                       # 0x0
	.asciz	"defaultbrush.pgm\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"defaultpaper.pgm\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.zero	4
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.zero	56
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	4626322717216342016     # double 20
	.long	1                       # 0x1
	.zero	4
	.quad	4621819117588971520     # double 10
	.quad	4626322717216342016     # double 20
	.long	0                       # 0x0
	.zero	4
	.quad	4591870180066957722     # double 0.10000000000000001
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.quad	4632233691727265792     # double 50
	.quad	4607182418800017408     # double 1
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.zero	32
	.long	1                       # 0x1
	.zero	4
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	4                       # 0x4
	.long	0                       # 0x0
	.quad	0                       # double 0
	.size	defaultpcvals, 5088

	.type	random_generator,@object # @random_generator
	.bss
	.globl	random_generator
	.align	8
random_generator:
	.quad	0
	.size	random_generator, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
