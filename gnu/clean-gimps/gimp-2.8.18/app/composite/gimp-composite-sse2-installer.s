	.text
	.file	"gimp-composite-sse2-installer.bc"
	.globl	gimp_composite_sse2_install
	.align	16, 0x90
	.type	gimp_composite_sse2_install,@function
gimp_composite_sse2_install:            # @gimp_composite_sse2_install
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
	subq	$16, %rsp
	callq	gimp_composite_sse2_init
	cmpl	$0, %eax
	je	.LBB0_6
# BB#1:                                 # %if.then
	movabsq	$_gimp_composite_sse2, %rax
	movq	%rax, gimp_composite_sse2_install.t
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	gimp_composite_sse2_install.t, %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$gimp_composite_function, %rax
	movq	gimp_composite_sse2_install.t, %rcx
	movq	16(%rcx), %rcx
	movq	gimp_composite_sse2_install.t, %rdx
	movl	12(%rdx), %esi
	movl	%esi, %edx
	movq	gimp_composite_sse2_install.t, %rdi
	movl	8(%rdi), %esi
	movl	%esi, %edi
	movq	gimp_composite_sse2_install.t, %r8
	movl	4(%r8), %esi
	movl	%esi, %r8d
	movq	gimp_composite_sse2_install.t, %r9
	movl	(%r9), %esi
	movl	%esi, %r9d
	imulq	$1000, %r9, %r9         # imm = 0x3E8
	addq	%r9, %rax
	imulq	$200, %r8, %r8
	addq	%r8, %rax
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rax
	movq	%rcx, (%rax,%rdx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	gimp_composite_sse2_install.t, %rax
	addq	$24, %rax
	movq	%rax, gimp_composite_sse2_install.t
	jmp	.LBB0_2
.LBB0_5:                                # %for.end
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.end
	movl	$0, -4(%rbp)
.LBB0_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_composite_sse2_install, .Lfunc_end0-gimp_composite_sse2_install
	.cfi_endproc

	.globl	gimp_composite_sse2_init
	.align	16, 0x90
	.type	gimp_composite_sse2_init,@function
gimp_composite_sse2_init:               # @gimp_composite_sse2_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	gimp_cpu_accel_get_support
	andl	$134217728, %eax        # imm = 0x8000000
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB1_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_composite_sse2_init, .Lfunc_end1-gimp_composite_sse2_init
	.cfi_endproc

	.type	gimp_composite_sse2_install.t,@object # @gimp_composite_sse2_install.t
	.data
	.align	8
gimp_composite_sse2_install.t:
	.quad	_gimp_composite_sse2
	.size	gimp_composite_sse2_install.t, 8

	.type	_gimp_composite_sse2,@object # @_gimp_composite_sse2
	.section	.rodata,"a",@progbits
	.align	16
_gimp_composite_sse2:
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_difference_rgba8_rgba8_rgba8_sse2
	.long	7                       # 0x7
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_addition_rgba8_rgba8_rgba8_sse2
	.long	8                       # 0x8
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_subtract_rgba8_rgba8_rgba8_sse2
	.long	9                       # 0x9
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_darken_rgba8_rgba8_rgba8_sse2
	.long	10                      # 0xa
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_lighten_rgba8_rgba8_rgba8_sse2
	.long	20                      # 0x14
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2
	.long	28                      # 0x1c
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.quad	gimp_composite_swap_rgba8_rgba8_rgba8_sse2
	.zero	24
	.size	_gimp_composite_sse2, 192


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
